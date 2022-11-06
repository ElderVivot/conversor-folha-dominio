SELECT COALESCE(STRING(bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.CODI_EMP), 'NULO') AS field_1,
COALESCE(STRING(bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.I_HORARIO), 'NULO') AS field_2,
COALESCE(STRING(bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.VIGENCIA), 'NULO') AS field_3,
COALESCE(STRING(bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.CODI_EMP_DADOS_EVENTOS), 'NULO') AS field_4,
COALESCE(STRING(bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.I_DADOS_EVENTOS), 'NULO') AS field_5

FROM bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL

WHERE bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.CODI_EMP = '#codi_emp#'
  AND bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.vigencia = ( SELECT MIN(vig.vigencia)
                                                                FROM bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL AS vig
                                                               WHERE vig.codi_emp = bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.codi_emp )

ORDER BY bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.CODI_EMP, bethadba.FOHORARIOS_ALTERACAO_ENVIOS_ESOCIAL.I_HORARIO