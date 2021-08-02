{% macro get_dbr_relations_by_pattern(table_pattern, exclude='', schema=target.schema) %}

    {% set get_tables %}

      SHOW TABLES FROM  {{ schema }} LIKE '{{ table_pattern }}'

    {% endset %}

    {%- set table_list = run_query(get_tables) -%}
    
    {%- if execute -%} 

        {%- set tbl_relations = [] -%}
        {%- for row in table_list -%}

            {%- set tbl_relation = api.Relation.create(
                
                schema=row.database,
                identifier=row.tableName,
                type='table'
            ) -%}
            {%- do tbl_relations.append(tbl_relation) -%}
        {%- endfor -%}

        {{ return(tbl_relations) }}
    {%- else -%}
        {{ return([]) }}
    {%- endif -%}

{% endmacro %}