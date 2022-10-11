SELECT  COALESCE(STRING(bethadba.focargos.codi_emp), 'NULO'),
        COALESCE(STRING(bethadba.focargos.i_cargos), 'NULO'),
        COALESCE(STRING(bethadba.focargos.nome), 'NULO'),
        COALESCE(STRING(bethadba.focargos.cbo), 'NULO'),
        COALESCE(STRING(bethadba.focargos.cbo_2002), 'NULO'),
        COALESCE(STRING(bethadba.focargos.origem_reg), 'NULO'),
        COALESCE(STRING(bethadba.focargos.atividade), 'NULO'),
        COALESCE(STRING(bethadba.focargos.PPP_CAMPO_1), 'NULO'),
        COALESCE(STRING(bethadba.focargos.PPP_CAMPO_2), 'NULO'),
        COALESCE(STRING(bethadba.focargos.PPP_CAMPO_3), 'NULO'),
        COALESCE(STRING(bethadba.focargos.PPP_CAMPO_4), 'NULO'),
        COALESCE(STRING(bethadba.focargos.PPP_CAMPO_5), 'NULO'),
        COALESCE(STRING(bethadba.focargos.PPP_OBSERVACOES), 'NULO'),
        COALESCE(STRING(bethadba.focargos.GERENCIA_SUPERVISAO), 'NULO'),
        COALESCE(STRING(bethadba.focargos.DATA_INICIO), 'NULO'),
        COALESCE(STRING(bethadba.focargos.SITUACAO), 'NULO'),
        COALESCE(STRING(bethadba.focargos.DATA_INATIVACAO), 'NULO'),
        COALESCE(STRING(bethadba.focargos.CODIGO_ESOCIAL), 'NULO')        

    FROM bethadba.focargos
    
   WHERE bethadba.focargos.codi_emp = '#codi_emp#'

ORDER BY bethadba.focargos.codi_emp ASC, 
         bethadba.focargos.i_cargos ASC