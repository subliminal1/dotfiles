; Variables

(variable_name) @variable

(method_declaration
  return_type: (type_name(name))) @type.builtin

; Types
[
  (primitive_type)
  (cast_type)
  (type_name)
 ] @type.builtin

(object_creation_expression
    (qualified_name)) @type

; Functions

(array_creation_expression "array" @function.builtin)
(list_literal "list" @function.builtin)

(method_declaration
  name: (name) @method)

(function_call_expression
  function: (qualified_name (name)) @function)

(scoped_call_expression
  name: (name) @function)

(member_call_expression
  name: (name) @method)

(function_definition
  name: (name) @function)

; Member

(property_element
  (variable_name) @property)

(member_access_expression
  name: (variable_name (name)) @property)

(member_call_expression
  (arguments (qualified_name (name)))) @constant

(member_access_expression
  name: (name) @property)

"::" @none

; Variables

(relative_scope) @variable.builtin

((name) @variable.builtin
 (#eq? @variable.builtin "this"))

[
    (const_element (name))
    (class_constant_access_expression (name))
] @constant

; Basic tokens

[
 (string)
 (heredoc)
 ] @string

(boolean) @boolean
(null) @constant.builtin
(integer) @number
(float) @float
(comment) @comment


; Keywords

[
 "$"
 "abstract"
 "as"
 "break"
 "class"
 "const"
 "continue"
 "declare"
 "default"
 "echo"
 "enddeclare"
 "extends"
 "final"
 "function"
 "global"
 "implements"
 "insteadof"
 "interface"
 "namespace"
 "new"
 "private"
 "protected"
 "public"
 "return"
 "static"
 "trait"
 ] @keyword

[
 "case"
 "else"
 "elseif"
 "endif"
 "endswitch"
 "if"
 "switch"
 ] @conditional

[
 "do"
 "endfor"
 "endforeach"
 "endwhile"
 "for"
 "foreach"
 "while"
 ] @repeat

[
 "catch"
 "finally"
 "throw"
 "try"
 ] @exception

[
 "include_once"
 "include"
 "require_once"
 "require"
 "use"
 ] @include

[
 ","
 ";"
 "."
 ] @punctuation.delimiter

[
 (php_tag)
 "?>"
 "("
 ")"
 "["
 "]"
 "{"
 "}"
 ] @punctuation.bracket

[
  "="

  "-"
  "*"
  "/"
  "+"
  "%"

  "~"
  "|"
  "&"
  "<<"
  ">>"

  "->"

  "<"
  "<="
  ">="
  ">"
  "=="
  "!="
  "==="
  "!=="

  "!"
  "&&"
  "||"

  "-="
  "+="
  "*="
  "/="
  "%="
  "|="
  "&="
  "--"
  "++"
] @operator


(ERROR) @error
