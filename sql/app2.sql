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

-- Copiando estrutura do banco de dados para app2
CREATE DATABASE IF NOT EXISTS `app2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `app2`;


-- Copiando estrutura para tabela app2.tb_app
CREATE TABLE IF NOT EXISTS `tb_app` (
  `key` text,
  `descricao` text,
  `create` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela app2.tb_app: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_app` DISABLE KEYS */;
INSERT INTO `tb_app` (`key`, `descricao`, `create`, `update`, `by`) VALUES
	('312e4d6b2c3b3a295b4e6e5a41', 'Aplicação 2', '2015-06-30 09:55:55', NULL, 'Alfa Develop');
/*!40000 ALTER TABLE `tb_app` ENABLE KEYS */;


-- Copiando estrutura para tabela app2.tb_produtos
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

-- Copiando dados para a tabela app2.tb_produtos: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_produtos` DISABLE KEYS */;
INSERT INTO `tb_produtos` (`id`, `nome`, `unidade`, `estoque`, `preco_custo`, `preco_venda`, `status`, `dt_cadastro`, `dt_edit`, `dt_delete`) VALUES
	(0000001, 'MIOJO DICOPO 250G', 'UN', 17.00, 1.15, 2.76, 1, '2015-06-30 09:30:30', NULL, NULL),
	(0000002, 'NISSIN MIOJO', 'UN', 1.00, 0.30, 0.99, 1, '2015-06-30 09:30:30', NULL, NULL),
	(0000003, 'LEITE PIRACANJUBA 1LT', 'UN', 15.00, 1.80, 2.90, 1, '2015-06-30 09:31:49', NULL, NULL),
	(0000004, 'PINGA 51 1LT', 'UN', 41.00, 2.10, 5.00, 0, '2015-06-30 09:32:53', NULL, '2015-06-30 11:08:36'),
	(0000005, 'WHISQUE OLD PAR', 'UN', 50.00, 36.00, 120.00, 1, '2015-06-30 09:33:38', NULL, NULL),
	(0000006, 'CD GRAVÁVEL', 'UN', 100.00, 0.25, 0.99, 1, '2015-06-30 09:32:53', NULL, NULL),
	(0000007, 'DVD GRAVÁVEL', 'UN', 200.00, 0.35, 1.50, 1, '2015-06-30 09:32:53', NULL, NULL),
	(0000008, 'MACA ', 'KG', 50.00, 2.10, 4.38, 1, '2015-06-30 09:32:53', NULL, NULL),
	(0000009, 'UVA', 'KG', 50.00, 3.95, 7.99, 1, '2015-06-30 09:32:53', NULL, NULL),
	(0000010, 'PERA', 'KG', 50.00, 5.10, 9.87, 1, '2015-06-30 09:32:53', NULL, NULL);
/*!40000 ALTER TABLE `tb_produtos` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
