SELECT IsNull( String( bethadba.FOJORNADAS.codi_emp ), 'NULO'),
        COALESCE(STRING(bethadba.FOJORNADAS.I_JORNADA), 'NULO'),
        COALESCE(STRING(bethadba.FOJORNADAS.NOME), 'NULO'),
        COALESCE(STRING(bethadba.FOJORNADAS.DATA_INICIO), 'NULO'),
        COALESCE(STRING(bethadba.FOJORNADAS.SITUACAO), 'NULO'),
        COALESCE(STRING(bethadba.FOJORNADAS.DATA_INATIVACAO), 'NULO'),
        COALESCE(STRING(bethadba.FOJORNADAS.TIPO), 'NULO'),
        COALESCE(STRING(bethadba.FOJORNADAS.TIPO_ESCALA), 'NULO'),
        COALESCE(STRING(bethadba.FOJORNADAS.ESCALA), 'NULO'),
        COALESCE(STRING(bethadba.FOJORNADAS.ORIGEM_REG), 'NULO')

    FROM bethadba.FOJORNADAS
    
   WHERE bethadba.FOJORNADAS.codi_emp = '#codi_emp#'

ORDER BY bethadba.FOJORNADAS.codi_emp ASC, 
         bethadba.FOJORNADAS.i_jornada ASC