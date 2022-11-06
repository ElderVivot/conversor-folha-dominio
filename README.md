1- Se o cliente passar uma relacao de empresas especificas pra migrar precisa analisar se essas empresas não tem empregados transferidos, se tiver, as empresas que estão na tabela FOEMPREGADOS_TRANSF campo TRANSF_CODI_EMP também precisam ser migradas.

2- O mesmo do item acima vale para empresas que no parâmetro está marcado que tem centralizadora do esocial (foparmto.EMPRESA_CENTRALIZADORA_ESOCIAL), precisa olhar quais empresas são essas e importá-las.

3- Na tabela do esocial o primeiro registro S-1000 o campo XML_EVENTO vem com o texto 'conversao', isso é necessário afim de que seja executado o sql pós conversão de setar nos parâmetros o esocial, caso contrário na hora de parametrizar ele exclui os dados que foram importados.

4- Pra importar os empregados, fazemos na seguinte ordem:
    a) os que não tem empregado vinculado (transf_codi_emp is null) -> 6_foempregados.sql
    b) os que o código da empresa origem é menor que o código da empresa destino -> 6_foempregados_transf_1.sql
    c) os que o código da empresa origem é maior que o código da empresa destino -> 6_foempregados_transf_2.sql