SELECT COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.I_INSTITUICAO_ENSINO+3), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.NOME), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.DATA_CADASTRO), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.CNPJ), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.ENDERECO), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.NUMERO), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.COMPLEMENTO), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.BAIRRO), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.CEP), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.CODIGO_MUNICIPIO), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.CODIGO_PAIS), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.ORIGEM_REGISTRO), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.NOME_REITOR), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.DDD_TELEFONE), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.TELEFONE), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.I_DADOS_EVENTOS_ESOCIAL), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.I_LOTE_ESOCIAL), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.STATUS_ESOCIAL), 'NULO'),
COALESCE(STRING(bethadba.FOINSTITUICAO_ENSINO.ENVIAR_ESOCIAL), 'NULO')

FROM bethadba.FOINSTITUICAO_ENSINO

WHERE bethadba.FOINSTITUICAO_ENSINO.I_INSTITUICAO_ENSINO <> 0

ORDER BY 1