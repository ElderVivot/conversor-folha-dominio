SELECT IsNull( String( bethadba.fotrocas_cargos.codi_emp), 'NULO'),
         IsNull( String( bethadba.fotrocas_cargos.i_empregados), 'NULO'), 
         IsNull( String( bethadba.fotrocas_cargos.i_cargos), 'NULO'), 
         IsNull( String( bethadba.fotrocas_cargos.data_troca), 'NULO')

    FROM bethadba.fotrocas_cargos
    
   WHERE bethadba.fotrocas_cargos.codi_emp = '#codi_emp#'
     AND ( bethadba.fotrocas_cargos.codi_emp = bethadba.fotrocas_cargos.codi_emp_cargos OR bethadba.fotrocas_cargos.codi_emp_cargos IS NULL )
   
ORDER BY 1, 2