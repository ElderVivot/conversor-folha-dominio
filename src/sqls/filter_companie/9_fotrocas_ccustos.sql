SELECT IsNull( String( bethadba.fotrocas_ccustos.codi_emp), 'NULO'),
         IsNull( String( bethadba.fotrocas_ccustos.i_empregados), 'NULO'), 
         IsNull( String( bethadba.fotrocas_ccustos.i_ccustos), 'NULO'), 
         IsNull( String( bethadba.fotrocas_ccustos.data_troca), 'NULO')

    FROM bethadba.fotrocas_ccustos
    
   WHERE bethadba.fotrocas_ccustos.codi_emp = '#codi_emp#'
   
ORDER BY 1, 2