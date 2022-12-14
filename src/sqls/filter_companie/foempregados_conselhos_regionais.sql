SELECT IsNull( String( bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.CODI_EMP), 'NULO'),
         IsNull( String( bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.I_EMPREGADOS), 'NULO'), 
         IsNull( String( bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.I_CONSELHO_REGIONAL), 'NULO'), 
         IsNull( String( bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.CONSELHO), 'NULO'), 
         IsNull( String( bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.NUMERO_REGISTRO), 'NULO'), 
         IsNull( String( bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.REGIAO), 'NULO'), 
         IsNull( String( bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.DATA_EXPEDICAO), 'NULO'), 
         IsNull( String( bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.DATA_VALIDADE), 'NULO'), 
         IsNull( String( bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.ORIGEM_REGISTRO), 'NULO') 

    FROM bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS
    
   WHERE bethadba.FOEMPREGADOS_CONSELHOS_REGIONAIS.CODI_EMP = '#codi_emp#'
   
ORDER BY 1, 2