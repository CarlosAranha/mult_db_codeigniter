-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.11 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para app1
CREATE DATABASE IF NOT EXISTS `app1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `app1`;


-- Copiando estrutura para tabela app1.tb_app
CREATE TABLE IF NOT EXISTS `tb_app` (
  `key` text,
  `descricao` text,
  `create` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela app1.tb_app: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_app` DISABLE KEYS */;
INSERT INTO `tb_app` (`key`, `descricao`, `create`, `update`, `by`) VALUES
	('324a4a385f58586a5569273061694b4d', 'Aplicação 1', '2015-06-30 09:55:55', NULL, 'Carlos Aranha');
/*!40000 ALTER TABLE `tb_app` ENABLE KEYS */;


-- Copiando estrutura para tabela app1.tb_produtos
CREATE TABLE IF NOT EXISTS `tb_produtos` (
  `id` int(7) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `unidade` enum('UN','KG','MT','LT','ML','KIT') NOT NULL,
  `estoque` decimal(10,2) NOT NULL,
  `preco_custo` decimal(10,2) NOT NULL,
  `preco_venda` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `dt_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_edit` datetime DEFAULT NULL,
  `dt_delete` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela app1.tb_produtos: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_produtos` DISABLE KEYS */;
INSERT INTO `tb_produtos` (`id`, `nome`, `unidade`, `estoque`, `preco_custo`, `preco_venda`, `status`, `dt_cadastro`, `dt_edit`, `dt_delete`) VALUES
	(0000001, 'SABAO EM PO 500G', 'UN', 5.00, 1.78, 3.75, 1, '2015-06-30 09:30:30', NULL, NULL),
	(0000002, 'ARROZ TIPO1 10KG', 'UN', 5.00, 5.00, 10.75, 1, '2015-06-30 09:30:30', NULL, NULL),
	(0000003, 'PAPEL HIGIENICO 8UN', 'UN', 10.00, 4.10, 8.75, 1, '2015-06-30 09:31:49', NULL, NULL),
	(0000004, 'FEIJAO PRETO 1KG', 'UN', 50.00, 2.10, 4.75, 0, '2015-06-30 09:32:53', NULL, '2015-06-30 11:08:36'),
	(0000005, 'CEBOLA BRANCA', 'KG', 12.00, 1.50, 3.12, 1, '2015-06-30 09:33:38', NULL, NULL),
	(0000006, 'SABONETE ', 'UN', 21.00, 0.25, 0.75, 1, '2015-06-30 09:32:53', NULL, NULL),
	(0000007, 'DETERGENTE LIQUIDO', 'UN', 10.00, 0.75, 1.28, 1, '2015-06-30 09:32:53', NULL, NULL),
	(0000008, 'VASSOURA PIASSABA', 'UN', 2.00, 4.25, 12.74, 1, '2015-06-30 09:32:53', NULL, NULL),
	(0000009, 'RODO 50CM', 'UN', 8.00, 3.95, 7.10, 1, '2015-06-30 09:32:53', NULL, NULL),
	(0000010, 'TAPETE PERSON', 'UN', 84.00, 3.10, 5.75, 1, '2015-06-30 09:32:53', NULL, NULL);
/*!40000 ALTER TABLE `tb_produtos` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
