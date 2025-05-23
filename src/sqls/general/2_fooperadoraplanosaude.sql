SELECT COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.I_OPERADORAPLANOSAUDE+3), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.NOME), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.CNPJ), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.ENDERECO), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.NUMERO), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.COMPLEMENTO), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.BAIRRO), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.CODIGO_MUNICIPIO), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.CEP), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.DDD), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.FONE), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.FAX), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.ORIGEM_REG), 'NULO'),
COALESCE(STRING(bethadba.FOOPERADORAPLANOSAUDE.REGISTRO_ANS), 'NULO')

FROM bethadba.FOOPERADORAPLANOSAUDE

WHERE bethadba.FOOPERADORAPLANOSAUDE.I_OPERADORAPLANOSAUDE <> 0

ORDER BY bethadba.FOOPERADORAPLANOSAUDE.I_OPERADORAPLANOSAUDE