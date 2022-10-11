SELECT IsNull( String( bethadba.foempreg_contrsind.codi_emp ), 'NULO'),
         IsNull( String( bethadba.foempreg_contrsind.i_empregados), 'NULO'), 
         IsNull( String( bethadba.foempreg_contrsind.competencia), 'NULO'), 
         IsNull( String( bethadba.foempreg_contrsind.origem_reg), 'NULO'), 
         IsNull( String( bethadba.foempreg_contrsind.ANO_REFERENCIA), 'NULO'), 
         IsNull( String( bethadba.foempreg_contrsind.ORIGEM), 'NULO')

    FROM bethadba.foempreg_contrsind
    
   WHERE bethadba.foempreg_contrsind.codi_emp = '#codi_emp#'
   
ORDER BY 1, 2