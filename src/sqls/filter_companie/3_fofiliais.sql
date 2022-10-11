SELECT COALESCE(STRING(bethadba.fofiliais.codi_emp), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.i_filiais), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.nome), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.endereco), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.numero), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.complemento), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.cidade), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.estado), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.cep), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.tipo_insc), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.cgc), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.inscricao), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.telefone), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.cnae), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.i_municipio), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.bairro), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.origem_reg), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.codigo_municipio), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.i_cnae20), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.i_sindicatos_p), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.sind_centralizador), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.sind_capital_social), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.cnpj_centralizador), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.SINDICALIZADA), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.CODI_EMP_ATENDIMENTO), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.PERMITE_CADASTRAR_EMPREGADOS_DOMINIO_ATENDIMENTO), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.CENTRALIZACAO_EVENTOS_ESOCIAL), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.POSSUI_ESTABELECIMENTOS_OUTRO_BANCO_DADOS), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.RAZAO_SOCIAL), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.TIPO_ENDERECO), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.TODAS_FILIAIS_CENTRALIZADAS_POSSUEM_MESMA_TABELA_RUBRICAS), 'NULO'),
COALESCE(STRING(bethadba.fofiliais.POSSUI_EMPRESA_CENTRALIZADORA_RUBRICAS_ESOCIAL_OUTRO_BANCO_DADOS), 'NULO')

FROM bethadba.fofiliais

WHERE bethadba.fofiliais.codi_emp = '#codi_emp#'

ORDER BY bethadba.fofiliais.codi_emp ASC, bethadba.fofiliais.i_filiais ASC