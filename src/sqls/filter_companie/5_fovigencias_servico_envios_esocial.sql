SELECT COALESCE(STRING(bethadba.FOVIGENCIAS_SERVICO_ENVIOS_ESOCIAL.codi_emp), 'NULO') AS field_1,
COALESCE(STRING(bethadba.FOVIGENCIAS_SERVICO_ENVIOS_ESOCIAL.i_servicos), 'NULO') AS field_2,
COALESCE(STRING(bethadba.FOVIGENCIAS_SERVICO_ENVIOS_ESOCIAL.VIGENCIA), 'NULO') AS field_3,
COALESCE(STRING(bethadba.FOVIGENCIAS_SERVICO_ENVIOS_ESOCIAL.CODI_EMP_DADOS_EVENTOS), 'NULO') AS field_4,
COALESCE(STRING(bethadba.FOVIGENCIAS_SERVICO_ENVIOS_ESOCIAL.I_DADOS_EVENTOS), 'NULO') AS field_5

FROM bethadba.FOVIGENCIAS_SERVICO_ENVIOS_ESOCIAL

WHERE bethadba.FOVIGENCIAS_SERVICO_ENVIOS_ESOCIAL.codi_emp = '#codi_emp#'
  AND EXISTS ( SELECT 1
                 FROM bethadba.FOESOCIAL_DADOS_EVENTOS
                WHERE bethadba.FOESOCIAL_DADOS_EVENTOS.codi_emp = bethadba.FOVIGENCIAS_SERVICO_ENVIOS_ESOCIAL.codi_emp
                  AND bethadba.FOESOCIAL_DADOS_EVENTOS.i_dados_eventos = bethadba.FOVIGENCIAS_SERVICO_ENVIOS_ESOCIAL.i_dados_eventos
                  and (  bethadba.FOESOCIAL_DADOS_EVENTOS.i_evento_esocial in (1000,1005,1020,1030,1050,2200,2205,2206,2298,2299,2300,2306,2399)
                     or  bethadba.FOESOCIAL_DADOS_EVENTOS.I_EVENTO_ESOCIAL_excluido in (1000,1005,1020,1030,1050,2200,2205,2206,2298,2299,2300,2306,2399) ))