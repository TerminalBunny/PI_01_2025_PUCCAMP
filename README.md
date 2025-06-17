
# PI_01_2025_PUCCAMP

Projeto (Final) Integrador do Curso de Engenharia de Software do 1º Semestre do ano de 2025



## Instalação do Banco de Dados

Configurar o Banco de Dados no MySQL (copie o código abaixo e execute em uma query no MySQL Workbench)

```sql
create database sustentabilidade;
use sustentabilidade;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dados`
--

DROP TABLE IF EXISTS `dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-16 14:53:38
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