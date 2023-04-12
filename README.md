## 💻 Projeto

Um Banco de Dados com diagrama da modelagem de entidade relacionamento (MER) e modelagem relacional (MR)  do funcionamento dos registros das ordens de serviço(OS) de uma oficina mecânica. Neste caso, será usado o MySQL.  Foi desafiador entender as necessidades do cliente, estabelecer os relacionamentos e aplicar as Formas Normais(FN).

## Modelo de negócio do cliente <br>

<p>
Sistema de controle e gerenciamento de execução de ordens de serviço em uma
oficina mecânica: Clientes levam veículos à oficina mecânica para serem consertados
ou para passarem por revisões periódicas.<br>
● Cada veículo é designado a uma equipe de mecânicos que identifica os
serviços a serem executados e preenche uma ordem de serviço (OS) e prevê uma
data de entrega..<br>
● A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela
de referência de mão-de-obra. O valor de cada peça necessária à execução do serviço
também é computado..<br>
● O cliente autoriza a execução dos serviços e a mesma equipe responsável pela
avaliação realiza os serviços. Clientes possuem código, nome, endereço e telefone..<br>
● Veículos possuem código, placa e descrição..<br>
● Cada mecânico possui código, nome, endereço e especialidade..<br>
● Cada OS possui um número, uma data de emissão, um valor e uma data para
conclusão dos trabalhos. Uma OS pode ser composta de vários ítens (serviços) e um
mesmo serviço pode constar em várias ordens de serviço. Uma OS pode envolver
vários tipos de peças e um mesmo tipo de peça pode ser necessária em várias ordens
de serviço.
</p><br>


## Modelo Lógico <br>

<p align="center">
<img src="./img/imgLogico.png/" width = "80%"  height = "80%">
</p><br>

## Modelo Físico <br>

<p align="center">
<img src="./img/imgFisico.png/" width = "80%"  height = "80%">
</p><br>

## Tecnologia utilizada:

<div style="display: inline_block">
 <img align="center" alt="madeira-mysql" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original.svg">
 <img src="./img/brmodelo.png" width = "50px"  height = "50px">
</div>

<br><p>
O projeto foi desenvolvido inicialmente com o br_Modelo e MySQL Workbench. Logo mais será inicido a codificão e implementação dos dados nas tabelas.
</p>






