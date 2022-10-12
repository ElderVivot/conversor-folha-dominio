SELECT IsNull( String( bethadba.fotrocas_jornadas.codi_emp), 'NULO'),
         IsNull( String( bethadba.fotrocas_jornadas.i_empregados), 'NULO'), 
         IsNull( String( bethadba.fotrocas_jornadas.i_jornada), 'NULO'), 
         IsNull( String( bethadba.fotrocas_jornadas.data_troca), 'NULO')

    FROM bethadba.fotrocas_jornadas
    
   WHERE bethadba.fotrocas_jornadas.codi_emp = '#codi_emp#'
   
ORDER BY 1, 2