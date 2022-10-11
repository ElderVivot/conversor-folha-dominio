SELECT IsNull( String(bethadba.FOEMPREGADOS_plano_saude.CODI_EMP), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.I_EMPREGADOS), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.I_OPERADORAPLANOSAUDE), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.DATA_INICIO), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.DATA_FIM), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.TIPO_BENEFICIARIO), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.ORIGEM_REG), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.I_DADOS_EVENTOS_ESOCIAL), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.I_LOTE_ESOCIAL), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.STATUS_ESOCIAL), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.ENVIAR_ESOCIAL), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.INCLUSAO_VALIDADA_ESOCIAL), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.GERAR_RETIFICACAO_ESOCIAL), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.PROCESSAR_EXCLUSAO_ESOCIAL), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.GUID_CONTABIL), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.GUID_ONVIO), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.ENDPOINT_EXCLUSAO), 'NULO'),
  			codi_emp = bethadba.FOEMPREGADOS_plano_saude.CODI_EMP
        
    FROM bethadba.FOEMPREGADOS_plano_saude
    
   WHERE bethadba.FOEMPREGADOS_plano_saude.CODI_EMP = '#codi_emp#'
   
ORDER BY 1, 2