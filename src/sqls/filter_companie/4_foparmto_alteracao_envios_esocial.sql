SELECT COALESCE(STRING(bethadba.FOPARMTO_ALTERACAO_ENVIOS_ESOCIAL.CODI_EMP), 'NULO') AS field_1,
COALESCE(STRING(bethadba.FOPARMTO_ALTERACAO_ENVIOS_ESOCIAL.VIGENCIA), 'NULO') AS field_2,
COALESCE(STRING(bethadba.FOPARMTO_ALTERACAO_ENVIOS_ESOCIAL.CODI_EMP_DADOS_EVENTOS), 'NULO') AS field_3,
COALESCE(STRING(bethadba.FOPARMTO_ALTERACAO_ENVIOS_ESOCIAL.I_DADOS_EVENTOS), 'NULO') AS field_4

FROM bethadba.FOPARMTO_ALTERACAO_ENVIOS_ESOCIAL

WHERE bethadba.FOPARMTO_ALTERACAO_ENVIOS_ESOCIAL.codi_emp = '#codi_emp#'
