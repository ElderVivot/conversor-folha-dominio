SELECT COALESCE(STRING(bethadba.fobancos.i_bancos + 10), 'NULO'),
COALESCE(STRING(bethadba.fobancos.numero), 'NULO'),
COALESCE(STRING(bethadba.fobancos.agencia), 'NULO'),
COALESCE(STRING(bethadba.fobancos.dig_agencia), 'NULO'),
COALESCE(STRING(bethadba.fobancos.nome), 'NULO'),
COALESCE(STRING(bethadba.fobancos.praca), 'NULO'),
COALESCE(STRING(bethadba.fobancos.nome_agencia), 'NULO'),
COALESCE(STRING(bethadba.fobancos.modelo_cheque), 'NULO'),
COALESCE(STRING(bethadba.fobancos.origem_reg), 'NULO')

FROM bethadba.fobancos

WHERE bethadba.fobancos.i_bancos > 2

ORDER BY bethadba.fobancos.i_bancos