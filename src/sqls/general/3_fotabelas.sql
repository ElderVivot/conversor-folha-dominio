SELECT COALESCE(STRING(bethadba.fotabelas.i_tabelas), 'NULO'),
COALESCE(STRING(bethadba.fotabelas.i_codigo), 'NULO'),
COALESCE(STRING(bethadba.fotabelas.nome), 'NULO'),
COALESCE(STRING(bethadba.fotabelas.aux1), 'NULO'),
COALESCE(STRING(bethadba.fotabelas.aux2), 'NULO'),
COALESCE(STRING(bethadba.fotabelas.origem_reg), 'NULO')

FROM bethadba.fotabelas

WHERE bethadba.fotabelas.i_tabelas <> 0

ORDER BY bethadba.fotabelas.i_tabelas