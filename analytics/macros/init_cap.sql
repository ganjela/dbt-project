{% macro init_cap(column_name) %}
    trim(
        regexp_replace(
            regexp_replace(
                lower({{ column_name }}),                      
                '(^|\\s)([a-z])',                              
                '\\1' || upper('\\2')                          
            ),
            '\\s+', ' '                                      
        )
    )
{% endmacro %}


