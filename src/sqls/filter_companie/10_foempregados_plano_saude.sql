SELECT IsNull( String(bethadba.FOEMPREGADOS_plano_saude.CODI_EMP), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.I_EMPREGADOS), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.I_OPERADORAPLANOSAUDE+3), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.DATA_INICIO), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.DATA_FIM), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.TIPO_BENEFICIARIO), 'NULO'),
  			IsNull( String(bethadba.FOEMPREGADOS_plano_saude.ORIGEM_REG), 'NULO')
        
    FROM bethadba.FOEMPREGADOS_plano_saude
    
   WHERE bethadba.FOEMPREGADOS_plano_saude.CODI_EMP = '#codi_emp#'
   
ORDER BY 1, 2