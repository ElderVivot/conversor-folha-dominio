SELECT COALESCE( String( bethadba.fodepto.codi_emp ), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.i_depto), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.nome), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.endereco), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.numero), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.bairro), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.cidade), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.estado), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.cep), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.origem_reg), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.DATA_INICIO), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.SITUACAO), 'NULO'),
        COALESCE(STRING(bethadba.fodepto.DATA_INATIVACAO), 'NULO')

    FROM bethadba.fodepto
    
   WHERE bethadba.fodepto.codi_emp = '#codi_emp#'

ORDER BY bethadba.fodepto.codi_emp ASC, 
         bethadba.fodepto.i_depto ASC