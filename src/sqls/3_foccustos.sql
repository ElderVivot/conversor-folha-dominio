SELECT COALESCE( String( bethadba.foccustos.codi_emp ), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.i_ccustos), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.nome), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.origem_reg), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.USOU_EPI_POR_INVIABILIDADE_APOS_TENTATIVA_IMPLEMENTACAO_MEDIDAS_PROTECAO_COLETIVA), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.FORAM_OBSERVADAS_CONDICOES_FUNCIONAMENTO_USO_EPI_CONFORME_ESPECIFICACAO_FABRICANTE), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.FOI_OBSERVADO_PRAZO_VALIDADE_CONFORME_CERTIFICADO_APROVAVAO_MTE), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.FOI_OBSERVADA_PERIODICIDADE_TROCA_DEFINIDA_PROGRAMAS_AMBIENTAIS), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.FOI_OBSERVADA_HIGIENIZACAO), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.TIPO), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.I_CCUSTOS_SINTETICO), 'NULO'),
        COALESCE(STRING(bethadba.foccustos.MASCARA), 'NULO')

    FROM bethadba.foccustos
    
   WHERE bethadba.foccustos.codi_emp = '#codi_emp#'

ORDER BY bethadba.foccustos.codi_emp ASC, 
         bethadba.foccustos.i_ccustos ASC