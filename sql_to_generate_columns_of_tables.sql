SELECT tab.table_name, col.column_id, col.column_name, col.remarks AS description, col.pkey AS primary_key, col.nulls AS allow_null, domain.domain_name AS type,
       text_to_conversion_dominio = 'COALESCE(STRING(bethadba.' || tab.table_name || '.' || col.column_name || '), "NULO"),' 
  FROM sys.syscolumn AS col
       INNER JOIN sys.SYSTABLE AS tab
            ON    tab.table_id = col.table_id
       INNER JOIN sys.sysdomain AS domain
            ON    domain.domain_id = col.domain_id
 WHERE tab.table_name = 'gecontador'
   AND col.column_id <= 41