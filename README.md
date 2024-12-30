# SuzanoDio
Bootcamp
####
Analisando dados de um Dashboard de Vendas no Power BI
![image](https://github.com/lanmeb/SuzanoDio/blob/main/Rel1.png)

![image](https://github.com/lanmeb/SuzanoDio/blob/main/Rel2.png)

#### Desafio
![image](https://github.com/lanmeb/SuzanoDio/blob/main/Rel3.png)

#### Desafio 2: Criando Um Relatório Gerencial de Vendas com Power BI
![image](https://github.com/lanmeb/SuzanoDio/blob/main/Rel4.png)

![image](https://github.com/lanmeb/SuzanoDio/blob/main/Rel5.png)

<!-- O uso de Botões não foi possível na versão PBI Power Platform -->
## Projeto e-commerce.

Projeto Conceitual de Banco de Dados – E-COMMERCE

### Produto
- Os produtos são vendidos por uma única plataforma online, contudo, estes podem ter vendedores distintos (terceiros).
- Cada produto possui um fornecedor.
- Um ou mais produtos podem compor um pedido
### Cliente
- O cliente pode se cadastrar no site com seu CPF ou CNPJ.
-	O endereço do cliente irá determinar o valor do frete. 
-	Um cliente pode realizar mais de um pedido. Este tem um período de carência para devolução do produto.
### Pedido
-	Os pedidos são criados por clientes e possuem informações de compra, endereço e status de entrega. 
-	Um produto ou mais compõem o pedido.
-	O pedido pode ser cancelado.
### Pagamento 
-	Pode ter mais de uma forma de pagamento
### Entrega
-	Possui status e código de rastreio
  
![image](https://github.com/lanmeb/SuzanoDio/blob/main/e-commerce.png)

# DESAFIO: Criar esquema conceitual para o contexto de oficina 
#### Narrativa:

- Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica.
- Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões periódicas.
- Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
- A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra.
- O valor de cada peça também irá compor a OSO cliente autoriza a execução dos serviços.
- A mesma equipe avalia e executa os serviços.
- Os mecânicos possuem código, nome, endereço e especialidade.
- Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.

![image](https://github.com/lanmeb/SuzanoDio/blob/main/Oficina.png)


### Modelo lógico - Oficina
![image](https://github.com/lanmeb/SuzanoDio/blob/main/Oficina_logico.png)
