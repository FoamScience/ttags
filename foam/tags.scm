; ADT definitions

; basic dictionary
(dict 
  key: (identifier) @name) @definition.dict

; boolean key-value pair
(key_value
    keyword: (_) @name
    value: (boolean) @definition.boolean)

; scalar key-value pair
(key_value
    keyword: (_) @name
    value: (number_literal) @definition.scalar)

; include macro
(preproc_call
    directive: (_) @name
    argument: (_) @definition.include
    (#match? @name "include|includeEtc|includeFunc"))

; generic key-value pair
(key_value
    keyword: (_) @name) @definition.keyval
