SELECT IsNull( String( bethadba.fotrocas_depto.codi_emp), 'NULO'),
         IsNull( String( bethadba.fotrocas_depto.i_empregados), 'NULO'), 
         IsNull( String( bethadba.fotrocas_depto.i_depto), 'NULO'), 
         IsNull( String( bethadba.fotrocas_depto.data_troca), 'NULO')

    FROM bethadba.fotrocas_depto
    
   WHERE bethadba.fotrocas_depto.codi_emp = '#codi_emp#'
   
ORDER BY 1, 2