#!/usr/bin/env zsh
# todo search for git submodules

emulate bash
set -A args

tmp="/tmp/$RANDOM"
OPTIND=1

args=()
paths=()
gitoptions=()
gitoptions=()
gitoptions+=(-i)
gitoptions+=(--no-merges)
gitoptions+=(--format="%ci %s")

# parse script options
while getopts "a:s:u:o:" o; do
    case $o in
        a)
            args+=(--author "$OPTARG")
            ;;
        s)
            args+=(--since "$OPTARG")
            ;;
        u)
            args+=(--until "$OPTARG")
            ;;
    esac
done


# remove tmp file
if [ -f $tmp ]; then
    rm $tmp
fi
# remove named options
shift $(($OPTIND -1))

if [ "${#@[@]}" -eq 0 ]; then
    echo "no repositories specified"
    exit
fi

# convert relative paths to absolute
for i in $@; do
    path=$(readlink -f $i)
    if [ ! -d "$path" ]; then
        continue;
    fi

    paths+=($path)
done

# find nested repositories
for i in $paths; do
    file="$i/.gitmodules"

    if [ ! -f "$file" ]; then
        continue;
    fi

    while read line; do
        match=${line:0:6}
        if [ "$match" = "path =" ]; then
            repo=${line:7}
            paths+=("$i/$repo")
        fi
    done < $file
done

# generate the report
for i in "${paths[@]}"; do
    (cd $i; git log "${gitoptions[@]}" "${args[@]}" >> $tmp)
done

if [ -f "$tmp" ]; then
    (sort $tmp -o $tmp)
    (cat $tmp)
    (rm $tmp)
fi
