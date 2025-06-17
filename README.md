
# PI_01_2025_PUCCAMP

Projeto (Final) Integrador do Curso de Engenharia de Software do 1º Semestre do ano de 2025



## Instalação do Banco de Dados

Configurar o Banco de Dados no MySQL (copie o código abaixo e execute em uma query no MySQL Workbench)

```sql
drop database if exists sustentabilidade;
create database sustentabilidade;
use sustentabilidade;

DROP TABLE IF EXISTS `dados`;
CREATE TABLE `dados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dia` date DEFAULT NULL,
  `Quantidade_de_Água_Consumida` float DEFAULT NULL,
  `Quantidade_de_Energia` float DEFAULT NULL,
  `Quantidade_de_Resíduo_Não_Reciclável` float DEFAULT NULL,
  `Porcentagem_de_Recicláveis` float DEFAULT NULL,
  `Meio_de_Transporte_Público` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Bicicleta` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Caminhada` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Carro` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Carro_Elétrico` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Carona_Compartilhada` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `saídas`;
CREATE TABLE `saídas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Sustentabilidade_Água` VARCHAR(100) DEFAULT NULL,
  `Sustentabilidade_Energia` VARCHAR(100) DEFAULT NULL,
  `Sustentabilidade_Lixo` VARCHAR(100) DEFAULT NULL,
  `Sustentabilidade_Transporte` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
```

## Conexão do Python com o Banco de Dados
Garante que você tenha o `mysql.connector` instalado tanto do IDE do Python/VS Code e/ou na sua máquina, caso contrário não será possível estabelecer tal conexão.

Dentro do arquivo do projeto (`projeto_final.py`), formate a seguinte seção incluindo os dados necessários:
```python
#Conexão BD
connect = mysql.connector.connect(
    host = "IP ou hostname do servidor MySQL",
    user = "Login",
    password = "Senha", 
    database = "Nome do banco (tem que existir)"
)
cursor = connect.cursor()
```

## Avisos
- Não inserir, apagar ou modificar dados manualmente pelo MySQL, somente pelo programa em Python, caso contrário sera preciso apagar o banco de dados por completo e recria-lo.
- Para verificar se os dados foram inseridos corretamente no banco, use somente comandos como `SELECT * FROM table` e nada além.
- Não modificar nenhuma das funções ou qualquer outra parte do código que não sejam os dados necessários para conexão com o banco de dados.
- Caso você possua um Banco de Dados com o nome "sustentabilidade", o mesmo sera apagado em prol da criação de um novo a ser usado pelo Projeto.