SELECT IsNull( String( bethadba.fohistemprant.codi_emp), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.i_empregados), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.tipo_his), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.data_his), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.aquisitivo_fim), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.ini_gozo), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.fim_gozo), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.valor), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.tabela_troca), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.cod_anterior), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.cod_novo), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.origem_reg), 'NULO'), 
         IsNull( String( bethadba.fohistemprant.DATA_GRAVACAO), 'NULO'),
         IsNull( String( bethadba.fohistemprant.I_SINDICATOS), 'NULO'),
         IsNull( String( bethadba.fohistemprant.DESCRICAO), 'NULO'),
         IsNull( String( bethadba.fohistemprant.SEQUENCIAL), 'NULO') 

    FROM bethadba.fohistemprant
    
   WHERE bethadba.fohistemprant.codi_emp = '#codi_emp#'
   
ORDER BY bethadba.fohistemprant.codi_emp, bethadba.fohistemprant.i_empregados