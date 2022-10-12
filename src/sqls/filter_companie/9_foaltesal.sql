SELECT IsNull( String( bethadba.FOALTESAL.codi_emp ), 'NULO'),
        COALESCE(STRING(bethadba.FOALTESAL.I_EMPREGADOS), 'NULO'),
        COALESCE(STRING(bethadba.FOALTESAL.COMPETENCIA), 'NULO'),
        COALESCE(STRING(bethadba.FOALTESAL.NOVO_SALARIO), 'NULO'),
        COALESCE(STRING(bethadba.FOALTESAL.MOTIVO), 'NULO'),
        COALESCE(STRING(bethadba.FOALTESAL.RETROATIVO_DATA), 'NULO')

    FROM bethadba.FOALTESAL
    
   WHERE bethadba.FOALTESAL.codi_emp = '#codi_emp#'

ORDER BY 1,2