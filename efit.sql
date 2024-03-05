-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: efit-kohler
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `carga_status`
--

DROP TABLE IF EXISTS `carga_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carga_status` (
  `orde_orderId` char(50) NOT NULL,
  `orde_sequence` char(15) DEFAULT NULL,
  `orde_marketplaceOrderId` varchar(30) DEFAULT NULL,
  `orde_marketplaceServicesEndpoint` varchar(100) DEFAULT NULL,
  `orde_sellerOrderId` varchar(30) DEFAULT NULL,
  `orde_origin` varchar(20) DEFAULT NULL,
  `orde_affiliateId` varchar(30) DEFAULT NULL,
  `orde_salesChannel` varchar(30) DEFAULT NULL,
  `orde_merchantName` varchar(60) DEFAULT NULL,
  `orde_status` char(40) DEFAULT NULL,
  `orde_statusDescription` varchar(80) DEFAULT NULL,
  `orde_value` decimal(17,2) DEFAULT NULL,
  `orde_creationDate` datetime DEFAULT NULL,
  `orde_lastChange` datetime DEFAULT NULL,
  `orde_orderGroup` varchar(30) DEFAULT NULL,
  `orde_totals_Items` decimal(15,2) DEFAULT NULL,
  `orde_totals_Discounts` decimal(15,2) DEFAULT NULL,
  `orde_totals_Shipping` decimal(15,2) DEFAULT NULL,
  `orde_totals_Tax` decimal(15,2) DEFAULT NULL,
  `orde_giftRegistryData` varchar(50) DEFAULT NULL,
  `orde_marketingData` varchar(50) DEFAULT NULL,
  `orde_callCenterOperatorData` varchar(50) DEFAULT NULL,
  `orde_followUpEmail` varchar(100) DEFAULT NULL,
  `orde_lastMessage` text,
  `orde_hostname` varchar(60) DEFAULT NULL,
  `orde_changesAttachment` varchar(255) DEFAULT NULL,
  `orde_openTextField` varchar(255) DEFAULT NULL,
  `orde_roundingError` varchar(20) DEFAULT NULL,
  `orde_orderFormId` varchar(40) DEFAULT NULL,
  `orde_efit_empr` bigint DEFAULT NULL,
  `orde_efit_imp` datetime DEFAULT NULL,
  `orde_efit_status` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carga_status`
--

LOCK TABLES `carga_status` WRITE;
/*!40000 ALTER TABLE `carga_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `carga_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carga_tracking`
--

DROP TABLE IF EXISTS `carga_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carga_tracking` (
  `orde_orderId` char(50) NOT NULL,
  `inse_invoiceId` char(50) NOT NULL,
  `inse_type` varchar(20) DEFAULT NULL,
  `inse_invoiceNumber` int NOT NULL DEFAULT '0',
  `inse_invoiceKey` char(44) DEFAULT NULL,
  `inse_courier` varchar(60) DEFAULT NULL,
  `inse_trackingNumber` varchar(50) DEFAULT NULL,
  `inse_trackingUrl` varchar(100) DEFAULT NULL,
  `inse_issuanceDate` date DEFAULT NULL,
  `inse_invoiceValue` decimal(15,2) DEFAULT NULL,
  `inse_rec_date` date DEFAULT NULL,
  `inse_rec_receipt` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carga_tracking`
--

LOCK TABLES `carga_tracking` WRITE;
/*!40000 ALTER TABLE `carga_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `carga_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cofins`
--

DROP TABLE IF EXISTS `cofins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cofins` (
  `cofins_id` varchar(100) NOT NULL,
  `nitem` varchar(50) NOT NULL,
  `cst` varchar(100) DEFAULT NULL,
  `qbcprod` varchar(100) DEFAULT NULL,
  `valiqprod` varchar(100) DEFAULT NULL,
  `vcofins` varchar(100) DEFAULT NULL,
  `vbc` varchar(100) DEFAULT NULL,
  `pcofins` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cofins_id`,`nitem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cofins`
--

LOCK TABLES `cofins` WRITE;
/*!40000 ALTER TABLE `cofins` DISABLE KEYS */;
/*!40000 ALTER TABLE `cofins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configcolor`
--

DROP TABLE IF EXISTS `configcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configcolor` (
  `id_conf_cd_config` bigint NOT NULL,
  `conf_description` varchar(50) NOT NULL,
  `conf_key` varchar(50) NOT NULL,
  `conf_value` varchar(255) NOT NULL,
  `conf_type` char(3) NOT NULL,
  `conf_opt` varchar(255) NOT NULL,
  `conf_visivel` enum('1','0') NOT NULL,
  `conf_descr_grupo` varchar(50) NOT NULL,
  `conf_opt_table` varchar(150) NOT NULL,
  `conf_opt_col_value` varchar(100) NOT NULL,
  `conf_opt_col_label` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configcolor`
--

LOCK TABLES `configcolor` WRITE;
/*!40000 ALTER TABLE `configcolor` DISABLE KEYS */;
/*!40000 ALTER TABLE `configcolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det`
--

DROP TABLE IF EXISTS `det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `det` (
  `prod_id` varchar(100) NOT NULL,
  `nitem` varchar(50) NOT NULL,
  `infadprod` text,
  `vtottrib` varchar(50) DEFAULT NULL,
  `cofinsaliq_cofins_id` varchar(50) DEFAULT NULL,
  `cofinsoutr_cofins_id` varchar(50) DEFAULT NULL,
  `cofinsnt_cofins_id` varchar(50) DEFAULT NULL,
  `cofinsqtde_cofins_id` varchar(50) DEFAULT NULL,
  `pisst_pisst_id` varchar(50) DEFAULT NULL,
  `issqn_issqn_id` varchar(50) DEFAULT NULL,
  `pisaliq_pis_id` varchar(50) DEFAULT NULL,
  `pisqtde_pis_id` varchar(50) DEFAULT NULL,
  `pisnt_pis_id` varchar(50) DEFAULT NULL,
  `pisoutr_pis_id` varchar(50) DEFAULT NULL,
  `ii_ii_id` varchar(50) DEFAULT NULL,
  `qselo` varchar(50) DEFAULT NULL,
  `clenq` varchar(50) DEFAULT NULL,
  `cenq` varchar(50) DEFAULT NULL,
  `cselo` varchar(50) DEFAULT NULL,
  `cnpjprod` varchar(50) DEFAULT NULL,
  `ipitrib_ipi_id` varchar(50) DEFAULT NULL,
  `ipint_ipi_id` varchar(50) DEFAULT NULL,
  `cofinsst_cofinsst_id` varchar(50) DEFAULT NULL,
  `icmssn101_icms_id` varchar(50) DEFAULT NULL,
  `icmssn102_icms_id` varchar(50) DEFAULT NULL,
  `icmssn202_icms_id` varchar(50) DEFAULT NULL,
  `icms10_icms_id` varchar(50) DEFAULT NULL,
  `icmssn201_icms_id` varchar(50) DEFAULT NULL,
  `icms60_icms_id` varchar(50) DEFAULT NULL,
  `icmspart_icms_id` varchar(50) DEFAULT NULL,
  `icms40_icms_id` varchar(50) DEFAULT NULL,
  `icmssn500_icms_id` varchar(50) DEFAULT NULL,
  `icms20_icms_id` varchar(50) DEFAULT NULL,
  `icms70_icms_id` varchar(50) DEFAULT NULL,
  `icms30_icms_id` varchar(50) DEFAULT NULL,
  `icms00_icms_id` varchar(50) DEFAULT NULL,
  `icmsst_icms_id` varchar(50) DEFAULT NULL,
  `icms90_icms_id` varchar(50) DEFAULT NULL,
  `icms51_icms_id` varchar(50) DEFAULT NULL,
  `icmssn900_icms_id` varchar(50) DEFAULT NULL,
  `icmsufdest_icmsdest_id` varchar(50) DEFAULT NULL,
  `qtrib` varchar(50) DEFAULT NULL,
  `cprod` varchar(50) DEFAULT NULL,
  `vuntrib` varchar(50) DEFAULT NULL,
  `xprod` varchar(255) DEFAULT NULL,
  `vfrete` varchar(50) DEFAULT NULL,
  `vseg` varchar(50) DEFAULT NULL,
  `extipi` varchar(50) DEFAULT NULL,
  `vdesc` varchar(50) DEFAULT NULL,
  `ucom` varchar(50) DEFAULT NULL,
  `voutro` varchar(50) DEFAULT NULL,
  `vuncom` varchar(50) DEFAULT NULL,
  `indtot` varchar(50) DEFAULT NULL,
  `ceantrib` varchar(50) DEFAULT NULL,
  `xped` varchar(50) DEFAULT NULL,
  `cean` varchar(50) DEFAULT NULL,
  `nitemped` varchar(50) DEFAULT NULL,
  `cest` varchar(50) DEFAULT NULL,
  `nfci` varchar(50) DEFAULT NULL,
  `qcom` varchar(50) DEFAULT NULL,
  `nrecopi` varchar(50) DEFAULT NULL,
  `utrib` varchar(50) DEFAULT NULL,
  `vprod` varchar(50) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `ncm` varchar(50) DEFAULT NULL,
  `nfe_nfe_id` varchar(50) DEFAULT NULL,
  `nve_str` varchar(50) DEFAULT NULL,
  `med_nlote` varchar(50) DEFAULT NULL,
  `med_qlote` varchar(50) DEFAULT NULL,
  `med_dfab` varchar(50) DEFAULT NULL,
  `med_dval` varchar(50) DEFAULT NULL,
  `med_vpmc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`prod_id`,`nitem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det`
--

LOCK TABLES `det` WRITE;
/*!40000 ALTER TABLE `det` DISABLE KEYS */;
/*!40000 ALTER TABLE `det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_dest_list`
--

DROP TABLE IF EXISTS `email_dest_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_dest_list` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nfeout_chave` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `nfeout_dest_xnome` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nfeout_emailsend_status` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email_dest_list_id_index` (`id`),
  KEY `nfeout_chave_index` (`nfeout_chave`),
  KEY `nfeout_dest_xnome_index` (`nfeout_dest_xnome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_dest_list`
--

LOCK TABLES `email_dest_list` WRITE;
/*!40000 ALTER TABLE `email_dest_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_dest_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_events_history`
--

DROP TABLE IF EXISTS `email_events_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_events_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nfeout_nnf` int NOT NULL,
  `nfeout_chave` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nxml_xped` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cfop` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nfeout_dest_xnome` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nfeout_emailsend_status` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email_events_history_nfeout_nnf_index` (`nfeout_nnf`),
  KEY `email_events_history_cfop_index` (`cfop`),
  KEY `email_events_history_nxml_xped_index` (`nxml_xped`),
  KEY `email_events_history_nfeout_chave_index` (`nfeout_chave`),
  KEY `email_events_history_nfeout_dest_xnome_index` (`nfeout_dest_xnome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_events_history`
--

LOCK TABLES `email_events_history` WRITE;
/*!40000 ALTER TABLE `email_events_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_events_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emaildoccarga`
--

DROP TABLE IF EXISTS `emaildoccarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emaildoccarga` (
  `id_ined_cd_inemaildoc` bigint NOT NULL,
  `ined_date` datetime DEFAULT NULL,
  `ined_iddoc` char(60) DEFAULT NULL,
  `ined_doc_tipo` char(15) DEFAULT NULL,
  `ined_cnpj` char(14) DEFAULT NULL,
  `ined_subject` varchar(255) DEFAULT NULL,
  `ined_indbox` int DEFAULT NULL,
  `ined_from` varchar(150) DEFAULT NULL,
  `ined_to` varchar(150) DEFAULT NULL,
  `ined_dh_imp` datetime DEFAULT NULL,
  `ined_status` char(15) DEFAULT NULL,
  `ined_doc_file` varchar(255) DEFAULT NULL,
  `ined_doc_bin` longblob,
  PRIMARY KEY (`id_ined_cd_inemaildoc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emaildoccarga`
--

LOCK TABLES `emaildoccarga` WRITE;
/*!40000 ALTER TABLE `emaildoccarga` DISABLE KEYS */;
/*!40000 ALTER TABLE `emaildoccarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_ngtb_eventidl_evid`
--

DROP TABLE IF EXISTS `fc_ngtb_eventidl_evid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fc_ngtb_eventidl_evid` (
  `id_ngtb_eventidl_evid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `evid_dh_receb` datetime DEFAULT NULL,
  `evid_method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evid_status` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evid_message_ret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `evid_nr_ped` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `evid_centro` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `evid_nr_campanha` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_ngtb_eventidl_evid`),
  KEY `fc_ngtb_eventidl_evid_evid_dh_receb_index` (`evid_dh_receb`),
  KEY `fc_ngtb_eventidl_evid_evid_nr_ped_index` (`evid_nr_ped`),
  KEY `fc_ngtb_eventidl_evid_evid_nr_campanha_index` (`evid_nr_campanha`),
  KEY `fc_ngtb_eventidl_evid_evid_status_index` (`evid_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_ngtb_eventidl_evid`
--

LOCK TABLES `fc_ngtb_eventidl_evid` WRITE;
/*!40000 ALTER TABLE `fc_ngtb_eventidl_evid` DISABLE KEYS */;
/*!40000 ALTER TABLE `fc_ngtb_eventidl_evid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_ngtb_gnrehist_gnrh`
--

DROP TABLE IF EXISTS `fc_ngtb_gnrehist_gnrh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fc_ngtb_gnrehist_gnrh` (
  `id_gnrh_cd_gnrehist` int unsigned NOT NULL AUTO_INCREMENT,
  `id_gnrg_cd_guiagnre` bigint DEFAULT NULL,
  `gnrh_dh_reg` datetime DEFAULT NULL,
  `gnrh_cstat` char(50) DEFAULT '',
  `gnrh_msg` text,
  PRIMARY KEY (`id_gnrh_cd_gnrehist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_ngtb_gnrehist_gnrh`
--

LOCK TABLES `fc_ngtb_gnrehist_gnrh` WRITE;
/*!40000 ALTER TABLE `fc_ngtb_gnrehist_gnrh` DISABLE KEYS */;
/*!40000 ALTER TABLE `fc_ngtb_gnrehist_gnrh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_ngtb_inemprctensu_iens`
--

DROP TABLE IF EXISTS `fc_ngtb_inemprctensu_iens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fc_ngtb_inemprctensu_iens` (
  `iens_cnpj` char(44) NOT NULL DEFAULT '',
  `iens_ult_nsu` char(15) DEFAULT NULL,
  `iens_max_nsu` char(15) DEFAULT NULL,
  PRIMARY KEY (`iens_cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_ngtb_inemprctensu_iens`
--

LOCK TABLES `fc_ngtb_inemprctensu_iens` WRITE;
/*!40000 ALTER TABLE `fc_ngtb_inemprctensu_iens` DISABLE KEYS */;
/*!40000 ALTER TABLE `fc_ngtb_inemprctensu_iens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_ngtb_inemprnfssp_ienf`
--

DROP TABLE IF EXISTS `fc_ngtb_inemprnfssp_ienf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fc_ngtb_inemprnfssp_ienf` (
  `ienf_cnpj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ienf_last_page` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `ienf_last_nfse` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ienf_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_ngtb_inemprnfssp_ienf`
--

LOCK TABLES `fc_ngtb_inemprnfssp_ienf` WRITE;
/*!40000 ALTER TABLE `fc_ngtb_inemprnfssp_ienf` DISABLE KEYS */;
/*!40000 ALTER TABLE `fc_ngtb_inemprnfssp_ienf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_ngtb_inemprnsu_arquivei_iear`
--

DROP TABLE IF EXISTS `fc_ngtb_inemprnsu_arquivei_iear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fc_ngtb_inemprnsu_arquivei_iear` (
  `iear_iens_ult_nsu` char(15) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `iear_max_nsu` char(15) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_ngtb_inemprnsu_arquivei_iear`
--

LOCK TABLES `fc_ngtb_inemprnsu_arquivei_iear` WRITE;
/*!40000 ALTER TABLE `fc_ngtb_inemprnsu_arquivei_iear` DISABLE KEYS */;
/*!40000 ALTER TABLE `fc_ngtb_inemprnsu_arquivei_iear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_ngtb_inemprnsu_iens`
--

DROP TABLE IF EXISTS `fc_ngtb_inemprnsu_iens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fc_ngtb_inemprnsu_iens` (
  `iens_cnpj` char(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iens_ult_nsu` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `iens_max_nsu` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`iens_cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_ngtb_inemprnsu_iens`
--

LOCK TABLES `fc_ngtb_inemprnsu_iens` WRITE;
/*!40000 ALTER TABLE `fc_ngtb_inemprnsu_iens` DISABLE KEYS */;
/*!40000 ALTER TABLE `fc_ngtb_inemprnsu_iens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_ngtb_nfeepec_history_nphis`
--

DROP TABLE IF EXISTS `fc_ngtb_nfeepec_history_nphis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fc_ngtb_nfeepec_history_nphis` (
  `id_nfeepec_history_nphis` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_nxml_cd_nfexml` bigint NOT NULL,
  `nphis_dh_reg` datetime DEFAULT NULL,
  `nphis_evento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nphis_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nphis_cstat` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nphis_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nphis_status_hist` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_nfeepec_history_nphis`),
  KEY `fc_ngtb_nfeepec_history_nphis_id_nxml_cd_nfexml_index` (`id_nxml_cd_nfexml`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_ngtb_nfeepec_history_nphis`
--

LOCK TABLES `fc_ngtb_nfeepec_history_nphis` WRITE;
/*!40000 ALTER TABLE `fc_ngtb_nfeepec_history_nphis` DISABLE KEYS */;
/*!40000 ALTER TABLE `fc_ngtb_nfeepec_history_nphis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_ngtb_nfeepec_nepec`
--

DROP TABLE IF EXISTS `fc_ngtb_nfeepec_nepec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fc_ngtb_nfeepec_nepec` (
  `id_nxml_cd_nfexml` bigint NOT NULL,
  `nepec_chvnfe_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nepec_chvnfe_new` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nepec_nprot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nepec_nnf` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nepec_serie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nepec_cnpj_emit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nepec_cnpj_dest` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nepec_status_mon` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nepec_last_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nepec_last_cstat` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nepec_nfe_aut` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `nepec_dh_aut` datetime DEFAULT NULL,
  `nepec_dh_emi` datetime DEFAULT NULL,
  KEY `fc_ngtb_nfeepec_nepec_id_nxml_cd_nfexml_index` (`id_nxml_cd_nfexml`),
  KEY `fc_ngtb_nfeepec_nepec_nepec_chvnfe_old_index` (`nepec_chvnfe_old`),
  KEY `fc_ngtb_nfeepec_nepec_nepec_chvnfe_new_index` (`nepec_chvnfe_new`),
  KEY `fc_ngtb_nfeepec_nepec_nepec_nnf_index` (`nepec_nnf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_ngtb_nfeepec_nepec`
--

LOCK TABLES `fc_ngtb_nfeepec_nepec` WRITE;
/*!40000 ALTER TABLE `fc_ngtb_nfeepec_nepec` DISABLE KEYS */;
/*!40000 ALTER TABLE `fc_ngtb_nfeepec_nepec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_ngtb_nfeseq_table`
--

DROP TABLE IF EXISTS `fc_ngtb_nfeseq_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fc_ngtb_nfeseq_table` (
  `ntab_nfe_num` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_ngtb_nfeseq_table`
--

LOCK TABLES `fc_ngtb_nfeseq_table` WRITE;
/*!40000 ALTER TABLE `fc_ngtb_nfeseq_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `fc_ngtb_nfeseq_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_astb_nfexmlorder_nfxo`
--

DROP TABLE IF EXISTS `fe_astb_nfexmlorder_nfxo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_astb_nfexmlorder_nfxo` (
  `id_nxml_cd_nfexml` bigint NOT NULL,
  `orde_orderId` char(50) NOT NULL,
  `nfxo_status` char(15) DEFAULT NULL,
  `nfxo_lastchange_status` datetime DEFAULT NULL,
  PRIMARY KEY (`id_nxml_cd_nfexml`,`orde_orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_astb_nfexmlorder_nfxo`
--

LOCK TABLES `fe_astb_nfexmlorder_nfxo` WRITE;
/*!40000 ALTER TABLE `fe_astb_nfexmlorder_nfxo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_astb_nfexmlorder_nfxo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_astb_permgroupuser_pgus`
--

DROP TABLE IF EXISTS `fe_astb_permgroupuser_pgus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_astb_permgroupuser_pgus` (
  `id_grus_cd_grupouser` bigint NOT NULL,
  `perm_entity` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pgus_permission` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_grus_cd_grupouser`,`perm_entity`),
  KEY `fe_astb_permgroupuser_pgus_FKIndex2` (`perm_entity`),
  CONSTRAINT `fe_astb_permgroupuser_pgus_ibfk_1` FOREIGN KEY (`id_grus_cd_grupouser`) REFERENCES `fe_cdtb_groupuser_grus` (`id_grus_cd_grupouser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_astb_permgroupuser_pgus`
--

LOCK TABLES `fe_astb_permgroupuser_pgus` WRITE;
/*!40000 ALTER TABLE `fe_astb_permgroupuser_pgus` DISABLE KEYS */;
INSERT INTO `fe_astb_permgroupuser_pgus` VALUES (1,'cad.empresa','rwx'),(1,'cad.groupuser','rwx'),(1,'cad.perm.groupuser','rwx'),(1,'cad.user','rwx'),(1,'cockpit.bt.atualiz.erp','rwx'),(1,'cockpit.bt.canc.nfe','rwx'),(1,'cockpit.bt.down.bol','rwx'),(1,'cockpit.bt.down.danfe','rwx'),(1,'cockpit.bt.down.event','rwx'),(1,'cockpit.bt.down.xml','rwx'),(1,'cockpit.bt.emitir.cce','rwx'),(1,'cockpit.bt.inut.nfe','rwx'),(1,'cockpit.bt.reenv.email','rwx'),(1,'cockpit.bt.view.danfe','rwx'),(1,'cockpit.bt.view.rep.nfe','rwx'),(1,'cockpit.bt.view.xml','rwx'),(1,'cockpit.gnre','rwx'),(1,'cockpit.group.permissions','rwx'),(1,'cockpit.idl','rwx'),(1,'cockpit.inbound','rwx'),(1,'cockpit.mdfe','rwx'),(1,'cockpit.nfe','rwx'),(1,'cockpit.uploadxml','rwx'),(1,'estatisticas.nfe','rwx'),(1,'reinf.viewevents','rwx'),(1,'report.report','rwx'),(1,'sefaz.wsconfig','rwx'),(1,'status.sefaz','rwx'),(2,'cockpit.bt.view.danfe','rwx'),(2,'cockpit.bt.view.xml','rwx'),(2,'cockpit.inbound','rwx'),(2,'report.report','rwx'),(2,'status.sefaz','rwx'),(3,'backup.db','---'),(3,'cad.empresa','---'),(3,'cad.groupuser','---'),(3,'cad.perm.groupuser','---'),(3,'cad.transp','---'),(3,'cad.user','---'),(3,'cockpit.balanca','---'),(3,'cockpit.bt.atualiz.erp','---'),(3,'cockpit.bt.down.danfe','---'),(3,'cockpit.bt.down.event','---'),(3,'cockpit.bt.down.xml','---'),(3,'cockpit.bt.print.danfe','---'),(3,'cockpit.bt.reenv.email','---'),(3,'cockpit.bt.view.danfe','---'),(3,'cockpit.bt.view.xml','---'),(3,'cockpit.inbound','rwx'),(3,'cockpit.nfe','rwx'),(3,'cockpit.vtex','---'),(3,'estatisticas.nfe','---'),(3,'inemail.doc','---'),(3,'integrate.config','---'),(3,'man.config','---'),(3,'man.cronjob','---'),(3,'mon.mensageria','---'),(3,'param.nfse.mun','---'),(3,'sefaz.wsconfig','---'),(3,'status.sefaz','---'),(4,'cad.empresa','rwx'),(4,'cad.groupuser','rwx'),(4,'cad.perm.groupuser','rwx'),(4,'cad.user','rwx'),(4,'cockpit.bt.atualiz.erp','rwx'),(4,'cockpit.bt.canc.nfe','rwx'),(4,'cockpit.bt.down.bol','rwx'),(4,'cockpit.bt.down.danfe','rwx'),(4,'cockpit.bt.down.event','rwx'),(4,'cockpit.bt.down.xml','rwx'),(4,'cockpit.bt.emitir.cce','rwx'),(4,'cockpit.bt.event.dest.inboud','rwx'),(4,'cockpit.bt.inut.nfe','rwx'),(4,'cockpit.bt.reenv.email','rwx'),(4,'cockpit.bt.view.danfe','rwx'),(4,'cockpit.bt.view.rep.nfe','rwx'),(4,'cockpit.bt.view.xml','rwx'),(4,'cockpit.gnre','rwx'),(4,'cockpit.group.permissions','rwx'),(4,'cockpit.idl','rwx'),(4,'cockpit.inbound','rwx'),(4,'cockpit.mdfe','rwx'),(4,'cockpit.nfe','rwx'),(4,'cockpit.uploadxml','rwx'),(4,'estatisticas.nfe','rwx'),(4,'reinf.viewevents','rwx'),(4,'report.report','rwx'),(4,'sefaz.wsconfig','rwx'),(4,'status.sefaz','rwx'),(5,'cad.adminsac','rwx'),(5,'cad.empresa','rwx'),(5,'cad.groupuser','rwx'),(5,'cad.perm.groupuser','rwx'),(5,'cad.perm.groupuser.config','rwx'),(5,'cad.user','rwx'),(5,'cockpit.anotherImps','rwx'),(5,'cockpit.bi.research','rwx'),(5,'cockpit.bt.atualiz.erp','rwx'),(5,'cockpit.bt.canc.nfe','rwx'),(5,'cockpit.bt.down.bol','rwx'),(5,'cockpit.bt.down.danfe','rwx'),(5,'cockpit.bt.down.event','rwx'),(5,'cockpit.bt.down.report','rwx'),(5,'cockpit.bt.down.xml','rwx'),(5,'cockpit.bt.emitir.cce','rwx'),(5,'cockpit.bt.event.date.saida','rwx'),(5,'cockpit.bt.event.dest.inboud','rwx'),(5,'cockpit.bt.inut.nfe','rwx'),(5,'cockpit.bt.reenv.email','rwx'),(5,'cockpit.bt.view.danfe','rwx'),(5,'cockpit.bt.view.rep.nfe','rwx'),(5,'cockpit.bt.view.xml','rwx'),(5,'cockpit.configcertified','rwx'),(5,'cockpit.configCFOP','rwx'),(5,'cockpit.configCFOP.print','rwx'),(5,'cockpit.configcode.sefaz','rwx'),(5,'cockpit.emailhistory','rwx'),(5,'cockpit.gnre','rwx'),(5,'cockpit.group.permissions','rwx'),(5,'cockpit.idl','rwx'),(5,'cockpit.inb.bt.event.dest','rwx'),(5,'cockpit.inbound','rwx'),(5,'cockpit.inp.nfs','rwx'),(5,'cockpit.mdfe','rwx'),(5,'cockpit.monit.event','rwx'),(5,'cockpit.nfe','rwx'),(5,'cockpit.out.bol','rwx'),(5,'cockpit.out.nfs','rwx'),(5,'cockpit.uploadxml','rwx'),(5,'estatisticas.nfe','rwx'),(5,'inbound_bt_report_comp','rwx'),(5,'man.config','rwx'),(5,'outbound_bt_report_comp','rwx'),(5,'reinf.viewevents','rwx'),(5,'report.report','rwx'),(5,'sefaz.wsconfig','rwx'),(5,'status.sefaz','rwx'),(6,'reinf.viewevents','rwx'),(7,'cockpit.bt.down.danfe','rwx'),(7,'cockpit.bt.down.xml','rwx'),(7,'cockpit.bt.reenv.email','rwx'),(7,'cockpit.bt.view.danfe','rwx'),(7,'cockpit.bt.view.xml','rwx'),(7,'cockpit.inbound','rwx'),(7,'cockpit.nfe','rwx'),(9,'cockpit.configcertified','rwx'),(9,'cockpit.inb.bt.event.dest','rwx'),(9,'cockpit.inbound','rwx'),(9,'cockpit.uploadxml','rwx'),(9,'estatisticas.nfe','rwx'),(9,'report.report','rwx'),(9,'status.sefaz','rwx');
/*!40000 ALTER TABLE `fe_astb_permgroupuser_pgus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_astb_userempresa_usem`
--

DROP TABLE IF EXISTS `fe_astb_userempresa_usem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_astb_userempresa_usem` (
  `id_user_cd_user` bigint NOT NULL,
  `id_empr_cd_empresa` bigint NOT NULL,
  PRIMARY KEY (`id_user_cd_user`,`id_empr_cd_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_astb_userempresa_usem`
--

LOCK TABLES `fe_astb_userempresa_usem` WRITE;
/*!40000 ALTER TABLE `fe_astb_userempresa_usem` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_astb_userempresa_usem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_cdtb_balancasocket_baso`
--

DROP TABLE IF EXISTS `fe_cdtb_balancasocket_baso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_cdtb_balancasocket_baso` (
  `baso_id` char(5) NOT NULL,
  `baso_descr` varchar(60) DEFAULT NULL,
  `baso_ip` char(15) DEFAULT NULL,
  `baso_porta` char(6) DEFAULT NULL,
  PRIMARY KEY (`baso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_cdtb_balancasocket_baso`
--

LOCK TABLES `fe_cdtb_balancasocket_baso` WRITE;
/*!40000 ALTER TABLE `fe_cdtb_balancasocket_baso` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_cdtb_balancasocket_baso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_cdtb_groupuser_grus`
--

DROP TABLE IF EXISTS `fe_cdtb_groupuser_grus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_cdtb_groupuser_grus` (
  `id_grus_cd_grupouser` bigint NOT NULL,
  `grus_description` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `grus_first_page` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_grus_cd_grupouser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_cdtb_groupuser_grus`
--

LOCK TABLES `fe_cdtb_groupuser_grus` WRITE;
/*!40000 ALTER TABLE `fe_cdtb_groupuser_grus` DISABLE KEYS */;
INSERT INTO `fe_cdtb_groupuser_grus` VALUES (1,'Focus',''),(2,'UsuÃ¡rio - SaÃ­das',NULL),(3,'UsuÃ¡rio - Entradas',''),(4,'UsuÃ¡rio - Super',NULL),(5,'UsuÃ¡rio - Entradas e SaÃ­das',''),(6,'Reinf',NULL),(7,'teste',NULL),(9,'INCEPA','');
/*!40000 ALTER TABLE `fe_cdtb_groupuser_grus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_cdtb_ibgemunicipio_imun`
--

DROP TABLE IF EXISTS `fe_cdtb_ibgemunicipio_imun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_cdtb_ibgemunicipio_imun` (
  `imun_cmun` char(7) NOT NULL,
  `imun_cmun_red` char(5) DEFAULT NULL,
  `imun_mun_nome` varchar(100) DEFAULT NULL,
  `imun_cuf` char(2) DEFAULT NULL,
  `imun_uf_nome` varchar(100) DEFAULT NULL,
  `imun_mreg_code` char(3) DEFAULT NULL,
  `imun_mreg_nome` varchar(100) DEFAULT NULL,
  `imun_mire_code` char(5) DEFAULT NULL,
  `imun_mire_nome` varchar(100) DEFAULT NULL,
  `imun_uf_sigla` char(2) DEFAULT NULL,
  PRIMARY KEY (`imun_cmun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_cdtb_ibgemunicipio_imun`
--

LOCK TABLES `fe_cdtb_ibgemunicipio_imun` WRITE;
/*!40000 ALTER TABLE `fe_cdtb_ibgemunicipio_imun` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_cdtb_ibgemunicipio_imun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_cdtb_transportadora_tran`
--

DROP TABLE IF EXISTS `fe_cdtb_transportadora_tran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_cdtb_transportadora_tran` (
  `id_tran_cd_transportadora` bigint NOT NULL AUTO_INCREMENT,
  `tran_nome` varchar(60) DEFAULT NULL,
  `tran_cnpj` char(14) DEFAULT NULL,
  `tran_tipo_track` char(20) DEFAULT NULL,
  `tran_param_url` varchar(255) DEFAULT NULL,
  `tran_field_track` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_tran_cd_transportadora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_cdtb_transportadora_tran`
--

LOCK TABLES `fe_cdtb_transportadora_tran` WRITE;
/*!40000 ALTER TABLE `fe_cdtb_transportadora_tran` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_cdtb_transportadora_tran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_cdtb_user_user`
--

DROP TABLE IF EXISTS `fe_cdtb_user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_cdtb_user_user` (
  `id_user_cd_user` bigint NOT NULL,
  `id_grus_cd_grupouser` bigint NOT NULL,
  `user_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_login` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_password` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_status` enum('A','I') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_tel1_num` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_tel1_tipo` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_tel2_num` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_tel2_tipo` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_req_upd` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_tel1_ramal` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_tel2_ramal` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_lastchng_password` datetime DEFAULT NULL,
  `remember_token` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `user_management_permission` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id_user_cd_user`),
  KEY `id_grus_cd_grupouser` (`id_grus_cd_grupouser`),
  CONSTRAINT `fe_cdtb_user_user_ibfk_1` FOREIGN KEY (`id_grus_cd_grupouser`) REFERENCES `fe_cdtb_groupuser_grus` (`id_grus_cd_grupouser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_cdtb_user_user`
--

LOCK TABLES `fe_cdtb_user_user` WRITE;
/*!40000 ALTER TABLE `fe_cdtb_user_user` DISABLE KEYS */;
INSERT INTO `fe_cdtb_user_user` VALUES (1,5,'Marlon Barbosa','mbarbosa','5bd0b3d0333e9b4cdb189290082d8789','marlon.academi@gmail.com','A','','FIX','','FIX','1','','','2018-11-20 22:30:57','FxYv6T77SkpO5sPAzSl11WaF0AFBklYYHQwM6S4Hctxw0uUTKQyclwbwsLJn',''),(3,5,'Focus','focus','5bd0b3d0333e9b4cdb189290082d8789','marlon.barbosa@focusit.com.br','A','','','','','0','','','2017-12-20 10:37:53','S2mAhp9EoPgMHfhlTt9FZhxTpTvi8EGuXX2juQFUKfqd9UjTf1edF6byPAMb',''),(5,9,'incepa','user.incepa','e663857e61a424520886f41e1726367b','marlon.barbosa@focusit.com.br','A','','','','','0','','',NULL,'hKIHgnTftIiFkIRd3qK1nml2InBAx9nYTg4oatReEMZ2QVJSCuoqiaaCwKOO',''),(6,2,'Incepa','Incepa','0cc022b5014cc278b93e729b734360f4','mailto:francieli.mika@incepa.com.br','A','','','','','0','','',NULL,'Q6mKj6SVI0C6bbRFvMoKvA2Sd5zmP6M9Ss1CMEM01kWXztCx3lm26XusezWe','');
/*!40000 ALTER TABLE `fe_cdtb_user_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_events_fretefy_evfr`
--

DROP TABLE IF EXISTS `fe_events_fretefy_evfr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_events_fretefy_evfr` (
  `id_evfr_cd_events_fretefy` bigint unsigned NOT NULL AUTO_INCREMENT,
  `evfr_vbeln` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `evfr_docnum` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `evfr_lifex` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `evfr_event_type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `evfr_status_mon` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `evfr_dh_criacao` datetime DEFAULT NULL,
  `evfr_dh_atualiza` datetime DEFAULT NULL,
  PRIMARY KEY (`id_evfr_cd_events_fretefy`),
  KEY `fe_events_fretefy_evfr_evfr_dh_atualiza_index` (`evfr_dh_atualiza`),
  KEY `fe_events_fretefy_evfr_evfr_dh_criacao_index` (`evfr_dh_criacao`),
  KEY `fe_events_fretefy_evfr_evfr_vbeln_index` (`evfr_vbeln`),
  KEY `fe_events_fretefy_evfr_evfr_docnum_index` (`evfr_docnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_events_fretefy_evfr`
--

LOCK TABLES `fe_events_fretefy_evfr` WRITE;
/*!40000 ALTER TABLE `fe_events_fretefy_evfr` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_events_fretefy_evfr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_events_fretefy_history_evfh`
--

DROP TABLE IF EXISTS `fe_events_fretefy_history_evfh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_events_fretefy_history_evfh` (
  `id_evfh_cd_events_fretefy_history` bigint unsigned NOT NULL AUTO_INCREMENT,
  `evfh_vbeln` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `evfh_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `evfh_message` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `evfr_dh_criacao` datetime DEFAULT NULL,
  `evfr_dh_atualiza` datetime DEFAULT NULL,
  PRIMARY KEY (`id_evfh_cd_events_fretefy_history`),
  KEY `fe_events_fretefy_history_evfh_evfh_vbeln_index` (`evfh_vbeln`),
  KEY `fe_events_fretefy_history_evfh_evfr_dh_criacao_index` (`evfr_dh_criacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_events_fretefy_history_evfh`
--

LOCK TABLES `fe_events_fretefy_history_evfh` WRITE;
/*!40000 ALTER TABLE `fe_events_fretefy_history_evfh` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_events_fretefy_history_evfh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_nf_anymarket_nfan`
--

DROP TABLE IF EXISTS `fe_nf_anymarket_nfan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_nf_anymarket_nfan` (
  `id_oran_cd_order_anymarket` bigint NOT NULL,
  `id_nxml_cd_nfexml` bigint NOT NULL,
  `nfan_nf_taype` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `nf_dh_criacao` datetime DEFAULT NULL,
  `nf_dh_atualiza` datetime DEFAULT NULL,
  `nfan_status_erp` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_nxml_cd_nfexml`,`id_oran_cd_order_anymarket`),
  KEY `fe_nf_anymarket_nfan_id_oran_cd_order_anymarket_index` (`id_oran_cd_order_anymarket`),
  KEY `fe_nf_anymarket_nfan_id_nxml_cd_nfexml_index` (`id_nxml_cd_nfexml`),
  KEY `fe_nfe_nfan_status_erp` (`nfan_status_erp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_nf_anymarket_nfan`
--

LOCK TABLES `fe_nf_anymarket_nfan` WRITE;
/*!40000 ALTER TABLE `fe_nf_anymarket_nfan` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_nf_anymarket_nfan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_averbtransportadora_atra`
--

DROP TABLE IF EXISTS `fe_ngtb_averbtransportadora_atra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_averbtransportadora_atra` (
  `id_atra_cd_averbtransportadora` bigint NOT NULL,
  `id_tpav_cd_tipoaverb` bigint DEFAULT NULL,
  `atra_nome` varchar(80) DEFAULT NULL,
  `atra_CNPJ` char(14) DEFAULT NULL,
  PRIMARY KEY (`id_atra_cd_averbtransportadora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_averbtransportadora_atra`
--

LOCK TABLES `fe_ngtb_averbtransportadora_atra` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_averbtransportadora_atra` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_averbtransportadora_atra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_averbxml_axml`
--

DROP TABLE IF EXISTS `fe_ngtb_averbxml_axml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_averbxml_axml` (
  `id_axml_cd_averbxml` bigint NOT NULL AUTO_INCREMENT,
  `axml_chvnfe` char(44) DEFAULT NULL,
  `axml_nnf` int DEFAULT NULL,
  `axml_serie` char(5) DEFAULT NULL,
  `axml_dhemi` datetime DEFAULT NULL,
  `axml_nprot` char(20) DEFAULT NULL,
  `axml_cstat` char(5) DEFAULT NULL,
  `axml_xmotivo` varchar(255) DEFAULT NULL,
  `axml_status` char(20) DEFAULT NULL,
  `axml_dh_imp` datetime DEFAULT NULL,
  `id_empr_cd_empresa` bigint DEFAULT NULL,
  `axml_status_msg` varchar(100) DEFAULT NULL,
  `axml_inregra` char(1) DEFAULT NULL,
  `axml_tipo_xml` char(10) DEFAULT NULL,
  `axml_proc_prot` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_axml_cd_averbxml`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_averbxml_axml`
--

LOCK TABLES `fe_ngtb_averbxml_axml` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_averbxml_axml` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_averbxml_axml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_averbxmlfile_axmf`
--

DROP TABLE IF EXISTS `fe_ngtb_averbxmlfile_axmf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_averbxmlfile_axmf` (
  `axmf_chvnfe` char(44) NOT NULL,
  `axmf_xml` text,
  PRIMARY KEY (`axmf_chvnfe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_averbxmlfile_axmf`
--

LOCK TABLES `fe_ngtb_averbxmlfile_axmf` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_averbxmlfile_axmf` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_averbxmlfile_axmf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_cfop_printer_cfpr`
--

DROP TABLE IF EXISTS `fe_ngtb_cfop_printer_cfpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_cfop_printer_cfpr` (
  `cfpr_cfop` char(10) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  KEY `fe_ngtb_cfop_printer_cfpr_cfpr_cfop_index` (`cfpr_cfop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_cfop_printer_cfpr`
--

LOCK TABLES `fe_ngtb_cfop_printer_cfpr` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_cfop_printer_cfpr` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_cfop_printer_cfpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_cfop_refusenfe_cfre`
--

DROP TABLE IF EXISTS `fe_ngtb_cfop_refusenfe_cfre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_cfop_refusenfe_cfre` (
  `cfre_cfop` char(10) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  KEY `fe_ngtb_cfop_refusenfe_cfre_cfre_cfop_index` (`cfre_cfop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_cfop_refusenfe_cfre`
--

LOCK TABLES `fe_ngtb_cfop_refusenfe_cfre` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_cfop_refusenfe_cfre` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_cfop_refusenfe_cfre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_ctein_header`
--

DROP TABLE IF EXISTS `fe_ngtb_ctein_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_ctein_header` (
  `ctein_chave` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_cuf` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_cfop` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_ctt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_serie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_dhemi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_tpimp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_cdv` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_natop` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_mod` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_nct` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_tpcte` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_procemi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_cmunenv` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_xmunenv` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_ufenv` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_xcaracad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_xcaraser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_xemi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_emicnpj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_emiie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_emixnome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_origcalc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_destcalc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_emicmun` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_remcnpj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_remie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_remxnome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_destcnpj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_destie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_destxnome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_impicms_cst` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctein_impicms_vbc` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctein_impicms_picms` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctein_impicms_vicms` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctein_infadfisco` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ctein_infchave` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `fe_ngtb_ctein_header_ctein_chave_index` (`ctein_chave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_ctein_header`
--

LOCK TABLES `fe_ngtb_ctein_header` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_ctein_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_ctein_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_ctrlconsultamdfesefaz_ccms`
--

DROP TABLE IF EXISTS `fe_ngtb_ctrlconsultamdfesefaz_ccms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_ctrlconsultamdfesefaz_ccms` (
  `ccms_chvmdfe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccms_tp_amb` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccms_dh_cosulta` datetime DEFAULT NULL,
  `ccms_ret_ws` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ccms_chvmdfe`,`ccms_tp_amb`),
  KEY `fe_ngtb_ctrlconsultamdfesefaz_ccms_ccms_chvmdfe_index` (`ccms_chvmdfe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_ctrlconsultamdfesefaz_ccms`
--

LOCK TABLES `fe_ngtb_ctrlconsultamdfesefaz_ccms` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_ctrlconsultamdfesefaz_ccms` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_ctrlconsultamdfesefaz_ccms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_ctrlconsultanfesefaz_ccns`
--

DROP TABLE IF EXISTS `fe_ngtb_ctrlconsultanfesefaz_ccns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_ctrlconsultanfesefaz_ccns` (
  `ccns_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ccns_tp_amb` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ccns_dh_consulta` datetime DEFAULT NULL,
  `ccns_ret_ws` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ccns_ret_serialize` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`ccns_chvnfe`,`ccns_tp_amb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_ctrlconsultanfesefaz_ccns`
--

LOCK TABLES `fe_ngtb_ctrlconsultanfesefaz_ccns` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_ctrlconsultanfesefaz_ccns` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_ctrlconsultanfesefaz_ccns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_ctrlconsultaservico_ccse`
--

DROP TABLE IF EXISTS `fe_ngtb_ctrlconsultaservico_ccse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_ctrlconsultaservico_ccse` (
  `id_ngtb_fe_ngtb_ctrlconsultaservico_ccse` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ccse_uf` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccse_tpamb` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccse_dh_consulta` datetime NOT NULL,
  `ccse_ret_serialize` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_ngtb_fe_ngtb_ctrlconsultaservico_ccse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_ctrlconsultaservico_ccse`
--

LOCK TABLES `fe_ngtb_ctrlconsultaservico_ccse` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_ctrlconsultaservico_ccse` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_ctrlconsultaservico_ccse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_ctrlconsultaservico_mdfe`
--

DROP TABLE IF EXISTS `fe_ngtb_ctrlconsultaservico_mdfe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_ctrlconsultaservico_mdfe` (
  `id_ngtb_ctrlconsultaservico_mdfe` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ccmd_uf` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ccmd_tpamb` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `ccmd_dh_consulta` datetime DEFAULT NULL,
  `ccmd_ret_serialize` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id_ngtb_ctrlconsultaservico_mdfe`),
  KEY `fe_ngtb_ctrlconsultaservico_mdfe_ccmd_dh_consulta_index` (`ccmd_dh_consulta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_ctrlconsultaservico_mdfe`
--

LOCK TABLES `fe_ngtb_ctrlconsultaservico_mdfe` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_ctrlconsultaservico_mdfe` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_ctrlconsultaservico_mdfe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_darfguia_dagu`
--

DROP TABLE IF EXISTS `fe_ngtb_darfguia_dagu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_darfguia_dagu` (
  `dagu_cnpj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_exercicio` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_type_imp` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_doc` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_status_mon` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_uf` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_cmun` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_receita` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_dh_payment` date DEFAULT NULL,
  `dagu_dh_emi` date DEFAULT NULL,
  `dagu_type_periodo` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_periodo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dagu_valor_principal` decimal(15,2) DEFAULT '0.00',
  `dagu_valor_multa` decimal(15,2) DEFAULT '0.00',
  `dagu_valor_juros` decimal(15,2) DEFAULT '0.00',
  `dagu_valor_total` decimal(15,2) DEFAULT '0.00',
  `id_dagu_cd_darfguia` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_dagu_cd_darfguia`),
  KEY `agu_cnpj` (`dagu_cnpj`),
  KEY `dagu_dh_emi` (`dagu_dh_emi`),
  KEY `dagu_doc` (`dagu_doc`),
  KEY `dagu_exercicio` (`dagu_exercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_darfguia_dagu`
--

LOCK TABLES `fe_ngtb_darfguia_dagu` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_darfguia_dagu` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_darfguia_dagu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_empresa_empr`
--

DROP TABLE IF EXISTS `fe_ngtb_empresa_empr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_empresa_empr` (
  `id_empr_cd_empresa` bigint NOT NULL AUTO_INCREMENT,
  `empr_nome` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `empr_razao_social` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `empr_cnpj` char(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `empr_uf` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `empr_cert_dtval` date DEFAULT NULL,
  `empr_status` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `empr_centro` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_empr_cd_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_empresa_empr`
--

LOCK TABLES `fe_ngtb_empresa_empr` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_empresa_empr` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_empresa_empr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_gko_sftp_files_gksf`
--

DROP TABLE IF EXISTS `fe_ngtb_gko_sftp_files_gksf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_gko_sftp_files_gksf` (
  `id_gksf_cd_gko_sftp_files` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gksf_file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `gksf_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `gksf_dh_created_at` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gksf_dh_update_at` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_gksf_cd_gko_sftp_files`),
  KEY `fe_ngtb_gko_sftp_files_gksf_gksf_dh_created_at_index` (`gksf_dh_created_at`),
  KEY `fe_ngtb_gko_sftp_files_gksf_gksf_status_index` (`gksf_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_gko_sftp_files_gksf`
--

LOCK TABLES `fe_ngtb_gko_sftp_files_gksf` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_gko_sftp_files_gksf` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_gko_sftp_files_gksf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_gnredoc_gndo`
--

DROP TABLE IF EXISTS `fe_ngtb_gnredoc_gndo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_gnredoc_gndo` (
  `id_gndo_cd_gnredoc` int unsigned NOT NULL AUTO_INCREMENT,
  `gndo_docnum` int DEFAULT NULL,
  `gndo_estornado` char(1) DEFAULT NULL,
  `gndo_chavenfe` char(44) DEFAULT NULL,
  `gndo_serie` char(3) DEFAULT NULL,
  `gndo_nfenum` char(9) DEFAULT NULL,
  `gndo_credat` date DEFAULT NULL,
  `gndo_moddat` date DEFAULT NULL,
  `gndo_modtime` time DEFAULT NULL,
  `gndo_moduser` char(12) DEFAULT NULL,
  `gndo_empresa` char(4) DEFAULT NULL,
  `gndo_filial` char(4) DEFAULT NULL,
  `gndo_localexpedicao` char(4) DEFAULT NULL,
  `gndo_parceiro` char(10) DEFAULT NULL,
  `gndo_imprimida` char(1) DEFAULT NULL,
  `gndo_procdat` date DEFAULT NULL,
  `gndo_proctime` time DEFAULT NULL,
  `gndo_cruser` char(12) DEFAULT NULL,
  `gndo_c01_uffavorecida` char(3) DEFAULT NULL,
  `gndo_c02_receita` int DEFAULT NULL,
  `gndo_c03_idcontribuinteem` char(14) DEFAULT NULL,
  `gndo_c04_docorigem` char(18) DEFAULT NULL,
  `gndo_c05_referencia` char(2) DEFAULT NULL,
  `gndo_periodo` char(1) DEFAULT NULL,
  `gndo_mes` char(2) DEFAULT NULL,
  `gndo_ano` char(4) DEFAULT NULL,
  `gndo_parcela` char(2) DEFAULT NULL,
  `gndo_c06_valorprincipal` decimal(15,2) DEFAULT NULL,
  `gndo_c07_atualizacaomonet` decimal(15,2) DEFAULT NULL,
  `gndo_c08_juros` decimal(15,2) DEFAULT NULL,
  `gndo_c10_valortotal` decimal(15,2) DEFAULT NULL,
  `gndo_c14_datavencimento` date DEFAULT NULL,
  `gndo_c15_convenio` char(15) DEFAULT NULL,
  `gndo_c16_razaosocialemite` char(40) DEFAULT NULL,
  `gndo_c17_inscricaoestadua` char(18) DEFAULT NULL,
  `gndo_c18_enderecoemitente` char(40) DEFAULT NULL,
  `gndo_c19_municipioemitent` char(25) DEFAULT NULL,
  `gndo_c20_ufenderecoemiten` char(3) DEFAULT NULL,
  `gndo_c21_cepemitente` char(10) DEFAULT NULL,
  `gndo_c22_telefoneemitente` char(30) DEFAULT NULL,
  `gndo_c23_informacoes` char(50) DEFAULT NULL,
  `gndo_c24_autenticacao` char(50) DEFAULT NULL,
  `gndo_c25_detalhamentorece` char(6) DEFAULT NULL,
  `gndo_c26_produto` char(3) DEFAULT NULL,
  `gndo_c27_tipoidentificaca` char(16) DEFAULT NULL,
  `gndo_c28_tipodocorigem` char(2) DEFAULT NULL,
  `gndo_c29_datalimitepagame` date DEFAULT NULL,
  `gndo_c30_nossonumero` char(15) DEFAULT NULL,
  `gndo_c31_banco` char(4) DEFAULT NULL,
  `gndo_c32_agencia` char(15) DEFAULT NULL,
  `gndo_c33_datapagamento` date DEFAULT NULL,
  `gndo_c34_tipoidentificaca` char(10) DEFAULT NULL,
  `gndo_c35_idcontribuintede` char(16) DEFAULT NULL,
  `gndo_c36_incricaoestadua` char(18) DEFAULT NULL,
  `gndo_c37_razaosocialdesti` char(40) DEFAULT NULL,
  `gndo_c38_municipiodestina` char(2) DEFAULT NULL,
  `gndo_ufdestino` char(3) DEFAULT NULL,
  `gndo_c39_campoextra1` char(40) DEFAULT NULL,
  `gndo_c40_campoextra2` char(40) DEFAULT NULL,
  `gndo_c41_campoextra3` char(40) DEFAULT NULL,
  `gndo_funcao` char(1) DEFAULT NULL,
  `gndo_situacao` char(1) DEFAULT NULL,
  `gndo_erros` char(40) DEFAULT NULL,
  `gndo_campo` char(20) DEFAULT NULL,
  `gndo_mensagem` char(40) DEFAULT NULL,
  `gndo_linhadigitavel` char(40) DEFAULT NULL,
  `gndo_dataemissao` date DEFAULT NULL,
  `gndo_horaemissao` time DEFAULT NULL,
  `gndo_status` char(20) DEFAULT NULL,
  `gndo_status_efit` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_gndo_cd_gnredoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_gnredoc_gndo`
--

LOCK TABLES `fe_ngtb_gnredoc_gndo` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_gnredoc_gndo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_gnredoc_gndo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_gnreguia_gnrg`
--

DROP TABLE IF EXISTS `fe_ngtb_gnreguia_gnrg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_gnreguia_gnrg` (
  `id_gnrg_cd_guiagnre` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gnrg_chvnfe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gnrg_nrec` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_cnpj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_uf_fav` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_receita` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_dh_cad` datetime DEFAULT NULL,
  `gnrg_dh_venc` datetime DEFAULT NULL,
  `gnrg_vtot` decimal(15,2) DEFAULT NULL,
  `gnrg_sit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_cod_bar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_tp_amb` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `gnrg_handlenfe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_handlecte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_cstat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_xmotivo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gnrg_dh_proc` datetime DEFAULT NULL,
  `gnrg_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_status_mon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gnrg_url_pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gnrg_fl_pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gnrg_status_docnum` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gnrg_docnum` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gnrg_numcontrole` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gnrg_type_operation` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gnrg_vjuros` decimal(15,2) DEFAULT '0.00',
  `gnrg_vmulta` decimal(15,2) DEFAULT '0.00',
  `gnrg_transp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gnrg_transp_cpnj` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gnrg_atualizacao_monetaria` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`id_gnrg_cd_guiagnre`),
  KEY `fe_ngtb_gnreguia_gnrg_gnrg_docnum_index` (`gnrg_docnum`),
  KEY `fe_ngtb_gnreguia_gnrg_gnrg_dh_cad_index` (`gnrg_dh_cad`),
  KEY `fe_ngtb_gnreguia_gnrg_gnrg_transp_cpnj_index` (`gnrg_transp_cpnj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_gnreguia_gnrg`
--

LOCK TABLES `fe_ngtb_gnreguia_gnrg` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_gnreguia_gnrg` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_gnreguia_gnrg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_inctexml_incx`
--

DROP TABLE IF EXISTS `fe_ngtb_inctexml_incx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_inctexml_incx` (
  `id_incx_cd_inctexml` bigint NOT NULL AUTO_INCREMENT,
  `incx_chvcte` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `incx_nct` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `incx_serie` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `incx_dhemi` datetime DEFAULT NULL,
  `incx_nprot` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `incx_cstat` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `incx_xmotivo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `incx_dh_imp` datetime DEFAULT NULL,
  `incx_status` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `incx_xml64` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `incx_cnpj_dest` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `incx_cte_saved` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '0',
  `incx_cte_status_imp` char(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'IMP_ERROR',
  `incx_cnpj_emit` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `incx_emit_nome` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_incx_cd_inctexml`),
  KEY `index_incx_dh_imp` (`incx_dh_imp`),
  KEY `fe_ngtb_inctexml_incx_incx_chvcte_index` (`incx_chvcte`),
  KEY `fe_ngtb_inctexml_incx_incx_nct_index` (`incx_nct`),
  KEY `fe_ngtb_inctexml_incx_incx_dhemi_index` (`incx_dhemi`),
  KEY `fe_ngtb_inctexml_incx_incx_status_index` (`incx_status`),
  KEY `fe_ngtb_inctexml_incx_incx_cnpj_emit_index` (`incx_cnpj_emit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_inctexml_incx`
--

LOCK TABLES `fe_ngtb_inctexml_incx` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_inctexml_incx` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_inctexml_incx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_inctexmlevent_incx`
--

DROP TABLE IF EXISTS `fe_ngtb_inctexmlevent_incx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_inctexmlevent_incx` (
  `id_ngtb_inctexmlevent_incx` bigint unsigned NOT NULL AUTO_INCREMENT,
  `incx_chvcte` char(44) DEFAULT NULL,
  `incx_tpevento` char(15) DEFAULT NULL,
  `incx_seqevento` char(10) DEFAULT NULL,
  `incx_dhregevento` datetime DEFAULT NULL,
  `incx_nprot` varchar(20) DEFAULT NULL,
  `incx_cstat` varchar(5) DEFAULT NULL,
  `incx_xmotivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_ngtb_inctexmlevent_incx`),
  KEY `index_chave` (`incx_chvcte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_inctexmlevent_incx`
--

LOCK TABLES `fe_ngtb_inctexmlevent_incx` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_inctexmlevent_incx` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_inctexmlevent_incx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_inctexmlhist_icxh`
--

DROP TABLE IF EXISTS `fe_ngtb_inctexmlhist_icxh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_inctexmlhist_icxh` (
  `id_icxh_cd_inctexmlhist` bigint NOT NULL AUTO_INCREMENT,
  `icxh_chvcte` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `icxh_dh_reg` datetime DEFAULT NULL,
  `icxh_cstat` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `icxh_xmotivo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`id_icxh_cd_inctexmlhist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_inctexmlhist_icxh`
--

LOCK TABLES `fe_ngtb_inctexmlhist_icxh` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_inctexmlhist_icxh` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_inctexmlhist_icxh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_inemaildoc_ined`
--

DROP TABLE IF EXISTS `fe_ngtb_inemaildoc_ined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_inemaildoc_ined` (
  `id_ined_cd_inemaildoc` int unsigned NOT NULL AUTO_INCREMENT,
  `ined_date` datetime DEFAULT NULL,
  `ined_iddoc` char(60) DEFAULT NULL,
  `ined_doc_tipo` char(15) DEFAULT NULL,
  `ined_cnpj` char(14) DEFAULT NULL,
  `ined_subject` varchar(255) DEFAULT NULL,
  `ined_indbox` int DEFAULT NULL,
  `ined_from` varchar(150) DEFAULT NULL,
  `ined_to` varchar(150) DEFAULT NULL,
  `ined_dh_imp` datetime DEFAULT NULL,
  `ined_status` char(15) DEFAULT NULL,
  `ined_doc_file` varchar(255) DEFAULT NULL,
  `ined_doc_bin` longblob,
  PRIMARY KEY (`id_ined_cd_inemaildoc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_inemaildoc_ined`
--

LOCK TABLES `fe_ngtb_inemaildoc_ined` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_inemaildoc_ined` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_inemaildoc_ined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_inemaildoc_ined_bkp`
--

DROP TABLE IF EXISTS `fe_ngtb_inemaildoc_ined_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_inemaildoc_ined_bkp` (
  `id_ined_cd_inemaildoc` bigint NOT NULL,
  `ined_date` datetime DEFAULT NULL,
  `ined_iddoc` char(60) DEFAULT NULL,
  `ined_doc_tipo` char(15) DEFAULT NULL,
  `ined_cnpj` char(14) DEFAULT NULL,
  `ined_subject` varchar(255) DEFAULT NULL,
  `ined_indbox` int DEFAULT NULL,
  `ined_from` varchar(150) DEFAULT NULL,
  `ined_to` varchar(150) DEFAULT NULL,
  `ined_dh_imp` datetime DEFAULT NULL,
  `ined_status` char(15) DEFAULT NULL,
  `ined_doc_file` varchar(255) DEFAULT NULL,
  `ined_doc_bin` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_inemaildoc_ined_bkp`
--

LOCK TABLES `fe_ngtb_inemaildoc_ined_bkp` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_inemaildoc_ined_bkp` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_inemaildoc_ined_bkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_innfe_cfop`
--

DROP TABLE IF EXISTS `fe_ngtb_innfe_cfop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_innfe_cfop` (
  `id_innfe_cfop` bigint unsigned NOT NULL AUTO_INCREMENT,
  `innfe_cfop` int DEFAULT NULL,
  `innfe_descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_innfe_cfop`),
  KEY `index_cfop` (`innfe_cfop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_innfe_cfop`
--

LOCK TABLES `fe_ngtb_innfe_cfop` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_innfe_cfop` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_innfe_cfop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_innfexml_dup`
--

DROP TABLE IF EXISTS `fe_ngtb_innfexml_dup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_innfexml_dup` (
  `id_innx_cd_innfexml_dup` int unsigned NOT NULL AUTO_INCREMENT,
  `innx_chave` varchar(44) DEFAULT NULL,
  `innx_dup_vencimento` date DEFAULT NULL,
  `innx_dup_valor` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id_innx_cd_innfexml_dup`),
  KEY `innx_chave` (`innx_chave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_innfexml_dup`
--

LOCK TABLES `fe_ngtb_innfexml_dup` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_innfexml_dup` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_innfexml_dup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_innfexml_innx`
--

DROP TABLE IF EXISTS `fe_ngtb_innfexml_innx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_innfexml_innx` (
  `id_innx_cd_innfexml` bigint NOT NULL AUTO_INCREMENT,
  `innx_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_nnf` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_serie` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_dhemi` datetime DEFAULT NULL,
  `innx_nprot` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_cstat` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_xmotivo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `innx_dh_imp` datetime DEFAULT NULL,
  `innx_status` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_xml64` longblob NOT NULL,
  `innx_dtlanc` date DEFAULT NULL,
  `innx_cnpj_dest` char(14) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `innx_razsoc_dest` char(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `innx_cnpj_emi` char(14) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `innx_razsoc_emi` char(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `innx_imp_email` int DEFAULT NULL,
  `innx_imp_websevice` int DEFAULT NULL,
  `innx_miro` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '0',
  `innx_avaliacao` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '0',
  `innx_retry_download` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `innx_dup` bigint DEFAULT '0',
  `innx_is_cfop_denied` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `innx_total` decimal(15,2) DEFAULT NULL,
  `innx_nsu` varchar(35) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `innx_event_dest_cienc` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '0',
  `innx_last_event_dest` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `nxml_cfop` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_uf_destiny` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_uf` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_innx_cd_innfexml`),
  KEY `fe_ngtb_innfexml_innx_idx_chvnfe` (`innx_chvnfe`),
  KEY `fe_ngtb_innfexml_innx_idx_dh_imp` (`innx_dh_imp`),
  KEY `fe_ngtb_innfexml_innx_idx_dhemi` (`innx_dhemi`),
  KEY `fe_ngtb_innfexml_innx_innx_status_index` (`innx_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_innfexml_innx`
--

LOCK TABLES `fe_ngtb_innfexml_innx` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_innfexml_innx` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_innfexml_innx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_innfexml_innx_bkp`
--

DROP TABLE IF EXISTS `fe_ngtb_innfexml_innx_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_innfexml_innx_bkp` (
  `id_innx_cd_innfexml` bigint NOT NULL DEFAULT '0',
  `innx_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_nnf` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_serie` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_dhemi` datetime DEFAULT NULL,
  `innx_nprot` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_cstat` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_xmotivo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `innx_dh_imp` datetime DEFAULT NULL,
  `innx_status` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `innx_xml64` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_innfexml_innx_bkp`
--

LOCK TABLES `fe_ngtb_innfexml_innx_bkp` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_innfexml_innx_bkp` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_innfexml_innx_bkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_innfexmlevent_inxe`
--

DROP TABLE IF EXISTS `fe_ngtb_innfexmlevent_inxe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_innfexmlevent_inxe` (
  `id_innx_cd_innfexml` int unsigned NOT NULL AUTO_INCREMENT,
  `inxe_seq_event` int NOT NULL,
  `inxe_tipo_event` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inxe_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inxe_cstat` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inxe_xmotivo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inxe_nprot` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inxe_dh_event` datetime DEFAULT NULL,
  `inxe_txt_event` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inxe_xml64` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `inxe_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'ENV_OK',
  PRIMARY KEY (`id_innx_cd_innfexml`,`inxe_seq_event`,`inxe_tipo_event`),
  KEY `fe_ngtb_innfexmlevent_inxe_inxe_chvnfe_index` (`inxe_chvnfe`),
  KEY `fe_ngtb_innfexmlevent_inxe_inxe_status_index` (`inxe_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_innfexmlevent_inxe`
--

LOCK TABLES `fe_ngtb_innfexmlevent_inxe` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_innfexmlevent_inxe` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_innfexmlevent_inxe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_innfexmlfile_inxf`
--

DROP TABLE IF EXISTS `fe_ngtb_innfexmlfile_inxf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_innfexmlfile_inxf` (
  `inxf_chvnfe` char(44) NOT NULL,
  `inxf_xml` longblob,
  PRIMARY KEY (`inxf_chvnfe`),
  KEY `fe_ngtb_innfexmlfile_inxf_chvnfe` (`inxf_chvnfe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_innfexmlfile_inxf`
--

LOCK TABLES `fe_ngtb_innfexmlfile_inxf` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_innfexmlfile_inxf` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_innfexmlfile_inxf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_innfexmlhist_inxh`
--

DROP TABLE IF EXISTS `fe_ngtb_innfexmlhist_inxh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_innfexmlhist_inxh` (
  `id_inxh_cd_innfexmlhist` bigint NOT NULL AUTO_INCREMENT,
  `inxh_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inxh_dh_reg` datetime DEFAULT NULL,
  `inxh_cstat` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inxh_xmotivo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`id_inxh_cd_innfexmlhist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_innfexmlhist_inxh`
--

LOCK TABLES `fe_ngtb_innfexmlhist_inxh` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_innfexmlhist_inxh` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_innfexmlhist_inxh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_innfse_inns`
--

DROP TABLE IF EXISTS `fe_ngtb_innfse_inns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_innfse_inns` (
  `id_inns_cd_innfse` bigint NOT NULL AUTO_INCREMENT,
  `inns_nnfs` char(20) DEFAULT NULL,
  `inns_dhemi` date DEFAULT NULL,
  `inns_pr_id` char(20) NOT NULL,
  `inns_pr_tpinscr` char(5) DEFAULT NULL,
  `inns_pr_nome` varchar(255) DEFAULT NULL,
  `inns_pr_ie` varchar(20) DEFAULT NULL,
  `inns_to_id` char(20) DEFAULT NULL,
  `inns_to_tpinscr` char(5) DEFAULT NULL,
  `inns_to_nome` varchar(255) DEFAULT NULL,
  `inns_cmun` char(20) DEFAULT NULL,
  `inns_xmun` varchar(255) DEFAULT NULL,
  `inns_valor` decimal(17,2) DEFAULT NULL,
  `inns_folha_serv` varchar(255) DEFAULT NULL,
  `inns_status` char(20) DEFAULT NULL,
  `inns_dh_imp` datetime DEFAULT NULL,
  `inns_xml64` text,
  `inns_bin64` longblob,
  `inns_desc_servico` mediumtext NOT NULL,
  `inns_serie` char(3) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id_inns_cd_innfse`),
  UNIQUE KEY `fe_ngtb_innfse_inns_uniq1` (`inns_nnfs`,`inns_pr_id`),
  KEY `fe_ngtb_innfse_inns_inns_status_index` (`inns_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_innfse_inns`
--

LOCK TABLES `fe_ngtb_innfse_inns` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_innfse_inns` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_innfse_inns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_integrbalpesagem_inbp`
--

DROP TABLE IF EXISTS `fe_ngtb_integrbalpesagem_inbp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_integrbalpesagem_inbp` (
  `inbp_ticket` int NOT NULL,
  `inbs_centro` char(4) NOT NULL,
  `inbs_ordemplano` bigint NOT NULL DEFAULT '0',
  `inbs_material` char(18) NOT NULL,
  `inbp_pesobrutoe` decimal(15,2) DEFAULT NULL,
  `inbp_pesobrutos` decimal(15,2) DEFAULT NULL,
  `inbp_pesoliqe` decimal(15,2) DEFAULT NULL,
  `inbp_pesoliqs` decimal(15,2) DEFAULT NULL,
  `inbp_carreta` varchar(255) DEFAULT NULL,
  `inbp_efit_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`inbp_ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_integrbalpesagem_inbp`
--

LOCK TABLES `fe_ngtb_integrbalpesagem_inbp` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_integrbalpesagem_inbp` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_integrbalpesagem_inbp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_integrbalsaida_inbs`
--

DROP TABLE IF EXISTS `fe_ngtb_integrbalsaida_inbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_integrbalsaida_inbs` (
  `inbs_origem` char(1) NOT NULL,
  `inbs_centro` char(4) NOT NULL,
  `inbs_ordemplano` bigint NOT NULL,
  `inbs_material` char(18) NOT NULL,
  `inbs_lote` char(10) NOT NULL,
  `inbs_lotesequencial` char(3) NOT NULL,
  `inbs_quantidade` char(18) NOT NULL,
  `inbs_qtd_pesagem` decimal(15,4) NOT NULL,
  `inbs_status` char(10) NOT NULL,
  `inbs_status_efit` char(10) NOT NULL,
  `inbs_dh_imp_ordem` datetime DEFAULT NULL,
  `inbs_dh_last_status` datetime DEFAULT NULL,
  PRIMARY KEY (`inbs_centro`,`inbs_ordemplano`,`inbs_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_integrbalsaida_inbs`
--

LOCK TABLES `fe_ngtb_integrbalsaida_inbs` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_integrbalsaida_inbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_integrbalsaida_inbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_mdfexml_mxml`
--

DROP TABLE IF EXISTS `fe_ngtb_mdfexml_mxml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_mdfexml_mxml` (
  `id_ngtb_mdfexml_mxml` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mxml_chvmdfe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_nmdfe` int DEFAULT NULL,
  `mxml_serie` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_dhemi` datetime DEFAULT NULL,
  `mxml_nrec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_nprot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_tipo_proc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_evento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_status_hist` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_status_mon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_dh_criacao` datetime DEFAULT NULL,
  `mxml_dh_receb` datetime DEFAULT NULL,
  `mxml_dh_envio` datetime DEFAULT NULL,
  `mxml_dh_retorno` datetime DEFAULT NULL,
  `mxml_dh_aut` datetime DEFAULT NULL,
  `mxml_last_cstat` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_last_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mxml_count_erp` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_uf_ini` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_uf_fim` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_contigencia` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_tpemis` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_emit_cnpj` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_emit_nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxml_retry` int DEFAULT NULL,
  `mxml_encerrado` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id_ngtb_mdfexml_mxml`),
  KEY `fe_ngtb_mdfexml_mxml_mxml_dhemi_index` (`mxml_dhemi`),
  KEY `fe_ngtb_mdfexml_mxml_mxml_chvmdfe_index` (`mxml_chvmdfe`),
  KEY `fe_ngtb_mdfexml_mxml_mxml_nmdfe_index` (`mxml_nmdfe`),
  KEY `fe_ngtb_mdfexml_mxml_mxml_status_mon_index` (`mxml_status_mon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_mdfexml_mxml`
--

LOCK TABLES `fe_ngtb_mdfexml_mxml` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_mdfexml_mxml` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_mdfexml_mxml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_mdfexmlevent_mxev`
--

DROP TABLE IF EXISTS `fe_ngtb_mdfexmlevent_mxev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_mdfexmlevent_mxev` (
  `id_ngtb_mdfexml_mxml` bigint NOT NULL,
  `mxev_seq_event` int NOT NULL,
  `mxev_tipo_event` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mxev_chvmdfe` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mxev_cstat` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxev_xmotivo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxev_nprot` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxev_dh_receb` datetime DEFAULT NULL,
  `mxev_dh_aut` datetime DEFAULT NULL,
  `mxev_status` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxev_status_mon` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxev_txt_event` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mxev_count_erp` int DEFAULT NULL,
  PRIMARY KEY (`mxev_seq_event`,`mxev_tipo_event`,`id_ngtb_mdfexml_mxml`),
  KEY `fe_ngtb_mdfexmlevent_mxev_id_ngtb_mdfexml_mxml_index` (`id_ngtb_mdfexml_mxml`),
  KEY `fe_ngtb_mdfexmlevent_mxev_mxev_chvmdfe_index` (`mxev_chvmdfe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_mdfexmlevent_mxev`
--

LOCK TABLES `fe_ngtb_mdfexmlevent_mxev` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_mdfexmlevent_mxev` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_mdfexmlevent_mxev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_mdfexmlhistory_mxhi`
--

DROP TABLE IF EXISTS `fe_ngtb_mdfexmlhistory_mxhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_mdfexmlhistory_mxhi` (
  `id_ngtb_mdfexmlhistory_mxhi` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_ngtb_mdfexml_mxml` bigint NOT NULL,
  `mxhi_dh_reg` datetime DEFAULT NULL,
  `mxhi_evento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxhi_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxhi_cstat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mxhi_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mxhi_status_hist` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_ngtb_mdfexmlhistory_mxhi`),
  KEY `fe_ngtb_mdfexmlhistory_mxhi_id_ngtb_mdfexml_mxml_index` (`id_ngtb_mdfexml_mxml`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_mdfexmlhistory_mxhi`
--

LOCK TABLES `fe_ngtb_mdfexmlhistory_mxhi` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_mdfexmlhistory_mxhi` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_mdfexmlhistory_mxhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfe_contigencia`
--

DROP TABLE IF EXISTS `fe_ngtb_nfe_contigencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfe_contigencia` (
  `id_cd_nfecontigencia` bigint unsigned NOT NULL AUTO_INCREMENT,
  `old_chave` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_chave` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_cd_nfecontigencia`),
  KEY `fe_ngtb_nfe_contigencia_new_chave_index` (`new_chave`),
  KEY `fe_ngtb_nfe_contigencia_old_chave_index` (`old_chave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfe_contigencia`
--

LOCK TABLES `fe_ngtb_nfe_contigencia` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfe_contigencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfe_contigencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfeboleto_nbol`
--

DROP TABLE IF EXISTS `fe_ngtb_nfeboleto_nbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfeboleto_nbol` (
  `nbol_docnum` bigint NOT NULL,
  `nbol_seq` int NOT NULL,
  `nbol_emicnpj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_ben_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_ben_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_ben_neighborhood` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_ben_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_ben_uf` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_ben_cep` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_pag_cnpj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_pag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_pag_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_pag_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_pag_neighborhood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_pag_uf` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_pag_cep` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_banc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_banc_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_banc_ag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_bol_nnumber` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_bol_dh_venc` date DEFAULT NULL,
  `nbol_bol_dh_doc` date DEFAULT NULL,
  `nbol_bol_number` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_bol_esp_doc` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_bol_accept` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_bol_dh_procces` date DEFAULT NULL,
  `nbol_bol_carteira` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_bol_esp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_bol_juros_mora` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `nbol_bol_value` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `nbol_bol_linha_digitavel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_bol_codigo_barras` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nbol_email` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `nbol_ftp` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nbol_docnum`,`nbol_seq`),
  KEY `fe_ngtb_nfeboleto_nbol_nbol_docnum_index` (`nbol_docnum`),
  KEY `fe_ngtb_nfeboleto_nbol_nbol_bol_dh_doc_index` (`nbol_bol_dh_doc`),
  KEY `fe_ngtb_nfeboleto_nbol_nbol_bol_dh_venc_index` (`nbol_bol_dh_venc`),
  KEY `fe_ngtb_nfeboleto_nbol_nbol_bol_number_index` (`nbol_bol_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfeboleto_nbol`
--

LOCK TABLES `fe_ngtb_nfeboleto_nbol` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfeboleto_nbol` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfeboleto_nbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfedatecont_nfda`
--

DROP TABLE IF EXISTS `fe_ngtb_nfedatecont_nfda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfedatecont_nfda` (
  `nfda_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfedatecont_nfda`
--

LOCK TABLES `fe_ngtb_nfedatecont_nfda` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfedatecont_nfda` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfedatecont_nfda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfeout_header`
--

DROP TABLE IF EXISTS `fe_ngtb_nfeout_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfeout_header` (
  `id_nfeout_header` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nfeout_chave` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_cuf` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_cnf` int NOT NULL,
  `nfeout_natop` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_mod` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_serie` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_nnf` int NOT NULL,
  `nfeout_dhemi` datetime NOT NULL,
  `nfeout_dhsaient` datetime NOT NULL,
  `nfeout_tpnf` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_iddest` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_cmunfg` int NOT NULL,
  `nfeout_tpimp` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_tpemis` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_cdv` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_tpamb` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_finnfe` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_indfinal` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_indpres` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_procemi` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_verproc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_emit_cnpj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_emit_cmun` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_emit_xmun` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_emit_xnome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_emit_xfant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_emit_uf` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_emit_ie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_dest_cnpj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_dest_cpf` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_dest_xnome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_dest_cmun` int NOT NULL,
  `nfeout_dest_xmun` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_dest_uf` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_dest_xpais` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_dest_cep` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_dest_indiedest` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_tot_vbc` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vicms` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vicmsdeson` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vfcp` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vicmsufdest` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vicmsufremet` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vbcst` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vst` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vfcpst` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vfcpstret` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vprod` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vfrete` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vdesc` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vipi` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vpis` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_voutro` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vnf` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_tot_vtottrib` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeout_transp_cnpj` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_transp_xnome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_transp_ie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_transp_xmun` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeout_infcpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nfeout_comp_xped` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_nfeout_header`),
  KEY `fe_ngtb_nfeout_header_nfeout_chave_index` (`nfeout_chave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfeout_header`
--

LOCK TABLES `fe_ngtb_nfeout_header` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfeout_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfeout_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfeout_imposto`
--

DROP TABLE IF EXISTS `fe_ngtb_nfeout_imposto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfeout_imposto` (
  `nfeoutimp_nitem` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutimp_chave` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutimp_taxtype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutimp_origin` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutimp_cst` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutimp_modbc` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutimp_vbc` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeoutimp_taxvalue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeoutimp_taxpercentage` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nfeoutimp_qbcprod` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `nfeoutimp_valiqprod` decimal(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`nfeoutimp_taxtype`,`nfeoutimp_nitem`,`nfeoutimp_chave`),
  KEY `fe_ngtb_nfeout_imposto_nfeoutimp_chave_index` (`nfeoutimp_chave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfeout_imposto`
--

LOCK TABLES `fe_ngtb_nfeout_imposto` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfeout_imposto` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfeout_imposto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfeout_item`
--

DROP TABLE IF EXISTS `fe_ngtb_nfeout_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfeout_item` (
  `nfeoutitem_nitem` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutitem_chave` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutitem_cprod` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutitem_cean` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutitem_xprod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutitem_ncm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutitem_cest` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutitem_cfop` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutitem_ucon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfeoutitem_qcon` decimal(15,4) NOT NULL,
  `nfeoutitem_vuncom` decimal(15,4) NOT NULL,
  `nfeoutitem_vprod` decimal(15,2) NOT NULL,
  `nfeoutitem_ceantrib` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutitem_utrib` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutitem_qtrib` decimal(15,4) NOT NULL,
  `nfeoutitem_vuntrib` decimal(15,9) NOT NULL,
  `nfeoutitem_indtot` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutitem_xped` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutitem_nitemped` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfeoutitem_vtottrib` decimal(15,2) NOT NULL,
  PRIMARY KEY (`nfeoutitem_nitem`,`nfeoutitem_chave`),
  KEY `fe_ngtb_nfeout_item_nfeoutitem_chave_index` (`nfeoutitem_chave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfeout_item`
--

LOCK TABLES `fe_ngtb_nfeout_item` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfeout_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfeout_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nferefuse_nref`
--

DROP TABLE IF EXISTS `fe_ngtb_nferefuse_nref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nferefuse_nref` (
  `nref_chvnfe` char(44) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `nref_token` char(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `nref_refused` char(1) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '0',
  `nref_fullname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `nref_motive` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `nref_telephone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `nref_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nref_status` char(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `nref_type` char(2) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '1',
  `nref_research` char(1) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`nref_chvnfe`),
  KEY `fe_ngtb_nferefuse_nref_nref_chvnfe_index` (`nref_chvnfe`),
  KEY `fe_ngtb_nferefuse_nref_nref_token_index` (`nref_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nferefuse_nref`
--

LOCK TABLES `fe_ngtb_nferefuse_nref` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nferefuse_nref` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nferefuse_nref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nferefuse_research_nrre`
--

DROP TABLE IF EXISTS `fe_ngtb_nferefuse_research_nrre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nferefuse_research_nrre` (
  `nrre_chvnfe` char(44) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `nrre_quality` char(1) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `nrre_ours_sellers` char(1) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `nrre_product_quality` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `nrre_opinion` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `nrre_create_at` datetime DEFAULT NULL,
  `nrre_update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`nrre_chvnfe`),
  KEY `fe_ngtb_nferefuse_research_nrre_nrre_create_at_index` (`nrre_create_at`),
  KEY `fe_ngtb_nferefuse_research_nrre_nrre_chvnfe_index` (`nrre_chvnfe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nferefuse_research_nrre`
--

LOCK TABLES `fe_ngtb_nferefuse_research_nrre` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nferefuse_research_nrre` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nferefuse_research_nrre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfetxtparc_nftp`
--

DROP TABLE IF EXISTS `fe_ngtb_nfetxtparc_nftp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfetxtparc_nftp` (
  `nftp_docext` char(50) NOT NULL,
  `nftp_nbloco` int NOT NULL,
  `nftp_tbloco` int DEFAULT NULL,
  `nftp_cnpj` char(14) DEFAULT NULL,
  `nftp_nnf` char(20) DEFAULT NULL,
  `nftp_txt64` text,
  PRIMARY KEY (`nftp_docext`,`nftp_nbloco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfetxtparc_nftp`
--

LOCK TABLES `fe_ngtb_nfetxtparc_nftp` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfetxtparc_nftp` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfetxtparc_nftp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfexml_nxml`
--

DROP TABLE IF EXISTS `fe_ngtb_nfexml_nxml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfexml_nxml` (
  `id_nxml_cd_nfexml` int unsigned NOT NULL AUTO_INCREMENT,
  `nxml_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nxml_nnf` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_serie` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_dhemi` datetime DEFAULT NULL,
  `nxml_nrec` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_nprot` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_tipo_proc` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_evento` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_status` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_status_hist` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_status_mon` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_docnum` char(14) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_dh_criacao` datetime DEFAULT NULL,
  `nxml_dh_receb` datetime DEFAULT NULL,
  `nxml_dh_envio` datetime DEFAULT NULL,
  `nxml_dh_retorno` datetime DEFAULT NULL,
  `nxml_dh_devol` datetime DEFAULT NULL,
  `nxml_dh_aut` datetime DEFAULT NULL,
  `nxml_last_cstat` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_last_msg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nxml_email_to` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_email_to_transp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_fl_email` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_count_erp` int DEFAULT NULL,
  `nxml_tracknumber` char(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_trackurl` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_total` decimal(15,2) DEFAULT NULL,
  `nxml_cnpj_emit` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_cnpj_dest` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_dest_nome` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_uf` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_xped` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_xcont` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_retry` int NOT NULL DEFAULT '0',
  `nxml_contigencia` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `nxml_tpemiss` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '1',
  `nxml_nfe_saved` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '0',
  `nxml_emit_epec` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '0',
  `nxml_info_cmsg` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `nxml_info_xmsg` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `nxml_email_param` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `nxml_last_event_dest` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `nxml_last_event_dest_date` date DEFAULT NULL,
  `nxml_email_to_anothers` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `nxml_refused` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '0',
  `nxml_retry_consulta` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '0',
  `nxml_uf_destiny` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nxml_cfop` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_nxml_cd_nfexml`),
  UNIQUE KEY `nxml_chvnfe` (`nxml_chvnfe`),
  KEY `fe_ngtb_nfexml_nxml_chvnfe` (`nxml_chvnfe`),
  KEY `index_nxml_nnf` (`nxml_nnf`),
  KEY `fe_ngtb_nfexml_nxml_nxml_dhemi_index` (`nxml_dhemi`),
  KEY `fe_ngtb_nfexml_nxml_nxml_xcont_index` (`nxml_xcont`),
  KEY `fe_ngtb_nfexml_nxml_nxml_docnum_index` (`nxml_docnum`),
  KEY `fe_ngtb_nfexml_nxml_nxml_xped_index` (`nxml_xped`),
  KEY `fe_ngtb_nfexml_nxml_nxml_status_index` (`nxml_status`),
  KEY `fe_ngtb_nfexml_nxml_id_nxml_cd_nfexml_index` (`id_nxml_cd_nfexml`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfexml_nxml`
--

LOCK TABLES `fe_ngtb_nfexml_nxml` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfexml_nxml` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfexml_nxml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfexml_nxml_aux`
--

DROP TABLE IF EXISTS `fe_ngtb_nfexml_nxml_aux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfexml_nxml_aux` (
  `id_nxml_cd_nfexml` bigint NOT NULL,
  `nxml_chvnfe` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_nnf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_serie` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_dhemi` datetime DEFAULT NULL,
  `nxml_nrec` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_nprot` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_tipo_proc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_evento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_status_hist` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_status_mon` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_docnum` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_dh_criacao` datetime DEFAULT NULL,
  `nxml_dh_receb` datetime DEFAULT NULL,
  `nxml_dh_envio` datetime DEFAULT NULL,
  `nxml_dh_retorno` datetime DEFAULT NULL,
  `nxml_dh_devol` datetime DEFAULT NULL,
  `nxml_dh_aut` datetime DEFAULT NULL,
  `nxml_last_cstat` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nxml_last_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nxml_email_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nxml_email_to_transp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nxml_fl_email` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nxml_count_erp` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nxml_tracknumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_trackurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_xcont` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_xped` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_uf` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_dest_nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nxml_cnpj_dest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nxml_cnpj_emit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nxml_total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nxml_retry` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nxml_contigencia` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nxml_tpemiss` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `nxml_nfe_saved` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nxml_emit_epec` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nxml_info_cmsg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nxml_info_xmsg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `fe_ngtb_nfexml_nxml_aux_id_nxml_cd_nfexml_index` (`id_nxml_cd_nfexml`),
  KEY `fe_ngtb_nfexml_nxml_aux_nxml_chvnfe_index` (`nxml_chvnfe`),
  KEY `fe_ngtb_nfexml_nxml_aux_nxml_nnf_index` (`nxml_nnf`),
  KEY `fe_ngtb_nfexml_nxml_aux_nxml_dhemi_index` (`nxml_dhemi`),
  KEY `fe_ngtb_nfexml_nxml_aux_nxml_xcont_index` (`nxml_xcont`),
  KEY `fe_ngtb_nfexml_nxml_aux_nxml_xped_index` (`nxml_xped`(191)),
  KEY `fe_ngtb_nfexml_nxml_aux_nxml_docnum_index` (`nxml_docnum`),
  KEY `fe_ngtb_nfexml_nxml_aux_nxml_status_index` (`nxml_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfexml_nxml_aux`
--

LOCK TABLES `fe_ngtb_nfexml_nxml_aux` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfexml_nxml_aux` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfexml_nxml_aux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfexml_nxml_bkp`
--

DROP TABLE IF EXISTS `fe_ngtb_nfexml_nxml_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfexml_nxml_bkp` (
  `nxml_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nxml_nnf` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_serie` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_dhemi` datetime DEFAULT NULL,
  `nxml_nrec` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_nprot` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_evento` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_tipo_proc` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_status` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_status_hist` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_status_mon` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_docnum` int DEFAULT NULL,
  `nxml_dh_receb` datetime DEFAULT NULL,
  `nxml_dh_envio` datetime DEFAULT NULL,
  `nxml_dh_retorno` datetime DEFAULT NULL,
  `nxml_dh_devol` datetime DEFAULT NULL,
  `nxml_dh_aut` datetime DEFAULT NULL,
  `nxml_last_cstat` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxml_last_msg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nxml_seq_event` int DEFAULT NULL,
  `nxml_xml64` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nxml_xmlProt64` text CHARACTER SET latin1 COLLATE latin1_swedish_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfexml_nxml_bkp`
--

LOCK TABLES `fe_ngtb_nfexml_nxml_bkp` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfexml_nxml_bkp` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfexml_nxml_bkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfexmlevent_nxev`
--

DROP TABLE IF EXISTS `fe_ngtb_nfexmlevent_nxev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfexmlevent_nxev` (
  `id_nxml_cd_nfexml` bigint NOT NULL,
  `nxev_seq_event` int NOT NULL,
  `nxev_tipo_event` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nxev_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_cstat` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_xmotivo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_nprot` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_dh_receb` datetime DEFAULT NULL,
  `nxev_dh_aut` datetime DEFAULT NULL,
  `nxev_status` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_status_mon` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_txt_event` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nxev_xml64` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nxev_count_erp` int DEFAULT NULL,
  PRIMARY KEY (`id_nxml_cd_nfexml`,`nxev_seq_event`,`nxev_tipo_event`),
  KEY `fe_ngtb_nfexmlevent_nxev_id_nxml_cd_nfexml_index` (`id_nxml_cd_nfexml`),
  KEY `fe_ngtb_nfexmlevent_nxev_nxev_chvnfe_index` (`nxev_chvnfe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfexmlevent_nxev`
--

LOCK TABLES `fe_ngtb_nfexmlevent_nxev` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlevent_nxev` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlevent_nxev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfexmlevent_nxev_bkp`
--

DROP TABLE IF EXISTS `fe_ngtb_nfexmlevent_nxev_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfexmlevent_nxev_bkp` (
  `nxml_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nxev_seq_event` int NOT NULL,
  `nxev_tipo_event` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nxev_cstat` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_xmotivo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_nprot` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_dh_receb` datetime DEFAULT NULL,
  `nxev_dh_aut` datetime DEFAULT NULL,
  `nxev_status` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_status_mon` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxev_txt_event` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfexmlevent_nxev_bkp`
--

LOCK TABLES `fe_ngtb_nfexmlevent_nxev_bkp` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlevent_nxev_bkp` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlevent_nxev_bkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfexmlfile_nxmf`
--

DROP TABLE IF EXISTS `fe_ngtb_nfexmlfile_nxmf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfexmlfile_nxmf` (
  `nxmf_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nxmf_xml` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`nxmf_chvnfe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfexmlfile_nxmf`
--

LOCK TABLES `fe_ngtb_nfexmlfile_nxmf` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlfile_nxmf` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlfile_nxmf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfexmlhistory_nxhi`
--

DROP TABLE IF EXISTS `fe_ngtb_nfexmlhistory_nxhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfexmlhistory_nxhi` (
  `id_nxhi_cd_nfexmlhistory` bigint NOT NULL AUTO_INCREMENT,
  `id_nxml_cd_nfexml` bigint NOT NULL,
  `nxhi_dh_reg` datetime DEFAULT NULL,
  `nxhi_evento` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxhi_status` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxhi_cstat` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxhi_msg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nxhi_status_hist` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id_nxhi_cd_nfexmlhistory`),
  KEY `fe_ngtb_nfexmlhistory_nxhi_id_nxml_cd_nfexml_index` (`id_nxml_cd_nfexml`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfexmlhistory_nxhi`
--

LOCK TABLES `fe_ngtb_nfexmlhistory_nxhi` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlhistory_nxhi` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlhistory_nxhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfexmlhistory_nxhi_bkp`
--

DROP TABLE IF EXISTS `fe_ngtb_nfexmlhistory_nxhi_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfexmlhistory_nxhi_bkp` (
  `id_nxhi_cd_nfexmlhistory` bigint NOT NULL DEFAULT '0',
  `nxml_chvnfe` char(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nxhi_dh_reg` datetime DEFAULT NULL,
  `nxhi_evento` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxhi_status` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxhi_cstat` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nxhi_msg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nxhi_status_hist` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfexmlhistory_nxhi_bkp`
--

LOCK TABLES `fe_ngtb_nfexmlhistory_nxhi_bkp` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlhistory_nxhi_bkp` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlhistory_nxhi_bkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfexmlproc_nxpr`
--

DROP TABLE IF EXISTS `fe_ngtb_nfexmlproc_nxpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfexmlproc_nxpr` (
  `nxpr_chvnfe` char(44) NOT NULL,
  `nxpr_xml` text,
  PRIMARY KEY (`nxpr_chvnfe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfexmlproc_nxpr`
--

LOCK TABLES `fe_ngtb_nfexmlproc_nxpr` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlproc_nxpr` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfexmlproc_nxpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfsclass_nfcl`
--

DROP TABLE IF EXISTS `fe_ngtb_nfsclass_nfcl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfsclass_nfcl` (
  `nfcl_code_municipio` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfcl_class_nfse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfcl_namespace_nfse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`nfcl_code_municipio`),
  KEY `fe_ngtb_nfsclass_nfcl_nfcl_code_municipio_index` (`nfcl_code_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfsclass_nfcl`
--

LOCK TABLES `fe_ngtb_nfsclass_nfcl` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfsclass_nfcl` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfsclass_nfcl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfsexml_nfml`
--

DROP TABLE IF EXISTS `fe_ngtb_nfsexml_nfml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfsexml_nfml` (
  `id_nfsexml_cd_nfsexml` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nfml_nnf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nfml_rps` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nfml_nnf_subs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nfml_serie` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nfml_numero_lote` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nfml_docnum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nfml_nrec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_nprot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_tipo_proc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_evento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_status_hist` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_status_mon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_last_cstat` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_last_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfml_email_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfml_fl_email` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nfml_cnpj_emit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_cnpj_dest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_dest_nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_total` decimal(15,2) NOT NULL,
  `nfml_uf` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_dhemi` datetime DEFAULT NULL,
  `nfml_dhaut` datetime DEFAULT NULL,
  `nfml_dh_upd` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nfml_dh_created` datetime DEFAULT NULL,
  `nfml_version` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_cmun` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfml_code_verication` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pdf_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_nfsexml_cd_nfsexml`),
  KEY `fe_ngtb_nfsexml_nfml_nfml_dh_upd_index` (`nfml_dh_upd`),
  KEY `fe_ngtb_nfsexml_nfml_nfml_dhemi_index` (`nfml_dhemi`),
  KEY `fe_ngtb_nfsexml_nfml_nfml_nnf_index` (`nfml_nnf`),
  KEY `fe_ngtb_nfsexml_nfml_nfml_rps_index` (`nfml_rps`),
  KEY `fe_ngtb_nfsexml_nfml_nfml_serie_index` (`nfml_serie`),
  KEY `fe_ngtb_nfsexml_nfml_nfml_nnf_subs_index` (`nfml_nnf_subs`),
  KEY `fe_ngtb_nfsexml_nfml_nfml_docnum_index` (`nfml_docnum`),
  KEY `fe_ngtb_nfsexml_nfml_id_nfsexml_cd_nfsexml_index` (`id_nfsexml_cd_nfsexml`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfsexml_nfml`
--

LOCK TABLES `fe_ngtb_nfsexml_nfml` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfsexml_nfml` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfsexml_nfml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfsexmlevent_nxsev`
--

DROP TABLE IF EXISTS `fe_ngtb_nfsexmlevent_nxsev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfsexmlevent_nxsev` (
  `id_nfsexml_cd_nfsexml` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nfsexml_seq_event` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfsexml_cstat` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfsexml_xmotivo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfsexml_nprot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfsexml_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfsexml_status_mon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nfsexml_dh_receb` datetime DEFAULT NULL,
  `nfsexml_dh_aut` datetime DEFAULT NULL,
  `nfsexml_dh_upd` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_nfsexml_cd_nfsexml`),
  KEY `fe_ngtb_nfsexmlevent_nxsev_id_nfsexml_cd_nfsexml_index` (`id_nfsexml_cd_nfsexml`),
  KEY `fe_ngtb_nfsexmlevent_nxsev_nfsexml_dh_aut_index` (`nfsexml_dh_aut`),
  KEY `fe_ngtb_nfsexmlevent_nxsev_nfsexml_dh_upd_index` (`nfsexml_dh_upd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfsexmlevent_nxsev`
--

LOCK TABLES `fe_ngtb_nfsexmlevent_nxsev` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfsexmlevent_nxsev` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfsexmlevent_nxsev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_nfsexmlhistory_nsxhi`
--

DROP TABLE IF EXISTS `fe_ngtb_nfsexmlhistory_nsxhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_nfsexmlhistory_nsxhi` (
  `id_nfsexmlhistory_nsxhi` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_nfsexml_cd_nfsexml` bigint NOT NULL,
  `nsxhi_dh_reg` datetime NOT NULL,
  `nsxhi_evento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nsxhi_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nsxhi_cstat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nsxhi_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nsxhi_status_hist` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_nfsexmlhistory_nsxhi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_nfsexmlhistory_nsxhi`
--

LOCK TABLES `fe_ngtb_nfsexmlhistory_nsxhi` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_nfsexmlhistory_nsxhi` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_nfsexmlhistory_nsxhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_ordemproducao_oprd`
--

DROP TABLE IF EXISTS `fe_ngtb_ordemproducao_oprd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_ordemproducao_oprd` (
  `oprd_centro` char(4) NOT NULL,
  `oprd_numero` bigint NOT NULL,
  `oprd_material` varchar(18) DEFAULT NULL,
  `oprd_qtde` decimal(15,3) DEFAULT NULL,
  `oprd_peca` int DEFAULT NULL,
  `oprd_peso` decimal(15,3) DEFAULT NULL,
  `oprd_dt_ini` date DEFAULT NULL,
  `oprd_dt_fin` date DEFAULT NULL,
  `oprd_descr` varchar(36) DEFAULT NULL,
  `oprd_status` char(20) DEFAULT NULL,
  `oprd_dh_imp` datetime DEFAULT NULL,
  PRIMARY KEY (`oprd_centro`,`oprd_numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_ordemproducao_oprd`
--

LOCK TABLES `fe_ngtb_ordemproducao_oprd` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_ordemproducao_oprd` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_ordemproducao_oprd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_paramnfsemun_prnm`
--

DROP TABLE IF EXISTS `fe_ngtb_paramnfsemun_prnm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_paramnfsemun_prnm` (
  `imun_cmun` char(7) NOT NULL,
  `prnm_padrao` char(50) NOT NULL,
  `prnm_con_nfse` char(1) DEFAULT NULL,
  `prnm_wsdl_prd` varchar(255) DEFAULT NULL,
  `prnm_wsdl_qas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`imun_cmun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_paramnfsemun_prnm`
--

LOCK TABLES `fe_ngtb_paramnfsemun_prnm` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_paramnfsemun_prnm` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_paramnfsemun_prnm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_reinf_event`
--

DROP TABLE IF EXISTS `fe_ngtb_reinf_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_reinf_event` (
  `id_reinf_event` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `event_type` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recibo` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `perapur` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dhimp` datetime NOT NULL,
  `dhsend` datetime NOT NULL,
  `last_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `protocolo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cnpj` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status_erp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'IMP_OK',
  `last_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id_reinf_event`),
  KEY `fe_ngtb_reinf_event_status_index` (`status`),
  KEY `fe_ngtb_reinf_event_dhsend_index` (`dhsend`),
  KEY `fe_ngtb_reinf_event_status_erp_index` (`status_erp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_reinf_event`
--

LOCK TABLES `fe_ngtb_reinf_event` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_reinf_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_reinf_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_reinf_event_file_error`
--

DROP TABLE IF EXISTS `fe_ngtb_reinf_event_file_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_reinf_event_file_error` (
  `id_reinf_event_file_error` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dh_reg_event` datetime NOT NULL,
  PRIMARY KEY (`id_reinf_event_file_error`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_reinf_event_file_error`
--

LOCK TABLES `fe_ngtb_reinf_event_file_error` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_reinf_event_file_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_reinf_event_file_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_reinf_event_history`
--

DROP TABLE IF EXISTS `fe_ngtb_reinf_event_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_reinf_event_history` (
  `id_reinf_event_history` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dh_reg_event` datetime NOT NULL,
  PRIMARY KEY (`id_reinf_event_history`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_reinf_event_history`
--

LOCK TABLES `fe_ngtb_reinf_event_history` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_reinf_event_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_reinf_event_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_report_template`
--

DROP TABLE IF EXISTS `fe_ngtb_report_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_report_template` (
  `id_ngtb_report_template` bigint unsigned NOT NULL AUTO_INCREMENT,
  `keys` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_ngtb_report_template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_report_template`
--

LOCK TABLES `fe_ngtb_report_template` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_report_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_report_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_tipoaverb_tpav`
--

DROP TABLE IF EXISTS `fe_ngtb_tipoaverb_tpav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_tipoaverb_tpav` (
  `id_tpav_cd_tipoaverb` bigint NOT NULL,
  `tpav_nome` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_tpav_cd_tipoaverb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_tipoaverb_tpav`
--

LOCK TABLES `fe_ngtb_tipoaverb_tpav` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_tipoaverb_tpav` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_tipoaverb_tpav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_veiculotransporte_veit`
--

DROP TABLE IF EXISTS `fe_ngtb_veiculotransporte_veit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_veiculotransporte_veit` (
  `veit_placa` varchar(8) NOT NULL,
  `veit_uf` varchar(2) NOT NULL,
  `veit_descrp` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`veit_placa`,`veit_uf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_veiculotransporte_veit`
--

LOCK TABLES `fe_ngtb_veiculotransporte_veit` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_veiculotransporte_veit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_veiculotransporte_veit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_ngtb_wtrodocentroempr_wtce`
--

DROP TABLE IF EXISTS `fe_ngtb_wtrodocentroempr_wtce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_ngtb_wtrodocentroempr_wtce` (
  `wtce_centro` char(10) NOT NULL,
  `wtce_empresa` char(10) NOT NULL,
  PRIMARY KEY (`wtce_centro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_ngtb_wtrodocentroempr_wtce`
--

LOCK TABLES `fe_ngtb_wtrodocentroempr_wtce` WRITE;
/*!40000 ALTER TABLE `fe_ngtb_wtrodocentroempr_wtce` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_ngtb_wtrodocentroempr_wtce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_order_anymarket_oran`
--

DROP TABLE IF EXISTS `fe_order_anymarket_oran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_order_anymarket_oran` (
  `id_oran_cd_order_anymarket` bigint unsigned NOT NULL AUTO_INCREMENT,
  `oran_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `oran_external_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_partner_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_access_key` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_marketplace` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_market_place_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_market_place_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_account_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_transmission_status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_market_place_shipment_status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_market_place_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_discount` decimal(15,2) DEFAULT '0.00',
  `oran_freight` decimal(15,2) DEFAULT '0.00',
  `oran_interest_value` decimal(15,2) DEFAULT '0.00',
  `oran_gross` decimal(15,2) DEFAULT '0.00',
  `oran_total` decimal(15,2) DEFAULT '0.00',
  `oran_status_erp` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `oran_dh_criacao` datetime DEFAULT NULL,
  `oran_dh_payment` datetime DEFAULT NULL,
  `oran_dh_atualiza` datetime DEFAULT NULL,
  PRIMARY KEY (`id_oran_cd_order_anymarket`),
  KEY `fe_order_anymarket_oran_oran_dh_criacao_index` (`oran_dh_criacao`),
  KEY `fe_order_anymarket_oran_oran_dh_atualiza_index` (`oran_dh_atualiza`),
  KEY `fe_order_anymarket_oran_id_oran_cd_order_anymarket_index` (`id_oran_cd_order_anymarket`),
  KEY `fe_order_anymarket_oran_oran_external_id_index` (`oran_external_id`),
  KEY `fe_order_anymarket_oran_oran_status_erp_index` (`oran_status_erp`),
  KEY `fe_order_anymarket_oran_oran_access_key_index` (`oran_access_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_order_anymarket_oran`
--

LOCK TABLES `fe_order_anymarket_oran` WRITE;
/*!40000 ALTER TABLE `fe_order_anymarket_oran` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_order_anymarket_oran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_certified`
--

DROP TABLE IF EXISTS `fe_sytb_certified`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_certified` (
  `id_certif` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file_pfx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `real_file_pfx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_pfx` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_certif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_certified`
--

LOCK TABLES `fe_sytb_certified` WRITE;
/*!40000 ALTER TABLE `fe_sytb_certified` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sytb_certified` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_certified_empresa`
--

DROP TABLE IF EXISTS `fe_sytb_certified_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_certified_empresa` (
  `id_certif` bigint NOT NULL,
  `id_empr_cd_empresa` bigint NOT NULL,
  KEY `fe_sytb_certified_empresa_id_empr_cd_empresa_index` (`id_empr_cd_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_certified_empresa`
--

LOCK TABLES `fe_sytb_certified_empresa` WRITE;
/*!40000 ALTER TABLE `fe_sytb_certified_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sytb_certified_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_config_conf`
--

DROP TABLE IF EXISTS `fe_sytb_config_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_config_conf` (
  `id_conf_cd_config` bigint NOT NULL,
  `conf_description` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `conf_key` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `conf_value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `conf_type` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `conf_opt` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `conf_visivel` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `conf_descr_grupo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `conf_opt_table` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `conf_opt_col_value` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `conf_opt_col_label` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_conf_cd_config`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_config_conf`
--

LOCK TABLES `fe_sytb_config_conf` WRITE;
/*!40000 ALTER TABLE `fe_sytb_config_conf` DISABLE KEYS */;
INSERT INTO `fe_sytb_config_conf` VALUES (2,'Linguagem Padrão','sys.default.lang','br','C','br[=]Portugues BR','1','GERAL','','',''),(3,'Master User Login','sys.master.user.login','master','T','','0','GERAL','','',''),(4,'Master User Password','sys.master.user.pass','49471e17b3ba3450e018e3467b25eb6f','T','','0','GERAL','','',''),(5,'SMPT HOST','sys.mail.smtp.host','smtp.office365.com','T','','1','EMAIL','','',''),(6,'SMTP AUTH','sys.mail.smtp.auth','2','C','1[=]Sim[|]0[=]Não[|]2[=]Auth 2.0','1','EMAIL','','',''),(7,'SMTP USER','sys.mail.smtp.user','efit@tracan.com.br','T','','1','EMAIL','','',''),(8,'SMTP PASSWORD','sys.mail.smtp.password','Tracan#2020','T','','1','EMAIL','','',''),(9,'SMTP EMAIL','sys.mail.smtp.email','efit@tracan.com.br','T','','1','EMAIL','','',''),(10,'SMTP NAME','sys.mail.smtp.name','Tracan','T','','1','EMAIL','','',''),(11,'Email Backup Database','sys.mail.bkp.db','','T','','1','DATABASE','','',''),(12,'Email Log Sistem','sys.mail.log','','T','','1','LOG','','',''),(13,'Log do Banco de Dados','sys.db.log.flag','0','C','1[=]Ativo[|]0[=]Inativo','1','DATABASE','','',''),(21,'App XPDF EXEC','sys.app.xpdf.exe','/var/www/html/efit-homolog/api/xpdf/linux/bin64/pdftotext','T','','1','APP','','',''),(30,'Cockpit Outbound Color - Erro','sys.outbound.color.erro','yellow','C','blue[=]Azul[|]gray[=]Cinza[|]green[=]Verde[|]red[=]Vermelho[|]yellow[=]Amarelo[|]black[=]Preto[|]orange[=]Laranja[|]purple[=]Roxo[|]pink[=]Rosa','1','COCKPIT','','',''),(31,'Cockpit Outbound Color - Processamento','sys.outbound.color.proc','yellow','C','blue[=]Azul[|]gray[=]Cinza[|]green[=]Verde[|]red[=]Vermelho[|]yellow[=]Amarelo[|]black[=]Preto[|]orange[=]Laranja[|]purple[=]Roxo[|]pink[=]Rosa','1','COCKPIT','','',''),(32,'Cockpit Outbound Color - Rejeitada','sys.outbound.color.rejeitada','red','C','blue[=]Azul[|]gray[=]Cinza[|]green[=]Verde[|]red[=]Vermelho[|]yellow[=]Amarelo[|]black[=]Preto[|]orange[=]Laranja[|]purple[=]Roxo[|]pink[=]Rosa','1','COCKPIT','','',''),(33,'Cockpit Outbound Color - Autorizada','sys.outbound.color.autor','green','C','blue[=]Azul[|]gray[=]Cinza[|]green[=]Verde[|]red[=]Vermelho[|]yellow[=]Amarelo[|]black[=]Preto[|]orange[=]Laranja[|]purple[=]Roxo[|]pink[=]Rosa','1','COCKPIT','','',''),(34,'Cockpit Outbound Color - Cancelada','sys.outbound.color.cancel','green','C','blue[=]Azul[|]gray[=]Cinza[|]green[=]Verde[|]red[=]Vermelho[|]yellow[=]Amarelo[|]black[=]Preto[|]orange[=]Laranja[|]purple[=]Roxo[|]pink[=]Rosa','1','COCKPIT','','',''),(35,'Cockpit Outbound Color - Denegada','sys.outbound.color.deneg','green','C','blue[=]Azul[|]gray[=]Cinza[|]green[=]Verde[|]red[=]Vermelho[|]yellow[=]Amarelo[|]black[=]Preto[|]orange[=]Laranja[|]purple[=]Roxo[|]pink[=]Rosa','1','COCKPIT','','',''),(36,'Cockpit Outbound Color - Inutilizada','sys.outbound.color.inutil','green','C','blue[=]Azul[|]gray[=]Cinza[|]green[=]Verde[|]red[=]Vermelho[|]yellow[=]Amarelo[|]black[=]Preto[|]orange[=]Laranja[|]purple[=]Roxo[|]pink[=]Rosa','1','COCKPIT','','',''),(37,'Cockpit Outbound Color - Recebendo','sys.outbound.color.recebendo','gray','C','blue[=]Azul[|]gray[=]Cinza[|]green[=]Verde[|]red[=]Vermelho[|]yellow[=]Amarelo[|]black[=]Preto[|]orange[=]Laranja[|]purple[=]Roxo[|]pink[=]Rosa','1','COCKPIT','','',''),(40,'Utilizar Regras de Senhas','sys.regras.de.senhas','0','C','1[=]Sim[|]0[=]Não','1','GERAL','','',''),(58,'Utilizar Validade de Senhas','sys.utilizar.validade.senhas','0','C','1[=]Sim[|]0[=]Não','1','GERAL','','',''),(59,'Validade de Senhas','sys.validade.de.senhas','0','T','','1','GERAL','','',''),(60,'SMTP PORT','sys.mail.smtp.port','587','T','','1','EMAIL','','',''),(61,'SMTP SECURE','sys.mail.smtp.secure','tls','T','','1','EMAIL','','',''),(62,'Limite de envio de e-mails','sys.mail.send.limit','100','T','','1','EMAIL','','',''),(63,'Condição de envio de e-mail','sys.mail.send.condition','','T','','1','EMAIL','','',''),(64,'Habilitar onergy','sys.onergy.enble','1','T','','1','ONERGY','','',''),(65,'Token','sys.onergy.ocpApimSubscriptionKey','d667bac80a29434c870c6d0e6915ae80','T','','1','ONERGY','','',''),(66,'AssID','sys.onergy.ass_id','d7084300-c30f-48dd-ab7e-5605c15ac5ae','T','','1','ONERGY','','',''),(67,'UserID','sys.onergy.usrid','9860fd59-2f78-4849-b1e3-2932638022d8','T','','1','ONERGY','','',''),(68,'FdID','sys.onergy.fdtid','4c1da0a3-978c-4715-ac0c-477300a961f7','T','','1','ONERGY','','',''),(69,'Email Forward','sys.onergy.email','5fa1c993-2485-7b56-353f-218e9cbc0056@taxfymail.com.br','T','','1','ONERGY','','',''),(70,'Auth 2.0 client_id','sys.mail.send.auth20.client_id','6ad07809-60d9-415e-be63-318ebe4b3af1','T','','1','EMAIL','','',''),(71,'Auth 2.0 secret_id','sys.mail.send.auth20.secret_id','0w48Q~tdA8SZPXf8xyvwwOyMdhcTl~GYy7V6.a-P','T','','1','EMAIL','','',''),(72,'Auth 2.0 refresh_token','sys.mail.send.auth20.refresh_token','0.ASUApEniUiflkkmyK761u4if8wl40GrZYF5BvmMxjr5LOvElAB4.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P9qyqR8kXS99xUkwKhWRri0djaIFLlxn27rTdo1ux_lqTUecmZWl4CiceBQlo8Ht0d-f_JZXDtcrIlpM4p1mbQUmV4XrHo9mKV5ZkYboXF6XjeUzVfhqLXqwqu6u0IKu__RDNBI0IakuRmg_KvEFTKsX1swEjFfWgAXke50cZ2oa9L4IC6Cxyc1PxT2U1yTtk2BFpp9e-LCrKlHsaqhRpL2PTyRRF2BrpGl_eAFctYB9x6u_xfD4H0_VudV6SUh12PSrdbI_pM1HdZnUV7tHK4b9rH7sL42krJFlivIzXd0cmNFiHoOsUiL3IctX7QzU2AYOCcuNHrpKVubViwFZCOOB-qr3_MxVXt7wxwkg6qVPGYU0uI7zedDxPcHrP0f25aNJ7PgihdS2xUxf5XoKLpq-dNKtIMa4jYVSeZntVSK1apCchXjCoQvmtOZocH7v2fqAlxEK4dp4W_2-ae0eKRc1hpZMXJn1Ws8mT7FNgeYQKQPUxTQHUCl3y2HAko1bCQMAXCmoXCNZCN0MU4-jXu5t9Zf7XNKTWSDr9ySLkJxtPz_-l4Xf7daDY0zHBj1teW8lhjYwh-sgoxFrWgoIxzqgrNbv_GufArIfa_bYfZVYPiTkDkBYOczoj5VP8PwTJb7aVRrqdITGKoFgb3N0oaZNcn6rVDXQRZLanI5-Hsyf5kQBGdL5lLXl_hXfe9TF3dZfAbcSaYC859uXfgB_gAft3HUAZ87J4judHNws8htNXnmz4H33gRXZZELtTJkQXANPVcI8EOwOWlmdUEAnmi-0ptU9jTgIuoJBWdPFFsRXwuJ-iOPIMLjFGubxfjMw-UvIERzrdBo_PfEhFnqds1PiJf9','T','','1','EMAIL','','',''),(73,'Auth 2.0 provider','sys.mail.send.auth20.provider','1','C','0[=]Nenhum[|]1[=]Exchange[|]2[=]Gmail','1','EMAIL','','','');
/*!40000 ALTER TABLE `fe_sytb_config_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_cronjob_cjob`
--

DROP TABLE IF EXISTS `fe_sytb_cronjob_cjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_cronjob_cjob` (
  `id_cjob_cd_cronjob` bigint NOT NULL,
  `cjob_ordem` int NOT NULL,
  `cjob_descr` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_tipo` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_exe_min` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_exe_hora` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_exe_dsem` char(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_exe_dia` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_exe_mes` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_exe_ano` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_status` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_fl_ativo` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cjob_dh_exec` datetime NOT NULL,
  `cjob_dh_done` datetime NOT NULL,
  PRIMARY KEY (`id_cjob_cd_cronjob`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_cronjob_cjob`
--

LOCK TABLES `fe_sytb_cronjob_cjob` WRITE;
/*!40000 ALTER TABLE `fe_sytb_cronjob_cjob` DISABLE KEYS */;
INSERT INTO `fe_sytb_cronjob_cjob` VALUES (1,0,'Inbound - DIST DFE (EMAIL)','REP','?ws:ConsultaDistDFeEmail.act','03','*','1|2|3|4|5|6|7','*','*','*','PEN','0','2017-10-18 19:39:02','2017-10-18 19:39:02'),(2,0,'Import Emails Inbound','REP','?ws:JobImportEmailDoc.act','03','*','1|2|3|4|5|6|7','*','*','*','PEN','0','2017-10-18 19:39:02','2017-10-18 19:39:02'),(3,0,'Inbound - DIST DFE','REP','?ws:ConsultaDistDFeSefaz.act','*','*','1|2|3|4|5|6|7','*','*','*','ERR','1','2018-05-04 17:22:18','2018-05-04 17:22:20'),(4,0,'Consulta NF','REP','?ws:ConsultaNfeSefaz.act','*','*','1|2|3|4|5|6|7','*','*','*','PEN','0','2018-05-03 14:13:21','2018-05-03 14:13:22'),(5,0,'Status sefaz','REP','?mensageria:StatusSefazView.act','*','01','1|2|3|4|5|6|7','*','*','*','ERR','1','2018-05-04 17:22:20','2018-05-04 17:22:21'),(20,0,'Validação de Certificado','HOR','?ws:JobAlertCertValid.act','00','07','1|2|3|4|5|6|7','*','*','*','FIN','1','2018-05-03 07:00:25','2018-05-03 07:00:26'),(21,0,'Reenviar nota','REP','?ws:ResendNFe.act','03','*','1|2|3|4|5|6|7','*','*','*','PEN','1','2018-05-04 17:21:21','2018-05-04 17:21:22'),(22,0,'Retry Nfe Inbound','REP','?ws:retryDownlodNFeErro.act','10','*','1|2|3|4|5|6|7','*','*','*','PEN','1','2018-05-04 17:20:21','2018-05-04 17:20:22');
/*!40000 ALTER TABLE `fe_sytb_cronjob_cjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_dbvariable_dbva`
--

DROP TABLE IF EXISTS `fe_sytb_dbvariable_dbva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_dbvariable_dbva` (
  `dbva_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dbva_value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dbva_dh_modify` datetime NOT NULL,
  PRIMARY KEY (`dbva_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_dbvariable_dbva`
--

LOCK TABLES `fe_sytb_dbvariable_dbva` WRITE;
/*!40000 ALTER TABLE `fe_sytb_dbvariable_dbva` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sytb_dbvariable_dbva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_emailcodesefaz_emcs`
--

DROP TABLE IF EXISTS `fe_sytb_emailcodesefaz_emcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_emailcodesefaz_emcs` (
  `id_emailcodesefaz_emcs` bigint unsigned NOT NULL AUTO_INCREMENT,
  `emcs_code` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `emcs_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_emailcodesefaz_emcs`),
  KEY `fe_sytb_emailcodesefaz_emcs_emcs_code_index` (`emcs_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_emailcodesefaz_emcs`
--

LOCK TABLES `fe_sytb_emailcodesefaz_emcs` WRITE;
/*!40000 ALTER TABLE `fe_sytb_emailcodesefaz_emcs` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sytb_emailcodesefaz_emcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_emailcompanywarning_emsw`
--

DROP TABLE IF EXISTS `fe_sytb_emailcompanywarning_emsw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_emailcompanywarning_emsw` (
  `id_emailcompanywarning_emsw` bigint unsigned NOT NULL AUTO_INCREMENT,
  `emsw_cnpj` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `emsw_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_emailcompanywarning_emsw`),
  KEY `fe_sytb_emailcompanywarning_emsw_emsw_cnpj_index` (`emsw_cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_emailcompanywarning_emsw`
--

LOCK TABLES `fe_sytb_emailcompanywarning_emsw` WRITE;
/*!40000 ALTER TABLE `fe_sytb_emailcompanywarning_emsw` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sytb_emailcompanywarning_emsw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_integrateconfig_inco`
--

DROP TABLE IF EXISTS `fe_sytb_integrateconfig_inco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_integrateconfig_inco` (
  `inco_cnpj` char(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inco_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inco_grupo` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inco_value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `inco_descr` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inco_visible` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inco_tipo` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inco_options` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `inco_size` int DEFAULT NULL,
  `inco_obs` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `inco_ordem` int DEFAULT NULL,
  PRIMARY KEY (`inco_cnpj`,`inco_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_integrateconfig_inco`
--

LOCK TABLES `fe_sytb_integrateconfig_inco` WRITE;
/*!40000 ALTER TABLE `fe_sytb_integrateconfig_inco` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sytb_integrateconfig_inco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_msgwssefaz_msws`
--

DROP TABLE IF EXISTS `fe_sytb_msgwssefaz_msws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_msgwssefaz_msws` (
  `msws_cstat` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `msws_xmotivo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `msws_status_in` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`msws_cstat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_msgwssefaz_msws`
--

LOCK TABLES `fe_sytb_msgwssefaz_msws` WRITE;
/*!40000 ALTER TABLE `fe_sytb_msgwssefaz_msws` DISABLE KEYS */;
INSERT INTO `fe_sytb_msgwssefaz_msws` VALUES ('100','Autorizado o uso da NF-e','AUTORIZADA'),('101','Cancelamento de NF-e homologado','CANCELADA'),('102','Inutilização de número homologado','INUTILIZADA'),('103','Lote recebido com sucesso','SUCCESS'),('104','Lote processado','SUCCESS'),('105','Lote em processamento','SUCCESS'),('106','Lote não localizado','SUCCESS'),('107','Serviço em Operação','SUCCESS'),('108','Serviço Paralisado Momentaneamente (curto prazo)','SUCCESS'),('109','Serviço Paralisado sem Previsão','SUCCESS'),('110','Uso Denegado','DENEGADA'),('111','Consulta cadastro com uma ocorrência','SUCCESS'),('112','Consulta cadastro com mais de uma ocorrência','SUCCESS'),('113','Serviço SVC em operação. Desativação prevista para a UF em dd/mm/aa, às hh:mm horas','SUCCESS'),('114','SVC-[SP/RS] desabilitada pela SEFAZ de Origem','SUCCESS'),('124','EPEC Autorizado','REJEITADA'),('128','Lote de Evento Processado','REJEITADA'),('134','Evento registrado e vinculado ao NF-e com alerta para situação do documento.[Alerta Situação do NF-e: XXXXXXXXXX]','SUCCESS'),('135','Evento registrado e vinculado a NF-e','AUTORIZADA'),('136','Evento registrado, mas não vinculado a NF-e','SUCCESS'),('137','Nenhum documento localizado para o Destinatário','REJEITADA'),('138','Documento localizado para o Destinatário','REJEITADA'),('139','Pedido de Download processado','REJEITADA'),('140','Download disponibilizado','REJEITADA'),('142','Ambiente de Contingência EPEC bloqueado para o Emitente','REJEITADA'),('150','Autorizado o uso da NF-e, autorização fora de prazo','REJEITADA'),('151','Cancelamento de NF-e homologado fora de prazo','CANCELADA'),('155','Cancelamento de NF-e homologado fora de prazo','CANCELADA'),('201','Rejeição: Número máximo de numeração a inutilizar ultrapassou o limite','REJEITADA'),('202','Rejeição: Falha no reconhecimento da autoria ou integridade do arquivo digital','REJEITADA'),('203','Rejeição: Emissor não habilitado para emissão de NF-e','REJEITADA'),('204','Duplicidade de NF-e [nRec:999999999999999]','REJEITADA'),('205','NF-e está denegada na base de dados da SEFAZ [nRec:999999999999999]','DENEGADA'),('206','Rejeição: NF-e já está inutilizada na Base de dados da SEFAZ','REJEITADA'),('207','Rejeição: CNPJ do emitente inválido','REJEITADA'),('208','Rejeição: CNPJ do destinatário inválido','REJEITADA'),('209','Rejeição: IE do emitente inválida','REJEITADA'),('210','Rejeição: IE do destinatário inválida','REJEITADA'),('211','Rejeição: IE do substituto inválida','REJEITADA'),('212','Rejeição: Data de emissão NF-e posterior a data de recebimento','REJEITADA'),('213','Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital','REJEITADA'),('214','Rejeição: Tamanho da mensagem excedeu o limite estabelecido','REJEITADA'),('215','Rejeição: Falha no schema XML','REJEITADA'),('216','Rejeição: Chave de Acesso difere da cadastrada','REJEITADA'),('217','Rejeição: NF-e não consta na base de dados da SEFAZ','REJEITADA'),('218','NF-e já está cancelada na base de dados da SEFAZ [nRec:999999999999999]','REJEITADA'),('219','Rejeição: Circulação da NF-e verificada','REJEITADA'),('220','Rejeição: Prazo de Cancelamento superior ao previsto na Legislação','REJEITADA'),('221','Rejeição: Confirmado o recebimento da NF-e pelo destinatário','REJEITADA'),('222','Rejeição: Protocolo de Autorização de Uso difere do cadastrado','REJEITADA'),('223','Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta','REJEITADA'),('224','Rejeição: A faixa inicial é maior que a faixa final','REJEITADA'),('225','Rejeição: Falha no Schema XML do lote de NFe','REJEITADA'),('226','Rejeição: Código da UF do Emitente diverge da UF autorizadora','REJEITADA'),('227','Rejeição: Erro na Chave de Acesso - Campo Id – falta a literal NFe','REJEITADA'),('228','Rejeição: Data de Emissão muito atrasada','REJEITADA'),('229','Rejeição: IE do emitente não informada','REJEITADA'),('230','Rejeição: IE do emitente não cadastrada','REJEITADA'),('231','Rejeição: IE do emitente não vinculada ao CNPJ','REJEITADA'),('232','Rejeição: IE do destinatário não informada','REJEITADA'),('233','Rejeição: IE do destinatário não cadastrada','REJEITADA'),('234','Rejeição: IE do destinatário não vinculada ao CNPJ','REJEITADA'),('235','Rejeição: Inscrição SUFRAMA inválida','REJEITADA'),('236','Rejeição: Chave de Acesso com dígito verificador inválido','REJEITADA'),('237','Rejeição: CPF do destinatário inválido','REJEITADA'),('238','Rejeição: Cabeçalho - Versão do arquivo XML superior a Versão vigente','REJEITADA'),('239','Rejeição: Cabeçalho - Versão do arquivo XML não suportada','REJEITADA'),('240','Rejeição: Cancelamento/Inutilização - Irregularidade Fiscal do Emitente','REJEITADA'),('241','Rejeição: Um número da faixa já foi utilizado','REJEITADA'),('242','Rejeição: Cabeçalho - Falha no Schema XML','REJEITADA'),('243','Rejeição: XML Mal Formado','REJEITADA'),('244','Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente','REJEITADA'),('245','Rejeição: CNPJ Emitente não cadastrado','REJEITADA'),('246','Rejeição: CNPJ Destinatário não cadastrado','REJEITADA'),('247','Rejeição: Sigla da UF do Emitente diverge da UF autorizadora','REJEITADA'),('248','Rejeição: UF do Recibo diverge da UF autorizadora','REJEITADA'),('249','Rejeição: UF da Chave de Acesso diverge da UF autorizadora','REJEITADA'),('250','Rejeição: UF diverge da UF autorizadora','REJEITADA'),('251','Rejeição: UF/Município destinatário não pertence a SUFRAMA','REJEITADA'),('252','Rejeição: Ambiente informado diverge do Ambiente de recebimento','REJEITADA'),('253','Rejeição: Digito Verificador da chave de acesso composta inválida','REJEITADA'),('254','Rejeição: NF-e complementar não possui NF referenciada','REJEITADA'),('255','Rejeição: NF-e complementar possui mais de uma NF referenciada','REJEITADA'),('256','Rejeição: Uma NF-e da faixa já está inutilizada na Base de dados da SEFAZ','REJEITADA'),('257','Rejeição: Solicitante não habilitado para emissão da NF-e','REJEITADA'),('258','Rejeição: CNPJ da consulta inválido','REJEITADA'),('259','Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF','REJEITADA'),('260','Rejeição: IE da consulta inválida','REJEITADA'),('261','Rejeição: IE da consulta não cadastrada como contribuinte na UF','REJEITADA'),('262','Rejeição: UF não fornece consulta por CPF','REJEITADA'),('263','Rejeição: CPF da consulta inválido','REJEITADA'),('264','Rejeição: CPF da consulta não cadastrado como contribuinte na UF','REJEITADA'),('265','Rejeição: Sigla da UF da consulta difere da UF do Web Service','REJEITADA'),('266','Rejeição: Série utilizada não permitida no Web Service','REJEITADA'),('267','Rejeição: NF Complementar referencia uma NF-e inexistente','REJEITADA'),('268','Rejeição: NF Complementar referencia outra NF-e Complementar','REJEITADA'),('269','Rejeição: CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada','REJEITADA'),('270','Rejeição: Código Município do Fato Gerador: dígito inválido','REJEITADA'),('271','Rejeição: Código Município do Fato Gerador: difere da UF do emitente','REJEITADA'),('272','Rejeição: Código Município do Emitente inexistente','REJEITADA'),('273','Rejeição: Código Município do Emitente: difere da UF do emitente','REJEITADA'),('274','Rejeição: Código Município do Destinatário inexistente','REJEITADA'),('275','Rejeição: Código Município do Destinatário: difere da UF do Destinatário','REJEITADA'),('276','Rejeição: Código Município do Local de Retirada inexistente','REJEITADA'),('277','Rejeição: Código Município do Local de Retirada: difere da UF do Local de Retirada','REJEITADA'),('278','Rejeição: Código Município do Local de Entrega inexistente','REJEITADA'),('279','Rejeição: Código Município do Local de Entrega: difere da UF do Local de Entrega','REJEITADA'),('280','Rejeição: Certificado Transmissor inválido','REJEITADA'),('281','Rejeição: Certificado Transmissor Data Validade','REJEITADA'),('282','Rejeição: Certificado Transmissor sem CNPJ','REJEITADA'),('283','Rejeição: Certificado Transmissor - erro Cadeia de Certificação','REJEITADA'),('284','Rejeição: Certificado Transmissor revogado','REJEITADA'),('285','Rejeição: Certificado Transmissor difere ICP-Brasil','REJEITADA'),('286','Rejeição: Certificado Transmissor erro no acesso a LCR','REJEITADA'),('287','Rejeição: Código Município do Fato Gerador de ISSQN inexistente [nItem:nnn]','REJEITADA'),('288','Rejeição: Código Município do Fato Gerador do Transporte inexistente','REJEITADA'),('289','Rejeição: Código da UF informada diverge da UF solicitada','REJEITADA'),('290','Rejeição: Certificado Assinatura inválido','REJEITADA'),('291','Rejeição: Certificado Assinatura Data Validade','REJEITADA'),('292','Rejeição: Certificado Assinatura sem CNPJ','REJEITADA'),('293','Rejeição: Certificado Assinatura - erro Cadeia de Certificação','REJEITADA'),('294','Rejeição: Certificado Assinatura revogado','REJEITADA'),('295','Rejeição: Certificado Assinatura difere ICP-Brasil','REJEITADA'),('296','Rejeição: Certificado Assinatura erro no acesso a LCR','REJEITADA'),('297','Rejeição: Assinatura difere do calculado','REJEITADA'),('298','Rejeição: Assinatura difere do padrão do Sistema','REJEITADA'),('299','Rejeição: XML da área de cabeçalho com codificação diferente de UTF-8','REJEITADA'),('301','Uso Denegado: Irregularidade fiscal do emitente','REJEITADA'),('302','Uso Denegado: Destinatário não habilitado a operar na UF','DENEGADA'),('303','Rejeição: Irregularidade fiscal do destinatário','REJEITADA'),('304','Rejeição: Pedido de Cancelamento para NF-e com evento da Suframa','REJEITADA'),('315','Rejeição: Data de Emissão anterior ao início da autorização de Nota Fiscal na UF','REJEITADA'),('316','Rejeição: Nota Fiscal referenciada com a mesma Chave de Acesso da Nota Fiscal atual','REJEITADA'),('317','Rejeição: NF modelo 1 referenciada com data de emissão inválida','REJEITADA'),('318','Rejeição: Contranota de Produtor sem Nota Fiscal referenciada','REJEITADA'),('319','Rejeição: Contranota de Produtor não pode referenciar somente Nota Fiscal de entrada','REJEITADA'),('320','Rejeição: Contranota de Produtor referencia somente NF de outro emitente','REJEITADA'),('321','Rejeição: NF-e de devolução de mercadoria não possui documento fiscal referenciado','REJEITADA'),('322','Rejeição: NF de produtor referenciada com data de emissão inválida','REJEITADA'),('323','Rejeição: CNPJ autorizado para download inválido','REJEITADA'),('324','Rejeição: CNPJ do destinatário já autorizado para download','REJEITADA'),('325','Rejeição: CPF autorizado para download inválido','REJEITADA'),('326','Rejeição: CPF do destinatário já autorizado para download','REJEITADA'),('327','Rejeição: CFOP inválido para Nota Fiscal com finalidade de devolução de mercadoria [nItem:nnn]','REJEITADA'),('328','Rejeição: CFOP de devolução de mercadoria para NF-e que não tem finalidade de devolução de mercadoria','REJEITADA'),('329','Rejeição: Número da DI /DSI inválido','REJEITADA'),('330','Rejeição: Informar o Valor da AFRMM na importação por via marítima','REJEITADA'),('331','Rejeição: Informar o CNPJ do adquirente ou do encomendante nesta forma de importação','REJEITADA'),('332','Rejeição: CNPJ do adquirente ou do encomendante da importação inválido','REJEITADA'),('333','Rejeição: Informar a UF do adquirente ou do encomendante nesta forma de importação','REJEITADA'),('334','Rejeição: Número do processo de drawback não informado na importação','REJEITADA'),('335','Rejeição: Número do processo de drawback na importação inválido','REJEITADA'),('336','Rejeição: Informado o grupo de exportação no item para CFOP que não é de exportação','REJEITADA'),('337','Rejeição: NFC-e para emitente pessoa física','REJEITADA'),('338','Rejeição: Número do processo de drawback não informado na exportação','REJEITADA'),('339','Rejeição: Número do processo de drawback na exportação inválido','REJEITADA'),('340','Rejeição: Não informado o grupo de exportação indireta no item','REJEITADA'),('341','Rejeição: Número do registro de exportação inválido','REJEITADA'),('342','Rejeição: Chave de Acesso informada na Exportação Indireta com DV inválido','REJEITADA'),('343','Rejeição: Modelo da NF-e informada na Exportação Indireta diferente de 55','REJEITADA'),('344','Rejeição: Duplicidade de NF-e informada na Exportação Indireta (Chave de Acesso informada mais de uma vez)','REJEITADA'),('345','Rejeição: Chave de Acesso informada na Exportação Indireta não consta como NF-e referenciada','REJEITADA'),('346','Rejeição: Somatório das quantidades informadas na Exportação Indireta não corresponde a quantidade total do item','REJEITADA'),('347','Rejeição: Descrição do combustível diverge da descrição adotada pela ANP','REJEITADA'),('348','Rejeição: NFC-e com grupo RECOPI','REJEITADA'),('349','Rejeição: Número RECOPI não informado','REJEITADA'),('350','Rejeição: Número RECOPI inválido','REJEITADA'),('351','Rejeição: Valor do ICMS da Operação no CST=51 difere do produto BC e Alíquota','REJEITADA'),('352','Rejeição: Valor do ICMS Diferido no CST=51 difere do produto Valor ICMS Operação e percentual diferimento','REJEITADA'),('353','Rejeição: Valor do ICMS no CST=51 não corresponde a diferença do ICMS operação e ICMS diferido','REJEITADA'),('354','Rejeição: Informado grupo de devolução de tributos para NF-e que não tem finalidade de devolução de mercadoria','REJEITADA'),('355','Rejeição: Informar o local de saída do Pais no caso da exportação','REJEITADA'),('356','Rejeição: Informar o local de saída do Pais somente no caso da exportação','REJEITADA'),('357','Rejeição: Chave de Acesso do grupo de Exportação Indireta inexistente [nRef: xxx]','REJEITADA'),('358','Rejeição: Chave de Acesso do grupo de Exportação Indireta cancelada ou denegada [nRef: xxx]','REJEITADA'),('359','Rejeição: NF-e de venda a Órgão Público sem informar a Nota de Empenho','REJEITADA'),('360','Rejeição: NF-e com Nota de Empenho inválida para a UF.','REJEITADA'),('361','Rejeição: NF-e com Nota de Empenho inexistente na UF.','REJEITADA'),('362','Rejeição: Venda de combustível sem informação do Transportador','REJEITADA'),('364','Rejeição: Total do valor da dedução do ISS difere do somatório dos itens','REJEITADA'),('365','Rejeição: Total de outras retenções difere do somatório dos itens','REJEITADA'),('366','Rejeição: Total do desconto incondicionado ISS difere do somatório dos itens','REJEITADA'),('367','Rejeição: Total do desconto condicionado ISS difere do somatório dos itens','REJEITADA'),('368','Rejeição: Total de ISS retido difere do somatório dos itens','REJEITADA'),('369','Rejeição: Não informado o grupo avulsa na emissão pelo Fisco','REJEITADA'),('370','Rejeição: Nota Fiscal Avulsa com tipo de emissão inválido','REJEITADA'),('372','Rejeição: Destinatário com identificação de estrangeiro com caracteres inválidos','REJEITADA'),('373','Rejeição: Descrição do primeiro item diferente de NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL','REJEITADA'),('374','Rejeição: CFOP incompatível com o grupo de tributação [nItem:nnn]','REJEITADA'),('375','Rejeição: NF-e com CFOP 5929 (Lançamento relativo a Cupom Fiscal) referencia uma NFC-e [nItem:nnn]','REJEITADA'),('376','Rejeição: Data do Desembaraço Aduaneiro inválida [nItem:nnn]','REJEITADA'),('378','Rejeição: Grupo de Combustível sem a informação de Encerrante [nItem:nnn]','REJEITADA'),('379','Rejeição: Grupo de Encerrante na NF-e (modelo 55) para CFOP diferente de venda de combustível para consumidor final [nItem:nnn]','REJEITADA'),('380','Rejeição: Valor do Encerrante final não é superior ao Encerrante inicial [nItem:nnn]','REJEITADA'),('381','Rejeição:Grupo de tributação ICMS90, informando dados do ICMS-ST [nItem:nnn]','REJEITADA'),('382','Rejeição:CFOP não permitido para o CST informado [nItem:nnn]','REJEITADA'),('383','Rejeição: Item com CSOSN indevido [nItem:nnn]','REJEITADA'),('384','Rejeição: CSOSN não permitido para a UF [nItem:nnn]','REJEITADA'),('385','Rejeição:Grupo de tributação ICMS900, informando dados do ICMS-ST [nItem:nnn]','REJEITADA'),('386','Rejeição: CFOP não permitido para o CSOSN informado [nItem:nnn]','REJEITADA'),('387','Rejeição: Código de Enquadramento Legal do IPI inválido [nItem:nnn]','REJEITADA'),('388','Rejeição: Código de Situação Tributária do IPI incompatível com o Código de Enquadramento Legal do IPI [nItem:nnn]','REJEITADA'),('389','Rejeição: Código Município ISSQN inexistente [nItem:nnn]','REJEITADA'),('390','Rejeição: Nota Fiscal com grupo de devolução de tributos [nItem:nnn]','REJEITADA'),('391','Rejeição: Não informados os dados do cartão de crédito / débito nas Formas de Pagamento da Nota Fiscal','REJEITADA'),('392','Rejeição: Não informados os dados da operação de pagamento por cartão de crédito / débito','REJEITADA'),('393','Rejeição: NF-e com o grupo de Informações Suplementares','REJEITADA'),('394','Rejeição: Nota Fiscal sem a informação do QR-Code','REJEITADA'),('395','Rejeição: Endereço do site da UF da Consulta via QRCode diverge do previsto','REJEITADA'),('396','Rejeição: Parâmetro do QR-Code inexistente (chAcesso)','REJEITADA'),('397','Rejeição: Parâmetro do QR-Code divergente da Nota Fiscal (chAcesso)','REJEITADA'),('398','Rejeição: Parâmetro nVersao do QR-Code difere do previsto','REJEITADA'),('399','Rejeição: Parâmetro de Identificação do destinatário no QR-Code para Nota Fiscal sem identificação do destinatário','REJEITADA'),('400','Rejeição: Parâmetro do QR-Code não está no formato hexadecimal (dhEmi)','REJEITADA'),('401','Rejeição: CPF do emitente inválido','REJEITADA'),('402','Rejeição: XML da área de dados com codificação diferente de UTF-8','REJEITADA'),('403','Rejeição: O grupo de informações da NF-e avulsa é de uso exclusivo do Fisco','REJEITADA'),('404','Rejeição: Uso de prefixo de namespace não permitido','REJEITADA'),('405','Rejeição: Código do país do emitente: dígito inválido','REJEITADA'),('406','Rejeição: Código do país do destinatário: dígito inválido','REJEITADA'),('407','Rejeição: O CPF só pode ser informado no campo emitente para a NF-e avulsa','REJEITADA'),('408','Rejeição: Evento não disponível para Autor pessoa física','REJEITADA'),('409','Rejeição: Campo cUF inexistente no elemento nfeCabecMsg do SOAP Header','REJEITADA'),('410','Rejeição: UF informada no campo cUF não é atendida pelo Web Service','REJEITADA'),('411','Rejeição: Campo versaoDados inexistente no elemento nfeCabecMsg do SOAP Header','REJEITADA'),('413','Rejeição: Código de Município de término da prestação: dígito inválido','REJEITADA'),('414','Rejeição: Código de Município diverge da UF de término da prestação','REJEITADA'),('415','Rejeição: CNPJ do remetente inválido','REJEITADA'),('416','Rejeição: CPF do remetente inválido','REJEITADA'),('417','Rejeição: Total do ICMS superior ao valor limite estabelecido','REJEITADA'),('418','Rejeição: Total do ICMS ST superior ao valor limite estabelecido','REJEITADA'),('419','Rejeição: IE do remetente inválida','REJEITADA'),('420','Rejeição: Cancelamento para NF-e já cancelada','REJEITADA'),('421','Rejeição: IE do remetente não cadastrada','REJEITADA'),('422','Rejeição: IE do remetente não vinculada ao CNPJ','REJEITADA'),('423','Rejeição: Código de Município de localização destinatário: dígito inválido','REJEITADA'),('424','Rejeição: Código de Município diverge da UF de localização destinatário','REJEITADA'),('425','Rejeição: CNPJ destinatário não cadastrado','REJEITADA'),('426','Rejeição: IE do destinatário não cadastrada','REJEITADA'),('427','Rejeição: IE do destinatário não vinculada ao CNPJ','REJEITADA'),('428','Rejeição: CNPJ do expedidor inválido','REJEITADA'),('429','Rejeição: CPF do expedidor inválido','REJEITADA'),('430','Rejeição: Código de Município de localização expedidor: dígito inválido','REJEITADA'),('431','Rejeição: Código de Município diverge da UF de localização expedidor','REJEITADA'),('432','Rejeição: IE do expedidor inválida','REJEITADA'),('433','Rejeição: CNPJ expedidor não cadastrado','REJEITADA'),('434','Rejeição: IE do expedidor não cadastrada','REJEITADA'),('435','Rejeição: IE do expedidor não vinculada ao CNPJ','REJEITADA'),('436','Rejeição: CNPJ do recebedor inválido','REJEITADA'),('437','Rejeição: CPF do recebedor inválido','REJEITADA'),('438','Rejeição: Código de Município de localização do recebedor: dígito inválido','REJEITADA'),('439','Rejeição: Código de Município diverge da UF de localização recebedor','REJEITADA'),('440','Rejeição: IE do recebedor inválida','REJEITADA'),('441','Rejeição: CNPJ recebedor não cadastrado','REJEITADA'),('442','Rejeição: IE do recebedor não cadastrada','REJEITADA'),('443','Rejeição: IE do recebedor não vinculada ao CNPJ','REJEITADA'),('444','Rejeição: CNPJ do tomador inválido','REJEITADA'),('445','Rejeição: CPF do tomador inválido','REJEITADA'),('446','Rejeição: Código de Município de localização tomador: dígito inválido','REJEITADA'),('447','Rejeição: Código de Município diverge da UF de localização tomador','REJEITADA'),('448','Rejeição: IE do tomador inválida','REJEITADA'),('449','Rejeição: CNPJ tomador não cadastrado','REJEITADA'),('450','Rejeição: Modelo da NF-e diferente de 55','REJEITADA'),('451','Rejeição: Processo de emissão informado inválido','REJEITADA'),('452','Rejeição: Tipo Autorizador do Recibo diverge do Órgão Autorizador','REJEITADA'),('453','Rejeição: Ano de inutilização não pode ser superior ao Ano atual','REJEITADA'),('454','Rejeição: Ano de inutilização não pode ser inferior a 2006','REJEITADA'),('455','Rejeição: Órgão Autor do evento diferente da UF da Chave de Acesso','REJEITADA'),('456','Rejeição: Código de Município diverge da UF de início da prestação','REJEITADA'),('457','Rejeição: O lote contém NF-e de mais de um estabelecimento emissor','REJEITADA'),('458','Rejeição: Grupo de NF-e normal não informado para NF-e normal','REJEITADA'),('459','Rejeição: Grupo de NF-e complementar não informado para NF-e complementar','REJEITADA'),('460','Rejeição: Não informado os dados do remetente indicado como tomador do serviço','REJEITADA'),('461','Rejeição: Informado percentual de Gás Natural na mistura para produto diferente de GLP','REJEITADA'),('462','Rejeição:Código Identificador do CSC no QR-Code não cadastrado na SEFAZ','REJEITADA'),('463','Rejeição:Código Identificador do CSC no QR-Code foi revogado pela empresa','REJEITADA'),('464','Rejeição: Código de Hash no QR-Code difere do calculado','REJEITADA'),('465','Rejeição: Número de Controle da FCI inexistente','REJEITADA'),('466','Rejeição: Evento com Tipo de Autor incompatível','REJEITADA'),('467','Rejeição: Dados da NF-e divergentes do EPEC','REJEITADA'),('468','Rejeição: NF-e com Tipo Emissão = 4, sem EPEC correspondente','REJEITADA'),('469','Rejeição: Remetente deve ser informado para tipo de serviço diferente de redespacho intermediário ou Serviço vinculado a multimodal','REJEITADA'),('470','Rejeição: Destinatário deve ser informado para tipo de serviço diferente de redespacho intermediário ou serviço vinculado a multimodal','REJEITADA'),('471','Rejeição: Informado NCM=00 indevidamente','REJEITADA'),('472','Rejeição: Ano de inutilização não pode ser inferior a 2008','REJEITADA'),('473','Rejeição: Tipo Autorizador do Recibo diverge do Órgão Autorizador','REJEITADA'),('474','Rejeição: Expedidor deve ser informado para tipo de serviço de redespacho intermediário e serviço vinculado a multimodal','REJEITADA'),('475','Rejeição: Recebedor deve ser informado para tipo de serviço de redespacho intermediário e serviço vinculado a multimodal','REJEITADA'),('476','Rejeição: Código da UF diverge da UF da primeira NF-e do Lote','REJEITADA'),('477','Rejeição: Código do órgão diverge do órgão do primeiro evento do Lote','REJEITADA'),('478','Rejeição: Local da entrega não informado para faturamento direto de veículos novos','REJEITADA'),('479','Rejeição: Data de Emissão anterior a data de credenciamento ou anterior a Data de Abertura do estabelecimento','REJEITADA'),('480','Rejeição: Código Município do Emitente diverge do cadastrado na UF','REJEITADA'),('481','Rejeição: Código Regime Tributário do emitente diverge do cadastro na SEFAZ','REJEITADA'),('482','Rejeição: Código do Município do Destinatário diverge do cadastrado na UF','REJEITADA'),('483','Rejeição: Valor do desconto maior que valor do produto [nItem:nnn]','REJEITADA'),('484','Rejeição: Chave de Acesso com tipo de emissão diferente de 4 (posição 35 da Chave de Acesso)','REJEITADA'),('485','Rejeição: Duplicidade de numeração do EPEC (Modelo, CNPJ, Série e Número)','REJEITADA'),('486','Rejeição: Não informado o Grupo de Autorização para UF que exige a identificação','REJEITADA'),('487','Rejeição: Escritório de Contabilidade não cadastrado na SEFAZ','REJEITADA'),('488','Rejeição: Vendas do Emitente incompatíveis com o Porte da Empresa','REJEITADA'),('489','Rejeição: CNPJ informado inválido (DV ou zeros)','REJEITADA'),('490','Rejeição: CPF informado inválido (DV ou zeros)','REJEITADA'),('491','Rejeição: O tpEvento informado inválido','REJEITADA'),('492','Rejeição: O verEvento informado inválido','REJEITADA'),('493','Rejeição: Evento não atende o Schema XML específico','REJEITADA'),('494','Rejeição: Chave de Acesso inexistente','REJEITADA'),('495','Rejeição: Solicitante não autorizado para consulta','REJEITADA'),('496','Rejeição: Não informado o tipo de integração no pagamento com cartão de crédito / débito','REJEITADA'),('497','Rejeição: NF-e objeto da anulação inexistente','REJEITADA'),('498','Rejeição: NF-e objeto da anulação deve estar com a situação autorizada (não pode estar cancelado ou denegado)','REJEITADA'),('499','Rejeição: NF-e de anulação deve ter tipo de emissão = normal','REJEITADA'),('500','Rejeição: NF-e objeto da anulação deve ter Tipo = 0 (normal) ou 3 (Substituição)','REJEITADA'),('501','Rejeição: Pedido de Cancelamento intempestivo (NF-e autorizada a mais de 7 dias)','REJEITADA'),('502','Rejeição: Erro na Chave de Acesso - Campo Id não corresponde à concatenação dos campos correspondentes','REJEITADA'),('503','Rejeição: Série utilizada fora da faixa permitida no SCAN (900-999)','REJEITADA'),('504','Rejeição: Data de Entrada/Saída posterior ao permitido','REJEITADA'),('505','Rejeição: Data de Entrada/Saída anterior ao permitido','REJEITADA'),('506','Rejeição: Data de Saída menor que a Data de Emissão','REJEITADA'),('507','Rejeição: O CNPJ do destinatário/remetente não deve ser informado em operação com o exterior','REJEITADA'),('508','Rejeição: CST incompatível na operação com Não Contribuinte [nItem:999]','REJEITADA'),('509','Rejeição: Informado código de município diferente de “9999999” para operação com o exterior','REJEITADA'),('510','Rejeição: Operação com Exterior e Código País destinatário é 1058 (Brasil) ou não informado','REJEITADA'),('511','Rejeição: Não é de Operação com Exterior e Código País destinatário difere de 1058 (Brasil)','REJEITADA'),('512','Rejeição: CNPJ do Local de Retirada inválido','REJEITADA'),('513','Rejeição: Código Município do Local de Retirada deve ser 9999999 para UF retirada = EX','REJEITADA'),('514','Rejeição: CNPJ do Local de Entrega inválido','REJEITADA'),('515','Rejeição: Código Município do Local de Entrega deve ser 9999999 para UF entrega = EX','REJEITADA'),('516','Rejeição: Falha no schema XML – inexiste a tag raiz esperada para a mensagem','REJEITADA'),('517','Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz da mensagem','REJEITADA'),('518','Rejeição: CFOP de entrada para NF-e de saída','REJEITADA'),('519','Rejeição: CFOP de saída para NF-e de entrada','REJEITADA'),('520','Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX','REJEITADA'),('521','Rejeição: CFOP de Operação Estadual e UF do emitente difere da UF do destinatário para destinatário contribuinte do ICMS.','REJEITADA'),('522','Rejeição: CFOP de Operação Estadual e UF emitente difere da UF remetente para remetente contribuinte do ICMS.','REJEITADA'),('523','Rejeição: CFOP não é de Operação Estadual e UF emitente igual a UF destinatário.','REJEITADA'),('524','Rejeição: CFOP de Operação com Exterior e não informado NCM','REJEITADA'),('525','Rejeição: CFOP de Importação e não informado dados da DI','REJEITADA'),('526','Rejeição: Consulta a uma Chave de Acesso muito antiga','REJEITADA'),('527','Rejeição: Operação de Exportação com informação de ICMS incompatível','REJEITADA'),('528','Rejeição: Valor do ICMS difere do produto BC e Alíquota','REJEITADA'),('529','Rejeição: CST incompatível na operação com Contribuinte Isento de Inscrição Estadual [nItem:999]','REJEITADA'),('530','Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal','REJEITADA'),('531','Rejeição: Total da BC ICMS difere do somatório dos itens','REJEITADA'),('532','Rejeição: Total do ICMS difere do somatório dos itens','REJEITADA'),('533','Rejeição: Total da BC ICMS-ST difere do somatório dos itens','REJEITADA'),('534','Rejeição: Total do ICMS-ST difere do somatório dos itens','REJEITADA'),('535','Rejeição: Total do Frete difere do somatório dos itens','REJEITADA'),('536','Rejeição: Total do Seguro difere do somatório dos itens','REJEITADA'),('537','Rejeição: Total do Desconto difere do somatório dos itens','REJEITADA'),('538','Rejeição: Total do IPI difere do somatório dos itens','REJEITADA'),('539','Duplicidade de NF-e com diferença na Chave de Acesso [chNFe: 99999999999999999999999999999999999999999999][nRec:999999999999999]','REJEITADA'),('540','Rejeição: CPF do Local de Retirada inválido','REJEITADA'),('541','Rejeição: CPF do Local de Entrega inválido','REJEITADA'),('542','Rejeição: CNPJ do Transportador inválido','REJEITADA'),('543','Rejeição: CPF do Transportador inválido','REJEITADA'),('544','Rejeição: IE do Transportador inválida','REJEITADA'),('545','Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão da mensagem','REJEITADA'),('546','Rejeição: Erro na Chave de Acesso – Campo Id – falta a literal NFe','REJEITADA'),('547','Rejeição: Dígito Verificador da Chave de Acesso da NF-e Referenciada inválido','REJEITADA'),('548','Rejeição: CNPJ da NF referenciada inválido.','REJEITADA'),('549','Rejeição: CNPJ da NF referenciada de produtor inválido.','REJEITADA'),('550','Rejeição: CPF da NF referenciada de produtor inválido.','REJEITADA'),('551','Rejeição: IE da NF referenciada de produtor inválido.','REJEITADA'),('552','Rejeição: Dígito Verificador da Chave de Acesso do CT-e Referenciado inválido','REJEITADA'),('553','Rejeição: Tipo autorizador do recibo diverge do Órgão Autorizador.','REJEITADA'),('554','Rejeição: Série difere da faixa 0-899','REJEITADA'),('555','Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador.','REJEITADA'),('556','Rejeição: Justificativa de entrada em contingência não deve ser informada para tipo de emissão normal.','REJEITADA'),('557','Rejeição: A Justificativa de entrada em contingência deve ser informada.','REJEITADA'),('558','Rejeição: Data de entrada em contingência posterior a data de recebimento.','REJEITADA'),('559','Rejeição: UF do Transportador não informada','REJEITADA'),('560','Rejeição: CNPJ base do emitente difere do CNPJ base da primeira NF-e do lote recebido','REJEITADA'),('561','Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NF-e','REJEITADA'),('562','Rejeição: Código Numérico informado na Chave de Acesso difere do Código Numérico da NF-e [chNFe:99999999999999999999999999999999999999999999]','REJEITADA'),('563','Rejeição: Já existe pedido de Inutilização com a mesma faixa de inutilização','REJEITADA'),('564','Rejeição: Total do Produto / Serviço difere do somatório dos itens','REJEITADA'),('565','Rejeição: Falha no schema XML – inexiste a tag raiz esperada para o lote de NF-e','REJEITADA'),('566','Rejeição: NF-e objeto da anulação não pode ter sido anulado anteriormente','REJEITADA'),('567','Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão do lote de NF-e','REJEITADA'),('568','Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz do lote de NF-e','REJEITADA'),('569','Rejeição: Data de entrada em contingência muito atrasada','REJEITADA'),('570','Rejeição: Tipo de Emissão 3, 6 ou 7 só é válido nas contingências SCAN/SVC','REJEITADA'),('571','Rejeição: O tpEmis informado diferente de 3 para contingência SCAN','REJEITADA'),('572','Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento)','REJEITADA'),('573','Rejeição: Duplicidade de Evento','REJEITADA'),('574','Rejeição: O autor do evento diverge do emissor da NF-e','REJEITADA'),('575','Rejeição: O autor do evento diverge do destinatário da NF-e','REJEITADA'),('576','Rejeição: O autor do evento não é um órgão autorizado a gerar o evento','REJEITADA'),('577','Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e','REJEITADA'),('578','Rejeição: A data do evento não pode ser maior que a data do processamento','REJEITADA'),('579','Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência','REJEITADA'),('580','Rejeição: O evento exige uma NF-e autorizada','REJEITADA'),('581','Rejeição: Campo Valor da Carga deve ser informado para o modal','REJEITADA'),('582','Rejeição: Grupo Tráfego Mútuo deve ser informado','REJEITADA'),('583','Rejeição: Ferrovia emitente deve ser a de origem quando respFat=1','REJEITADA'),('584','Rejeição: Referenciar o NF-e que foi emitido pela ferrovia de origem','REJEITADA'),('585','Rejeição: IE Emitente não autorizada a emitir NF-e para o modal informado','REJEITADA'),('586','Rejeição: Data e Justificativa de entrada em contingência não devem ser informadas para tipo de emissão normal.','REJEITADA'),('587','Rejeição: Usar somente o namespace padrão da NF-e','REJEITADA'),('588','Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem','REJEITADA'),('589','Rejeição: Número do NSU informado superior ao maior NSU da base de dados da SEFAZ','REJEITADA'),('590','Rejeição: Informado CST para emissor do Simples Nacional (CRT=1)','REJEITADA'),('591','Rejeição: Informado CSOSN para emissor que não é do Simples Nacional (CRT diferente de 1)','REJEITADA'),('592','Rejeição: A NF-e deve ter pelo menos um item de produto sujeito ao ICMS','REJEITADA'),('593','Rejeição: CNPJ-Base consultado difere do CNPJ-Base do Certificado Digital','REJEITADA'),('594','Rejeição: O número de sequencia do evento informado é maior que o permitido','REJEITADA'),('595','Rejeição: Obrigatória a informação da justificativa do evento.','REJEITADA'),('596','Rejeição: Evento apresentado fora do prazo: [prazo vigente]','REJEITADA'),('597','Rejeição: CFOP de Importação e não informado dados de IPI','REJEITADA'),('598','Rejeição: NF-e emitida em ambiente de homologação com Razão Social do destinatário diferente de NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL','REJEITADA'),('599','Rejeição: CFOP de Importação e não informado dados de II','REJEITADA'),('600','Rejeição: CSOSN incompatível na operação com Não Contribuinte [nItem:999]','REJEITADA'),('601','Rejeição: Total do II difere do somatório dos itens','REJEITADA'),('602','Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ICMS','REJEITADA'),('603','Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ICMS','REJEITADA'),('604','Rejeição: Total do vOutro difere do somatório dos itens','REJEITADA'),('605','Rejeição: Total do vISS difere do somatório do vProd dos itens sujeitos ao ISSQN','REJEITADA'),('606','Rejeição: Total do vBC do ISS difere do somatório dos itens','REJEITADA'),('607','Rejeição: Total do ISS difere do somatório dos itens','REJEITADA'),('608','Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ISSQN','REJEITADA'),('609','Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ISSQN','REJEITADA'),('610','Rejeição: Total da NF difere do somatório dos Valores compõe o valor Total da NF.','REJEITADA'),('611','Rejeição: cEAN inválido','REJEITADA'),('612','Rejeição: cEANTrib inválido','REJEITADA'),('613','Rejeição: Chave de Acesso difere da existente em BD','REJEITADA'),('614','Rejeição: Chave de Acesso inválida (Código UF inválido)','REJEITADA'),('615','Rejeição: Chave de Acesso inválida (Ano menor que 06 ou Ano maior que Ano corrente)','REJEITADA'),('616','Rejeição: Chave de Acesso inválida (Mês menor que 1 ou Mês maior que 12)','REJEITADA'),('617','Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido)','REJEITADA'),('618','Rejeição: Chave de Acesso inválida (modelo diferente de 55 e 65)','REJEITADA'),('619','Rejeição: Chave de Acesso inválida (número NF = 0)','REJEITADA'),('620','Rejeição: Chave de Acesso difere da existente em BD','REJEITADA'),('621','Rejeição: CPF Emitente não cadastrado','REJEITADA'),('622','Rejeição: IE emitente não vinculada ao CPF','REJEITADA'),('623','Rejeição: CPF Destinatário não cadastrado','REJEITADA'),('624','Rejeição: IE Destinatário não vinculada ao CPF','REJEITADA'),('625','Rejeição: Inscrição SUFRAMA deve ser informada na venda com isenção para ZFM','REJEITADA'),('626','Rejeição: CFOP de operação isenta para ZFM diferente do previsto','REJEITADA'),('627','Rejeição: O valor do ICMS desonerado deve ser informado','REJEITADA'),('628','Rejeição: Total da NF superior ao valor limite estabelecido pela SEFAZ [Limite]','REJEITADA'),('629','Rejeição: Valor do Produto difere do produto Valor Unitário de Comercialização e Quantidade Comercial','REJEITADA'),('630','Rejeição: Valor do Produto difere do produto Valor Unitário de Tributação e Quantidade Tributável','REJEITADA'),('631','Rejeição: CNPJ-Base do Destinatário difere do CNPJ-Base do Certificado Digital','REJEITADA'),('632','Rejeição: Solicitação fora de prazo, a NF-e não está mais disponível para download','REJEITADA'),('633','Rejeição: NF-e indisponível para download devido a ausência de Manifestação do Destinatário','REJEITADA'),('634','Rejeição: Destinatário da NF-e não tem o mesmo CNPJ raiz do solicitante do download','REJEITADA'),('635','Rejeição: NF-e com mesmo número e série já transmitida e aguardando processamento','REJEITADA'),('636','Rejeição: O numero sequencial do evento é maior que o permitido','REJEITADA'),('637','Rejeição: A data do evento não pode ser menor que a data de autorização do NF-e','REJEITADA'),('638','Rejeição: Já existe NF-e autorizado com esta numeração','REJEITADA'),('639','Rejeição: Existe EPEC emitido há mais de 7 dias (168h) sem a emissão do NF-e no ambiente normal de autorização','REJEITADA'),('640','Rejeição: Tipo de emissão do NF-e difere de EPEC com EPEC autorizado na SVC-XX para este documento.','REJEITADA'),('641','Rejeição: O evento prévio deste NF-e não foi autorizado na SVC ou ainda não foi sincronizado.[OBS: Em caso de atraso na sincronização, favor aguardar alguns instantes para nova tentativa de transmissão]','REJEITADA'),('642','Rejeição: Os valores de ICMS, Prestação e Total da Carga do NF-e devem ser iguais aos informados no EPEC.','REJEITADA'),('643','Rejeição: As informações do tomador de serviço do NF-e devem ser iguais as informadas no EPEC','REJEITADA'),('644','Rejeição: A informação do modal do NF-e deve ser igual a informada no EPEC','REJEITADA'),('645','Rejeição: A UF de inicio e fim de prestação do NF-e devem ser iguais as informadas no EPEC.','REJEITADA'),('646','Rejeição: NF-e emitido em ambiente de homologação com Razão Social do remetente diferente de NF-e EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL','REJEITADA'),('647','Rejeição: NF-e emitido em ambiente de homologação com Razão Social do expedidor diferente de NF-e EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL','REJEITADA'),('648','Rejeição: NF-e emitido em ambiente de homologação com Razão Social do recebedor diferente de NF-e EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL','REJEITADA'),('649','Rejeição: NF-e emitido em ambiente de homologação com Razão Social do destinatário diferente de NF-e EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL','REJEITADA'),('650','\\\"Rejeição: Evento de \\\"\\\"Ciência da Emissão\\\"\\\" para NF-e Cancelada ou Denegada\\\"','REJEITADA'),('651','\\\"Rejeição: Evento de \\\"\\\"Desconhecimento da Operação\\\"\\\" para NF-e Cancelada ou Denegada\\\"','REJEITADA'),('652','Rejeição: NF-e não pode estar cancelada ou denegada','REJEITADA'),('653','Rejeição: NF-e Cancelada, arquivo indisponível para download','REJEITADA'),('654','Rejeição: NF-e Denegada, arquivo indisponível para download','REJEITADA'),('655','Rejeição: Evento de Ciência da Emissão informado após a manifestação final do destinatário','REJEITADA'),('656','Rejeição: Consumo Indevido','REJEITADA'),('657','Rejeição: Código do Órgão diverge do órgão autorizador','REJEITADA'),('658','Rejeição: UF do destinatário da Chave de Acesso diverge da UF autorizadora','REJEITADA'),('659','Rejeição: NF-e substituído não pode ter sido complementado','REJEITADA'),('660','Rejeição: CFOP de Combustível e não informado grupo de combustível [nItem:nnn]','REJEITADA'),('661','Rejeição: NF-e já existente para o número do EPEC informado','REJEITADA'),('662','Rejeição: Numeração do EPEC está inutilizada na Base de Dados da SEFAZ','REJEITADA'),('663','Rejeição: Alíquota do ICMS com valor superior a 4 por cento na operação de saída interestadual com produtos importados [nItem:999]','REJEITADA'),('664','Rejeição: Evento não permitido para NF-e Substituido/Anulado','REJEITADA'),('665','Rejeição: As informações do seguro da carga devem ser preenchidas para o modal rodoviário','REJEITADA'),('666','Rejeição: O responsável pelo seguro da carga indicado não foi relacionado no NF-e','REJEITADA'),('667','Rejeição: CNPJ do Tomador deve ser igual ao CNPJ do Emitente do NF-e Multimodal','REJEITADA'),('668','Rejeição: CPF do funcionário do registro de passagem inválido','REJEITADA'),('669','Rejeição: Segundo código de barras deve ser informado para NF-e emitido em contingência FS-DA','REJEITADA'),('670','Rejeição: Série utilizada não permitida no webservice','REJEITADA'),('671','Rejeição: NF-e referenciado no NF-e Complementar com diferença de Chave de Acesso [chCTe: 99999999999999999999999999999999999999999999][nRec:999999999999999]','REJEITADA'),('672','Rejeição: NF-e de Anulação com diferença de Chave de Acesso [chCTe: 99999999999999999999999999999999999999999999][nRec:999999999999999]','REJEITADA'),('673','Rejeição: NF-e Substituído com diferença de Chave de Acesso [chCTe: 99999999999999999999999999999999999999999999][nRec]','REJEITADA'),('674','Rejeição: NF-e Objeto de Anulação com diferença de Chave de Acesso [chCTe: 99999999999999999999999999999999999999999999][nRec]','REJEITADA'),('675','Rejeição: Valor do imposto não corresponde a base de calculo X aliquota','REJEITADA'),('676','Rejeição: CFOP informado inválido','REJEITADA'),('677','Rejeição: Órgão de recepção do evento inválido','REJEITADA'),('678','Rejeição: NF referenciada com UF diferente da NF-e complementar','REJEITADA'),('679','Rejeição: Modelo de DF-e referenciado inválido','REJEITADA'),('680','Rejeição: Duplicidade de NF-e referenciada (Chave de Acesso referenciada mais de uma vez)','REJEITADA'),('681','Rejeição: Duplicidade de NF Modelo 1 referenciada (CNPJ, Modelo, Série e Número)','REJEITADA'),('682','Rejeição: Duplicidade de NF de Produtor referenciada (IE, Modelo, Série e Número)','REJEITADA'),('683','Rejeição: Modelo do CT-e referenciado diferente de 57','REJEITADA'),('684','Rejeição: Duplicidade de Cupom Fiscal referenciado (Modelo, Número de Ordem e COO)','REJEITADA'),('685','Rejeição: Total do Valor Aproximado dos Tributos difere do somatório dos itens','REJEITADA'),('686','Rejeição: NF Complementar referencia uma NF-e cancelada','REJEITADA'),('687','Rejeição: NF Complementar referencia uma NF-e denegada','REJEITADA'),('688','Rejeição: NF referenciada de Produtor com IE inexistente [nRef: xxx]','REJEITADA'),('689','Rejeição: NF referenciada de Produtor com IE não vinculada ao CNPJ/CPF informado [nRef: xxx]','REJEITADA'),('690','Rejeição: Pedido de Cancelamento para NF-e com CT-e','REJEITADA'),('691','Rejeição: Chave de Acesso da NF-e diverge da Chave de Acesso do EPEC','REJEITADA'),('692','Rejeição: NF-e Multimodal referenciado não pode estar cancelado ou denegado','REJEITADA'),('693','Rejeição: Alíquota de ICMS superior a definida para a operação interestadual [nItem:999]','REJEITADA'),('694','Rejeição: Não informado o grupo de ICMS para a UF de destino [nItem:999]','REJEITADA'),('695','Rejeição: Informado indevidamente o grupo de ICMS para a UF de destino [nItem:999]','REJEITADA'),('696','Rejeição: Existe EPEC aguardando NF-e nessa faixa de numeração','REJEITADA'),('697','Rejeição: Alíquota interestadual do ICMS com origem diferente do previsto [nItem:999]','REJEITADA'),('698','Rejeição: Alíquota interestadual do ICMS incompatível com as UF envolvidas na operação [nItem:999]','REJEITADA'),('699','Rejeição: Percentual do ICMS Interestadual para a UF de destino difere do previsto para o ano da Data de Emissão [nItem:999]','REJEITADA'),('700','Rejeição: Mensagem de Lote versão 3.xx. Enviar para o Web Service nfeAutorizacao','REJEITADA'),('701','Rejeição: Não informado Nota Fiscal referenciada (CFOP de Exportação Indireta)','REJEITADA'),('702','Rejeição: NFC-e não é aceita pela UF do Emitente','REJEITADA'),('703','Rejeição: Data-Hora de Emissão posterior ao horário de recebimento','REJEITADA'),('704','Rejeição: NFC-e com Data-Hora de emissão atrasada','REJEITADA'),('705','Rejeição: NFC-e com data de entrada/saída','REJEITADA'),('706','Rejeição: NFC-e para operação de entrada','REJEITADA'),('707','Rejeição: NFC-e para operação interestadual ou com o exterior','REJEITADA'),('708','Rejeição: NFC-e não pode referenciar documento fiscal','REJEITADA'),('709','Rejeição: NFC-e com formato de DANFE inválido','REJEITADA'),('710','Rejeição: NF-e com formato de DANFE inválido','REJEITADA'),('711','Rejeição: NF-e com contingência off-line','REJEITADA'),('712','Rejeição: NFC-e com contingência off-line para a UF','REJEITADA'),('713','Rejeição: Tipo de Emissão diferente de 6 ou 7 para contingência da SVC acessada','REJEITADA'),('714','Rejeição: NFC-e com opção de contingência inválida (tpEmis=2, 4 (a critério da UF) ou 5)','REJEITADA'),('715','Rejeição: NFC-e com finalidade inválida','REJEITADA'),('716','Rejeição: NFC-e em operação não destinada a consumidor final','REJEITADA'),('717','Rejeição: NFC-e em operação não presencial','REJEITADA'),('718','Rejeição: NFC-e não deve informar IE de Substituto Tributário','REJEITADA'),('719','Rejeição: NF-e sem a identificação do destinatário','REJEITADA'),('720','Rejeição: Na operação com Exterior deve ser informada tag idEstrangeiro','REJEITADA'),('721','Rejeição: Operação interestadual deve informar CNPJ ou CPF','REJEITADA'),('723','Rejeição: Operação interna com idEstrangeiro informado deve ser para consumidor final','REJEITADA'),('724','Rejeição: NF-e sem o nome do destinatário','REJEITADA'),('725','Rejeição: NFC-e com CFOP inválido [nItem:nnn]','REJEITADA'),('726','Rejeição: NF-e sem a informação de endereço do destinatário','REJEITADA'),('727','Rejeição: Operação com Exterior e UF diferente de EX','REJEITADA'),('728','Rejeição: NF-e sem informação da IE do destinatário','REJEITADA'),('729','Rejeição: NFC-e com informação da IE do destinatário','REJEITADA'),('730','Rejeição: NFC-e com Inscrição Suframa','REJEITADA'),('731','Rejeição: CFOP de operação com Exterior e idDest <> 3','REJEITADA'),('732','Rejeição: CFOP de operação interestadual e idDest <> 2','REJEITADA'),('733','Rejeição: CFOP de operação interna e idDest <> 1','REJEITADA'),('734','Rejeição: NFC-e com Unidade de Comercialização inválida','REJEITADA'),('735','Rejeição: NFC-e com Unidade de Tributação inválida','REJEITADA'),('736','Rejeição: NFC-e com grupo de Veículos novos','REJEITADA'),('737','Rejeição: NFC-e com grupo de Medicamentos','REJEITADA'),('738','Rejeição: NFC-e com grupo de Armamentos','REJEITADA'),('740','Rejeição: Item com Repasse de ICMS retido por Substituto Tributário [nItem:nnn]','REJEITADA'),('741','Rejeição: NFC-e com Partilha de ICMS entre UF','REJEITADA'),('742','Rejeição: NFC-e com grupo do IPI','REJEITADA'),('743','Rejeição: NFC-e com grupo do II','REJEITADA'),('745','Rejeição: NF-e sem grupo do PIS','REJEITADA'),('746','Rejeição: NFC-e com grupo do PIS-ST','REJEITADA'),('748','Rejeição: NF-e sem grupo da COFINS','REJEITADA'),('749','Rejeição: NFC-e com grupo da COFINS-ST','REJEITADA'),('750','Rejeição: NFC-e com valor total superior ao permitido para destinatário não identificado (Código) [Limite]','REJEITADA'),('751','Rejeição: NFC-e com valor total superior ao permitido para destinatário não identificado (Nome) [Limite]','REJEITADA'),('752','Rejeição: NFC-e com valor total superior ao permitido para destinatário não identificado (Endereço) [Limite]','REJEITADA'),('753','Rejeição: NFC-e com Frete','REJEITADA'),('754','Rejeição: NFC-e com dados do Transportador','REJEITADA'),('755','Rejeição: NFC-e com dados de Retenção do ICMS no Transporte','REJEITADA'),('756','Rejeição: NFC-e com dados do veículo de Transporte','REJEITADA'),('757','Rejeição: NFC-e com dados de Reboque do veículo de Transporte','REJEITADA'),('758','Rejeição: NFC-e com dados do Vagão de Transporte','REJEITADA'),('759','Rejeição: NFC-e com dados da Balsa de Transporte','REJEITADA'),('760','Rejeição: NFC-e com dados de cobrança (Fatura, Duplicata)','REJEITADA'),('761','Rejeição: Código de Produtos ANP inexistente','REJEITADA'),('762','Rejeição: NFC-e com dados de compras (Empenho, Pedido, Contrato)','REJEITADA'),('763','Rejeição: NFC-e com dados de aquisição de Cana','REJEITADA'),('764','Rejeição: Solicitada resposta síncrona para Lote com mais de uma NF-e (indSinc=1)','REJEITADA'),('765','Rejeição: Lote só poderá conter NF-e ou NFC-e','REJEITADA'),('766','Rejeição: Item com CST indevido [nItem:nnn]','REJEITADA'),('767','Rejeição: NFC-e com somatório dos pagamentos diferente do total da Nota Fiscal','REJEITADA'),('768','Rejeição: NF-e não deve possuir o grupo de Formas de Pagamento','REJEITADA'),('769','Rejeição: A critério da UF NFC-e deve possuir o grupo de Formas de Pagamento','REJEITADA'),('770','Rejeição: NFC-e autorizada há mais de 24 horas.','REJEITADA'),('771','Rejeição: Operação Interestadual e UF de destino com EX','REJEITADA'),('772','Rejeição: Operação Interestadual e UF de destino igual à UF do emitente','REJEITADA'),('773','Rejeição: Operação Interna e UF de destino difere da UF do emitente','REJEITADA'),('774','Rejeição: NFC-e com indicador de item não participante do total','REJEITADA'),('775','Rejeição: Modelo da NFC-e diferente de 65','REJEITADA'),('776','Rejeição: Solicitada resposta síncrona para UF que não disponibiliza este atendimento (indSinc=1)','REJEITADA'),('777','Rejeição: Obrigatória a informação do NCM completo','REJEITADA'),('778','Rejeição: Informado NCM inexistente [nItem:nnn]','REJEITADA'),('779','Rejeição: NFC-e com NCM incompatível','REJEITADA'),('780','Rejeição: Total da NFC-e superior ao valor limite estabelecido pela SEFAZ [Limite]','REJEITADA'),('781','Rejeição: Emissor não habilitado para emissão da NFC-e','REJEITADA'),('782','Rejeição: NFC-e não é autorizada pelo SCAN','REJEITADA'),('783','Rejeição: NFC-e não é autorizada pela SVC','REJEITADA'),('784','Rejeição: NFC-e não permite o evento de Carta de Correção','REJEITADA'),('785','Rejeição: NFC-e com entrega a domicílio não permitida pela UF','REJEITADA'),('786','Rejeição: NFC-e de entrega a domicílio sem dados do Transportador','REJEITADA'),('787','Rejeição: NFC-e de entrega a domicílio sem a identificação do destinatário','REJEITADA'),('788','Rejeição: NFC-e de entrega a domicílio sem o endereço do destinatário','REJEITADA'),('789','Rejeição: NFC-e para destinatário contribuinte de ICMS','REJEITADA'),('790','Rejeição: Operação com Exterior para destinatário Contribuinte de ICMS','REJEITADA'),('791','Rejeição: NF-e com indicação de destinatário isento de IE, com a informação da IE do destinatário','REJEITADA'),('792','Rejeição: Informada a IE do destinatário para operação com destinatário no Exterior','REJEITADA'),('793','Rejeição: Valor do ICMS relativo ao Fundo de Combate à Pobreza na UF de destino difere do calculado [nItem:999]','REJEITADA'),('794','Rejeição: NF-e com indicativo de NFC-e com entrega a domicílio','REJEITADA'),('795','Rejeição: Total do ICMS desonerado difere do somatório dos itens','REJEITADA'),('796','Rejeição: Empresa sem Chave de Segurança para o QR-Code','REJEITADA'),('798','Rejeição: Valor total do ICMS relativo Fundo de Combate à Pobreza (FCP) da UF de destino difere do somatório do valor dos itens','REJEITADA'),('799','Rejeição: Valor total do ICMS Interestadual da UF de destino difere do somatório dos itens','REJEITADA'),('800','Rejeição: Valor total do ICMS Interestadual da UF do remetente difere do somatório dos itens','REJEITADA'),('805','Rejeição: A SEFAZ do destinatário não permite Contribuinte Isento de Inscrição Estadual','REJEITADA'),('806','Rejeição: Operação com ICMS-ST sem informação do CEST','REJEITADA'),('807','Rejeição: NFC-e com grupo de ICMS para a UF do destinatário','REJEITADA'),('867','Rejeição: Grupo duplicata informado e forma de pagamento não é Duplicata Mercantil','REJEITADA'),('871','Rejeição: O campo Forma de Pagamento deve ser preenchido com a opção Sem Pagamento','REJEITADA'),('872','Rejeição: Informado Duplicata Mercantil como Forma de Pagamento e não preenchido o Grupo Duplicata','REJEITADA'),('895','Rejeicao: Valor do Desconto da Fatura maior que o Valor Original da Fatura','REJEITADA'),('896','Rejeicao: Valor Liquido da Fatura difere do Valor Original menos o Valor do Desconto','REJEITADA'),('998','Rejeição: NF-e Multimodal e Serviço Vinculado a Multimodal não estão liberados no ambiente de produção. *** Regra provisória','REJEITADA'),('999','Rejeição: Erro não catalogado (informar a mensagem de erro capturado no tratamento da exceção)','REJEITADA');
/*!40000 ALTER TABLE `fe_sytb_msgwssefaz_msws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_permission_perm`
--

DROP TABLE IF EXISTS `fe_sytb_permission_perm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_permission_perm` (
  `perm_entity` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `perm_group` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `perm_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`perm_entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_permission_perm`
--

LOCK TABLES `fe_sytb_permission_perm` WRITE;
/*!40000 ALTER TABLE `fe_sytb_permission_perm` DISABLE KEYS */;
INSERT INTO `fe_sytb_permission_perm` VALUES ('cad.adminsac','acesso','cad.adminsac'),('cad.empresa','empresa','cadastro.de.empresa'),('cad.groupuser','acesso','grupo.de.usuario'),('cad.perm.groupuser','acesso','permissao.de.acesso'),('cad.perm.groupuser.config','acesso','cad.perm.groupuser.config'),('cad.user','acesso','cadastro.de.usuarios'),('cockpit.anotherImps','gnre','cockpit.anotherImps'),('cockpit.bi.research','cockpitoutbound','cockpit.bi.research'),('cockpit.bt.atualiz.erp','cockpitoutbound','cockpit.botao.atualizar.status.erp'),('cockpit.bt.canc.nfe','cockpitoutbound','cockpit.boato.cancelar.nfe'),('cockpit.bt.down.bol','cockpitoutbound','cockpit.botao.donwload.boleto'),('cockpit.bt.down.danfe','cockpitoutbound','cockpit.botao.download.do.danfe'),('cockpit.bt.down.event','cockpitoutbound','cockpit.boato.download.de.evento'),('cockpit.bt.down.report','input','cockpit.bt.down.report'),('cockpit.bt.down.xml','cockpitoutbound','cockpit.botao.donwload.do.xml'),('cockpit.bt.emitir.cce','cockpitoutbound','cockpit.boato.emitir.cce'),('cockpit.bt.event.date.saida','cockpitoutbound','cockpit.bt.event.date.saida'),('cockpit.bt.event.dest.inboud','cockpitoutbound','cockpit.bt.event.dest.inboud'),('cockpit.bt.inut.nfe','cockpitoutbound','cockpit.boato.inutilizar.nfe'),('cockpit.bt.reenv.email','cockpitoutbound','cockpit.botao.reenvio.de.email'),('cockpit.bt.view.danfe','cockpitoutbound','cockpit.botao.visualizar.danfe'),('cockpit.bt.view.rep.nfe','cockpitoutbound','cockpit.botao.reprocessar.nfe'),('cockpit.bt.view.xml','cockpitoutbound','cockpit.botao.visualizar.xml'),('cockpit.configcertified','acesso','cockpit.configcertified'),('cockpit.configCFOP','acesso','cockpit.configCFOP'),('cockpit.configCFOP.print','acesso','cockpit.configCFOP.print'),('cockpit.configcode.sefaz','acesso','cockpit.configcode.sefaz'),('cockpit.emailhistory','acesso','cockpit.emailhistory'),('cockpit.gnre','gnre',''),('cockpit.group.permissions','acesso','permission.edit'),('cockpit.idl','outbound',''),('cockpit.inb.bt.event.dest','inbound','cockpit.inb.bt.event.dest'),('cockpit.inbound','inbound','cockpit.inbound'),('cockpit.inp.nfs','input','cockpit.inp.nfs'),('cockpit.mdfe','mdfe',''),('cockpit.monit.event','cockpitoutbound','cockpit.monit.event'),('cockpit.nfe','ountbound',''),('cockpit.out.bol','acesso','cockpit.configcode.sefaz'),('cockpit.out.nfs','outbound','cockpit.out.nfs'),('cockpit.uploadxml','upload',''),('estatisticas.nfe','outbound','estatisticas.nfe'),('inbound_bt_report_comp','inbound','inbound_bt_report_comp'),('man.config','acesso','man.config'),('outbound_bt_report_comp','cockpitoutbound','outbound_bt_report_comp'),('reinf.viewevents','reinf',''),('report.report','report',''),('sefaz.wsconfig','configuracoes','configurações.ws.nfe'),('status.sefaz','outbound','status.servico.sefaz');
/*!40000 ALTER TABLE `fe_sytb_permission_perm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_sefazwsconf_swco`
--

DROP TABLE IF EXISTS `fe_sytb_sefazwsconf_swco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_sefazwsconf_swco` (
  `swco_cnpj` char(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `swco_key` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `swco_grupo` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `swco_descr` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_visible` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_tipo` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_options` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_size` int DEFAULT NULL,
  `swco_obs` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `swco_ordem` int DEFAULT NULL,
  PRIMARY KEY (`swco_cnpj`,`swco_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_sefazwsconf_swco`
--

LOCK TABLES `fe_sytb_sefazwsconf_swco` WRITE;
/*!40000 ALTER TABLE `fe_sytb_sefazwsconf_swco` DISABLE KEYS */;
INSERT INTO `fe_sytb_sefazwsconf_swco` VALUES ('01349764000400','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('01349764000400','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('01349764000400','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('01349764000400','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('01349764000400','aDocFormat.pathLogoFile','exportacao','/dadosxml/sites/efit-homolog/resources/img/logo/logo_royal.jpg','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('01349764000400','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('01349764000400','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('01349764000400','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('01349764000400','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('01349764000400','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('01349764000400','aExpXml.copiaXmlCTe','exportacao','','Diretório de Cópia de XML de CT-e','1','TEXT','',255,'',8),('01349764000400','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('01349764000400','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('01349764000400','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('01349764000400','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('01349764000400','aLayoutEmail.layoutAlertaCertValid','empresa','Prezados, ),\n\nAtenção quanto ao vencimento do certificado digital para emissão de NF-e:\n\nEmpresa: {empr_razao_social} - {empr_nome}\nCertificado: {cert_file}\nValidade: {cert_data_val}\n\n\nRecomendamos que seja adquirido o novo certificado imediatamente.\n\n\n**** Mensagem enviada automaticamente pelo sistema e-FIT Outbound ***','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('01349764000400','aLayoutEmail.layoutAutAnothers','layout.email','','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('01349764000400','aLayoutEmail.layoutAutClienteForn','layout.email','Prezado (a) {destinatario}, Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias. Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador. Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE. Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso. O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional. Para mais detalhes, consulte: www.nfe.fazenda.gov.br \nAtenciosamente,{emitente}','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('01349764000400','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('01349764000400','aLayoutEmail.layoutAutTransport','layout.email','Prezado (a) {transportadora}, A Nota Fiscal Eletrônica (NF-e) de um pedido ao qual você irá transportar foi gerada com sucesso. Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.\nAtenciosamente,{emitente}','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('01349764000400','aLayoutEmail.layoutCancelClienteForn','layout.email','Prezado (a) {destinatario}, Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\nAtenciosamente,{emitente}','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('01349764000400','aLayoutEmail.layoutCancelTransport','layout.email','Prezado (a) {transportadora}, Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. \nAtenciosamente,{emitente}','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('01349764000400','aLayoutEmail.layoutCceClienteForn','layout.email','Prezado (a) {destinatario}, Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\nAtenciosamente,{emitente}','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('01349764000400','aLayoutEmail.layoutCceTransport','layout.email','Prezado (a) {transportadora}, Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\nAtenciosamente,{emitente}','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('01349764000400','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('01349764000400','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('01349764000400','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('01349764000400','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('01349764000400','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('01349764000400','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('01349764000400','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('01349764000400','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('01349764000400','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('01349764000400','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('01349764000400','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('01349764000400','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('01349764000400','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('01349764000400','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('01349764000400','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('01349764000400','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('01349764000400','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('01349764000400','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('01349764000400','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('01349764000400','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('01349764000400','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('01349764000400','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('01349764000400','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('01349764000400','boleto.ftp.host','nfe.boleto','','FTP HOST','1','TEXT','',255,'',4),('01349764000400','boleto.ftp.password','nfe.boleto','','FTP PASSWORD','1','TEXT','',255,'',6),('01349764000400','boleto.ftp.user','nfe.boleto','','FTP USER','1','TEXT','',255,'',5),('01349764000400','boleto.layoutEmailBoleto','nfe.boleto','','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('01349764000400','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',255,'',1),('01349764000400','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',255,'',2),('01349764000400','CertChain','empresa','','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('01349764000400','certDiasAlerta','empresa','','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('01349764000400','certEmailAlerta','empresa','','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('01349764000400','certPassword','empresa','ROYAL01349','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('01349764000400','certPfxName','empresa','da14cc41784e47cde56c515eb1aaf164.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('01349764000400','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('01349764000400','cnpj','empresa(','01349764000400','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('01349764000400','connectWS.password','connectWS','','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('01349764000400','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('01349764000400','conting.detServAut','contingencia','2','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('01349764000400','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('01349764000400','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'\n Comandos:\n - NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]\n - {Q}: Gera uma quebra de linha no texto.',6),('01349764000400','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('01349764000400','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('01349764000400','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('01349764000400','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('01349764000400','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('01349764000400','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('01349764000400','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('01349764000400','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('01349764000400','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('01349764000400','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('01349764000400','envio.mail.smtp.secure','envio','','SMPT SEGURANÇA','1','TEXT','',255,'',11),('01349764000400','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('01349764000400','envio.sendEmail','envio','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('01349764000400','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('01349764000400','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('01349764000400','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('01349764000400','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('01349764000400','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('01349764000400','inboudCTE.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('01349764000400','inboudCTE.imapToken','inbound.imap.cte','eyJ0eXAiOiJKV1QiLCJub25jZSI6Ik9JN2lMRmk0ZGx3VEF1cVNHUWZpSERnTE1SUVA5UFJRa3diSFY5MEUxc2siLCJhbGciOiJSUzI1NiIsIng1dCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSIsImtpZCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NjQ5NTAxMTcsIm5iZiI6MTY2NDk1MDExNywiZXhwIjoxNjY0OTU1NzQwLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiRTJaZ1lLaTFFb2pyS0NzV1dwY3hoL3VDWjQyRjc5bnA3TUZjbjFMV3hrME1WclMvL2RHa2JsM3pQYkVVeThzR1JhSkorNU5aQVE9PSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzNCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIiwic2lkIjoiNTQ1Y2QzODYtYTNjZi00N2Y4LTk0YWMtODQ0NzE4ZjUyMDBiIiwic2lnbmluX3N0YXRlIjpbImttc2kiXSwic3ViIjoiSkFjTXhWRDItb2VQR1NLOHhTdGp5UXl0VkhFSVdaTWpSTGMxSHgwYjg4VSIsInRpZCI6IjNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NCIsInVuaXF1ZV9uYW1lIjoieG1sQHJveWFsZmljLmNvbS5iciIsInVwbiI6InhtbEByb3lhbGZpYy5jb20uYnIiLCJ1dGkiOiJndHloUWlDR0NVMlV6ZUViRW5OR0FBIiwidmVyIjoiMS4wIiwid2lkcyI6WyJiNzlmYmY0ZC0zZWY5LTQ2ODktODE0My03NmIxOTRlODU1MDkiXX0.LDWlpDrJm3gWZ8rbErLIa02WP4AK-ibOr5KBq2DjEl7x_4cnAqjtC0WhuhBiQyE4WmVVwfY2AgF2Q1c5LP3bVZKO-4FdHNnGyAZRko_kAdfy9zXWUlyj6i-BbiYVSSlp01K4-z3zHpfWd4O4lf7kukgVXLfQAhmvOxCW4HlqgoI4LeDb-Z0A-dD9jXOYxwinfNo7Hj7vUIjHbFzLzEVek86mgrxHbLUx8_emfZl42TjBChQydp5del3V4zf8coLZHe9Yma_lUF9PIcVNGujNWhvdRiV1HrxPU5d-tO5u7eiyECruv_mfnwwF8tb0T53uoFDgBHPT3AN5HCgDIruOEQ','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('01349764000400','inboudCTE.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('01349764000400','inboudCTE.imapUser','inbound.imap.cte','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('01349764000400','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('01349764000400','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('01349764000400','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('01349764000400','inboudNFS.boxMail','inbound.imap.nfs','','IMAP Box Default','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('01349764000400','inboudNFS.imapCertSecurity','inbound.imap.nfs','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('01349764000400','inboudNFS.imapHost','inbound.imap.nfs','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('01349764000400','inboudNFS.imapPassword','inbound.imap.nfs','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('01349764000400','inboudNFS.imapPort','inbound.imap.nfs','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('01349764000400','inboudNFS.imapRefreshToken','inbound.imap.nfs','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P9xelh57UcthtaS8ZPBmsEXkLqtUxACU9nG7SacHw9VgQsgjXNA5asOuYFbe4qv43pydy1lSrqh6ksfmrzSl-mK8DZy37UlIkh3lnhU-YCDpcTZy5jVUzF1wOZwJzC2UjaVohB3t7OWLsOiE0Aabt35_qSRgpdbQFtJO84LkWU-0qxqNwPdvOiprYx2LqTqCAKRwJZT8Io9x8MDCR8xzo0xaqJSOAbWjfuLZ9vbjlmZiDPCCl-TSzqwUMCWzeiCFeqPWutayLg2FlmPTYwf-xB9v4k0ZoVPFtr9RCpkb5nyAlO4-bwtkcAxnp2u-1J8Ql7iPeu9utRlvnCLavlCAX5QJvQesgUnkRi--XiIxttN3Ju1A5Flg64sOamJqIM1p0Pq2cCdHpwiv8UVIydukbAsq4LlOaaC7RerZ8lpfPIkAwwCGFY2SmpTugqEQLdnUbQs3E0OJZo4noDZUfOVjK1VqpHFnT7jPZ5NHuf-Sp65J5vcDTKkb2-OZZswguxrhU7xki9s5OYxWuNmuSNqtn2nhJi0Q0AqwOiOGeVJwkWw3Ddg-1LOhMj1oTxlZRqWrJVI7vB9xq0dBrto6I17psuks5FOM99XvxsFBuQy7bIuDMuTJDfWXOrF9QTVih4k0KGZwz0VeAO2b0v51e4llbY9-mzC_tVQ2_Ax3Y4nXQC_sV1RlM6POVZ4sbT5V730_OOGrrawpro2RCBDnxfcX6_MMAn3cQYvctA','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('01349764000400','inboudNFS.imapToken','inbound.imap.nfs','eyJ0eXAiOiJKV1QiLCJub25jZSI6Ik9JN2lMRmk0ZGx3VEF1cVNHUWZpSERnTE1SUVA5UFJRa3diSFY5MEUxc2siLCJhbGciOiJSUzI1NiIsIng1dCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSIsImtpZCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NjQ5NTAxMTcsIm5iZiI6MTY2NDk1MDExNywiZXhwIjoxNjY0OTU1NzQwLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiRTJaZ1lLaTFFb2pyS0NzV1dwY3hoL3VDWjQyRjc5bnA3TUZjbjFMV3hrME1WclMvL2RHa2JsM3pQYkVVeThzR1JhSkorNU5aQVE9PSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzNCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIiwic2lkIjoiNTQ1Y2QzODYtYTNjZi00N2Y4LTk0YWMtODQ0NzE4ZjUyMDBiIiwic2lnbmluX3N0YXRlIjpbImttc2kiXSwic3ViIjoiSkFjTXhWRDItb2VQR1NLOHhTdGp5UXl0VkhFSVdaTWpSTGMxSHgwYjg4VSIsInRpZCI6IjNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NCIsInVuaXF1ZV9uYW1lIjoieG1sQHJveWFsZmljLmNvbS5iciIsInVwbiI6InhtbEByb3lhbGZpYy5jb20uYnIiLCJ1dGkiOiJndHloUWlDR0NVMlV6ZUViRW5OR0FBIiwidmVyIjoiMS4wIiwid2lkcyI6WyJiNzlmYmY0ZC0zZWY5LTQ2ODktODE0My03NmIxOTRlODU1MDkiXX0.LDWlpDrJm3gWZ8rbErLIa02WP4AK-ibOr5KBq2DjEl7x_4cnAqjtC0WhuhBiQyE4WmVVwfY2AgF2Q1c5LP3bVZKO-4FdHNnGyAZRko_kAdfy9zXWUlyj6i-BbiYVSSlp01K4-z3zHpfWd4O4lf7kukgVXLfQAhmvOxCW4HlqgoI4LeDb-Z0A-dD9jXOYxwinfNo7Hj7vUIjHbFzLzEVek86mgrxHbLUx8_emfZl42TjBChQydp5del3V4zf8coLZHe9Yma_lUF9PIcVNGujNWhvdRiV1HrxPU5d-tO5u7eiyECruv_mfnwwF8tb0T53uoFDgBHPT3AN5HCgDIruOEQ','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('01349764000400','inboudNFS.imapTokenValidAt','inbound.imap.nfs','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('01349764000400','inboudNFS.imapUser','inbound.imap.nfs','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('01349764000400','inboudNFS.moveToBox','inbound.imap.nfs','lidos','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('01349764000400','inboudNFS.tpProtocol','inbound.imap.nfs','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('01349764000400','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('01349764000400','inbound.boxMail','inbound.imap','','IMAP Box Default','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('01349764000400','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('01349764000400','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('01349764000400','inbound.imapPassword','inbound.imap','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('01349764000400','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('01349764000400','inbound.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('01349764000400','inbound.imapToken','inbound.imap.cte','eyJ0eXAiOiJKV1QiLCJub25jZSI6InAtWW4xZk82Y3ZQT2dCOXZQM2lkSXloNl9BYzRQMmxDWFNUN2lVaGRzREkiLCJhbGciOiJSUzI1NiIsIng1dCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyIsImtpZCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NzI5NDE4MzEsIm5iZiI6MTY3Mjk0MTgzMSwiZXhwIjoxNjcyOTQ2NjEzLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiQVRRQXkvOFRBQUFBd0VTdkY0SjFwaTZyZnJ2TE1ObTRtOUU1bFlEQW9iRmxCK0k0akU3MVJjZEZZTVAzeUdmQ09OcnFvcTh6OTdWUSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzMCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIFNNVFAuU2VuZCBVc2VyLlJlYWQiLCJzaWQiOiIyOGU2MjE3Yi0zMmQ0LTQzNGQtYTcyNy05YzI2MzNiOGZiODQiLCJzaWduaW5fc3RhdGUiOlsia21zaSJdLCJzdWIiOiJKQWNNeFZEMi1vZVBHU0s4eFN0anlReXRWSEVJV1pNalJMYzFIeDBiODhVIiwidGlkIjoiM2IwOWI2NmUtZjg4Mi00YjRiLTk4MzAtZWE5ZTg3OWI0Mjg0IiwidW5pcXVlX25hbWUiOiJ4bWxAcm95YWxmaWMuY29tLmJyIiwidXBuIjoieG1sQHJveWFsZmljLmNvbS5iciIsInV0aSI6IlpMSHY1cDRfc0U2Um0zWmtJMHZPQWciLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbImI3OWZiZjRkLTNlZjktNDY4OS04MTQzLTc2YjE5NGU4NTUwOSJdfQ.rJ-ylmazBAYhXZtl3GpdNU-tWmpl2Kwzz5WN69VzXfJkW91V7C4bWxVEGkASFMApUq-0AdIixo1nDyAR-Zg0L_Ga8wbTTHRN-gUQCRBQVA5HndpW1GYxN5g-Czaa5-QqUYwulYUBGiK4EvWqFOmwiekObJlYEW74eliRLUJ5kJ_0-VmJwu5bTr6Y66ztDuqdBPMhELbkZOfIIjNuLAeEDrtfjFGb0c9UF_dEnkfkXX6nsQkODHtfFXlKyr_4fIwdheRzm6AllvDOQjhwMaQauOrskmzIkEdBt_GI7uVSfh5SBjkyk9FgMR9KlmbZ84BKZ-dNFh3YyNnStd7h9PMx1w','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('01349764000400','inbound.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('01349764000400','inbound.imapUser','inbound.imap','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('01349764000400','inbound.impCTE','inbound.imap.cte','','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('01349764000400','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('01349764000400','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('01349764000400','inbound.impNfeWs','inbound.imap','1','Importar NF-e WS','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e do Webservice',6),('01349764000400','inbound.impNFS','inbound.imap.nfs','1','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('01349764000400','inbound.impNFSDeleteEmail','inbound.imap.nfs','0','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('01349764000400','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('01349764000400','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('01349764000400','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('01349764000400','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('01349764000400','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('01349764000400','pathCertsFiles','empresa','/var/www/dataXML/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('01349764000400','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('01349764000400','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('01349764000400','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('01349764000400','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('01349764000400','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('01349764000400','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('01349764000400','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('01349764000400','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('01349764000400','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('01349764000400','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('01349764000400','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('01349764000400','razaosocial','empresa','Royal Fic Distribuidora de Derivados de Petroleo sa','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('01349764000400','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('01349764000400','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('01349764000400','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('01349764000400','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('01349764000400','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('01349764000400','sefazCnpjCpfAutorizados','nfe','','CPF/CPNJ autorizado','1','TEXT','',255,'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)',1),('01349764000400','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('01349764000400','siglaUF','empresa','SP','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('01349764000400','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('01349764000400','tpAmb','geral','1','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('02949160000107','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('02949160000107','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('02949160000107','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('02949160000107','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('02949160000107','aDocFormat.pathLogoFile','exportacao','','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('02949160000107','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('02949160000107','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('02949160000107','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('02949160000107','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('02949160000107','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('02949160000107','aExpXml.copiaXmlCTe','exportacao','/var/www/html/xml_ftp/cte/available/','Diretório de Cópia de XML de CT-e','1','TEXT','',255,'',8),('02949160000107','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('02949160000107','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('02949160000107','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('02949160000107','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('02949160000107','aLayoutEmail.layoutAlertaCertValid','empresa','','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('02949160000107','aLayoutEmail.layoutAutAnothers','layout.email','','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('02949160000107','aLayoutEmail.layoutAutClienteForn','layout.email','','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('02949160000107','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('02949160000107','aLayoutEmail.layoutAutTransport','layout.email','','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('02949160000107','aLayoutEmail.layoutCancelClienteForn','layout.email','','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('02949160000107','aLayoutEmail.layoutCancelTransport','layout.email','','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('02949160000107','aLayoutEmail.layoutCceClienteForn','layout.email','','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('02949160000107','aLayoutEmail.layoutCceTransport','layout.email','','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('02949160000107','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('02949160000107','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('02949160000107','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('02949160000107','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('02949160000107','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('02949160000107','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('02949160000107','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('02949160000107','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('02949160000107','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('02949160000107','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('02949160000107','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('02949160000107','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('02949160000107','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('02949160000107','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('02949160000107','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('02949160000107','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('02949160000107','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('02949160000107','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('02949160000107','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('02949160000107','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('02949160000107','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('02949160000107','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('02949160000107','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('02949160000107','boleto.ftp.host','nfe.boleto','','FTP HOST','1','TEXT','',255,'',4),('02949160000107','boleto.ftp.password','nfe.boleto','','FTP PASSWORD','1','TEXT','',255,'',6),('02949160000107','boleto.ftp.user','nfe.boleto','','FTP USER','1','TEXT','',255,'',5),('02949160000107','boleto.layoutEmailBoleto','nfe.boleto','','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('02949160000107','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',255,'',1),('02949160000107','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',255,'',2),('02949160000107','CertChain','empresa','','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('02949160000107','certDiasAlerta','empresa','7','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('02949160000107','certEmailAlerta','empresa','marlon.barbosa@focusit.com.br','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('02949160000107','certPassword','empresa','Tr@can.02949','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('02949160000107','certPfxName','empresa','8ddb0a3953ca0354da63a2b1b691d59d.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('02949160000107','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('02949160000107','cnpj','empresa','02949160000107','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('02949160000107','connectWS.password','connectWS','','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('02949160000107','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('02949160000107','conting.detServAut','contingencia','','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('02949160000107','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('02949160000107','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'<br/>&nbsp;&nbsp;Comandos:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- {Q}: Gera uma quebra de linha no texto.',6),('02949160000107','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('02949160000107','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('02949160000107','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('02949160000107','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('02949160000107','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('02949160000107','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('02949160000107','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('02949160000107','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('02949160000107','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('02949160000107','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('02949160000107','envio.mail.smtp.secure','envio','','SMPT SEGURANÇA','1','TEXT','',255,'',11),('02949160000107','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('02949160000107','envio.sendEmail','envio','','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('02949160000107','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000107','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000107','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000107','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000107','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000107','inboudCTE.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('02949160000107','inboudCTE.imapToken','inbound.imap.cte','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('02949160000107','inboudCTE.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('02949160000107','inboudCTE.imapUser','inbound.imap.cte','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000107','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000107','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000107','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('02949160000107','inboudNFS.boxMail','inbound.imap.nfs','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000107','inboudNFS.imapCertSecurity','inbound.imap.nfs','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000107','inboudNFS.imapHost','inbound.imap.nfs','outlook.office365.com','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000107','inboudNFS.imapPassword','inbound.imap.nfs','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000107','inboudNFS.imapPort','inbound.imap.nfs','993','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000107','inboudNFS.imapRefreshToken','inbound.imap.nfs','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P9xelh57UcthtaS8ZPBmsEXkLqtUxACU9nG7SacHw9VgQsgjXNA5asOuYFbe4qv43pydy1lSrqh6ksfmrzSl-mK8DZy37UlIkh3lnhU-YCDpcTZy5jVUzF1wOZwJzC2UjaVohB3t7OWLsOiE0Aabt35_qSRgpdbQFtJO84LkWU-0qxqNwPdvOiprYx2LqTqCAKRwJZT8Io9x8MDCR8xzo0xaqJSOAbWjfuLZ9vbjlmZiDPCCl-TSzqwUMCWzeiCFeqPWutayLg2FlmPTYwf-xB9v4k0ZoVPFtr9RCpkb5nyAlO4-bwtkcAxnp2u-1J8Ql7iPeu9utRlvnCLavlCAX5QJvQesgUnkRi--XiIxttN3Ju1A5Flg64sOamJqIM1p0Pq2cCdHpwiv8UVIydukbAsq4LlOaaC7RerZ8lpfPIkAwwCGFY2SmpTugqEQLdnUbQs3E0OJZo4noDZUfOVjK1VqpHFnT7jPZ5NHuf-Sp65J5vcDTKkb2-OZZswguxrhU7xki9s5OYxWuNmuSNqtn2nhJi0Q0AqwOiOGeVJwkWw3Ddg-1LOhMj1oTxlZRqWrJVI7vB9xq0dBrto6I17psuks5FOM99XvxsFBuQy7bIuDMuTJDfWXOrF9QTVih4k0KGZwz0VeAO2b0v51e4llbY9-mzC_tVQ2_Ax3Y4nXQC_sV1RlM6POVZ4sbT5V730_OOGrrawpro2RCBDnxfcX6_MMAn3cQYvctA','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('02949160000107','inboudNFS.imapToken','inbound.imap.nfs','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('02949160000107','inboudNFS.imapTokenValidAt','inbound.imap.nfs','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('02949160000107','inboudNFS.imapUser','inbound.imap.nfs','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000107','inboudNFS.moveToBox','inbound.imap.nfs','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000107','inboudNFS.tpProtocol','inbound.imap.nfs','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000107','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('02949160000107','inbound.boxMail','inbound.imap','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000107','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000107','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000107','inbound.imapPassword','inbound.imap','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000107','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000107','inbound.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('02949160000107','inbound.imapToken','inbound.imap.cte','eyJ0eXAiOiJKV1QiLCJub25jZSI6InAtWW4xZk82Y3ZQT2dCOXZQM2lkSXloNl9BYzRQMmxDWFNUN2lVaGRzREkiLCJhbGciOiJSUzI1NiIsIng1dCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyIsImtpZCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NzI5NDE4MzEsIm5iZiI6MTY3Mjk0MTgzMSwiZXhwIjoxNjcyOTQ2NjEzLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiQVRRQXkvOFRBQUFBd0VTdkY0SjFwaTZyZnJ2TE1ObTRtOUU1bFlEQW9iRmxCK0k0akU3MVJjZEZZTVAzeUdmQ09OcnFvcTh6OTdWUSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzMCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIFNNVFAuU2VuZCBVc2VyLlJlYWQiLCJzaWQiOiIyOGU2MjE3Yi0zMmQ0LTQzNGQtYTcyNy05YzI2MzNiOGZiODQiLCJzaWduaW5fc3RhdGUiOlsia21zaSJdLCJzdWIiOiJKQWNNeFZEMi1vZVBHU0s4eFN0anlReXRWSEVJV1pNalJMYzFIeDBiODhVIiwidGlkIjoiM2IwOWI2NmUtZjg4Mi00YjRiLTk4MzAtZWE5ZTg3OWI0Mjg0IiwidW5pcXVlX25hbWUiOiJ4bWxAcm95YWxmaWMuY29tLmJyIiwidXBuIjoieG1sQHJveWFsZmljLmNvbS5iciIsInV0aSI6IlpMSHY1cDRfc0U2Um0zWmtJMHZPQWciLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbImI3OWZiZjRkLTNlZjktNDY4OS04MTQzLTc2YjE5NGU4NTUwOSJdfQ.rJ-ylmazBAYhXZtl3GpdNU-tWmpl2Kwzz5WN69VzXfJkW91V7C4bWxVEGkASFMApUq-0AdIixo1nDyAR-Zg0L_Ga8wbTTHRN-gUQCRBQVA5HndpW1GYxN5g-Czaa5-QqUYwulYUBGiK4EvWqFOmwiekObJlYEW74eliRLUJ5kJ_0-VmJwu5bTr6Y66ztDuqdBPMhELbkZOfIIjNuLAeEDrtfjFGb0c9UF_dEnkfkXX6nsQkODHtfFXlKyr_4fIwdheRzm6AllvDOQjhwMaQauOrskmzIkEdBt_GI7uVSfh5SBjkyk9FgMR9KlmbZ84BKZ-dNFh3YyNnStd7h9PMx1w','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('02949160000107','inbound.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('02949160000107','inbound.imapUser','inbound.imap','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000107','inbound.impCTE','inbound.imap.cte','1','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('02949160000107','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('02949160000107','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('02949160000107','inbound.impNfeWs','inbound.imap','1','Importar NF-e WS','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e do Webservice',6),('02949160000107','inbound.impNFS','inbound.imap.nfs','1','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('02949160000107','inbound.impNFSDeleteEmail','inbound.imap.nfs','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('02949160000107','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000107','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000107','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('02949160000107','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('02949160000107','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('02949160000107','pathCertsFiles','empresa','/var/www/dataXML/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('02949160000107','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('02949160000107','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('02949160000107','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('02949160000107','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('02949160000107','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('02949160000107','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('02949160000107','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('02949160000107','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('02949160000107','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('02949160000107','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('02949160000107','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('02949160000107','razaosocial','empresa','Tracan','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('02949160000107','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('02949160000107','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('02949160000107','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('02949160000107','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('02949160000107','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('02949160000107','sefazCnpjCpfAutorizados','nfe','','CPF/CPNJ autorizado','1','TEXT','',255,'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)',1),('02949160000107','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('02949160000107','siglaUF','empresa','SP','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('02949160000107','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('02949160000107','tpAmb','geral','2','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('02949160000298','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('02949160000298','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('02949160000298','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('02949160000298','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('02949160000298','aDocFormat.pathLogoFile','exportacao','/var/www/html/efit/api/nfephp/images/company-logo-tracan.jpg','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('02949160000298','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('02949160000298','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('02949160000298','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('02949160000298','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('02949160000298','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('02949160000298','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('02949160000298','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('02949160000298','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('02949160000298','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('02949160000298','aLayoutEmail.layoutAlertaCertValid','empresa','','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('02949160000298','aLayoutEmail.layoutAutAnothers','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><i>Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador.</i></p>\n<p><i>Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE.</i></p>\n<p><i>Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso.</i></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"http://www.nfe.fazenda.gov.br/portal/Default.aspx\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('02949160000298','aLayoutEmail.layoutAutClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><i>Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador.</i></p>\n<p><i>Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE.</i></p>\n<p><i>Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso.</i></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"&quot;&quot;http://www.nfe.fazenda.gov.br/portal/Default.aspx&quot;&quot;\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('02949160000298','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><b style=\"font-size:18px;\">Prezado cliente, visando garantir a confiança e segurança em nossas vendas, informe ao grupo Tracan Máquinas se reconhece a compra dessa mercadoria a partir do link a seguir: </b> <a href=\"{link_nfe_refuse}\" style=\"font-size:18px;font-weight: bold;\">click aqui.</a></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"http://www.nfe.fazenda.gov.br/portal/Default.aspx\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('02949160000298','aLayoutEmail.layoutAutTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>A Nota Fiscal Eletrônica (NF-e) de um pedido ao qual você irá transportar foi gerada com sucesso.</p><p>\n</p><p>Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('02949160000298','aLayoutEmail.layoutCancelClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('02949160000298','aLayoutEmail.layoutCancelTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('02949160000298','aLayoutEmail.layoutCceClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('02949160000298','aLayoutEmail.layoutCceTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('02949160000298','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('02949160000298','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('02949160000298','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('02949160000298','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('02949160000298','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('02949160000298','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('02949160000298','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('02949160000298','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('02949160000298','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('02949160000298','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('02949160000298','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('02949160000298','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('02949160000298','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('02949160000298','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('02949160000298','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('02949160000298','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('02949160000298','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('02949160000298','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('02949160000298','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('02949160000298','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('02949160000298','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('02949160000298','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('02949160000298','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('02949160000298','boleto.ftp.host','nfe.boleto','192.168.100.252:2122','FTP HOST','1','TEXT','',255,'',4),('02949160000298','boleto.ftp.password','nfe.boleto','Trac@n#2020','FTP PASSWORD','1','TEXT','',255,'',6),('02949160000298','boleto.ftp.user','nfe.boleto','TRACAN_DOM\\FPT_FINNET','FTP USER','1','TEXT','',255,'',5),('02949160000298','boleto.layoutEmailBoleto','nfe.boleto','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a 2ª via do boleto referente a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.</p>\n\n<p><i>O boleto bancário é um documento de cobrança, físico ou virtual, válido para pagamento nos caixas de qualquer rede bancária ou com o código de barras no auto-atendimento ou Internet Banking do seu banco.</i></p>\n\n<p><i>Para visualizá-lo é necessária a utilização de um leitor de arquivos PDF de sua preferência.</i></p>\n\n<p><i>O pagamento em atraso pode ser feito em até 60 dias após o vencimento, incidindo juros e multas. Após este prazo, será necessário atualizá-lo ligando para o telefone (16) 3456-5414 ou através do e-mail financeiro@tracan.com.br.</i></p>\n\n<p>Para mais detalhes sobre o funcionamento de boletos bancários, consulte: <a href=\"\\&quot;\\&quot;&quot;&quot;https://portal.febraban.org.br/pagina/3077/82/pt-br/boletos-de-cobranca&quot;&quot;\\&quot;\\&quot;\">portal.febraban.org.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('02949160000298','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',1),('02949160000298','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de boleto para FTP',2),('02949160000298','CertChain','empresa','-----BEGIN CERTIFICATE-----\nMIIGPTCCBCWgAwIBAgIBBjANBgkqhkiG9w0BAQ0FADCBlzELMAkGA1UEBhMCQlIx\nEzARBgNVBAoMCklDUC1CcmFzaWwxPTA7BgNVBAsMNEluc3RpdHV0byBOYWNpb25h\nbCBkZSBUZWNub2xvZ2lhIGRhIEluZm9ybWFjYW8gLSBJVEkxNDAyBgNVBAMMK0F1\ndG9yaWRhZGUgQ2VydGlmaWNhZG9yYSBSYWl6IEJyYXNpbGVpcmEgdjUwHhcNMTYw\nOTMwMTI1ODEzWhcNMjkwMzAyMTIwMDEzWjBuMQswCQYDVQQGEwJCUjETMBEGA1UE\nChMKSUNQLUJyYXNpbDE0MDIGA1UECxMrQXV0b3JpZGFkZSBDZXJ0aWZpY2Fkb3Jh\nIFJhaXogQnJhc2lsZWlyYSB2NTEUMBIGA1UEAxMLQUMgVkFMSUQgdjUwggIiMA0G\nCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDIiegzWRuB1JYromhSrFFFXTgxXS6f\nlLIq/6jUWNxq6keVekFRkb9M4y1ipIGSkzozDhEGglWCaBYPTyQ79EtPgmFUAPkL\nQcx4yYIsdzRa8jRB4b9Og2gsT6dVE3bkQqeQb8jV3vhhA5+XdoK2txo+W+2eJeNn\nnC2MiziCJpfv3PtnN678zatJfI8i6z9SB3UzM112wwTK7aTGrylAQ/SmKcxVRDwc\n8UCvQRJ+osIpsucpq4WVYKNpYgQR3/DK+3hfeM4a6XjTiJXoK8pLkkx9hkpPdW5u\n5ugmmZJsRYfFTC0nxaMwkexGoeyMRV4xKJrLQDVBfjZNdyigwnNALk5Dx+zcDDzN\njjhCULhHlM+6a7PQ6GV/f5PMcy7rOOdjwoRobBXC+tf7ToJHVEzvp/RPXiznH+ob\nA03t++sR/IJq51nPo062bSbhjoGJ49sWK+eECmWUJVYInmFj5PXbW6SfXuRjKSW0\nN/gki4j7wbrtQDbqqiPeAKFc2f0OdQvJuYgtQR92XCdfnhFUQcKeTQsIsMr7eXsA\nvSeMS1sl7Y5tWNAE8DQ/DN62b6NujSJc3kzEp/htIxUqONmxWsL0WGh+9yzBaXsK\nR0P5csWZkkP+A7zStulUu6CzlTg+yw6Q7+L90LotFGk71XD981Qhbocb5JSoD/8V\nFkoRsEXqFewH+QIDAQABo4G7MIG4MB0GA1UdDgQWBBQfLAk732M3fiit0Ql9vxU0\njzPqWTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAUBgNVHSAEDTAL\nMAkGBWBMAQErMAAwPwYDVR0fBDgwNjA0oDKgMIYuaHR0cDovL2FjcmFpei5pY3Bi\ncmFzaWwuZ292LmJyL0xDUmFjcmFpenY1LmNybDAfBgNVHSMEGDAWgBRpqL512cTv\nbOcTReRhbuVo+LZAXjANBgkqhkiG9w0BAQ0FAAOCAgEAMKr2i499oWLNM8a7wDoI\ngSOSJ360PaPzJmmu1idv8mq/2tNKf7pzNypsRN66fXpXOjBEGgYvsbe1vozn7vVH\n4OVlB8demP8jvxxM0z5qHN6iAPASd7gzNs/kyFRo4PFyt0axGIaCCT+srhejmJOE\nxYjJoQKsRvVDBEr7GvZDVuWE3vmUB4caKCjyDyGU5809TDUTbIXORqQmtmuSmkfD\nE94MzqXCPKF3eq4O8xM/SdxwKq11hej7Ec6JYWthUPORkclQcREdJHWOnrL8zg2/\nd7SfvKxMoVCsdW2tiMrczIBpeBwjUimsRJV8VOxcaC5f1hl/lfDfFptbJOGYCGdJ\n0jhKTUFNd3iZpRvjEI0V/y/az+R7CqP76WygKmw2xs8qnzFwpocwboQzSF/NQ6dh\nW2ddMIMlhnsM4zCVvGC7+jk2sLL7GpsKT13ffAHq77b1f2gjPZIKNEq+kL2OoZAs\nYV9YeiRXRFsibf1Czx+/DjPj+UoSuAihdBrtLdl+f8U6gvxB5KG8+GzMp6cRlOTd\nB/tJsnO4iqhyvFH4y13Tjz1GGoaYNttq4Uj/A693ZHnWLiNcatgxcsT/RPi0xbRC\ng50cKY4NajtIYzsfiv5hVJF3cpTeSKCY+BbSUMevsok5QmoSs0v6mxhe7blslFX7\nw0gBKcQwW0+u0rYxSFfUR4I=\n-----END CERTIFICATE-----\n-----BEGIN CERTIFICATE-----\nMIIHRzCCBS+gAwIBAgIBDzANBgkqhkiG9w0BAQ0FADBuMQswCQYDVQQGEwJCUjET\nMBEGA1UEChMKSUNQLUJyYXNpbDE0MDIGA1UECxMrQXV0b3JpZGFkZSBDZXJ0aWZp\nY2Fkb3JhIFJhaXogQnJhc2lsZWlyYSB2NTEUMBIGA1UEAxMLQUMgVkFMSUQgdjUw\nHhcNMTgxMjAzMTgxMjQyWhcNMjkwMzAxMTgxMjQyWjB3MQswCQYDVQQGEwJCUjET\nMBEGA1UEChMKSUNQLUJyYXNpbDE1MDMGA1UECxMsQXV0b3JpZGFkZSBDZXJ0aWZp\nY2Fkb3JhIFZBTElEIC0gQUMgVkFMSUQgdjUxHDAaBgNVBAMTE0FDIE9OTElORSBC\nUkFTSUwgdjUwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCvUiKfjj2a\npvla62p78mQric3ERK69ozngGBJ+uUnKVs3bG1+H2STeY+CvWhkrhMurwM7GVwAf\nHIGREANG3LRe4V0l9elyRgwMWy3zrw2GBLwsx+dlGV1Xh14IRfvleb7WfmUg1x7v\nZYnfIz4VE1npeCZhDRp4NGFNmt1Jm7b0RwphBGnS/qKl1dawpqXC3syep7w7HRL4\nTi8pwRAEBEqIpxDo2WgXik76Mo+r/wOoQHghU4M4HCniSf35UGKfchtuiEgqzyi+\n9yTMjd25PmKloW7x57KrloQZMouRSQLfnqbfU1i5tcyhM7DUENAXOpKg0p0p7F6+\nE0tuvt9RHoB0BHGqdMEaq54PAUrvoLIYyJAPqEiMyCJvej8P7t4dSDl+q2TQoj6B\n3AxHMuW9bQ6zHwJ6qSOxbXIwpF6/4+0iX5pbnyDdSTNKDOB/7Le01cTWt1IQCaGN\nDvfZGhuRkRwJIGtUMvlYvLtkq5OWC1A1AV75dbS2k7KnOfebRJut4QmjcVd+fZHK\nqyYkjrgkwa7yANy6VH1KZlhdexFuxQNqkWUN/w8IZUhY3CFED7Av/UXG9IyWHzPu\nZn5Mr7+8nLaaYLuexNRKloAN7FhY74eIipbqWd7/icl6PEUSXWf+nl6Ci1MP43/J\nODJbvKNOMNtxQXHWOHDLPn6gPFovZciAWQIDAQABo4IB5TCCAeEwgc0GA1UdIASB\nxTCBwjBfBgZgTAECATAwVTBTBggrBgEFBQcCARZHaHR0cDovL2ljcC1icmFzaWwu\ndmFsaWRjZXJ0aWZpY2Fkb3JhLmNvbS5ici9hYy12YWxpZC9kcGMtYWMtdmFsaWR2\nNS5wZGYwXwYGYEwBAgMtMFUwUwYIKwYBBQUHAgEWR2h0dHA6Ly9pY3AtYnJhc2ls\nLnZhbGlkY2VydGlmaWNhZG9yYS5jb20uYnIvYWMtdmFsaWQvZHBjLWFjLXZhbGlk\ndjUucGRmMIGqBgNVHR8EgaIwgZ8wTaBLoEmGR2h0dHA6Ly9pY3AtYnJhc2lsLnZh\nbGlkY2VydGlmaWNhZG9yYS5jb20uYnIvYWMtdmFsaWQvbGNyLWFjLXZhbGlkdjUu\nY3JsME6gTKBKhkhodHRwOi8vaWNwLWJyYXNpbDIudmFsaWRjZXJ0aWZpY2Fkb3Jh\nLmNvbS5ici9hYy12YWxpZC9sY3ItYWMtdmFsaWR2NS5jcmwwHwYDVR0jBBgwFoAU\nHywJO99jN34ordEJfb8VNI8z6lkwHQYDVR0OBBYEFJ9euexD9hc0G2t1lH/acfSR\n5zi6MBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3\nDQEBDQUAA4ICAQBS0C5tSr9qcNKt5/833AXQfraEKYSUidO0zi476kgul74btMgT\nTUaBYGeUj8QTmynIxWMEgx2QrjCp14zfQ+Gj+n1MVkdhCZJxIqEFaa5iE6eGAM++\n5VzBwznJJzHzGxSw/lCbb4W8Ua3W6oorQ29uvxX4qE4VVzRxdGLwcmlniLyRy8Uu\non0QfFjNPXoNhwfkt3Foe04b2eNpoSBs0Oim5dUunVf8wMvQ8vk3YU4b5q+a1YpJ\nd47dJN/1a6aSmjgnKnEwqJtYngVD17LzH9NJDkPBX5AMiiYXXCSrxg9x5+z9HgZC\nEj1Hf4KMK6Bp1SCgo9Wb53QjCx7RPY+nRx+R0wnOkIbaECfrWfafnDEMC9AaGFz0\nafgxbYkeC/x4fu33Wip+cF8qaQFSejEDY4C9JliABSMFhp9bPKBJnto4tqb+rJZo\nwiD/Ist8n1u30X12xyNIOZx0BeaP2yfeGmNJ+1ljdwW0cgrtlUaLDLPs6DJm9DWr\n0Eqtrpk0nf11wuzH0W6splQYJK+dQGFe8PlQgvKPk9rER0ZWdKvuFGDdoqf3lX/S\nUHFrTX7rHcJSlqE0hmCJckRKQpHw/d5tZV6cLU9j7SCc4z9yTcdLS+8GvaZjfTmO\n2p35yTaY0dk9BxiA67182BXyRgIXl+DST+HJWxJgq81wmHF906e1P5mZ1Q==\n-----END CERTIFICATE-----','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('02949160000298','certDiasAlerta','empresa','','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('02949160000298','certEmailAlerta','empresa','','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('02949160000298','certPassword','empresa','Tr@can.02949','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('02949160000298','certPfxName','empresa','8ddb0a3953ca0354da63a2b1b691d59d.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('02949160000298','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('02949160000298','cnpj','empresa','02949160000298','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('02949160000298','connectWS.password','connectWS','2333','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('02949160000298','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('02949160000298','conting.detServAut','contingencia','','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('02949160000298','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('02949160000298','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'<br/>&nbsp;&nbsp;Comandos:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- {Q}: Gera uma quebra de linha no texto.',6),('02949160000298','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('02949160000298','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('02949160000298','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('02949160000298','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('02949160000298','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('02949160000298','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('02949160000298','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('02949160000298','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('02949160000298','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('02949160000298','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('02949160000298','envio.mail.smtp.secure','envio','','SMPT SEGURAN??A','1','TEXT','',255,'',11),('02949160000298','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('02949160000298','envio.sendEmail','envio','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('02949160000298','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000298','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000298','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000298','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000298','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000298','inboudCTE.imapUser','inbound.imap.cte','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000298','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000298','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000298','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange',255,'Tipo do Servidor de Email',6),('02949160000298','inboudNFS.boxMail','inbound.imap.nfs','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000298','inboudNFS.imapCertSecurity','inbound.imap.nfs','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000298','inboudNFS.imapHost','inbound.imap.nfs','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000298','inboudNFS.imapPassword','inbound.imap.nfs','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000298','inboudNFS.imapPort','inbound.imap.nfs','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000298','inboudNFS.imapUser','inbound.imap.nfs','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000298','inboudNFS.moveToBox','inbound.imap.nfs','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000298','inboudNFS.tpProtocol','inbound.imap.nfs','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000298','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange',255,'Tipo do Servidor de Email',6),('02949160000298','inbound.boxMail','inbound.imap','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000298','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000298','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000298','inbound.imapPassword','inbound.imap','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000298','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000298','inbound.imapUser','inbound.imap','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000298','inbound.impCTE','inbound.imap.cte','','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('02949160000298','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('02949160000298','inbound.impCteWs','inbound','1','Importar CT-e via Webservice','1','SELECT','1[=]Sim[|]2[=]Não',455,'Importar CT-e via Webservice de Distribuição de Documentos',6),('02949160000298','inbound.impNFE','inbound.imap','','Importar NF-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e da caixa de Email',6),('02949160000298','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('02949160000298','inbound.impNfeWs','inbound','1','Importar NF-e via Webservice','1','SELECT','1[=]Sim[|]2[=]Não',455,'Importar NF-e via Webservice de Distribuição de Documentos',6),('02949160000298','inbound.impNFS','inbound.imap.nfs','','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('02949160000298','inbound.impNFSDeleteEmail','inbound.imap.nfs','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('02949160000298','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000298','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000298','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange',255,'Tipo do Servidor de Email',6),('02949160000298','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('02949160000298','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('02949160000298','pathCertsFiles','empresa','/var/www/dataXML/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('02949160000298','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('02949160000298','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('02949160000298','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('02949160000298','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('02949160000298','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('02949160000298','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('02949160000298','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('02949160000298','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('02949160000298','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('02949160000298','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('02949160000298','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('02949160000298','razaosocial','empresa','Tracan Maquinas E Sistemas Para Agricultura Ltda','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('02949160000298','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('02949160000298','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('02949160000298','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('02949160000298','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('02949160000298','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('02949160000298','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('02949160000298','siglaUF','empresa','SP','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('02949160000298','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('02949160000298','tpAmb','geral','2','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('02949160000611','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('02949160000611','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('02949160000611','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('02949160000611','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('02949160000611','aDocFormat.pathLogoFile','exportacao','/var/www/html/efit/api/nfephp/images/company-logo-tracan-ftp.jpg','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('02949160000611','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('02949160000611','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('02949160000611','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('02949160000611','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('02949160000611','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('02949160000611','aExpXml.copiaXmlCTe','exportacao','','Diretório de Cópia de XML de CT-e','1','TEXT','',255,'',8),('02949160000611','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('02949160000611','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('02949160000611','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('02949160000611','aExpXml.copiaXmlNfeEmails','exportacao','','Emails para envio de copia de XML inbound','1','TEXT','',255,'',8),('02949160000611','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('02949160000611','aLayoutEmail.layoutAlertaCertValid','empresa','','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('02949160000611','aLayoutEmail.layoutAutAnothers','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><i>Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador.</i></p>\n<p><i>Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE.</i></p>\n<p><i>Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso.</i></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"http://www.nfe.fazenda.gov.br/portal/Default.aspx\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('02949160000611','aLayoutEmail.layoutAutClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><i>Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador.</i></p>\n<p><i>Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE.</i></p>\n<p><i>Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso.</i></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"&quot;&quot;http://www.nfe.fazenda.gov.br/portal/Default.aspx&quot;&quot;\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('02949160000611','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><b style=\"font-size:18px;\">Prezado cliente, visando garantir a confiança e segurança em nossas vendas, informe ao grupo Tracan Máquinas se reconhece a compra dessa mercadoria a partir do link a seguir: </b> <a href=\"{link_nfe_refuse}\" style=\"font-size:18px;font-weight: bold;\">click aqui.</a></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"http://www.nfe.fazenda.gov.br/portal/Default.aspx\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('02949160000611','aLayoutEmail.layoutAutTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>A Nota Fiscal Eletrônica (NF-e) de um pedido ao qual você irá transportar foi gerada com sucesso.</p><p>\n</p><p>Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('02949160000611','aLayoutEmail.layoutCancelClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('02949160000611','aLayoutEmail.layoutCancelTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('02949160000611','aLayoutEmail.layoutCceClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('02949160000611','aLayoutEmail.layoutCceTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('02949160000611','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('02949160000611','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('02949160000611','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('02949160000611','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('02949160000611','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('02949160000611','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('02949160000611','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('02949160000611','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('02949160000611','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('02949160000611','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('02949160000611','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('02949160000611','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('02949160000611','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('02949160000611','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('02949160000611','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('02949160000611','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('02949160000611','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('02949160000611','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('02949160000611','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('02949160000611','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('02949160000611','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('02949160000611','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('02949160000611','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('02949160000611','boleto.ftp.host','nfe.boleto','192.168.100.252:2122','FTP HOST','1','TEXT','',255,'',4),('02949160000611','boleto.ftp.password','nfe.boleto','Trac@n#2020','FTP PASSWORD','1','TEXT','',255,'',6),('02949160000611','boleto.ftp.user','nfe.boleto','TRACAN_DOM\\FPT_FINNET','FTP USER','1','TEXT','',255,'',5),('02949160000611','boleto.layoutEmailBoleto','nfe.boleto','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a 2ª via do boleto referente a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.</p>\n\n<p><i>O boleto bancário é um documento de cobrança, físico ou virtual, válido para pagamento nos caixas de qualquer rede bancária ou com o código de barras no auto-atendimento ou Internet Banking do seu banco.</i></p>\n\n<p><i>Para visualizá-lo é necessária a utilização de um leitor de arquivos PDF de sua preferência.</i></p>\n\n<p><i>O pagamento em atraso pode ser feito em até 60 dias após o vencimento, incidindo juros e multas. Após este prazo, será necessário atualizá-lo ligando para o telefone (16) 3456-5414 ou através do e-mail financeiro@tracan.com.br.</i></p>\n\n<p>Para mais detalhes sobre o funcionamento de boletos bancários, consulte: <a href=\"\\&quot;\\&quot;&quot;&quot;https://portal.febraban.org.br/pagina/3077/82/pt-br/boletos-de-cobranca&quot;&quot;\\&quot;\\&quot;\">portal.febraban.org.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('02949160000611','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',1),('02949160000611','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de boleto para FTP',2),('02949160000611','CertChain','empresa','-----BEGIN CERTIFICATE-----\nMIIGPTCCBCWgAwIBAgIBBjANBgkqhkiG9w0BAQ0FADCBlzELMAkGA1UEBhMCQlIx\nEzARBgNVBAoMCklDUC1CcmFzaWwxPTA7BgNVBAsMNEluc3RpdHV0byBOYWNpb25h\nbCBkZSBUZWNub2xvZ2lhIGRhIEluZm9ybWFjYW8gLSBJVEkxNDAyBgNVBAMMK0F1\ndG9yaWRhZGUgQ2VydGlmaWNhZG9yYSBSYWl6IEJyYXNpbGVpcmEgdjUwHhcNMTYw\nOTMwMTI1ODEzWhcNMjkwMzAyMTIwMDEzWjBuMQswCQYDVQQGEwJCUjETMBEGA1UE\nChMKSUNQLUJyYXNpbDE0MDIGA1UECxMrQXV0b3JpZGFkZSBDZXJ0aWZpY2Fkb3Jh\nIFJhaXogQnJhc2lsZWlyYSB2NTEUMBIGA1UEAxMLQUMgVkFMSUQgdjUwggIiMA0G\nCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDIiegzWRuB1JYromhSrFFFXTgxXS6f\nlLIq/6jUWNxq6keVekFRkb9M4y1ipIGSkzozDhEGglWCaBYPTyQ79EtPgmFUAPkL\nQcx4yYIsdzRa8jRB4b9Og2gsT6dVE3bkQqeQb8jV3vhhA5+XdoK2txo+W+2eJeNn\nnC2MiziCJpfv3PtnN678zatJfI8i6z9SB3UzM112wwTK7aTGrylAQ/SmKcxVRDwc\n8UCvQRJ+osIpsucpq4WVYKNpYgQR3/DK+3hfeM4a6XjTiJXoK8pLkkx9hkpPdW5u\n5ugmmZJsRYfFTC0nxaMwkexGoeyMRV4xKJrLQDVBfjZNdyigwnNALk5Dx+zcDDzN\njjhCULhHlM+6a7PQ6GV/f5PMcy7rOOdjwoRobBXC+tf7ToJHVEzvp/RPXiznH+ob\nA03t++sR/IJq51nPo062bSbhjoGJ49sWK+eECmWUJVYInmFj5PXbW6SfXuRjKSW0\nN/gki4j7wbrtQDbqqiPeAKFc2f0OdQvJuYgtQR92XCdfnhFUQcKeTQsIsMr7eXsA\nvSeMS1sl7Y5tWNAE8DQ/DN62b6NujSJc3kzEp/htIxUqONmxWsL0WGh+9yzBaXsK\nR0P5csWZkkP+A7zStulUu6CzlTg+yw6Q7+L90LotFGk71XD981Qhbocb5JSoD/8V\nFkoRsEXqFewH+QIDAQABo4G7MIG4MB0GA1UdDgQWBBQfLAk732M3fiit0Ql9vxU0\njzPqWTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAUBgNVHSAEDTAL\nMAkGBWBMAQErMAAwPwYDVR0fBDgwNjA0oDKgMIYuaHR0cDovL2FjcmFpei5pY3Bi\ncmFzaWwuZ292LmJyL0xDUmFjcmFpenY1LmNybDAfBgNVHSMEGDAWgBRpqL512cTv\nbOcTReRhbuVo+LZAXjANBgkqhkiG9w0BAQ0FAAOCAgEAMKr2i499oWLNM8a7wDoI\ngSOSJ360PaPzJmmu1idv8mq/2tNKf7pzNypsRN66fXpXOjBEGgYvsbe1vozn7vVH\n4OVlB8demP8jvxxM0z5qHN6iAPASd7gzNs/kyFRo4PFyt0axGIaCCT+srhejmJOE\nxYjJoQKsRvVDBEr7GvZDVuWE3vmUB4caKCjyDyGU5809TDUTbIXORqQmtmuSmkfD\nE94MzqXCPKF3eq4O8xM/SdxwKq11hej7Ec6JYWthUPORkclQcREdJHWOnrL8zg2/\nd7SfvKxMoVCsdW2tiMrczIBpeBwjUimsRJV8VOxcaC5f1hl/lfDfFptbJOGYCGdJ\n0jhKTUFNd3iZpRvjEI0V/y/az+R7CqP76WygKmw2xs8qnzFwpocwboQzSF/NQ6dh\nW2ddMIMlhnsM4zCVvGC7+jk2sLL7GpsKT13ffAHq77b1f2gjPZIKNEq+kL2OoZAs\nYV9YeiRXRFsibf1Czx+/DjPj+UoSuAihdBrtLdl+f8U6gvxB5KG8+GzMp6cRlOTd\nB/tJsnO4iqhyvFH4y13Tjz1GGoaYNttq4Uj/A693ZHnWLiNcatgxcsT/RPi0xbRC\ng50cKY4NajtIYzsfiv5hVJF3cpTeSKCY+BbSUMevsok5QmoSs0v6mxhe7blslFX7\nw0gBKcQwW0+u0rYxSFfUR4I=\n-----END CERTIFICATE-----\n-----BEGIN CERTIFICATE-----\nMIIHRzCCBS+gAwIBAgIBDzANBgkqhkiG9w0BAQ0FADBuMQswCQYDVQQGEwJCUjET\nMBEGA1UEChMKSUNQLUJyYXNpbDE0MDIGA1UECxMrQXV0b3JpZGFkZSBDZXJ0aWZp\nY2Fkb3JhIFJhaXogQnJhc2lsZWlyYSB2NTEUMBIGA1UEAxMLQUMgVkFMSUQgdjUw\nHhcNMTgxMjAzMTgxMjQyWhcNMjkwMzAxMTgxMjQyWjB3MQswCQYDVQQGEwJCUjET\nMBEGA1UEChMKSUNQLUJyYXNpbDE1MDMGA1UECxMsQXV0b3JpZGFkZSBDZXJ0aWZp\nY2Fkb3JhIFZBTElEIC0gQUMgVkFMSUQgdjUxHDAaBgNVBAMTE0FDIE9OTElORSBC\nUkFTSUwgdjUwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCvUiKfjj2a\npvla62p78mQric3ERK69ozngGBJ+uUnKVs3bG1+H2STeY+CvWhkrhMurwM7GVwAf\nHIGREANG3LRe4V0l9elyRgwMWy3zrw2GBLwsx+dlGV1Xh14IRfvleb7WfmUg1x7v\nZYnfIz4VE1npeCZhDRp4NGFNmt1Jm7b0RwphBGnS/qKl1dawpqXC3syep7w7HRL4\nTi8pwRAEBEqIpxDo2WgXik76Mo+r/wOoQHghU4M4HCniSf35UGKfchtuiEgqzyi+\n9yTMjd25PmKloW7x57KrloQZMouRSQLfnqbfU1i5tcyhM7DUENAXOpKg0p0p7F6+\nE0tuvt9RHoB0BHGqdMEaq54PAUrvoLIYyJAPqEiMyCJvej8P7t4dSDl+q2TQoj6B\n3AxHMuW9bQ6zHwJ6qSOxbXIwpF6/4+0iX5pbnyDdSTNKDOB/7Le01cTWt1IQCaGN\nDvfZGhuRkRwJIGtUMvlYvLtkq5OWC1A1AV75dbS2k7KnOfebRJut4QmjcVd+fZHK\nqyYkjrgkwa7yANy6VH1KZlhdexFuxQNqkWUN/w8IZUhY3CFED7Av/UXG9IyWHzPu\nZn5Mr7+8nLaaYLuexNRKloAN7FhY74eIipbqWd7/icl6PEUSXWf+nl6Ci1MP43/J\nODJbvKNOMNtxQXHWOHDLPn6gPFovZciAWQIDAQABo4IB5TCCAeEwgc0GA1UdIASB\nxTCBwjBfBgZgTAECATAwVTBTBggrBgEFBQcCARZHaHR0cDovL2ljcC1icmFzaWwu\ndmFsaWRjZXJ0aWZpY2Fkb3JhLmNvbS5ici9hYy12YWxpZC9kcGMtYWMtdmFsaWR2\nNS5wZGYwXwYGYEwBAgMtMFUwUwYIKwYBBQUHAgEWR2h0dHA6Ly9pY3AtYnJhc2ls\nLnZhbGlkY2VydGlmaWNhZG9yYS5jb20uYnIvYWMtdmFsaWQvZHBjLWFjLXZhbGlk\ndjUucGRmMIGqBgNVHR8EgaIwgZ8wTaBLoEmGR2h0dHA6Ly9pY3AtYnJhc2lsLnZh\nbGlkY2VydGlmaWNhZG9yYS5jb20uYnIvYWMtdmFsaWQvbGNyLWFjLXZhbGlkdjUu\nY3JsME6gTKBKhkhodHRwOi8vaWNwLWJyYXNpbDIudmFsaWRjZXJ0aWZpY2Fkb3Jh\nLmNvbS5ici9hYy12YWxpZC9sY3ItYWMtdmFsaWR2NS5jcmwwHwYDVR0jBBgwFoAU\nHywJO99jN34ordEJfb8VNI8z6lkwHQYDVR0OBBYEFJ9euexD9hc0G2t1lH/acfSR\n5zi6MBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3\nDQEBDQUAA4ICAQBS0C5tSr9qcNKt5/833AXQfraEKYSUidO0zi476kgul74btMgT\nTUaBYGeUj8QTmynIxWMEgx2QrjCp14zfQ+Gj+n1MVkdhCZJxIqEFaa5iE6eGAM++\n5VzBwznJJzHzGxSw/lCbb4W8Ua3W6oorQ29uvxX4qE4VVzRxdGLwcmlniLyRy8Uu\non0QfFjNPXoNhwfkt3Foe04b2eNpoSBs0Oim5dUunVf8wMvQ8vk3YU4b5q+a1YpJ\nd47dJN/1a6aSmjgnKnEwqJtYngVD17LzH9NJDkPBX5AMiiYXXCSrxg9x5+z9HgZC\nEj1Hf4KMK6Bp1SCgo9Wb53QjCx7RPY+nRx+R0wnOkIbaECfrWfafnDEMC9AaGFz0\nafgxbYkeC/x4fu33Wip+cF8qaQFSejEDY4C9JliABSMFhp9bPKBJnto4tqb+rJZo\nwiD/Ist8n1u30X12xyNIOZx0BeaP2yfeGmNJ+1ljdwW0cgrtlUaLDLPs6DJm9DWr\n0Eqtrpk0nf11wuzH0W6splQYJK+dQGFe8PlQgvKPk9rER0ZWdKvuFGDdoqf3lX/S\nUHFrTX7rHcJSlqE0hmCJckRKQpHw/d5tZV6cLU9j7SCc4z9yTcdLS+8GvaZjfTmO\n2p35yTaY0dk9BxiA67182BXyRgIXl+DST+HJWxJgq81wmHF906e1P5mZ1Q==\n-----END CERTIFICATE-----','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('02949160000611','certDiasAlerta','empresa','','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('02949160000611','certEmailAlerta','empresa','','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('02949160000611','certPassword','empresa','Tr@can.02949','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('02949160000611','certPfxName','empresa','8ddb0a3953ca0354da63a2b1b691d59d.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('02949160000611','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('02949160000611','cnpj','empresa','02949160000611','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('02949160000611','connectWS.password','connectWS','','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('02949160000611','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('02949160000611','conting.detServAut','contingencia','','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('02949160000611','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('02949160000611','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'<br/>&nbsp;&nbsp;Comandos:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- {Q}: Gera uma quebra de linha no texto.',6),('02949160000611','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('02949160000611','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('02949160000611','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('02949160000611','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('02949160000611','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('02949160000611','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('02949160000611','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('02949160000611','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('02949160000611','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('02949160000611','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('02949160000611','envio.mail.smtp.secure','envio','','SMPT SEGURAN??A','1','TEXT','',255,'',11),('02949160000611','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('02949160000611','envio.sendEmail','envio','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('02949160000611','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000611','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000611','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000611','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000611','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000611','inboudCTE.imapRefreshToken','inbound.imap.cte','','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('02949160000611','inboudCTE.imapToken','inbound.imap.cte','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('02949160000611','inboudCTE.imapTokenValidAt','inbound.imap.cte','','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('02949160000611','inboudCTE.imapUser','inbound.imap.cte','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000611','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000611','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000611','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange',255,'Tipo do Servidor de Email',6),('02949160000611','inboudNFS.boxMail','inbound.imap.nfs','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000611','inboudNFS.imapCertSecurity','inbound.imap.nfs','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000611','inboudNFS.imapHost','inbound.imap.nfs','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000611','inboudNFS.imapPassword','inbound.imap.nfs','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000611','inboudNFS.imapPort','inbound.imap.nfs','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000611','inboudNFS.imapRefreshToken','inbound.imap.nfs','','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('02949160000611','inboudNFS.imapToken','inbound.imap.nfs','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('02949160000611','inboudNFS.imapTokenValidAt','inbound.imap.nfs','','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('02949160000611','inboudNFS.imapUser','inbound.imap.nfs','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000611','inboudNFS.moveToBox','inbound.imap.nfs','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000611','inboudNFS.tpProtocol','inbound.imap.nfs','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000611','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange',255,'Tipo do Servidor de Email',6),('02949160000611','inbound.boxMail','inbound.imap','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000611','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000611','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000611','inbound.imapPassword','inbound.imap','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000611','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000611','inbound.imapRefreshToken','inbound.imap.cte','','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('02949160000611','inbound.imapToken','inbound.imap.cte','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('02949160000611','inbound.imapTokenValidAt','inbound.imap.cte','','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('02949160000611','inbound.imapUser','inbound.imap','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000611','inbound.impCTE','inbound.imap.cte','','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('02949160000611','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('02949160000611','inbound.impCteWs','inbound','1','Importar CT-e via Webservice','1','SELECT','1[=]Sim[|]2[=]Não',455,'Importar CT-e via Webservice de Distribuição de Documentos',6),('02949160000611','inbound.impNFE','inbound.imap','','Importar NF-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e da caixa de Email',6),('02949160000611','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('02949160000611','inbound.impNfeWs','inbound','1','Importar NF-e via Webservice','1','SELECT','1[=]Sim[|]2[=]Não',455,'Importar NF-e via Webservice de Distribuição de Documentos',6),('02949160000611','inbound.impNFS','inbound.imap.nfs','','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('02949160000611','inbound.impNFSDeleteEmail','inbound.imap.nfs','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('02949160000611','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000611','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000611','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange',255,'Tipo do Servidor de Email',6),('02949160000611','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('02949160000611','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('02949160000611','pathCertsFiles','empresa','/var/www/dataXML/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('02949160000611','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('02949160000611','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('02949160000611','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('02949160000611','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('02949160000611','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('02949160000611','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('02949160000611','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('02949160000611','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('02949160000611','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('02949160000611','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('02949160000611','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('02949160000611','razaosocial','empresa','Tracan Maquinas E Sistemas Para Agricultura Ltda','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('02949160000611','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('02949160000611','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('02949160000611','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('02949160000611','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('02949160000611','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('02949160000611','sefazCnpjCpfAutorizados','nfe','','CPF/CPNJ autorizado','1','TEXT','',255,'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)',1),('02949160000611','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('02949160000611','siglaUF','empresa','MG','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('02949160000611','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('02949160000611','tpAmb','geral','1','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('02949160000700','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('02949160000700','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('02949160000700','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('02949160000700','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('02949160000700','aDocFormat.pathLogoFile','exportacao','/var/www/html/efit/api/nfephp/images/company-logo-tracan-ftp.jpg','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('02949160000700','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('02949160000700','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('02949160000700','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('02949160000700','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('02949160000700','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('02949160000700','aExpXml.copiaXmlCTe','exportacao','','Diretório de Cópia de XML de CT-e','1','TEXT','',255,'',8),('02949160000700','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('02949160000700','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('02949160000700','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('02949160000700','aExpXml.copiaXmlNfeEmails','exportacao','','Emails para envio de copia de XML inbound','1','TEXT','',255,'',8),('02949160000700','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('02949160000700','aLayoutEmail.layoutAlertaCertValid','empresa','','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('02949160000700','aLayoutEmail.layoutAutAnothers','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><i>Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador.</i></p>\n<p><i>Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE.</i></p>\n<p><i>Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso.</i></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"http://www.nfe.fazenda.gov.br/portal/Default.aspx\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('02949160000700','aLayoutEmail.layoutAutClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><i>Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador.</i></p>\n<p><i>Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE.</i></p>\n<p><i>Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso.</i></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"&quot;&quot;http://www.nfe.fazenda.gov.br/portal/Default.aspx&quot;&quot;\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('02949160000700','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><b style=\"font-size:18px;\">Prezado cliente, visando garantir a confiança e segurança em nossas vendas, informe ao grupo Tracan Máquinas se reconhece a compra dessa mercadoria a partir do link a seguir: </b> <a href=\"{link_nfe_refuse}\" style=\"font-size:18px;font-weight: bold;\">click aqui.</a></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"http://www.nfe.fazenda.gov.br/portal/Default.aspx\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('02949160000700','aLayoutEmail.layoutAutTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>A Nota Fiscal Eletrônica (NF-e) de um pedido ao qual você irá transportar foi gerada com sucesso.</p><p>\n</p><p>Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('02949160000700','aLayoutEmail.layoutCancelClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('02949160000700','aLayoutEmail.layoutCancelTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('02949160000700','aLayoutEmail.layoutCceClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('02949160000700','aLayoutEmail.layoutCceTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('02949160000700','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('02949160000700','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('02949160000700','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('02949160000700','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('02949160000700','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('02949160000700','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('02949160000700','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('02949160000700','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('02949160000700','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('02949160000700','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('02949160000700','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('02949160000700','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('02949160000700','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('02949160000700','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('02949160000700','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('02949160000700','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('02949160000700','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('02949160000700','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('02949160000700','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('02949160000700','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('02949160000700','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('02949160000700','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('02949160000700','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('02949160000700','boleto.ftp.host','nfe.boleto','192.168.100.252:2122','FTP HOST','1','TEXT','',255,'',4),('02949160000700','boleto.ftp.password','nfe.boleto','Trac@n#2020','FTP PASSWORD','1','TEXT','',255,'',6),('02949160000700','boleto.ftp.user','nfe.boleto','TRACAN_DOM\\FPT_FINNET','FTP USER','1','TEXT','',255,'',5),('02949160000700','boleto.layoutEmailBoleto','nfe.boleto','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a 2ª via do boleto referente a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.</p>\n\n<p><i>O boleto bancário é um documento de cobrança, físico ou virtual, válido para pagamento nos caixas de qualquer rede bancária ou com o código de barras no auto-atendimento ou Internet Banking do seu banco.</i></p>\n\n<p><i>Para visualizá-lo é necessária a utilização de um leitor de arquivos PDF de sua preferência.</i></p>\n\n<p><i>O pagamento em atraso pode ser feito em até 60 dias após o vencimento, incidindo juros e multas. Após este prazo, será necessário atualizá-lo ligando para o telefone (16) 3456-5414 ou através do e-mail financeiro@tracan.com.br.</i></p>\n\n<p>Para mais detalhes sobre o funcionamento de boletos bancários, consulte: <a href=\"\\&quot;\\&quot;&quot;&quot;https://portal.febraban.org.br/pagina/3077/82/pt-br/boletos-de-cobranca&quot;&quot;\\&quot;\\&quot;\">portal.febraban.org.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('02949160000700','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',1),('02949160000700','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de boleto para FTP',2),('02949160000700','CertChain','empresa','-----BEGIN CERTIFICATE-----\nMIIGPTCCBCWgAwIBAgIBBjANBgkqhkiG9w0BAQ0FADCBlzELMAkGA1UEBhMCQlIx\nEzARBgNVBAoMCklDUC1CcmFzaWwxPTA7BgNVBAsMNEluc3RpdHV0byBOYWNpb25h\nbCBkZSBUZWNub2xvZ2lhIGRhIEluZm9ybWFjYW8gLSBJVEkxNDAyBgNVBAMMK0F1\ndG9yaWRhZGUgQ2VydGlmaWNhZG9yYSBSYWl6IEJyYXNpbGVpcmEgdjUwHhcNMTYw\nOTMwMTI1ODEzWhcNMjkwMzAyMTIwMDEzWjBuMQswCQYDVQQGEwJCUjETMBEGA1UE\nChMKSUNQLUJyYXNpbDE0MDIGA1UECxMrQXV0b3JpZGFkZSBDZXJ0aWZpY2Fkb3Jh\nIFJhaXogQnJhc2lsZWlyYSB2NTEUMBIGA1UEAxMLQUMgVkFMSUQgdjUwggIiMA0G\nCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDIiegzWRuB1JYromhSrFFFXTgxXS6f\nlLIq/6jUWNxq6keVekFRkb9M4y1ipIGSkzozDhEGglWCaBYPTyQ79EtPgmFUAPkL\nQcx4yYIsdzRa8jRB4b9Og2gsT6dVE3bkQqeQb8jV3vhhA5+XdoK2txo+W+2eJeNn\nnC2MiziCJpfv3PtnN678zatJfI8i6z9SB3UzM112wwTK7aTGrylAQ/SmKcxVRDwc\n8UCvQRJ+osIpsucpq4WVYKNpYgQR3/DK+3hfeM4a6XjTiJXoK8pLkkx9hkpPdW5u\n5ugmmZJsRYfFTC0nxaMwkexGoeyMRV4xKJrLQDVBfjZNdyigwnNALk5Dx+zcDDzN\njjhCULhHlM+6a7PQ6GV/f5PMcy7rOOdjwoRobBXC+tf7ToJHVEzvp/RPXiznH+ob\nA03t++sR/IJq51nPo062bSbhjoGJ49sWK+eECmWUJVYInmFj5PXbW6SfXuRjKSW0\nN/gki4j7wbrtQDbqqiPeAKFc2f0OdQvJuYgtQR92XCdfnhFUQcKeTQsIsMr7eXsA\nvSeMS1sl7Y5tWNAE8DQ/DN62b6NujSJc3kzEp/htIxUqONmxWsL0WGh+9yzBaXsK\nR0P5csWZkkP+A7zStulUu6CzlTg+yw6Q7+L90LotFGk71XD981Qhbocb5JSoD/8V\nFkoRsEXqFewH+QIDAQABo4G7MIG4MB0GA1UdDgQWBBQfLAk732M3fiit0Ql9vxU0\njzPqWTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAUBgNVHSAEDTAL\nMAkGBWBMAQErMAAwPwYDVR0fBDgwNjA0oDKgMIYuaHR0cDovL2FjcmFpei5pY3Bi\ncmFzaWwuZ292LmJyL0xDUmFjcmFpenY1LmNybDAfBgNVHSMEGDAWgBRpqL512cTv\nbOcTReRhbuVo+LZAXjANBgkqhkiG9w0BAQ0FAAOCAgEAMKr2i499oWLNM8a7wDoI\ngSOSJ360PaPzJmmu1idv8mq/2tNKf7pzNypsRN66fXpXOjBEGgYvsbe1vozn7vVH\n4OVlB8demP8jvxxM0z5qHN6iAPASd7gzNs/kyFRo4PFyt0axGIaCCT+srhejmJOE\nxYjJoQKsRvVDBEr7GvZDVuWE3vmUB4caKCjyDyGU5809TDUTbIXORqQmtmuSmkfD\nE94MzqXCPKF3eq4O8xM/SdxwKq11hej7Ec6JYWthUPORkclQcREdJHWOnrL8zg2/\nd7SfvKxMoVCsdW2tiMrczIBpeBwjUimsRJV8VOxcaC5f1hl/lfDfFptbJOGYCGdJ\n0jhKTUFNd3iZpRvjEI0V/y/az+R7CqP76WygKmw2xs8qnzFwpocwboQzSF/NQ6dh\nW2ddMIMlhnsM4zCVvGC7+jk2sLL7GpsKT13ffAHq77b1f2gjPZIKNEq+kL2OoZAs\nYV9YeiRXRFsibf1Czx+/DjPj+UoSuAihdBrtLdl+f8U6gvxB5KG8+GzMp6cRlOTd\nB/tJsnO4iqhyvFH4y13Tjz1GGoaYNttq4Uj/A693ZHnWLiNcatgxcsT/RPi0xbRC\ng50cKY4NajtIYzsfiv5hVJF3cpTeSKCY+BbSUMevsok5QmoSs0v6mxhe7blslFX7\nw0gBKcQwW0+u0rYxSFfUR4I=\n-----END CERTIFICATE-----\n-----BEGIN CERTIFICATE-----\nMIIHRzCCBS+gAwIBAgIBDzANBgkqhkiG9w0BAQ0FADBuMQswCQYDVQQGEwJCUjET\nMBEGA1UEChMKSUNQLUJyYXNpbDE0MDIGA1UECxMrQXV0b3JpZGFkZSBDZXJ0aWZp\nY2Fkb3JhIFJhaXogQnJhc2lsZWlyYSB2NTEUMBIGA1UEAxMLQUMgVkFMSUQgdjUw\nHhcNMTgxMjAzMTgxMjQyWhcNMjkwMzAxMTgxMjQyWjB3MQswCQYDVQQGEwJCUjET\nMBEGA1UEChMKSUNQLUJyYXNpbDE1MDMGA1UECxMsQXV0b3JpZGFkZSBDZXJ0aWZp\nY2Fkb3JhIFZBTElEIC0gQUMgVkFMSUQgdjUxHDAaBgNVBAMTE0FDIE9OTElORSBC\nUkFTSUwgdjUwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCvUiKfjj2a\npvla62p78mQric3ERK69ozngGBJ+uUnKVs3bG1+H2STeY+CvWhkrhMurwM7GVwAf\nHIGREANG3LRe4V0l9elyRgwMWy3zrw2GBLwsx+dlGV1Xh14IRfvleb7WfmUg1x7v\nZYnfIz4VE1npeCZhDRp4NGFNmt1Jm7b0RwphBGnS/qKl1dawpqXC3syep7w7HRL4\nTi8pwRAEBEqIpxDo2WgXik76Mo+r/wOoQHghU4M4HCniSf35UGKfchtuiEgqzyi+\n9yTMjd25PmKloW7x57KrloQZMouRSQLfnqbfU1i5tcyhM7DUENAXOpKg0p0p7F6+\nE0tuvt9RHoB0BHGqdMEaq54PAUrvoLIYyJAPqEiMyCJvej8P7t4dSDl+q2TQoj6B\n3AxHMuW9bQ6zHwJ6qSOxbXIwpF6/4+0iX5pbnyDdSTNKDOB/7Le01cTWt1IQCaGN\nDvfZGhuRkRwJIGtUMvlYvLtkq5OWC1A1AV75dbS2k7KnOfebRJut4QmjcVd+fZHK\nqyYkjrgkwa7yANy6VH1KZlhdexFuxQNqkWUN/w8IZUhY3CFED7Av/UXG9IyWHzPu\nZn5Mr7+8nLaaYLuexNRKloAN7FhY74eIipbqWd7/icl6PEUSXWf+nl6Ci1MP43/J\nODJbvKNOMNtxQXHWOHDLPn6gPFovZciAWQIDAQABo4IB5TCCAeEwgc0GA1UdIASB\nxTCBwjBfBgZgTAECATAwVTBTBggrBgEFBQcCARZHaHR0cDovL2ljcC1icmFzaWwu\ndmFsaWRjZXJ0aWZpY2Fkb3JhLmNvbS5ici9hYy12YWxpZC9kcGMtYWMtdmFsaWR2\nNS5wZGYwXwYGYEwBAgMtMFUwUwYIKwYBBQUHAgEWR2h0dHA6Ly9pY3AtYnJhc2ls\nLnZhbGlkY2VydGlmaWNhZG9yYS5jb20uYnIvYWMtdmFsaWQvZHBjLWFjLXZhbGlk\ndjUucGRmMIGqBgNVHR8EgaIwgZ8wTaBLoEmGR2h0dHA6Ly9pY3AtYnJhc2lsLnZh\nbGlkY2VydGlmaWNhZG9yYS5jb20uYnIvYWMtdmFsaWQvbGNyLWFjLXZhbGlkdjUu\nY3JsME6gTKBKhkhodHRwOi8vaWNwLWJyYXNpbDIudmFsaWRjZXJ0aWZpY2Fkb3Jh\nLmNvbS5ici9hYy12YWxpZC9sY3ItYWMtdmFsaWR2NS5jcmwwHwYDVR0jBBgwFoAU\nHywJO99jN34ordEJfb8VNI8z6lkwHQYDVR0OBBYEFJ9euexD9hc0G2t1lH/acfSR\n5zi6MBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3\nDQEBDQUAA4ICAQBS0C5tSr9qcNKt5/833AXQfraEKYSUidO0zi476kgul74btMgT\nTUaBYGeUj8QTmynIxWMEgx2QrjCp14zfQ+Gj+n1MVkdhCZJxIqEFaa5iE6eGAM++\n5VzBwznJJzHzGxSw/lCbb4W8Ua3W6oorQ29uvxX4qE4VVzRxdGLwcmlniLyRy8Uu\non0QfFjNPXoNhwfkt3Foe04b2eNpoSBs0Oim5dUunVf8wMvQ8vk3YU4b5q+a1YpJ\nd47dJN/1a6aSmjgnKnEwqJtYngVD17LzH9NJDkPBX5AMiiYXXCSrxg9x5+z9HgZC\nEj1Hf4KMK6Bp1SCgo9Wb53QjCx7RPY+nRx+R0wnOkIbaECfrWfafnDEMC9AaGFz0\nafgxbYkeC/x4fu33Wip+cF8qaQFSejEDY4C9JliABSMFhp9bPKBJnto4tqb+rJZo\nwiD/Ist8n1u30X12xyNIOZx0BeaP2yfeGmNJ+1ljdwW0cgrtlUaLDLPs6DJm9DWr\n0Eqtrpk0nf11wuzH0W6splQYJK+dQGFe8PlQgvKPk9rER0ZWdKvuFGDdoqf3lX/S\nUHFrTX7rHcJSlqE0hmCJckRKQpHw/d5tZV6cLU9j7SCc4z9yTcdLS+8GvaZjfTmO\n2p35yTaY0dk9BxiA67182BXyRgIXl+DST+HJWxJgq81wmHF906e1P5mZ1Q==\n-----END CERTIFICATE-----','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('02949160000700','certDiasAlerta','empresa','','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('02949160000700','certEmailAlerta','empresa','','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('02949160000700','certPassword','empresa','Tr@can.02949','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('02949160000700','certPfxName','empresa','8ddb0a3953ca0354da63a2b1b691d59d.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('02949160000700','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('02949160000700','cnpj','empresa','02949160000700','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('02949160000700','connectWS.password','connectWS','Fy4_lSyz','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('02949160000700','connectWS.user','connectWS','02949160000700','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('02949160000700','conting.detServAut','contingencia','','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('02949160000700','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('02949160000700','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'<br/>&nbsp;&nbsp;Comandos:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- {Q}: Gera uma quebra de linha no texto.',6),('02949160000700','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('02949160000700','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('02949160000700','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('02949160000700','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('02949160000700','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('02949160000700','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('02949160000700','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('02949160000700','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('02949160000700','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('02949160000700','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('02949160000700','envio.mail.smtp.secure','envio','','SMPT SEGURAN??A','1','TEXT','',255,'',11),('02949160000700','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('02949160000700','envio.sendEmail','envio','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('02949160000700','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000700','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000700','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000700','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000700','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000700','inboudCTE.imapRefreshToken','inbound.imap.cte','','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('02949160000700','inboudCTE.imapToken','inbound.imap.cte','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('02949160000700','inboudCTE.imapTokenValidAt','inbound.imap.cte','','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('02949160000700','inboudCTE.imapUser','inbound.imap.cte','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000700','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000700','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000700','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange',255,'Tipo do Servidor de Email',6),('02949160000700','inboudNFS.boxMail','inbound.imap.nfs','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000700','inboudNFS.imapCertSecurity','inbound.imap.nfs','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000700','inboudNFS.imapHost','inbound.imap.nfs','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000700','inboudNFS.imapPassword','inbound.imap.nfs','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000700','inboudNFS.imapPort','inbound.imap.nfs','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000700','inboudNFS.imapRefreshToken','inbound.imap.nfs','','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('02949160000700','inboudNFS.imapToken','inbound.imap.nfs','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('02949160000700','inboudNFS.imapTokenValidAt','inbound.imap.nfs','','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('02949160000700','inboudNFS.imapUser','inbound.imap.nfs','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000700','inboudNFS.moveToBox','inbound.imap.nfs','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000700','inboudNFS.tpProtocol','inbound.imap.nfs','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000700','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange',255,'Tipo do Servidor de Email',6),('02949160000700','inbound.boxMail','inbound.imap','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('02949160000700','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('02949160000700','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('02949160000700','inbound.imapPassword','inbound.imap','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('02949160000700','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('02949160000700','inbound.imapRefreshToken','inbound.imap.cte','','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('02949160000700','inbound.imapToken','inbound.imap.cte','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('02949160000700','inbound.imapTokenValidAt','inbound.imap.cte','','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('02949160000700','inbound.imapUser','inbound.imap','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('02949160000700','inbound.impCTE','inbound.imap.cte','','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('02949160000700','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('02949160000700','inbound.impCteWs','inbound','1','Importar CT-e via Webservice','1','SELECT','1[=]Sim[|]2[=]Não',455,'Importar CT-e via Webservice de Distribuição de Documentos',6),('02949160000700','inbound.impNFE','inbound.imap','','Importar NF-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e da caixa de Email',6),('02949160000700','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('02949160000700','inbound.impNfeWs','inbound','1','Importar NF-e via Webservice','1','SELECT','1[=]Sim[|]2[=]Não',455,'Importar NF-e via Webservice de Distribuição de Documentos',6),('02949160000700','inbound.impNFS','inbound.imap.nfs','','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('02949160000700','inbound.impNFSDeleteEmail','inbound.imap.nfs','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('02949160000700','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000700','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('02949160000700','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange',255,'Tipo do Servidor de Email',6),('02949160000700','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('02949160000700','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('02949160000700','pathCertsFiles','empresa','/var/www/dataXML/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('02949160000700','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('02949160000700','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('02949160000700','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('02949160000700','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('02949160000700','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('02949160000700','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('02949160000700','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('02949160000700','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('02949160000700','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('02949160000700','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('02949160000700','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('02949160000700','razaosocial','empresa','Tracan Maquinas E Sistemas Para Agricultura Ltda','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('02949160000700','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('02949160000700','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('02949160000700','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('02949160000700','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('02949160000700','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('02949160000700','sefazCnpjCpfAutorizados','nfe','','CPF/CPNJ autorizado','1','TEXT','',255,'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)',1),('02949160000700','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('02949160000700','siglaUF','empresa','MG','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('02949160000700','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('02949160000700','tpAmb','geral','2','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('10464223000163','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('10464223000163','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('10464223000163','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('10464223000163','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('10464223000163','aDocFormat.pathLogoFile','exportacao','/dadosxml/sites/efit-homolog/resources/img/logo/logo_royal.jpg','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('10464223000163','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('10464223000163','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('10464223000163','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('10464223000163','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('10464223000163','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('10464223000163','aExpXml.copiaXmlCTe','exportacao','','Diretório de Cópia de XML de CT-e','1','TEXT','',255,'',8),('10464223000163','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('10464223000163','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('10464223000163','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('10464223000163','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('10464223000163','aLayoutEmail.layoutAlertaCertValid','empresa','Prezados, ),\n\nAtenção quanto ao vencimento do certificado digital para emissão de NF-e:\n\nEmpresa: {empr_razao_social} - {empr_nome}\nCertificado: {cert_file}\nValidade: {cert_data_val}\n\n\nRecomendamos que seja adquirido o novo certificado imediatamente.\n\n\n**** Mensagem enviada automaticamente pelo sistema e-FIT Outbound ***','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('10464223000163','aLayoutEmail.layoutAutAnothers','layout.email','','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('10464223000163','aLayoutEmail.layoutAutClienteForn','layout.email','Prezado (a) {destinatario}, Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias. Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador. Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE. Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso. O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional. Para mais detalhes, consulte: www.nfe.fazenda.gov.br \nAtenciosamente,{emitente}','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('10464223000163','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('10464223000163','aLayoutEmail.layoutAutTransport','layout.email','Prezado (a) {transportadora}, A Nota Fiscal Eletrônica (NF-e) de um pedido ao qual você irá transportar foi gerada com sucesso. Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.\nAtenciosamente,{emitente}','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('10464223000163','aLayoutEmail.layoutCancelClienteForn','layout.email','Prezado (a) {destinatario}, Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\nAtenciosamente,{emitente}','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('10464223000163','aLayoutEmail.layoutCancelTransport','layout.email','Prezado (a) {transportadora}, Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. \nAtenciosamente,{emitente}','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('10464223000163','aLayoutEmail.layoutCceClienteForn','layout.email','Prezado (a) {destinatario}, Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\nAtenciosamente,{emitente}','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('10464223000163','aLayoutEmail.layoutCceTransport','layout.email','Prezado (a) {transportadora}, Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\nAtenciosamente,{emitente}','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('10464223000163','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('10464223000163','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('10464223000163','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('10464223000163','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('10464223000163','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('10464223000163','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('10464223000163','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('10464223000163','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('10464223000163','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('10464223000163','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('10464223000163','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('10464223000163','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('10464223000163','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('10464223000163','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('10464223000163','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('10464223000163','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('10464223000163','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('10464223000163','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('10464223000163','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('10464223000163','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('10464223000163','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('10464223000163','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('10464223000163','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('10464223000163','boleto.ftp.host','nfe.boleto','','FTP HOST','1','TEXT','',255,'',4),('10464223000163','boleto.ftp.password','nfe.boleto','','FTP PASSWORD','1','TEXT','',255,'',6),('10464223000163','boleto.ftp.user','nfe.boleto','','FTP USER','1','TEXT','',255,'',5),('10464223000163','boleto.layoutEmailBoleto','nfe.boleto','','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('10464223000163','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',255,'',1),('10464223000163','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',255,'',2),('10464223000163','CertChain','empresa','','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('10464223000163','certDiasAlerta','empresa','','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('10464223000163','certEmailAlerta','empresa','','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('10464223000163','certPassword','empresa','Privalia15anos','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('10464223000163','certPfxName','empresa','fc149096ac215d382c7f551b943d653d.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('10464223000163','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('10464223000163','cnpj','empresa(','10464223000163','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('10464223000163','connectWS.password','connectWS','','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('10464223000163','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('10464223000163','conting.detServAut','contingencia','2','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('10464223000163','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('10464223000163','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'\n Comandos:\n - NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]\n - {Q}: Gera uma quebra de linha no texto.',6),('10464223000163','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('10464223000163','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('10464223000163','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('10464223000163','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('10464223000163','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('10464223000163','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('10464223000163','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('10464223000163','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('10464223000163','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('10464223000163','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('10464223000163','envio.mail.smtp.secure','envio','','SMPT SEGURANÇA','1','TEXT','',255,'',11),('10464223000163','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('10464223000163','envio.sendEmail','envio','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('10464223000163','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('10464223000163','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('10464223000163','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('10464223000163','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('10464223000163','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('10464223000163','inboudCTE.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('10464223000163','inboudCTE.imapToken','inbound.imap.cte','eyJ0eXAiOiJKV1QiLCJub25jZSI6Ik9JN2lMRmk0ZGx3VEF1cVNHUWZpSERnTE1SUVA5UFJRa3diSFY5MEUxc2siLCJhbGciOiJSUzI1NiIsIng1dCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSIsImtpZCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NjQ5NTAxMTcsIm5iZiI6MTY2NDk1MDExNywiZXhwIjoxNjY0OTU1NzQwLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiRTJaZ1lLaTFFb2pyS0NzV1dwY3hoL3VDWjQyRjc5bnA3TUZjbjFMV3hrME1WclMvL2RHa2JsM3pQYkVVeThzR1JhSkorNU5aQVE9PSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzNCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIiwic2lkIjoiNTQ1Y2QzODYtYTNjZi00N2Y4LTk0YWMtODQ0NzE4ZjUyMDBiIiwic2lnbmluX3N0YXRlIjpbImttc2kiXSwic3ViIjoiSkFjTXhWRDItb2VQR1NLOHhTdGp5UXl0VkhFSVdaTWpSTGMxSHgwYjg4VSIsInRpZCI6IjNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NCIsInVuaXF1ZV9uYW1lIjoieG1sQHJveWFsZmljLmNvbS5iciIsInVwbiI6InhtbEByb3lhbGZpYy5jb20uYnIiLCJ1dGkiOiJndHloUWlDR0NVMlV6ZUViRW5OR0FBIiwidmVyIjoiMS4wIiwid2lkcyI6WyJiNzlmYmY0ZC0zZWY5LTQ2ODktODE0My03NmIxOTRlODU1MDkiXX0.LDWlpDrJm3gWZ8rbErLIa02WP4AK-ibOr5KBq2DjEl7x_4cnAqjtC0WhuhBiQyE4WmVVwfY2AgF2Q1c5LP3bVZKO-4FdHNnGyAZRko_kAdfy9zXWUlyj6i-BbiYVSSlp01K4-z3zHpfWd4O4lf7kukgVXLfQAhmvOxCW4HlqgoI4LeDb-Z0A-dD9jXOYxwinfNo7Hj7vUIjHbFzLzEVek86mgrxHbLUx8_emfZl42TjBChQydp5del3V4zf8coLZHe9Yma_lUF9PIcVNGujNWhvdRiV1HrxPU5d-tO5u7eiyECruv_mfnwwF8tb0T53uoFDgBHPT3AN5HCgDIruOEQ','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('10464223000163','inboudCTE.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('10464223000163','inboudCTE.imapUser','inbound.imap.cte','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('10464223000163','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000163','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000163','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('10464223000163','inboudNFS.boxMail','inbound.imap.nfs','','IMAP Box Default','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('10464223000163','inboudNFS.imapCertSecurity','inbound.imap.nfs','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('10464223000163','inboudNFS.imapHost','inbound.imap.nfs','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('10464223000163','inboudNFS.imapPassword','inbound.imap.nfs','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('10464223000163','inboudNFS.imapPort','inbound.imap.nfs','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('10464223000163','inboudNFS.imapRefreshToken','inbound.imap.nfs','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P9xelh57UcthtaS8ZPBmsEXkLqtUxACU9nG7SacHw9VgQsgjXNA5asOuYFbe4qv43pydy1lSrqh6ksfmrzSl-mK8DZy37UlIkh3lnhU-YCDpcTZy5jVUzF1wOZwJzC2UjaVohB3t7OWLsOiE0Aabt35_qSRgpdbQFtJO84LkWU-0qxqNwPdvOiprYx2LqTqCAKRwJZT8Io9x8MDCR8xzo0xaqJSOAbWjfuLZ9vbjlmZiDPCCl-TSzqwUMCWzeiCFeqPWutayLg2FlmPTYwf-xB9v4k0ZoVPFtr9RCpkb5nyAlO4-bwtkcAxnp2u-1J8Ql7iPeu9utRlvnCLavlCAX5QJvQesgUnkRi--XiIxttN3Ju1A5Flg64sOamJqIM1p0Pq2cCdHpwiv8UVIydukbAsq4LlOaaC7RerZ8lpfPIkAwwCGFY2SmpTugqEQLdnUbQs3E0OJZo4noDZUfOVjK1VqpHFnT7jPZ5NHuf-Sp65J5vcDTKkb2-OZZswguxrhU7xki9s5OYxWuNmuSNqtn2nhJi0Q0AqwOiOGeVJwkWw3Ddg-1LOhMj1oTxlZRqWrJVI7vB9xq0dBrto6I17psuks5FOM99XvxsFBuQy7bIuDMuTJDfWXOrF9QTVih4k0KGZwz0VeAO2b0v51e4llbY9-mzC_tVQ2_Ax3Y4nXQC_sV1RlM6POVZ4sbT5V730_OOGrrawpro2RCBDnxfcX6_MMAn3cQYvctA','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('10464223000163','inboudNFS.imapToken','inbound.imap.nfs','eyJ0eXAiOiJKV1QiLCJub25jZSI6Ik9JN2lMRmk0ZGx3VEF1cVNHUWZpSERnTE1SUVA5UFJRa3diSFY5MEUxc2siLCJhbGciOiJSUzI1NiIsIng1dCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSIsImtpZCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NjQ5NTAxMTcsIm5iZiI6MTY2NDk1MDExNywiZXhwIjoxNjY0OTU1NzQwLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiRTJaZ1lLaTFFb2pyS0NzV1dwY3hoL3VDWjQyRjc5bnA3TUZjbjFMV3hrME1WclMvL2RHa2JsM3pQYkVVeThzR1JhSkorNU5aQVE9PSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzNCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIiwic2lkIjoiNTQ1Y2QzODYtYTNjZi00N2Y4LTk0YWMtODQ0NzE4ZjUyMDBiIiwic2lnbmluX3N0YXRlIjpbImttc2kiXSwic3ViIjoiSkFjTXhWRDItb2VQR1NLOHhTdGp5UXl0VkhFSVdaTWpSTGMxSHgwYjg4VSIsInRpZCI6IjNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NCIsInVuaXF1ZV9uYW1lIjoieG1sQHJveWFsZmljLmNvbS5iciIsInVwbiI6InhtbEByb3lhbGZpYy5jb20uYnIiLCJ1dGkiOiJndHloUWlDR0NVMlV6ZUViRW5OR0FBIiwidmVyIjoiMS4wIiwid2lkcyI6WyJiNzlmYmY0ZC0zZWY5LTQ2ODktODE0My03NmIxOTRlODU1MDkiXX0.LDWlpDrJm3gWZ8rbErLIa02WP4AK-ibOr5KBq2DjEl7x_4cnAqjtC0WhuhBiQyE4WmVVwfY2AgF2Q1c5LP3bVZKO-4FdHNnGyAZRko_kAdfy9zXWUlyj6i-BbiYVSSlp01K4-z3zHpfWd4O4lf7kukgVXLfQAhmvOxCW4HlqgoI4LeDb-Z0A-dD9jXOYxwinfNo7Hj7vUIjHbFzLzEVek86mgrxHbLUx8_emfZl42TjBChQydp5del3V4zf8coLZHe9Yma_lUF9PIcVNGujNWhvdRiV1HrxPU5d-tO5u7eiyECruv_mfnwwF8tb0T53uoFDgBHPT3AN5HCgDIruOEQ','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('10464223000163','inboudNFS.imapTokenValidAt','inbound.imap.nfs','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('10464223000163','inboudNFS.imapUser','inbound.imap.nfs','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('10464223000163','inboudNFS.moveToBox','inbound.imap.nfs','lidos','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000163','inboudNFS.tpProtocol','inbound.imap.nfs','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000163','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('10464223000163','inbound.boxMail','inbound.imap','','IMAP Box Default','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('10464223000163','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('10464223000163','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('10464223000163','inbound.imapPassword','inbound.imap','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('10464223000163','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('10464223000163','inbound.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('10464223000163','inbound.imapToken','inbound.imap.cte','eyJ0eXAiOiJKV1QiLCJub25jZSI6InAtWW4xZk82Y3ZQT2dCOXZQM2lkSXloNl9BYzRQMmxDWFNUN2lVaGRzREkiLCJhbGciOiJSUzI1NiIsIng1dCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyIsImtpZCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NzI5NDE4MzEsIm5iZiI6MTY3Mjk0MTgzMSwiZXhwIjoxNjcyOTQ2NjEzLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiQVRRQXkvOFRBQUFBd0VTdkY0SjFwaTZyZnJ2TE1ObTRtOUU1bFlEQW9iRmxCK0k0akU3MVJjZEZZTVAzeUdmQ09OcnFvcTh6OTdWUSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzMCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIFNNVFAuU2VuZCBVc2VyLlJlYWQiLCJzaWQiOiIyOGU2MjE3Yi0zMmQ0LTQzNGQtYTcyNy05YzI2MzNiOGZiODQiLCJzaWduaW5fc3RhdGUiOlsia21zaSJdLCJzdWIiOiJKQWNNeFZEMi1vZVBHU0s4eFN0anlReXRWSEVJV1pNalJMYzFIeDBiODhVIiwidGlkIjoiM2IwOWI2NmUtZjg4Mi00YjRiLTk4MzAtZWE5ZTg3OWI0Mjg0IiwidW5pcXVlX25hbWUiOiJ4bWxAcm95YWxmaWMuY29tLmJyIiwidXBuIjoieG1sQHJveWFsZmljLmNvbS5iciIsInV0aSI6IlpMSHY1cDRfc0U2Um0zWmtJMHZPQWciLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbImI3OWZiZjRkLTNlZjktNDY4OS04MTQzLTc2YjE5NGU4NTUwOSJdfQ.rJ-ylmazBAYhXZtl3GpdNU-tWmpl2Kwzz5WN69VzXfJkW91V7C4bWxVEGkASFMApUq-0AdIixo1nDyAR-Zg0L_Ga8wbTTHRN-gUQCRBQVA5HndpW1GYxN5g-Czaa5-QqUYwulYUBGiK4EvWqFOmwiekObJlYEW74eliRLUJ5kJ_0-VmJwu5bTr6Y66ztDuqdBPMhELbkZOfIIjNuLAeEDrtfjFGb0c9UF_dEnkfkXX6nsQkODHtfFXlKyr_4fIwdheRzm6AllvDOQjhwMaQauOrskmzIkEdBt_GI7uVSfh5SBjkyk9FgMR9KlmbZ84BKZ-dNFh3YyNnStd7h9PMx1w','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('10464223000163','inbound.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('10464223000163','inbound.imapUser','inbound.imap','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('10464223000163','inbound.impCTE','inbound.imap.cte','','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('10464223000163','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('10464223000163','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('10464223000163','inbound.impNfeWs','inbound.imap','1','Importar NF-e WS','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e do Webservice',6),('10464223000163','inbound.impNFS','inbound.imap.nfs','1','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('10464223000163','inbound.impNFSDeleteEmail','inbound.imap.nfs','0','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('10464223000163','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000163','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000163','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('10464223000163','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('10464223000163','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('10464223000163','pathCertsFiles','empresa','/var/www/dataXML/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('10464223000163','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('10464223000163','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('10464223000163','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('10464223000163','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('10464223000163','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('10464223000163','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('10464223000163','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('10464223000163','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('10464223000163','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('10464223000163','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('10464223000163','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('10464223000163','razaosocial','empresa','Privalia SP 2','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('10464223000163','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('10464223000163','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('10464223000163','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('10464223000163','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('10464223000163','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('10464223000163','sefazCnpjCpfAutorizados','nfe','','CPF/CPNJ autorizado','1','TEXT','',255,'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)',1),('10464223000163','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('10464223000163','siglaUF','empresa','SP','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('10464223000163','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('10464223000163','tpAmb','geral','2','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('10464223000759','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('10464223000759','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('10464223000759','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('10464223000759','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('10464223000759','aDocFormat.pathLogoFile','exportacao','/dadosxml/sites/efit-homolog/resources/img/logo/logo_royal.jpg','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('10464223000759','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('10464223000759','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('10464223000759','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('10464223000759','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('10464223000759','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('10464223000759','aExpXml.copiaXmlCTe','exportacao','','Diretório de Cópia de XML de CT-e','1','TEXT','',255,'',8),('10464223000759','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('10464223000759','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('10464223000759','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('10464223000759','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('10464223000759','aLayoutEmail.layoutAlertaCertValid','empresa','Prezados, ),\n\nAtenção quanto ao vencimento do certificado digital para emissão de NF-e:\n\nEmpresa: {empr_razao_social} - {empr_nome}\nCertificado: {cert_file}\nValidade: {cert_data_val}\n\n\nRecomendamos que seja adquirido o novo certificado imediatamente.\n\n\n**** Mensagem enviada automaticamente pelo sistema e-FIT Outbound ***','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('10464223000759','aLayoutEmail.layoutAutAnothers','layout.email','','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('10464223000759','aLayoutEmail.layoutAutClienteForn','layout.email','Prezado (a) {destinatario}, Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias. Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador. Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE. Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso. O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional. Para mais detalhes, consulte: www.nfe.fazenda.gov.br \nAtenciosamente,{emitente}','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('10464223000759','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('10464223000759','aLayoutEmail.layoutAutTransport','layout.email','Prezado (a) {transportadora}, A Nota Fiscal Eletrônica (NF-e) de um pedido ao qual você irá transportar foi gerada com sucesso. Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.\nAtenciosamente,{emitente}','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('10464223000759','aLayoutEmail.layoutCancelClienteForn','layout.email','Prezado (a) {destinatario}, Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\nAtenciosamente,{emitente}','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('10464223000759','aLayoutEmail.layoutCancelTransport','layout.email','Prezado (a) {transportadora}, Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. \nAtenciosamente,{emitente}','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('10464223000759','aLayoutEmail.layoutCceClienteForn','layout.email','Prezado (a) {destinatario}, Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\nAtenciosamente,{emitente}','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('10464223000759','aLayoutEmail.layoutCceTransport','layout.email','Prezado (a) {transportadora}, Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\nAtenciosamente,{emitente}','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('10464223000759','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('10464223000759','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('10464223000759','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('10464223000759','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('10464223000759','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('10464223000759','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('10464223000759','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('10464223000759','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('10464223000759','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('10464223000759','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('10464223000759','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('10464223000759','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('10464223000759','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('10464223000759','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('10464223000759','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('10464223000759','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('10464223000759','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('10464223000759','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('10464223000759','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('10464223000759','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('10464223000759','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('10464223000759','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('10464223000759','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('10464223000759','boleto.ftp.host','nfe.boleto','','FTP HOST','1','TEXT','',255,'',4),('10464223000759','boleto.ftp.password','nfe.boleto','','FTP PASSWORD','1','TEXT','',255,'',6),('10464223000759','boleto.ftp.user','nfe.boleto','','FTP USER','1','TEXT','',255,'',5),('10464223000759','boleto.layoutEmailBoleto','nfe.boleto','','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('10464223000759','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',255,'',1),('10464223000759','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',255,'',2),('10464223000759','CertChain','empresa','','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('10464223000759','certDiasAlerta','empresa','','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('10464223000759','certEmailAlerta','empresa','','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('10464223000759','certPassword','empresa','Privalia15anos','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('10464223000759','certPfxName','empresa','fc149096ac215d382c7f551b943d653d.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('10464223000759','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('10464223000759','cnpj','empresa(','10464223000759','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('10464223000759','connectWS.password','connectWS','','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('10464223000759','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('10464223000759','conting.detServAut','contingencia','2','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('10464223000759','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('10464223000759','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'\n Comandos:\n - NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]\n - {Q}: Gera uma quebra de linha no texto.',6),('10464223000759','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('10464223000759','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('10464223000759','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('10464223000759','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('10464223000759','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('10464223000759','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('10464223000759','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('10464223000759','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('10464223000759','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('10464223000759','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('10464223000759','envio.mail.smtp.secure','envio','','SMPT SEGURANÇA','1','TEXT','',255,'',11),('10464223000759','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('10464223000759','envio.sendEmail','envio','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('10464223000759','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('10464223000759','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('10464223000759','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('10464223000759','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('10464223000759','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('10464223000759','inboudCTE.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('10464223000759','inboudCTE.imapToken','inbound.imap.cte','eyJ0eXAiOiJKV1QiLCJub25jZSI6Ik9JN2lMRmk0ZGx3VEF1cVNHUWZpSERnTE1SUVA5UFJRa3diSFY5MEUxc2siLCJhbGciOiJSUzI1NiIsIng1dCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSIsImtpZCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NjQ5NTAxMTcsIm5iZiI6MTY2NDk1MDExNywiZXhwIjoxNjY0OTU1NzQwLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiRTJaZ1lLaTFFb2pyS0NzV1dwY3hoL3VDWjQyRjc5bnA3TUZjbjFMV3hrME1WclMvL2RHa2JsM3pQYkVVeThzR1JhSkorNU5aQVE9PSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzNCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIiwic2lkIjoiNTQ1Y2QzODYtYTNjZi00N2Y4LTk0YWMtODQ0NzE4ZjUyMDBiIiwic2lnbmluX3N0YXRlIjpbImttc2kiXSwic3ViIjoiSkFjTXhWRDItb2VQR1NLOHhTdGp5UXl0VkhFSVdaTWpSTGMxSHgwYjg4VSIsInRpZCI6IjNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NCIsInVuaXF1ZV9uYW1lIjoieG1sQHJveWFsZmljLmNvbS5iciIsInVwbiI6InhtbEByb3lhbGZpYy5jb20uYnIiLCJ1dGkiOiJndHloUWlDR0NVMlV6ZUViRW5OR0FBIiwidmVyIjoiMS4wIiwid2lkcyI6WyJiNzlmYmY0ZC0zZWY5LTQ2ODktODE0My03NmIxOTRlODU1MDkiXX0.LDWlpDrJm3gWZ8rbErLIa02WP4AK-ibOr5KBq2DjEl7x_4cnAqjtC0WhuhBiQyE4WmVVwfY2AgF2Q1c5LP3bVZKO-4FdHNnGyAZRko_kAdfy9zXWUlyj6i-BbiYVSSlp01K4-z3zHpfWd4O4lf7kukgVXLfQAhmvOxCW4HlqgoI4LeDb-Z0A-dD9jXOYxwinfNo7Hj7vUIjHbFzLzEVek86mgrxHbLUx8_emfZl42TjBChQydp5del3V4zf8coLZHe9Yma_lUF9PIcVNGujNWhvdRiV1HrxPU5d-tO5u7eiyECruv_mfnwwF8tb0T53uoFDgBHPT3AN5HCgDIruOEQ','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('10464223000759','inboudCTE.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('10464223000759','inboudCTE.imapUser','inbound.imap.cte','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('10464223000759','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000759','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000759','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('10464223000759','inboudNFS.boxMail','inbound.imap.nfs','','IMAP Box Default','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('10464223000759','inboudNFS.imapCertSecurity','inbound.imap.nfs','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('10464223000759','inboudNFS.imapHost','inbound.imap.nfs','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('10464223000759','inboudNFS.imapPassword','inbound.imap.nfs','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('10464223000759','inboudNFS.imapPort','inbound.imap.nfs','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('10464223000759','inboudNFS.imapRefreshToken','inbound.imap.nfs','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P9xelh57UcthtaS8ZPBmsEXkLqtUxACU9nG7SacHw9VgQsgjXNA5asOuYFbe4qv43pydy1lSrqh6ksfmrzSl-mK8DZy37UlIkh3lnhU-YCDpcTZy5jVUzF1wOZwJzC2UjaVohB3t7OWLsOiE0Aabt35_qSRgpdbQFtJO84LkWU-0qxqNwPdvOiprYx2LqTqCAKRwJZT8Io9x8MDCR8xzo0xaqJSOAbWjfuLZ9vbjlmZiDPCCl-TSzqwUMCWzeiCFeqPWutayLg2FlmPTYwf-xB9v4k0ZoVPFtr9RCpkb5nyAlO4-bwtkcAxnp2u-1J8Ql7iPeu9utRlvnCLavlCAX5QJvQesgUnkRi--XiIxttN3Ju1A5Flg64sOamJqIM1p0Pq2cCdHpwiv8UVIydukbAsq4LlOaaC7RerZ8lpfPIkAwwCGFY2SmpTugqEQLdnUbQs3E0OJZo4noDZUfOVjK1VqpHFnT7jPZ5NHuf-Sp65J5vcDTKkb2-OZZswguxrhU7xki9s5OYxWuNmuSNqtn2nhJi0Q0AqwOiOGeVJwkWw3Ddg-1LOhMj1oTxlZRqWrJVI7vB9xq0dBrto6I17psuks5FOM99XvxsFBuQy7bIuDMuTJDfWXOrF9QTVih4k0KGZwz0VeAO2b0v51e4llbY9-mzC_tVQ2_Ax3Y4nXQC_sV1RlM6POVZ4sbT5V730_OOGrrawpro2RCBDnxfcX6_MMAn3cQYvctA','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('10464223000759','inboudNFS.imapToken','inbound.imap.nfs','eyJ0eXAiOiJKV1QiLCJub25jZSI6Ik9JN2lMRmk0ZGx3VEF1cVNHUWZpSERnTE1SUVA5UFJRa3diSFY5MEUxc2siLCJhbGciOiJSUzI1NiIsIng1dCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSIsImtpZCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NjQ5NTAxMTcsIm5iZiI6MTY2NDk1MDExNywiZXhwIjoxNjY0OTU1NzQwLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiRTJaZ1lLaTFFb2pyS0NzV1dwY3hoL3VDWjQyRjc5bnA3TUZjbjFMV3hrME1WclMvL2RHa2JsM3pQYkVVeThzR1JhSkorNU5aQVE9PSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzNCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIiwic2lkIjoiNTQ1Y2QzODYtYTNjZi00N2Y4LTk0YWMtODQ0NzE4ZjUyMDBiIiwic2lnbmluX3N0YXRlIjpbImttc2kiXSwic3ViIjoiSkFjTXhWRDItb2VQR1NLOHhTdGp5UXl0VkhFSVdaTWpSTGMxSHgwYjg4VSIsInRpZCI6IjNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NCIsInVuaXF1ZV9uYW1lIjoieG1sQHJveWFsZmljLmNvbS5iciIsInVwbiI6InhtbEByb3lhbGZpYy5jb20uYnIiLCJ1dGkiOiJndHloUWlDR0NVMlV6ZUViRW5OR0FBIiwidmVyIjoiMS4wIiwid2lkcyI6WyJiNzlmYmY0ZC0zZWY5LTQ2ODktODE0My03NmIxOTRlODU1MDkiXX0.LDWlpDrJm3gWZ8rbErLIa02WP4AK-ibOr5KBq2DjEl7x_4cnAqjtC0WhuhBiQyE4WmVVwfY2AgF2Q1c5LP3bVZKO-4FdHNnGyAZRko_kAdfy9zXWUlyj6i-BbiYVSSlp01K4-z3zHpfWd4O4lf7kukgVXLfQAhmvOxCW4HlqgoI4LeDb-Z0A-dD9jXOYxwinfNo7Hj7vUIjHbFzLzEVek86mgrxHbLUx8_emfZl42TjBChQydp5del3V4zf8coLZHe9Yma_lUF9PIcVNGujNWhvdRiV1HrxPU5d-tO5u7eiyECruv_mfnwwF8tb0T53uoFDgBHPT3AN5HCgDIruOEQ','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('10464223000759','inboudNFS.imapTokenValidAt','inbound.imap.nfs','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('10464223000759','inboudNFS.imapUser','inbound.imap.nfs','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('10464223000759','inboudNFS.moveToBox','inbound.imap.nfs','lidos','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000759','inboudNFS.tpProtocol','inbound.imap.nfs','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000759','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('10464223000759','inbound.boxMail','inbound.imap','','IMAP Box Default','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('10464223000759','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('10464223000759','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('10464223000759','inbound.imapPassword','inbound.imap','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('10464223000759','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('10464223000759','inbound.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('10464223000759','inbound.imapToken','inbound.imap.cte','eyJ0eXAiOiJKV1QiLCJub25jZSI6InAtWW4xZk82Y3ZQT2dCOXZQM2lkSXloNl9BYzRQMmxDWFNUN2lVaGRzREkiLCJhbGciOiJSUzI1NiIsIng1dCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyIsImtpZCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NzI5NDE4MzEsIm5iZiI6MTY3Mjk0MTgzMSwiZXhwIjoxNjcyOTQ2NjEzLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiQVRRQXkvOFRBQUFBd0VTdkY0SjFwaTZyZnJ2TE1ObTRtOUU1bFlEQW9iRmxCK0k0akU3MVJjZEZZTVAzeUdmQ09OcnFvcTh6OTdWUSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzMCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIFNNVFAuU2VuZCBVc2VyLlJlYWQiLCJzaWQiOiIyOGU2MjE3Yi0zMmQ0LTQzNGQtYTcyNy05YzI2MzNiOGZiODQiLCJzaWduaW5fc3RhdGUiOlsia21zaSJdLCJzdWIiOiJKQWNNeFZEMi1vZVBHU0s4eFN0anlReXRWSEVJV1pNalJMYzFIeDBiODhVIiwidGlkIjoiM2IwOWI2NmUtZjg4Mi00YjRiLTk4MzAtZWE5ZTg3OWI0Mjg0IiwidW5pcXVlX25hbWUiOiJ4bWxAcm95YWxmaWMuY29tLmJyIiwidXBuIjoieG1sQHJveWFsZmljLmNvbS5iciIsInV0aSI6IlpMSHY1cDRfc0U2Um0zWmtJMHZPQWciLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbImI3OWZiZjRkLTNlZjktNDY4OS04MTQzLTc2YjE5NGU4NTUwOSJdfQ.rJ-ylmazBAYhXZtl3GpdNU-tWmpl2Kwzz5WN69VzXfJkW91V7C4bWxVEGkASFMApUq-0AdIixo1nDyAR-Zg0L_Ga8wbTTHRN-gUQCRBQVA5HndpW1GYxN5g-Czaa5-QqUYwulYUBGiK4EvWqFOmwiekObJlYEW74eliRLUJ5kJ_0-VmJwu5bTr6Y66ztDuqdBPMhELbkZOfIIjNuLAeEDrtfjFGb0c9UF_dEnkfkXX6nsQkODHtfFXlKyr_4fIwdheRzm6AllvDOQjhwMaQauOrskmzIkEdBt_GI7uVSfh5SBjkyk9FgMR9KlmbZ84BKZ-dNFh3YyNnStd7h9PMx1w','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('10464223000759','inbound.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('10464223000759','inbound.imapUser','inbound.imap','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('10464223000759','inbound.impCTE','inbound.imap.cte','','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('10464223000759','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('10464223000759','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('10464223000759','inbound.impNfeWs','inbound.imap','1','Importar NF-e WS','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e do Webservice',6),('10464223000759','inbound.impNFS','inbound.imap.nfs','1','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('10464223000759','inbound.impNFSDeleteEmail','inbound.imap.nfs','0','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('10464223000759','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000759','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('10464223000759','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('10464223000759','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('10464223000759','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('10464223000759','pathCertsFiles','empresa','/var/www/dataXML/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('10464223000759','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('10464223000759','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('10464223000759','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('10464223000759','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('10464223000759','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('10464223000759','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('10464223000759','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('10464223000759','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('10464223000759','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('10464223000759','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('10464223000759','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('10464223000759','razaosocial','empresa','Privalia SP 2','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('10464223000759','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('10464223000759','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('10464223000759','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('10464223000759','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('10464223000759','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('10464223000759','sefazCnpjCpfAutorizados','nfe','','CPF/CPNJ autorizado','1','TEXT','',255,'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)',1),('10464223000759','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('10464223000759','siglaUF','empresa','MG','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('10464223000759','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('10464223000759','tpAmb','geral','1','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('13373000000189','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('13373000000189','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('13373000000189','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('13373000000189','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('13373000000189','aDocFormat.pathLogoFile','exportacao','/var/www/html/efit/api/nfephp/images/tms.jpg','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('13373000000189','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('13373000000189','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('13373000000189','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('13373000000189','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('13373000000189','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('13373000000189','aExpXml.copiaXmlCTe','exportacao','','Diretório de Cópia de XML de CT-e','1','TEXT','',255,'',8),('13373000000189','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('13373000000189','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('13373000000189','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('13373000000189','aExpXml.copiaXmlNfeEmails','exportacao','','Emails para envio de copia de XML inbound','1','TEXT','',255,'',8),('13373000000189','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('13373000000189','aLayoutEmail.layoutAlertaCertValid','empresa','','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('13373000000189','aLayoutEmail.layoutAutAnothers','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><i>Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador.</i></p>\n<p><i>Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE.</i></p>\n<p><i>Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso.</i></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"http://www.nfe.fazenda.gov.br/portal/Default.aspx\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('13373000000189','aLayoutEmail.layoutAutClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><i>Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador.</i></p>\n<p><i>Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE.</i></p>\n<p><i>Para poder utilizar os dados descritos do DANFE na escrituração da NF-e, tanto o contribuinte destinatário, como o contribuinte emitente, terão de verificar a validade da NF-e. Esta validade está vinculada à efetiva existência da NF-e nos arquivos da SEFAZ, e comprovada através da emissão da Autorização de Uso.</i></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"&quot;&quot;http://www.nfe.fazenda.gov.br/portal/Default.aspx&quot;&quot;\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('13373000000189','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<p><b style=\"font-size:18px;\">Prezado cliente, visando garantir a confiança e segurança em nossas vendas, informe ao grupo Tracan Máquinas se reconhece a compra dessa mercadoria a partir do link a seguir: </b> <a href=\"{link_nfe_refuse}\" style=\"font-size:18px;font-weight: bold;\">click aqui.</a></p>\n<p><b>O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</b></p>\n<p>Para mais detalhes, consulte: <a href=\"http://www.nfe.fazenda.gov.br/portal/Default.aspx\">www.nfe.fazenda.gov.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('13373000000189','aLayoutEmail.layoutAutTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>A Nota Fiscal Eletrônica (NF-e) de um pedido ao qual você irá transportar foi gerada com sucesso.</p><p>\n</p><p>Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('13373000000189','aLayoutEmail.layoutCancelClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('13373000000189','aLayoutEmail.layoutCancelTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('13373000000189','aLayoutEmail.layoutCceClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('13373000000189','aLayoutEmail.layoutCceTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('13373000000189','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('13373000000189','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('13373000000189','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('13373000000189','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('13373000000189','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('13373000000189','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('13373000000189','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('13373000000189','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('13373000000189','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('13373000000189','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('13373000000189','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('13373000000189','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('13373000000189','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('13373000000189','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('13373000000189','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('13373000000189','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('13373000000189','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('13373000000189','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('13373000000189','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('13373000000189','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('13373000000189','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('13373000000189','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('13373000000189','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('13373000000189','boleto.ftp.host','nfe.boleto','192.168.100.252:2122','FTP HOST','1','TEXT','',255,'',4),('13373000000189','boleto.ftp.password','nfe.boleto','Trac@n#2020','FTP PASSWORD','1','TEXT','',255,'',6),('13373000000189','boleto.ftp.user','nfe.boleto','TRACAN_DOM\\FPT_FINNET','FTP USER','1','TEXT','',255,'',5),('13373000000189','boleto.layoutEmailBoleto','nfe.boleto','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a 2ª via do boleto referente a Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.</p>\n\n<p><i>O boleto bancário é um documento de cobrança, físico ou virtual, válido para pagamento nos caixas de qualquer rede bancária ou com o código de barras no auto-atendimento ou Internet Banking do seu banco.</i></p>\n\n<p><i>Para visualizá-lo é necessária a utilização de um leitor de arquivos PDF de sua preferência.</i></p>\n\n<p><i>O pagamento em atraso pode ser feito em até 60 dias após o vencimento, incidindo juros e multas. Após este prazo, será necessário atualizá-lo ligando para o telefone (16) 3456-5414 ou através do e-mail financeiro@tracan.com.br.</i></p>\n\n<p>Para mais detalhes sobre o funcionamento de boletos bancários, consulte: <a href=\"\\&quot;\\&quot;&quot;&quot;https://portal.febraban.org.br/pagina/3077/82/pt-br/boletos-de-cobranca&quot;&quot;\\&quot;\\&quot;\">portal.febraban.org.br</a></p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('13373000000189','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',1),('13373000000189','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de boleto para FTP',2),('13373000000189','CertChain','empresa','----BEGIN CERTIFICATE-----\nMIIGoTCCBImgAwIBAgIBATANBgkqhkiG9w0BAQ0FADCBlzELMAkGA1UEBhMCQlIx\nEzARBgNVBAoMCklDUC1CcmFzaWwxPTA7BgNVBAsMNEluc3RpdHV0byBOYWNpb25h\nbCBkZSBUZWNub2xvZ2lhIGRhIEluZm9ybWFjYW8gLSBJVEkxNDAyBgNVBAMMK0F1\ndG9yaWRhZGUgQ2VydGlmaWNhZG9yYSBSYWl6IEJyYXNpbGVpcmEgdjUwHhcNMTYw\nMzAyMTMwMTM4WhcNMjkwMzAyMjM1OTM4WjCBlzELMAkGA1UEBhMCQlIxEzARBgNV\nBAoMCklDUC1CcmFzaWwxPTA7BgNVBAsMNEluc3RpdHV0byBOYWNpb25hbCBkZSBU\nZWNub2xvZ2lhIGRhIEluZm9ybWFjYW8gLSBJVEkxNDAyBgNVBAMMK0F1dG9yaWRh\nZGUgQ2VydGlmaWNhZG9yYSBSYWl6IEJyYXNpbGVpcmEgdjUwggIiMA0GCSqGSIb3\nDQEBAQUAA4ICDwAwggIKAoICAQD3LXgabUWsF+gUXw/6YODeF2XkqEyfk3VehdsI\nx+3/ERgdjCS/ouxYR0Epi2hdoMUVJDNf3XQfjAWXJyCoTneHYAl2McMdvoqtLB2i\nleQlJiis0fTtYTJayee9BAIdIrCor1Lc0vozXCpDtq5nTwhjIocaZtcuFsdrkl+n\nbfYxl5m7vjTkTMS6j8ffjmFzbNPDlJuV3Vy7AzapPVJrMl6UHPXCHMYMzl0KxR/4\n7S5XGgmLYkYt8bNCHA3fg07y+Gtvgu+SNhMPwWKIgwhYw+9vErOnavRhOimYo4M2\nAwNpNK0OKLI7Im5V094jFp4Ty+mlmfQH00k8nkSUEN+1TGGkhv16c2hukbx9iCfb\nmk7im2hGKjQA8eH64VPYoS2qdKbPbd3xDDHN2croYKpy2U2oQTVBSf9hC3o6fKo3\nzp0U3dNiw7ZgWKS9UwP31Q0gwgB1orZgLuF+LIppHYwxcTG/AovNWa4sTPukMiX2\nL+p7uIHExTZJJU4YoDacQh/mfbPIz3261He4YFmQ35sfw3eKHQSOLyiVfev/n0l/\nr308PijEd+d+Hz5RmqIzS8jYXZIeJxym4mEjE1fKpeP56Ea52LlIJ8ZqsJ3xzHWu\n3WkAVz4hMqrX6BPMGW2IxOuEUQyIaCBg1lI6QLiPMHvo2/J7gu4YfqRcH6i27W3H\nyzamEQIDAQABo4H1MIHyME4GA1UdIARHMEUwQwYFYEwBAQAwOjA4BggrBgEFBQcC\nARYsaHR0cDovL2FjcmFpei5pY3BicmFzaWwuZ292LmJyL0RQQ2FjcmFpei5wZGYw\nPwYDVR0fBDgwNjA0oDKgMIYuaHR0cDovL2FjcmFpei5pY3BicmFzaWwuZ292LmJy\nL0xDUmFjcmFpenY1LmNybDAfBgNVHSMEGDAWgBRpqL512cTvbOcTReRhbuVo+LZA\nXjAdBgNVHQ4EFgQUaai+ddnE72znE0XkYW7laPi2QF4wDwYDVR0TAQH/BAUwAwEB\n/zAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBABRt2/JiWapef7o/\nplhR4PxymlMIp/JeZ5F0BZ1XafmYpl5g6pRokFrIRMFXLyEhlgo51I05InyCc9Td\n6UXjlsOASTc/LRavyjB/8NcQjlRYDh6xf7OdP05mFcT/0+6bYRtNgsnUbr10pfsK\n/UzyUvQWbumGS57hCZrAZOyd9MzukiF/azAa6JfoZk2nDkEudKOY8tRyTpMmDzN5\nfufPSC3v7tSJUqTqo5z7roN/FmckRzGAYyz5XulbOc5/UsAT/tk+KP/clbbqd/hh\nevmmdJclLr9qWZZcOgzuFU2YsgProtVu0fFNXGr6KK9fu44pOHajmMsTXK3X7r/P\nwh19kFRow5F3RQMUZC6Re0YLfXh+ypnUSCzA+uL4JPtHIGyvkbWiulkustpOKUSV\nwBPzvA2sQUOvqdbAR7C8jcHYFJMuK2HZFji7pxcWWab/NKsFcJ3sluDjmhizpQax\nbYTfAVXu3q8yd0su/BHHhBpteyHvYyyz0Eb9LUysR2cMtWvfPU6vnoPgYvOGO1Cz\niyGEsgKULkCH4o2Vgl1gQuKWO4V68rFW8a/jvq28sbY+y/Ao0I5ohpnBcQOAawiF\nbz6yJtObajYMuztDDP8oY656EuuJXBJhuKAJPI/7WDtgfV8ffOh/iQGQATVMtgDN\n0gv8bn5NdUX8UMNX1sHhU3H1UpoW\n-----END CERTIFICATE-----\n-----BEGIN CERTIFICATE-----\nMIIGPTCCBCWgAwIBAgIBBjANBgkqhkiG9w0BAQ0FADCBlzELMAkGA1UEBhMCQlIx\nEzARBgNVBAoMCklDUC1CcmFzaWwxPTA7BgNVBAsMNEluc3RpdHV0byBOYWNpb25h\nbCBkZSBUZWNub2xvZ2lhIGRhIEluZm9ybWFjYW8gLSBJVEkxNDAyBgNVBAMMK0F1\ndG9yaWRhZGUgQ2VydGlmaWNhZG9yYSBSYWl6IEJyYXNpbGVpcmEgdjUwHhcNMTYw\nOTMwMTI1ODEzWhcNMjkwMzAyMTIwMDEzWjBuMQswCQYDVQQGEwJCUjETMBEGA1UE\nChMKSUNQLUJyYXNpbDE0MDIGA1UECxMrQXV0b3JpZGFkZSBDZXJ0aWZpY2Fkb3Jh\nIFJhaXogQnJhc2lsZWlyYSB2NTEUMBIGA1UEAxMLQUMgVkFMSUQgdjUwggIiMA0G\nCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDIiegzWRuB1JYromhSrFFFXTgxXS6f\nlLIq/6jUWNxq6keVekFRkb9M4y1ipIGSkzozDhEGglWCaBYPTyQ79EtPgmFUAPkL\nQcx4yYIsdzRa8jRB4b9Og2gsT6dVE3bkQqeQb8jV3vhhA5+XdoK2txo+W+2eJeNn\nnC2MiziCJpfv3PtnN678zatJfI8i6z9SB3UzM112wwTK7aTGrylAQ/SmKcxVRDwc\n8UCvQRJ+osIpsucpq4WVYKNpYgQR3/DK+3hfeM4a6XjTiJXoK8pLkkx9hkpPdW5u\n5ugmmZJsRYfFTC0nxaMwkexGoeyMRV4xKJrLQDVBfjZNdyigwnNALk5Dx+zcDDzN\njjhCULhHlM+6a7PQ6GV/f5PMcy7rOOdjwoRobBXC+tf7ToJHVEzvp/RPXiznH+ob\nA03t++sR/IJq51nPo062bSbhjoGJ49sWK+eECmWUJVYInmFj5PXbW6SfXuRjKSW0\nN/gki4j7wbrtQDbqqiPeAKFc2f0OdQvJuYgtQR92XCdfnhFUQcKeTQsIsMr7eXsA\nvSeMS1sl7Y5tWNAE8DQ/DN62b6NujSJc3kzEp/htIxUqONmxWsL0WGh+9yzBaXsK\nR0P5csWZkkP+A7zStulUu6CzlTg+yw6Q7+L90LotFGk71XD981Qhbocb5JSoD/8V\nFkoRsEXqFewH+QIDAQABo4G7MIG4MB0GA1UdDgQWBBQfLAk732M3fiit0Ql9vxU0\njzPqWTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAUBgNVHSAEDTAL\nMAkGBWBMAQErMAAwPwYDVR0fBDgwNjA0oDKgMIYuaHR0cDovL2FjcmFpei5pY3Bi\ncmFzaWwuZ292LmJyL0xDUmFjcmFpenY1LmNybDAfBgNVHSMEGDAWgBRpqL512cTv\nbOcTReRhbuVo+LZAXjANBgkqhkiG9w0BAQ0FAAOCAgEAMKr2i499oWLNM8a7wDoI\ngSOSJ360PaPzJmmu1idv8mq/2tNKf7pzNypsRN66fXpXOjBEGgYvsbe1vozn7vVH\n4OVlB8demP8jvxxM0z5qHN6iAPASd7gzNs/kyFRo4PFyt0axGIaCCT+srhejmJOE\nxYjJoQKsRvVDBEr7GvZDVuWE3vmUB4caKCjyDyGU5809TDUTbIXORqQmtmuSmkfD\nE94MzqXCPKF3eq4O8xM/SdxwKq11hej7Ec6JYWthUPORkclQcREdJHWOnrL8zg2/\nd7SfvKxMoVCsdW2tiMrczIBpeBwjUimsRJV8VOxcaC5f1hl/lfDfFptbJOGYCGdJ\n0jhKTUFNd3iZpRvjEI0V/y/az+R7CqP76WygKmw2xs8qnzFwpocwboQzSF/NQ6dh\nW2ddMIMlhnsM4zCVvGC7+jk2sLL7GpsKT13ffAHq77b1f2gjPZIKNEq+kL2OoZAs\nYV9YeiRXRFsibf1Czx+/DjPj+UoSuAihdBrtLdl+f8U6gvxB5KG8+GzMp6cRlOTd\nB/tJsnO4iqhyvFH4y13Tjz1GGoaYNttq4Uj/A693ZHnWLiNcatgxcsT/RPi0xbRC\ng50cKY4NajtIYzsfiv5hVJF3cpTeSKCY+BbSUMevsok5QmoSs0v6mxhe7blslFX7\nw0gBKcQwW0+u0rYxSFfUR4I=\n-----END CERTIFICATE-----\n-----BEGIN CERTIFICATE-----\nMIIHRzCCBS+gAwIBAgIBDzANBgkqhkiG9w0BAQ0FADBuMQswCQYDVQQGEwJCUjET\nMBEGA1UEChMKSUNQLUJyYXNpbDE0MDIGA1UECxMrQXV0b3JpZGFkZSBDZXJ0aWZp\nY2Fkb3JhIFJhaXogQnJhc2lsZWlyYSB2NTEUMBIGA1UEAxMLQUMgVkFMSUQgdjUw\nHhcNMTgxMjAzMTgxMjQyWhcNMjkwMzAxMTgxMjQyWjB3MQswCQYDVQQGEwJCUjET\nMBEGA1UEChMKSUNQLUJyYXNpbDE1MDMGA1UECxMsQXV0b3JpZGFkZSBDZXJ0aWZp\nY2Fkb3JhIFZBTElEIC0gQUMgVkFMSUQgdjUxHDAaBgNVBAMTE0FDIE9OTElORSBC\nUkFTSUwgdjUwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCvUiKfjj2a\npvla62p78mQric3ERK69ozngGBJ+uUnKVs3bG1+H2STeY+CvWhkrhMurwM7GVwAf\nHIGREANG3LRe4V0l9elyRgwMWy3zrw2GBLwsx+dlGV1Xh14IRfvleb7WfmUg1x7v\nZYnfIz4VE1npeCZhDRp4NGFNmt1Jm7b0RwphBGnS/qKl1dawpqXC3syep7w7HRL4\nTi8pwRAEBEqIpxDo2WgXik76Mo+r/wOoQHghU4M4HCniSf35UGKfchtuiEgqzyi+\n9yTMjd25PmKloW7x57KrloQZMouRSQLfnqbfU1i5tcyhM7DUENAXOpKg0p0p7F6+\nE0tuvt9RHoB0BHGqdMEaq54PAUrvoLIYyJAPqEiMyCJvej8P7t4dSDl+q2TQoj6B\n3AxHMuW9bQ6zHwJ6qSOxbXIwpF6/4+0iX5pbnyDdSTNKDOB/7Le01cTWt1IQCaGN\nDvfZGhuRkRwJIGtUMvlYvLtkq5OWC1A1AV75dbS2k7KnOfebRJut4QmjcVd+fZHK\nqyYkjrgkwa7yANy6VH1KZlhdexFuxQNqkWUN/w8IZUhY3CFED7Av/UXG9IyWHzPu\nZn5Mr7+8nLaaYLuexNRKloAN7FhY74eIipbqWd7/icl6PEUSXWf+nl6Ci1MP43/J\nODJbvKNOMNtxQXHWOHDLPn6gPFovZciAWQIDAQABo4IB5TCCAeEwgc0GA1UdIASB\nxTCBwjBfBgZgTAECATAwVTBTBggrBgEFBQcCARZHaHR0cDovL2ljcC1icmFzaWwu\ndmFsaWRjZXJ0aWZpY2Fkb3JhLmNvbS5ici9hYy12YWxpZC9kcGMtYWMtdmFsaWR2\nNS5wZGYwXwYGYEwBAgMtMFUwUwYIKwYBBQUHAgEWR2h0dHA6Ly9pY3AtYnJhc2ls\nLnZhbGlkY2VydGlmaWNhZG9yYS5jb20uYnIvYWMtdmFsaWQvZHBjLWFjLXZhbGlk\ndjUucGRmMIGqBgNVHR8EgaIwgZ8wTaBLoEmGR2h0dHA6Ly9pY3AtYnJhc2lsLnZh\nbGlkY2VydGlmaWNhZG9yYS5jb20uYnIvYWMtdmFsaWQvbGNyLWFjLXZhbGlkdjUu\nY3JsME6gTKBKhkhodHRwOi8vaWNwLWJyYXNpbDIudmFsaWRjZXJ0aWZpY2Fkb3Jh\nLmNvbS5ici9hYy12YWxpZC9sY3ItYWMtdmFsaWR2NS5jcmwwHwYDVR0jBBgwFoAU\nHywJO99jN34ordEJfb8VNI8z6lkwHQYDVR0OBBYEFJ9euexD9hc0G2t1lH/acfSR\n5zi6MBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3\nDQEBDQUAA4ICAQBS0C5tSr9qcNKt5/833AXQfraEKYSUidO0zi476kgul74btMgT\nTUaBYGeUj8QTmynIxWMEgx2QrjCp14zfQ+Gj+n1MVkdhCZJxIqEFaa5iE6eGAM++\n5VzBwznJJzHzGxSw/lCbb4W8Ua3W6oorQ29uvxX4qE4VVzRxdGLwcmlniLyRy8Uu\non0QfFjNPXoNhwfkt3Foe04b2eNpoSBs0Oim5dUunVf8wMvQ8vk3YU4b5q+a1YpJ\nd47dJN/1a6aSmjgnKnEwqJtYngVD17LzH9NJDkPBX5AMiiYXXCSrxg9x5+z9HgZC\nEj1Hf4KMK6Bp1SCgo9Wb53QjCx7RPY+nRx+R0wnOkIbaECfrWfafnDEMC9AaGFz0\nafgxbYkeC/x4fu33Wip+cF8qaQFSejEDY4C9JliABSMFhp9bPKBJnto4tqb+rJZo\nwiD/Ist8n1u30X12xyNIOZx0BeaP2yfeGmNJ+1ljdwW0cgrtlUaLDLPs6DJm9DWr\n0Eqtrpk0nf11wuzH0W6splQYJK+dQGFe8PlQgvKPk9rER0ZWdKvuFGDdoqf3lX/S\nUHFrTX7rHcJSlqE0hmCJckRKQpHw/d5tZV6cLU9j7SCc4z9yTcdLS+8GvaZjfTmO\n2p35yTaY0dk9BxiA67182BXyRgIXl+DST+HJWxJgq81wmHF906e1P5mZ1Q==\n-----END CERTIFICATE-----','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('13373000000189','certDiasAlerta','empresa','','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('13373000000189','certEmailAlerta','empresa','','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('13373000000189','certPassword','empresa','Tmam@1337','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('13373000000189','certPfxName','empresa','f75616a93cb8b552569e8f435189d4f5.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('13373000000189','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('13373000000189','cnpj','empresa','13373000000189','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('13373000000189','connectWS.password','connectWS','','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('13373000000189','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('13373000000189','conting.detServAut','contingencia','','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('13373000000189','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('13373000000189','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'<br/>&nbsp;&nbsp;Comandos:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- {Q}: Gera uma quebra de linha no texto.',6),('13373000000189','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('13373000000189','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('13373000000189','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('13373000000189','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('13373000000189','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('13373000000189','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('13373000000189','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('13373000000189','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('13373000000189','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('13373000000189','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('13373000000189','envio.mail.smtp.secure','envio','','SMPT SEGURAN??A','1','TEXT','',255,'',11),('13373000000189','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('13373000000189','envio.sendEmail','envio','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('13373000000189','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('13373000000189','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('13373000000189','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('13373000000189','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('13373000000189','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('13373000000189','inboudCTE.imapRefreshToken','inbound.imap.cte','','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('13373000000189','inboudCTE.imapToken','inbound.imap.cte','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('13373000000189','inboudCTE.imapTokenValidAt','inbound.imap.cte','','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('13373000000189','inboudCTE.imapUser','inbound.imap.cte','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('13373000000189','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('13373000000189','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('13373000000189','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('13373000000189','inboudNFS.boxMail','inbound.imap.nfs','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('13373000000189','inboudNFS.imapCertSecurity','inbound.imap.nfs','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('13373000000189','inboudNFS.imapHost','inbound.imap.nfs','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('13373000000189','inboudNFS.imapPassword','inbound.imap.nfs','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('13373000000189','inboudNFS.imapPort','inbound.imap.nfs','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('13373000000189','inboudNFS.imapRefreshToken','inbound.imap.nfs','','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('13373000000189','inboudNFS.imapToken','inbound.imap.nfs','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('13373000000189','inboudNFS.imapTokenValidAt','inbound.imap.nfs','','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('13373000000189','inboudNFS.imapUser','inbound.imap.nfs','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('13373000000189','inboudNFS.moveToBox','inbound.imap.nfs','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('13373000000189','inboudNFS.tpProtocol','inbound.imap.nfs','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('13373000000189','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('13373000000189','inbound.boxMail','inbound.imap','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('13373000000189','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('13373000000189','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('13373000000189','inbound.imapPassword','inbound.imap','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('13373000000189','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('13373000000189','inbound.imapRefreshToken','inbound.imap.cte','','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('13373000000189','inbound.imapToken','inbound.imap.cte','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('13373000000189','inbound.imapTokenValidAt','inbound.imap.cte','','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('13373000000189','inbound.imapUser','inbound.imap','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('13373000000189','inbound.impCTE','inbound.imap.cte','','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('13373000000189','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('13373000000189','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('13373000000189','inbound.impNfeWs','inbound.imap','1','Importar NF-e WS','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e do Webservice',6),('13373000000189','inbound.impNFS','inbound.imap.nfs','','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('13373000000189','inbound.impNFSDeleteEmail','inbound.imap.nfs','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS N??O PODEM SER RECUPERADS)',7),('13373000000189','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('13373000000189','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('13373000000189','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('13373000000189','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('13373000000189','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('13373000000189','pathCertsFiles','empresa','/var/www/dataXML/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('13373000000189','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('13373000000189','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('13373000000189','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('13373000000189','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('13373000000189','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('13373000000189','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('13373000000189','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('13373000000189','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('13373000000189','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('13373000000189','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('13373000000189','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('13373000000189','razaosocial','empresa','TMA MAQUINAS E EQUIPAMENTOS AGRICOLAS LTDA','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('13373000000189','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('13373000000189','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('13373000000189','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('13373000000189','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('13373000000189','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('13373000000189','sefazCnpjCpfAutorizados','nfe','','CPF/CPNJ autorizado','1','TEXT','',255,'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)',1),('13373000000189','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('13373000000189','siglaUF','empresa','SP','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('13373000000189','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('13373000000189','tpAmb','geral','1','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('44000941000109','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('44000941000109','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('44000941000109','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('44000941000109','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('44000941000109','aDocFormat.pathLogoFile','exportacao','/srv/www/htdocs/efit-2.0/public/images/company-logo.jpg','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('44000941000109','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('44000941000109','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('44000941000109','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('44000941000109','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('44000941000109','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('44000941000109','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('44000941000109','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('44000941000109','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('44000941000109','aLayoutEmail.layoutAlertaCertValid','empresa','','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('44000941000109','aLayoutEmail.layoutAutClienteForn','layout.email','Prezado cliente,</br>\n\nVocê está recebendo a Nota Fiscal Eletrônica número {numero}, série {serie} da {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</br></br>\n\nPodemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica é garantida pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, do documento eletrônico, antes da ocorrência do Fato Gerador.</br></br>\n\nOs registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto <a href=\"http://www.nfe.fazenda.gov.br\" alt=\"Site Receita\">(http://www.nfe.fazenda.gov.br)</a>, através da chave de acesso contida no DANFE.</br></br>\n\nO contribuinte destinatário, não emissor de NF-e, poderá utilizar os dados descritos do DANFE para a escrituração da NF-e, e o contribuinte emitente da NF-e realizará a escrituração a partir das NF-e emitidas e recebidas. Em ambos os casos, a validade ficará vinculada à efetiva existência da NF-e nos arquivos das administrações tributárias envolvidas no processo, comprovada através da emissão da Autorização de Uso e consultada pelo destinatário da NF-e. </br></br>\n\nO DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.</br>\nAtt,</br></br>\n\n{emitente}','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('44000941000109','aLayoutEmail.layoutAutTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>A Nota Fiscal Eletrônica (NF-e) de um pedido ao qual você irá transportar foi gerada com sucesso.</p><p>\n</p><p>Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}. Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), que acompanha o trânsito das mercadorias.</p>\n<br><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('44000941000109','aLayoutEmail.layoutCancelClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('44000941000109','aLayoutEmail.layoutCancelTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo o Cancelamento da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('44000941000109','aLayoutEmail.layoutCceClienteForn','layout.email','<p>Prezado (a) {destinatario},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('44000941000109','aLayoutEmail.layoutCceTransport','layout.email','<p>Prezado (a) {transportadora},</p><p>\n</p><p>Você está recebendo a Carta de Correção da Nota Fiscal Eletrônica número {numero}, série {serie} de {emitente}, no valor de R$ {valor}.\n<br></p><p>Atenciosamente,</p><p>{emitente}</p>','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('44000941000109','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('44000941000109','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('44000941000109','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('44000941000109','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('44000941000109','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('44000941000109','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('44000941000109','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('44000941000109','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('44000941000109','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('44000941000109','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('44000941000109','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('44000941000109','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('44000941000109','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('44000941000109','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('44000941000109','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('44000941000109','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('44000941000109','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('44000941000109','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('44000941000109','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('44000941000109','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('44000941000109','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('44000941000109','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('44000941000109','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('44000941000109','CertChain','empresa','','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('44000941000109','certDiasAlerta','empresa','','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('44000941000109','certEmailAlerta','empresa','','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('44000941000109','certPassword','empresa','Haver@2023','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('44000941000109','certPfxName','empresa','ef9ce4a8a04a9c15fcfce758f365c3bd.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('44000941000109','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('44000941000109','cnpj','empresa','44000941000109','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('44000941000109','connectWS.password','connectWS','','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('44000941000109','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('44000941000109','conting.detServAut','contingencia','2','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('44000941000109','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('44000941000109','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'<br/>&nbsp;&nbsp;Comandos:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- {Q}: Gera uma quebra de linha no texto.',6),('44000941000109','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('44000941000109','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('44000941000109','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('44000941000109','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('44000941000109','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('44000941000109','envio.mail.smtp.email','envio','NFeSaida-HBL@haverbrasil.com.br','SMPT EMAIL','1','TEXT','',255,'',11),('44000941000109','envio.mail.smtp.host','envio','10.0.0.8','SMPT HOST','1','TEXT','',255,'',7),('44000941000109','envio.mail.smtp.name','envio','Haver Fiscal','SMPT NAME','1','TEXT','',255,'',11),('44000941000109','envio.mail.smtp.password','envio','h1ckw5An','SMPT PASSWORD','1','TEXT','',255,'',10),('44000941000109','envio.mail.smtp.port','envio','587','SMPT PORT','1','TEXT','',255,'',11),('44000941000109','envio.mail.smtp.secure','envio','tls','SMPT SEGURANÇA','1','TEXT','',255,'',11),('44000941000109','envio.mail.smtp.user','envio','NFeSaida-HBL','SMPT USER','1','TEXT','',255,'',9),('44000941000109','envio.sendEmail','envio','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('44000941000109','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('44000941000109','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('44000941000109','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('44000941000109','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('44000941000109','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('44000941000109','inboudCTE.imapUser','inbound.imap.cte','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('44000941000109','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('44000941000109','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('44000941000109','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('44000941000109','inboudNFS.boxMail','inbound.imap.nfs','INBOX','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('44000941000109','inboudNFS.imapCertSecurity','inbound.imap.nfs','ssl','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('44000941000109','inboudNFS.imapHost','inbound.imap.nfs','10.0.0.5','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('44000941000109','inboudNFS.imapPassword','inbound.imap.nfs','dataaccess','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('44000941000109','inboudNFS.imapPort','inbound.imap.nfs','1677','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('44000941000109','inboudNFS.imapUser','inbound.imap.nfs','nfe','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('44000941000109','inboudNFS.moveToBox','inbound.imap.nfs','{\"1\":\"000-NFE\",\"2\":\"000-CTE\",\"3\":\"000-NFSE\",\"4\":\"000-Lidos\"}','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('44000941000109','inboudNFS.tpProtocol','inbound.imap.nfs','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('44000941000109','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('44000941000109','inbound.boxMail','inbound.imap','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('44000941000109','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('44000941000109','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('44000941000109','inbound.imapPassword','inbound.imap','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('44000941000109','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('44000941000109','inbound.imapUser','inbound.imap','','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('44000941000109','inbound.impCTE','inbound.imap.cte','1','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('44000941000109','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('44000941000109','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('44000941000109','inbound.impNfeWs','inbound.imap','1','Importar NF-e WS','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e do Webservice',6),('44000941000109','inbound.impNFS','inbound.imap.nfs','1','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('44000941000109','inbound.impNFSDeleteEmail','inbound.imap.nfs','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('44000941000109','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('44000941000109','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('44000941000109','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('44000941000109','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('44000941000109','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('44000941000109','pathCertsFiles','empresa','/var/www/dataXML/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('44000941000109','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('44000941000109','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('44000941000109','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('44000941000109','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('44000941000109','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('44000941000109','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('44000941000109','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('44000941000109','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('44000941000109','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('44000941000109','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('44000941000109','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('44000941000109','razaosocial','empresa','HAVER & BOECKER LATINOAMERICANA MAQUINAS LIMITADA','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('44000941000109','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('44000941000109','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('44000941000109','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('44000941000109','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('44000941000109','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('44000941000109','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('44000941000109','siglaUF','empresa','SP','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('44000941000109','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('44000941000109','tpAmb','geral','2','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('76610062002392','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('76610062002392','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('76610062002392','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('76610062002392','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('76610062002392','aDocFormat.pathLogoFile','exportacao','','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('76610062002392','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('76610062002392','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('76610062002392','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('76610062002392','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('76610062002392','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('76610062002392','aExpXml.copiaXmlCTe','exportacao','/var/www/html/xml_ftp/cte/available/','Diretório de Cópia de XML de CT-e','1','TEXT','',255,'',8),('76610062002392','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('76610062002392','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('76610062002392','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('76610062002392','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('76610062002392','aLayoutEmail.layoutAlertaCertValid','empresa','','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('76610062002392','aLayoutEmail.layoutAutAnothers','layout.email','','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('76610062002392','aLayoutEmail.layoutAutClienteForn','layout.email','','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('76610062002392','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('76610062002392','aLayoutEmail.layoutAutTransport','layout.email','','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('76610062002392','aLayoutEmail.layoutCancelClienteForn','layout.email','','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('76610062002392','aLayoutEmail.layoutCancelTransport','layout.email','','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('76610062002392','aLayoutEmail.layoutCceClienteForn','layout.email','','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('76610062002392','aLayoutEmail.layoutCceTransport','layout.email','','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('76610062002392','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('76610062002392','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('76610062002392','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('76610062002392','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('76610062002392','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('76610062002392','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('76610062002392','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('76610062002392','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('76610062002392','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('76610062002392','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('76610062002392','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('76610062002392','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('76610062002392','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('76610062002392','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('76610062002392','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('76610062002392','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('76610062002392','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('76610062002392','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('76610062002392','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('76610062002392','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('76610062002392','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('76610062002392','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('76610062002392','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('76610062002392','boleto.ftp.host','nfe.boleto','','FTP HOST','1','TEXT','',255,'',4),('76610062002392','boleto.ftp.password','nfe.boleto','','FTP PASSWORD','1','TEXT','',255,'',6),('76610062002392','boleto.ftp.user','nfe.boleto','','FTP USER','1','TEXT','',255,'',5),('76610062002392','boleto.layoutEmailBoleto','nfe.boleto','','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('76610062002392','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',255,'',1),('76610062002392','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',255,'',2),('76610062002392','CertChain','empresa','','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('76610062002392','certDiasAlerta','empresa','7','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('76610062002392','certEmailAlerta','empresa','marlon.barbosa@focusit.com.br','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('76610062002392','certPassword','empresa','SW!nCepa@22','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('76610062002392','certPfxName','empresa','e8f03279088bb9c53a34b3f252e492ad.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('76610062002392','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('76610062002392','cnpj','empresa','76610062002392','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('76610062002392','connectWS.password','connectWS','','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('76610062002392','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('76610062002392','conting.detServAut','contingencia','','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('76610062002392','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('76610062002392','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'<br/>&nbsp;&nbsp;Comandos:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- {Q}: Gera uma quebra de linha no texto.',6),('76610062002392','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('76610062002392','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('76610062002392','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('76610062002392','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('76610062002392','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('76610062002392','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('76610062002392','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('76610062002392','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('76610062002392','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('76610062002392','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('76610062002392','envio.mail.smtp.secure','envio','','SMPT SEGURANÇA','1','TEXT','',255,'',11),('76610062002392','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('76610062002392','envio.sendEmail','envio','','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('76610062002392','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('76610062002392','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('76610062002392','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('76610062002392','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('76610062002392','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('76610062002392','inboudCTE.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('76610062002392','inboudCTE.imapToken','inbound.imap.cte','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('76610062002392','inboudCTE.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('76610062002392','inboudCTE.imapUser','inbound.imap.cte','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('76610062002392','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062002392','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062002392','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('76610062002392','inboudNFS.boxMail','inbound.imap.nfs','INBOX','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('76610062002392','inboudNFS.imapCertSecurity','inbound.imap.nfs','ssl','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('76610062002392','inboudNFS.imapHost','inbound.imap.nfs','outlook.office365.com','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('76610062002392','inboudNFS.imapPassword','inbound.imap.nfs','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('76610062002392','inboudNFS.imapPort','inbound.imap.nfs','993','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('76610062002392','inboudNFS.imapRefreshToken','inbound.imap.nfs','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P9xelh57UcthtaS8ZPBmsEXkLqtUxACU9nG7SacHw9VgQsgjXNA5asOuYFbe4qv43pydy1lSrqh6ksfmrzSl-mK8DZy37UlIkh3lnhU-YCDpcTZy5jVUzF1wOZwJzC2UjaVohB3t7OWLsOiE0Aabt35_qSRgpdbQFtJO84LkWU-0qxqNwPdvOiprYx2LqTqCAKRwJZT8Io9x8MDCR8xzo0xaqJSOAbWjfuLZ9vbjlmZiDPCCl-TSzqwUMCWzeiCFeqPWutayLg2FlmPTYwf-xB9v4k0ZoVPFtr9RCpkb5nyAlO4-bwtkcAxnp2u-1J8Ql7iPeu9utRlvnCLavlCAX5QJvQesgUnkRi--XiIxttN3Ju1A5Flg64sOamJqIM1p0Pq2cCdHpwiv8UVIydukbAsq4LlOaaC7RerZ8lpfPIkAwwCGFY2SmpTugqEQLdnUbQs3E0OJZo4noDZUfOVjK1VqpHFnT7jPZ5NHuf-Sp65J5vcDTKkb2-OZZswguxrhU7xki9s5OYxWuNmuSNqtn2nhJi0Q0AqwOiOGeVJwkWw3Ddg-1LOhMj1oTxlZRqWrJVI7vB9xq0dBrto6I17psuks5FOM99XvxsFBuQy7bIuDMuTJDfWXOrF9QTVih4k0KGZwz0VeAO2b0v51e4llbY9-mzC_tVQ2_Ax3Y4nXQC_sV1RlM6POVZ4sbT5V730_OOGrrawpro2RCBDnxfcX6_MMAn3cQYvctA','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('76610062002392','inboudNFS.imapToken','inbound.imap.nfs','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('76610062002392','inboudNFS.imapTokenValidAt','inbound.imap.nfs','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('76610062002392','inboudNFS.imapUser','inbound.imap.nfs','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('76610062002392','inboudNFS.moveToBox','inbound.imap.nfs','{\"1\":\"000-NFE\",\"2\":\"000-CTE\",\"3\":\"000-NFSE\",\"4\":\"000-Lidos\"}','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062002392','inboudNFS.tpProtocol','inbound.imap.nfs','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062002392','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('76610062002392','inbound.boxMail','inbound.imap','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('76610062002392','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('76610062002392','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('76610062002392','inbound.imapPassword','inbound.imap','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('76610062002392','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('76610062002392','inbound.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('76610062002392','inbound.imapToken','inbound.imap.cte','eyJ0eXAiOiJKV1QiLCJub25jZSI6InAtWW4xZk82Y3ZQT2dCOXZQM2lkSXloNl9BYzRQMmxDWFNUN2lVaGRzREkiLCJhbGciOiJSUzI1NiIsIng1dCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyIsImtpZCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NzI5NDE4MzEsIm5iZiI6MTY3Mjk0MTgzMSwiZXhwIjoxNjcyOTQ2NjEzLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiQVRRQXkvOFRBQUFBd0VTdkY0SjFwaTZyZnJ2TE1ObTRtOUU1bFlEQW9iRmxCK0k0akU3MVJjZEZZTVAzeUdmQ09OcnFvcTh6OTdWUSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzMCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIFNNVFAuU2VuZCBVc2VyLlJlYWQiLCJzaWQiOiIyOGU2MjE3Yi0zMmQ0LTQzNGQtYTcyNy05YzI2MzNiOGZiODQiLCJzaWduaW5fc3RhdGUiOlsia21zaSJdLCJzdWIiOiJKQWNNeFZEMi1vZVBHU0s4eFN0anlReXRWSEVJV1pNalJMYzFIeDBiODhVIiwidGlkIjoiM2IwOWI2NmUtZjg4Mi00YjRiLTk4MzAtZWE5ZTg3OWI0Mjg0IiwidW5pcXVlX25hbWUiOiJ4bWxAcm95YWxmaWMuY29tLmJyIiwidXBuIjoieG1sQHJveWFsZmljLmNvbS5iciIsInV0aSI6IlpMSHY1cDRfc0U2Um0zWmtJMHZPQWciLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbImI3OWZiZjRkLTNlZjktNDY4OS04MTQzLTc2YjE5NGU4NTUwOSJdfQ.rJ-ylmazBAYhXZtl3GpdNU-tWmpl2Kwzz5WN69VzXfJkW91V7C4bWxVEGkASFMApUq-0AdIixo1nDyAR-Zg0L_Ga8wbTTHRN-gUQCRBQVA5HndpW1GYxN5g-Czaa5-QqUYwulYUBGiK4EvWqFOmwiekObJlYEW74eliRLUJ5kJ_0-VmJwu5bTr6Y66ztDuqdBPMhELbkZOfIIjNuLAeEDrtfjFGb0c9UF_dEnkfkXX6nsQkODHtfFXlKyr_4fIwdheRzm6AllvDOQjhwMaQauOrskmzIkEdBt_GI7uVSfh5SBjkyk9FgMR9KlmbZ84BKZ-dNFh3YyNnStd7h9PMx1w','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('76610062002392','inbound.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('76610062002392','inbound.imapUser','inbound.imap','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('76610062002392','inbound.impCTE','inbound.imap.cte','1','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('76610062002392','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('76610062002392','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('76610062002392','inbound.impNfeWs','inbound.imap','1','Importar NF-e WS','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e do Webservice',6),('76610062002392','inbound.impNFS','inbound.imap.nfs','1','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('76610062002392','inbound.impNFSDeleteEmail','inbound.imap.nfs','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('76610062002392','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062002392','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062002392','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('76610062002392','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('76610062002392','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('76610062002392','pathCertsFiles','empresa','/var/www/html/efit/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('76610062002392','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('76610062002392','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('76610062002392','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('76610062002392','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('76610062002392','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('76610062002392','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('76610062002392','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('76610062002392','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('76610062002392','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('76610062002392','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('76610062002392','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('76610062002392','razaosocial','empresa','Incepa Revestimentos Ceramicos LTDA','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('76610062002392','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('76610062002392','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('76610062002392','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('76610062002392','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('76610062002392','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('76610062002392','sefazCnpjCpfAutorizados','nfe','','CPF/CPNJ autorizado','1','TEXT','',255,'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)',1),('76610062002392','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('76610062002392','siglaUF','empresa','PR','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('76610062002392','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('76610062002392','tpAmb','geral','1','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1),('76610062003950','aDocFormat.font','exportacao','Times','Doc. Fonte','1','SELECT','Times[=]Times new Roman',150,'Tipo de Fonta da DANFE',1),('76610062003950','aDocFormat.format','exportacao','P','Doc. Formato','1','SELECT','P[=]Retrato[|]L[=]Paisagem',255,'Formato da impressão da DANFE',2),('76610062003950','aDocFormat.logoPosition','exportacao','L','Doc. Posição','1','SELECT','L[=]Esquerda[|]C[=]Centro[|]R[=]Direita',255,'Posição do Logo na DANFE',3),('76610062003950','aDocFormat.paper','exportacao','A4','Doc. Tipo de Papel','1','SELECT','A4[=]A4',255,'',4),('76610062003950','aDocFormat.pathLogoFile','exportacao','','Doc. Logo','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE',5),('76610062003950','aDocFormat.pathLogoFileSimple','exportacao','','Doc. Logo Danfe Simples','1','TEXT','',255,'Diretório do Arquivo de Logo da DANFE Simples',5),('76610062003950','aDocFormat.printAutNfe','exportacao','0','Imprimir Notas Autorizadas','1','SELECT','0[=]Não[|]1[=]Sim',255,'Efetuar Impressão da NF-e quando for autorizada',7),('76610062003950','aDocFormat.printer','exportacao','','Doc. Impressora','1','TEXT','',255,'Nome da Impressora',6),('76610062003950','aDocFormat.printerIP','exportacao','','IP Impressora','1','TEXT','',255,'Nome da Impressora',7),('76610062003950','aDocFormat.southpaw','exportacao','1','','0','TEXT','',255,'',7),('76610062003950','aExpXml.copiaXmlCTe','exportacao','/var/www/html/xml_ftp/cte/available/','Diretório de Cópia de XML de CT-e','1','TEXT','',255,'',8),('76610062003950','aExpXml.copiaXmlNfe','exportacao','','Diretório de Cópia de XML da NF-e','1','TEXT','',255,'',8),('76610062003950','aExpXml.copiaXmlNfeCanc','exportacao','','Diretório de Cópia de XML da NF-e (Cancelada)','1','TEXT','',255,'',8),('76610062003950','aExpXml.copiaXmlNfeDeneg','exportacao','','Diretório de Cópia de XML da NF-e (Denegada)','1','TEXT','',255,'',8),('76610062003950','aExpXml.copiaXmlNfeInut','exportacao','','Diretório de Cópia de XML da NF-e (Inutilizada)','1','TEXT','',255,'',8),('76610062003950','aLayoutEmail.layoutAlertaCertValid','empresa','','Layout de Alerta do Certificado','1','HTMLPOPUP','',255,'Layout de Email de Alertas da validação do Certificado',9),('76610062003950','aLayoutEmail.layoutAutAnothers','layout.email','','Layout de Autorização (Outros)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para outras partes',3),('76610062003950','aLayoutEmail.layoutAutClienteForn','layout.email','','Layout de Autorização (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor',1),('76610062003950','aLayoutEmail.layoutAutClienteFornNfeRefuse','layout.email','','Layout de Autorização (link de recusa de nfe)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa',3),('76610062003950','aLayoutEmail.layoutAutTransport','layout.email','','Layout de Autorização (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Autorização para Transportadora',2),('76610062003950','aLayoutEmail.layoutCancelClienteForn','layout.email','','Layout de Cancelamento (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Cliente ou Fornecedor',3),('76610062003950','aLayoutEmail.layoutCancelTransport','layout.email','','Layout de Cancelamento (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Cancelamento para Transportadora',4),('76610062003950','aLayoutEmail.layoutCceClienteForn','layout.email','','Layout da CC-e (Cliente/Fornecedor)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Cliente ou Fornecedor',5),('76610062003950','aLayoutEmail.layoutCceTransport','layout.email','','Layout da CC-e (Transportadora)','1','HTMLPOPUP','',255,'Layout de Email de Carta de Correção para Transportadora',6),('76610062003950','alertaNfeRejeitadaEmail','geral','','Email para envio de alerta de notas','1','TEXT','',255,'Endereço de email para onde será enviada uma lista de notas.',4),('76610062003950','alertaNfeRejeitadaStatus','geral','','Status das notas para envio de alerta.','1','CHECK','ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo',255,'Status das notas a serem eviadas por email.',5),('76610062003950','aMailConf.mailAuth','mail','1','Mail Auth.','0','SELECT','1[=]Sim[|]0[=]Não',255,'Utilizar email autenticado?',0),('76610062003950','aMailConf.mailFrom','mail','','Mail De','0','TEXT','',255,'Conta de Email',0),('76610062003950','aMailConf.mailFromMail','mail','','Mail From mail','0','TEXT','',300,'Email do remetente',0),('76610062003950','aMailConf.mailFromName','mail','','Mail From name','0','TEXT','',300,'Nome do remetente',0),('76610062003950','aMailConf.mailImapBox','mail','','Mail Map BOX','0','TEXT','',255,'',0),('76610062003950','aMailConf.mailImapHost','mail','','Mail Map Host','0','TEXT','',255,'',0),('76610062003950','aMailConf.mailImapNocerts','mail','','Mail Map Nocerts','0','TEXT','',255,'',0),('76610062003950','aMailConf.mailImapPort','mail','','Mail Map Port','0','TEXT','',255,'',0),('76610062003950','aMailConf.mailImapSecurity','mail','','Mail Map Security','0','TEXT','',255,'',0),('76610062003950','aMailConf.mailPass','mail','','Mail Password','0','PASSWORD','',255,'Senha da Conta de Email',0),('76610062003950','aMailConf.mailPort','mail','','Mail Porta','0','TEXT','',255,'Porta SMTP',0),('76610062003950','aMailConf.mailProtocol','mail','','Mail Protocolo','0','TEXT','',255,'',0),('76610062003950','aMailConf.mailReplayToMail','mail','','Mail Replay to Mail','0','TEXT','',255,'',0),('76610062003950','aMailConf.mailReplayToName','mail','','Mail Replay To Name','0','TEXT','',255,'',0),('76610062003950','aMailConf.mailSmtp','mail','','Mail SMTP','0','TEXT','',255,'',0),('76610062003950','aMailConf.mailUser','mail','','Mail User','0','TEXT','',255,'',0),('76610062003950','aProxyConf.proxyIp','rede','','Proxy IP','1','TEXT','',255,'Ip do Servidor Proxy',1),('76610062003950','aProxyConf.proxyPass','rede','','Proxy Password','1','PASSWORD','',255,'Senha do Servidor Proxy',4),('76610062003950','aProxyConf.proxyPort','rede','','Proxy Port','1','TEXT','',255,'Porta do Servidor Proxy',2),('76610062003950','aProxyConf.proxyUser','rede','','Proxy User','1','TEXT','',255,'Usuário do Servidor Proxy',3),('76610062003950','atualizacao','geral','','Data da Atualização da Configuração','0','','',0,'',0),('76610062003950','boleto.ftp.host','nfe.boleto','','FTP HOST','1','TEXT','',255,'',4),('76610062003950','boleto.ftp.password','nfe.boleto','','FTP PASSWORD','1','TEXT','',255,'',6),('76610062003950','boleto.ftp.user','nfe.boleto','','FTP USER','1','TEXT','',255,'',5),('76610062003950','boleto.layoutEmailBoleto','nfe.boleto','','Layout de email envio boleto','1','HTMLPOPUP','',255,'Layout de email envio boleto',3),('76610062003950','boleto.sendEmail','nfe.boleto','1','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',255,'',1),('76610062003950','boleto.sendFTP','nfe.boleto','1','Envio de boleto para FTP','1','SELECT','1[=]Sim[|]0[=]Não',255,'',2),('76610062003950','CertChain','empresa','','Cadeia de certificado','1','TEXTAREA','',255,'Cadeia de certificado',11),('76610062003950','certDiasAlerta','empresa','','Dias para envio de alerta do Certificado','1','TEXT','',15,'Quantidade de dias para alerta do vencimento do certificado.',8),('76610062003950','certEmailAlerta','empresa','','Emails para envio de alerta do Certificado','1','TEXT','',15,'Emails para alerta do vencimento do certificado.',8),('76610062003950','certPassword','empresa','SW!nCepa@22','Senha Certificado','1','PASSWORD','',255,'Senha do Certificado Digital',5),('76610062003950','certPfxName','empresa','e8f03279088bb9c53a34b3f252e492ad.pfx','Certificado','1','TEXT','',255,'Nome do Arquivo do Certificado digital (.pfx)',3),('76610062003950','certPhrase','empresa','','Phrase Certificado','1','TEXT','',255,'Phrase chave do Certificado Digital',6),('76610062003950','cnpj','empresa','76610062003950','CNPJ','1','TEXT','',255,'CNPJ da Empresa',1),('76610062003950','connectWS.password','connectWS','','Senha','1','PASSWORD','',255,'Senha de login no webservice',2),('76610062003950','connectWS.user','connectWS','','Usuário','1','TEXT','',255,'Usuário de login no webservice',1),('76610062003950','conting.detServAut','contingencia','','Determinação dos Servidores das Autoridades','1','SELECT','1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado',455,'Determinação dos Servidores das Autoridades',6),('76610062003950','conting.tipoConting','contingencia','','Tipo de Contingência','1','SELECT','SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul',255,'Tipo de Webservice na Contingência',6),('76610062003950','customDanfe.infComp','customizacao.danfe','','Informações Complementares','1','TEXTAREA','',0,'Informações complementares na tag \'infCpl\'<br/>&nbsp;&nbsp;Comandos:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- {Q}: Gera uma quebra de linha no texto.',6),('76610062003950','customDanfe.permInfAdicItem','customizacao.danfe','1','Permitir informações Adicionais do Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição das informações Adicionais do item no DANFE',7),('76610062003950','customDanfe.permPartilhaItem','customizacao.danfe','1','Permitir dados da Partilha ICMS no Item','1','SELECT','0[=]Não[|]1[=]Sim',255,'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)',6),('76610062003950','emailEmitente','empresa','','Email do Emitente no Cabeçalho do Danfe','1','TEXT','',255,'Email do Emitente no Cabeçalho do Danfe',9),('76610062003950','envio.copiaDanfe','envio','','Envio do Danfe com Cópia','1','TEXT','',255,'Email com Cópia no envio do DANFE e XML',6),('76610062003950','envio.mail.smtp.auth','envio','1','SMPT AUTH','1','SELECT','1[=]Sim[|]0[=]Não',255,'',8),('76610062003950','envio.mail.smtp.email','envio','','SMPT EMAIL','1','TEXT','',255,'',11),('76610062003950','envio.mail.smtp.host','envio','','SMPT HOST','1','TEXT','',255,'',7),('76610062003950','envio.mail.smtp.name','envio','','SMPT NAME','1','TEXT','',255,'',11),('76610062003950','envio.mail.smtp.password','envio','','SMPT PASSWORD','1','TEXT','',255,'',10),('76610062003950','envio.mail.smtp.port','envio','','SMPT PORT','1','TEXT','',255,'',11),('76610062003950','envio.mail.smtp.secure','envio','','SMPT SEGURANÇA','1','TEXT','',255,'',11),('76610062003950','envio.mail.smtp.user','envio','','SMPT USER','1','TEXT','',255,'',9),('76610062003950','envio.sendEmail','envio','','Envio de email para o cliente','1','SELECT','1[=]Sim[|]0[=]Não',100,'Envio de email para cliente',3),('76610062003950','inboudCTE.boxMail','inbound.imap.cte','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('76610062003950','inboudCTE.imapCertSecurity','inbound.imap.cte','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('76610062003950','inboudCTE.imapHost','inbound.imap.cte','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('76610062003950','inboudCTE.imapPassword','inbound.imap.cte','','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('76610062003950','inboudCTE.imapPort','inbound.imap.cte','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('76610062003950','inboudCTE.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('76610062003950','inboudCTE.imapToken','inbound.imap.cte','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('76610062003950','inboudCTE.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('76610062003950','inboudCTE.imapUser','inbound.imap.cte','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('76610062003950','inboudCTE.moveToBox','inbound.imap.cte','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062003950','inboudCTE.tpProtocol','inbound.imap.cte','','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062003950','inboudCTE.tpServer','inbound.imap.cte','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('76610062003950','inboudNFS.boxMail','inbound.imap.nfs','INBOX','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('76610062003950','inboudNFS.imapCertSecurity','inbound.imap.nfs','ssl','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('76610062003950','inboudNFS.imapHost','inbound.imap.nfs','outlook.office365.com','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('76610062003950','inboudNFS.imapPassword','inbound.imap.nfs','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('76610062003950','inboudNFS.imapPort','inbound.imap.nfs','993','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('76610062003950','inboudNFS.imapRefreshToken','inbound.imap.nfs','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P9xelh57UcthtaS8ZPBmsEXkLqtUxACU9nG7SacHw9VgQsgjXNA5asOuYFbe4qv43pydy1lSrqh6ksfmrzSl-mK8DZy37UlIkh3lnhU-YCDpcTZy5jVUzF1wOZwJzC2UjaVohB3t7OWLsOiE0Aabt35_qSRgpdbQFtJO84LkWU-0qxqNwPdvOiprYx2LqTqCAKRwJZT8Io9x8MDCR8xzo0xaqJSOAbWjfuLZ9vbjlmZiDPCCl-TSzqwUMCWzeiCFeqPWutayLg2FlmPTYwf-xB9v4k0ZoVPFtr9RCpkb5nyAlO4-bwtkcAxnp2u-1J8Ql7iPeu9utRlvnCLavlCAX5QJvQesgUnkRi--XiIxttN3Ju1A5Flg64sOamJqIM1p0Pq2cCdHpwiv8UVIydukbAsq4LlOaaC7RerZ8lpfPIkAwwCGFY2SmpTugqEQLdnUbQs3E0OJZo4noDZUfOVjK1VqpHFnT7jPZ5NHuf-Sp65J5vcDTKkb2-OZZswguxrhU7xki9s5OYxWuNmuSNqtn2nhJi0Q0AqwOiOGeVJwkWw3Ddg-1LOhMj1oTxlZRqWrJVI7vB9xq0dBrto6I17psuks5FOM99XvxsFBuQy7bIuDMuTJDfWXOrF9QTVih4k0KGZwz0VeAO2b0v51e4llbY9-mzC_tVQ2_Ax3Y4nXQC_sV1RlM6POVZ4sbT5V730_OOGrrawpro2RCBDnxfcX6_MMAn3cQYvctA','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('76610062003950','inboudNFS.imapToken','inbound.imap.nfs','','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('76610062003950','inboudNFS.imapTokenValidAt','inbound.imap.nfs','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('76610062003950','inboudNFS.imapUser','inbound.imap.nfs','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('76610062003950','inboudNFS.moveToBox','inbound.imap.nfs','{\"1\":\"000-NFE\",\"2\":\"000-CTE\",\"3\":\"000-NFSE\",\"4\":\"000-Lidos\"}','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062003950','inboudNFS.tpProtocol','inbound.imap.nfs','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062003950','inboudNFS.tpServer','inbound.imap.nfs','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('76610062003950','inbound.boxMail','inbound.imap','','IMAP Box Default ','1','TEXT','',255,'Caixa Principal do Servidor IMAP',6),('76610062003950','inbound.imapCertSecurity','inbound.imap','','IMAP Certificate Security','1','TEXT','',255,'Certificado de Segurança do Servidor IMAP',5),('76610062003950','inbound.imapHost','inbound.imap','','IMAP Host','1','TEXT','',255,'Host do Servidor IMAP',1),('76610062003950','inbound.imapPassword','inbound.imap','Royalfic@2021fic','IMAP Password','1','PASSWORD','',255,'Senha do Servidor IMAP',4),('76610062003950','inbound.imapPort','inbound.imap','','IMAP Port','1','TEXT','',255,'Porta do Servidor IMAP',2),('76610062003950','inbound.imapRefreshToken','inbound.imap.cte','0.AQoAbrYJO4L4S0uYMOqeh5tChI-nP6mdsZ1Gng0uxdKCJ4EKAAE.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_6qpiSJ7lg9hGb9aGPTRzxExbh-2kfFtoudmYWALh_M9kbVNDJ_UsL04btxzV4-F2pZgvuSkwgNhAVX6CuS247XcEWSiRNGnmhImJsFDCUb2jsWg1j98MlpLWSU1PH0D0FYeu0lY3YNKhnP5MZJEPGK5CnHTZOtCUpfAw1IaazqnD26QqXbyEYgXUHkcZ8QkT-HY3ZGLMSHmH2vzGiSj5vowCy3oPENR1RTyoK75SGoKVRz69Qdz8sgdaBcPOux6T6vNXKyEOqOwQQqg9MgtJ7O-11lhCViriXFbi1O5oU4o8ETfSTrFutgS3nlxyzqP68Aiws10A49QEnuWqDZqslw_Rfl9i0oyXqcdysEAgDtlD6AbYCs8g0_z1Np5WHSiWEJ0Qo2qhXyef9inbwQTfdFIIlkDPL6HZMC6LmCxEA5Xtv9tkNwEqeR8WqTDLmVR04IcbpxMNM5JOX-Yi-AoOaSnIqGv9Yt0lF_W8t4ZJpLdrziOyE_RyKhSWN-H_rT8k7NxA_XtMhlXUibNzayds_aJJ9Pxf9n2cwU-uBVZGnO5RADiF-dVjZmXZrObFnxXlOxFsPGmX11SQ9SUD29KDby_-W1RFVXberFbdaX6aNHzoLD8E1c4pJmRgMd2VN3vUxe1ODYIslFIqWtnIuZPfr5ote4uIVY5iaWz-L7rjUGAyyk8M8OxeL9_Y-acbe23gguDzdo184dDvuCMKgwW00xlvXGlr7DKJeFqWlm8NPwtutYg4','IMAP Refresh Token','1','TEXT','',255,'Refresh Token Auth 2.0',8),('76610062003950','inbound.imapToken','inbound.imap.cte','eyJ0eXAiOiJKV1QiLCJub25jZSI6InAtWW4xZk82Y3ZQT2dCOXZQM2lkSXloNl9BYzRQMmxDWFNUN2lVaGRzREkiLCJhbGciOiJSUzI1NiIsIng1dCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyIsImtpZCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyJ9.eyJhdWQiOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzNiMDliNjZlLWY4ODItNGI0Yi05ODMwLWVhOWU4NzliNDI4NC8iLCJpYXQiOjE2NzI5NDE4MzEsIm5iZiI6MTY3Mjk0MTgzMSwiZXhwIjoxNjcyOTQ2NjEzLCJhY2N0IjowLCJhY3IiOiIxIiwiYWlvIjoiQVRRQXkvOFRBQUFBd0VTdkY0SjFwaTZyZnJ2TE1ObTRtOUU1bFlEQW9iRmxCK0k0akU3MVJjZEZZTVAzeUdmQ09OcnFvcTh6OTdWUSIsImFtciI6WyJwd2QiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZWZpdCIsImFwcGlkIjoiYTkzZmE3OGYtYjE5ZC00NjlkLTllMGQtMmVjNWQyODIyNzgxIiwiYXBwaWRhY3IiOiIxIiwiZW5mcG9saWRzIjpbXSwiZmFtaWx5X25hbWUiOiJFbnRyYWRhIiwiZ2l2ZW5fbmFtZSI6IlhNTCIsImlwYWRkciI6IjEzOC4yNTUuMTExLjEzMCIsIm5hbWUiOiJ4bWwiLCJvaWQiOiI0ZTgzNDhiYi05NzJmLTRjZDAtYmQ1ZC1mZTExZWQwYjU3MmIiLCJvbnByZW1fc2lkIjoiUy0xLTUtMjEtMzM5MzE5MzUzMC0xMzQ3OTIyNTQ0LTEwNTAwOTk2MDUtMTU2NDQiLCJwdWlkIjoiMTAwMzAwMDBBRjZBMkM1RCIsInJoIjoiMC5BUW9BYnJZSk80TDRTMHVZTU9xZWg1dENoQUlBQUFBQUFQRVB6Z0FBQUFBQUFBQUtBQUUuIiwic2NwIjoiSU1BUC5BY2Nlc3NBc1VzZXIuQWxsIFNNVFAuU2VuZCBVc2VyLlJlYWQiLCJzaWQiOiIyOGU2MjE3Yi0zMmQ0LTQzNGQtYTcyNy05YzI2MzNiOGZiODQiLCJzaWduaW5fc3RhdGUiOlsia21zaSJdLCJzdWIiOiJKQWNNeFZEMi1vZVBHU0s4eFN0anlReXRWSEVJV1pNalJMYzFIeDBiODhVIiwidGlkIjoiM2IwOWI2NmUtZjg4Mi00YjRiLTk4MzAtZWE5ZTg3OWI0Mjg0IiwidW5pcXVlX25hbWUiOiJ4bWxAcm95YWxmaWMuY29tLmJyIiwidXBuIjoieG1sQHJveWFsZmljLmNvbS5iciIsInV0aSI6IlpMSHY1cDRfc0U2Um0zWmtJMHZPQWciLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbImI3OWZiZjRkLTNlZjktNDY4OS04MTQzLTc2YjE5NGU4NTUwOSJdfQ.rJ-ylmazBAYhXZtl3GpdNU-tWmpl2Kwzz5WN69VzXfJkW91V7C4bWxVEGkASFMApUq-0AdIixo1nDyAR-Zg0L_Ga8wbTTHRN-gUQCRBQVA5HndpW1GYxN5g-Czaa5-QqUYwulYUBGiK4EvWqFOmwiekObJlYEW74eliRLUJ5kJ_0-VmJwu5bTr6Y66ztDuqdBPMhELbkZOfIIjNuLAeEDrtfjFGb0c9UF_dEnkfkXX6nsQkODHtfFXlKyr_4fIwdheRzm6AllvDOQjhwMaQauOrskmzIkEdBt_GI7uVSfh5SBjkyk9FgMR9KlmbZ84BKZ-dNFh3YyNnStd7h9PMx1w','IMAP Token','1','TEXT','',255,'Token Auth 2.0',7),('76610062003950','inbound.imapTokenValidAt','inbound.imap.cte','2023-01-05 16:23:32','IMAP Token data validade','0','TEXT','',255,'Data Validade Token Auth 2.0',9),('76610062003950','inbound.imapUser','inbound.imap','xml@royalfic.com.br','IMAP User','1','TEXT','',255,'Usuário do Servidor IMAP',3),('76610062003950','inbound.impCTE','inbound.imap.cte','1','Importar CT-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar CT-e da caixa de Email',6),('76610062003950','inbound.impCTEDeleteEmail','inbound.imap.cte','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('76610062003950','inbound.impNFEDeleteEmail','inbound.imap','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('76610062003950','inbound.impNfeWs','inbound.imap','1','Importar NF-e WS','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NF-e do Webservice',6),('76610062003950','inbound.impNFS','inbound.imap.nfs','1','Importar NFS-e','1','SELECT','0[=]Não[|]1[=]Sim',255,'Importar NFS-e da caixa de Email',6),('76610062003950','inbound.impNFSDeleteEmail','inbound.imap.nfs','','Deletar emails após a leitura','1','SELECT','0[=]Não[|]1[=]Sim',255,'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)',7),('76610062003950','inbound.moveToBox','inbound.imap','','Mover para a Caixa','1','TEXT','',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062003950','inbound.tpProtocol','inbound.imap','imap','Tipo de Protocolo','1','SELECT','pop[=]POP3[|]imap[=]IMAP',255,'Mover emails lidos para outra caixa. (Vazio não move)',6),('76610062003950','inbound.tpServer','inbound.imap','','Tipo de Servidor','1','SELECT','0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite',255,'Tipo do Servidor de Email',6),('76610062003950','intervaloConsultaNfe','geral','5','Intervalo de Consulta das NFes (Minutos)','1','TEXT','',255,'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso',3),('76610062003950','outForceConsChv','geral','0','Sempre Consultar NF-e pela Chave','1','SELECT','0[=]Não[|]1[=]Sim',255,'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz',6),('76610062003950','pathCertsFiles','empresa','/var/www/html/efit/api/nfephp/certs/','Diretorio do Certificado','1','TEXT','',255,'Diretório do arquivo do Certificado Digital',4),('76610062003950','pathCLeFiles','cle','','Diretorio de Cle','0','TEXT','',255,'',1),('76610062003950','pathCTeFiles','cte','','Diretorio de CTE','0','TEXT','',255,'',1),('76610062003950','pathMDFeFiles','mdfe','','Diretorio de MDFe','0','TEXT','',255,'',1),('76610062003950','pathNFeFiles','nfe','','Diretorio de NFE','1','TEXT','',255,'Diretorio de armazenamento da NFe',1),('76610062003950','pathNFSeFiles','nfse','','Diretorio de NFSE','0','TEXT','',255,'',1),('76610062003950','pathXmlUrlFileCLe','geral','cle_ws1.xml','XML do Modelo de Cle','0','TEXT','',255,'',1),('76610062003950','pathXmlUrlFileCTe','geral','cte_ws1.xml','XML do Modelo de Cte','0','TEXT','',255,'',1),('76610062003950','pathXmlUrlFileMDFe','geral','mdfe_ws1.xml','XML do Modelo de MDFe','0','TEXT','',255,'',1),('76610062003950','pathXmlUrlFileNFe','geral','nfe_ws3_mod55.xml','XML do Modelo de Nfe','1','TEXT','',255,'Configuração do XML do Modeloo da NFe',3),('76610062003950','pathXmlUrlFileNFSe','geral','','XML do Modelo de NFSe','0','TEXT','',255,'',1),('76610062003950','pendErpContador','geral','5','Contador de Atualização Automatica ERP','1','TEXT','',255,'',1),('76610062003950','razaosocial','empresa','Incepa Mogi Guaçu','Razao Social','1','TEXT','',255,'Razão Social da Empresa',2),('76610062003950','schemesCLe','cle','CLe_100','Schema de CLE','0','TEXT','',255,'',1),('76610062003950','schemesCTe','cte','PL_CTE_104','Schema de CTE','0','TEXT','',255,'',1),('76610062003950','schemesMDFe','mdfe','MDFe_100','Schema de MDFE','0','TEXT','',255,'',1),('76610062003950','schemesNFe','nfe','PL_008i2','Schema de NFE','1','TEXT','',255,'Schema de Validação da NF-e',1),('76610062003950','schemesNFSe','nfse','','Schema de NFSE','0','TEXT','',255,'',1),('76610062003950','sefazCnpjCpfAutorizados','nfe','','CPF/CPNJ autorizado','1','TEXT','',255,'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)',1),('76610062003950','sefazStatusDays','nfe','','Quantidade de dias','1','TEXT','',255,'Quantidade de dias do historico de status sefaz',1),('76610062003950','siglaUF','empresa','SP','Estado (UF)','1','TEXT','',255,'Sigla da UF da Empresa',7),('76610062003950','siteUrl','geral','','URL do Sistema','1','TEXT','',255,'URL do Sistema da API',2),('76610062003950','tpAmb','geral','1','Tipo de Ambiente','1','SELECT','1[=]Produção[|]2[=]Homologação',255,'Tipo de Ambiente dos Webservices',1);
/*!40000 ALTER TABLE `fe_sytb_sefazwsconf_swco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_sefazwsconf_swco_honda`
--

DROP TABLE IF EXISTS `fe_sytb_sefazwsconf_swco_honda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_sefazwsconf_swco_honda` (
  `swco_cnpj` char(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `swco_key` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `swco_grupo` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `swco_descr` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_visible` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_tipo` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_options` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `swco_size` int DEFAULT NULL,
  `swco_obs` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `swco_ordem` int DEFAULT NULL,
  PRIMARY KEY (`swco_cnpj`,`swco_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_sefazwsconf_swco_honda`
--

LOCK TABLES `fe_sytb_sefazwsconf_swco_honda` WRITE;
/*!40000 ALTER TABLE `fe_sytb_sefazwsconf_swco_honda` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sytb_sefazwsconf_swco_honda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sytb_sefazwsconfby_group_swgr`
--

DROP TABLE IF EXISTS `fe_sytb_sefazwsconfby_group_swgr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sytb_sefazwsconfby_group_swgr` (
  `id_grus_cd_grupouser` bigint NOT NULL,
  `swgr_key` char(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `swgr_group` char(60) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `swgr_value` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `swgr_descr` char(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `swgr_visible` char(1) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `swgr_tipo` char(10) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `swgr_options` char(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `swgr_size` int DEFAULT '1',
  `swgr_obs` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `swgr_ordem` int DEFAULT '0',
  PRIMARY KEY (`id_grus_cd_grupouser`,`swgr_key`),
  KEY `fe_sytb_sefazwsconfby_group_swgr_id_grus_cd_grupouser_index` (`id_grus_cd_grupouser`),
  KEY `fe_sytb_sefazwsconfby_group_swgr_swgr_key_index` (`swgr_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sytb_sefazwsconfby_group_swgr`
--

LOCK TABLES `fe_sytb_sefazwsconfby_group_swgr` WRITE;
/*!40000 ALTER TABLE `fe_sytb_sefazwsconfby_group_swgr` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sytb_sefazwsconfby_group_swgr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icms`
--

DROP TABLE IF EXISTS `icms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icms` (
  `icms_id` varchar(50) NOT NULL,
  `nitem` varchar(50) NOT NULL,
  `vbcstret` varchar(50) DEFAULT NULL,
  `vicmsstret` varchar(50) DEFAULT NULL,
  `cst` varchar(50) DEFAULT NULL,
  `vbcstdest` varchar(50) DEFAULT NULL,
  `orig` varchar(50) DEFAULT NULL,
  `vicmsstdest` varchar(50) DEFAULT NULL,
  `vbc` varchar(50) DEFAULT NULL,
  `picms` varchar(50) DEFAULT NULL,
  `vicms` varchar(50) DEFAULT NULL,
  `predbc` varchar(50) DEFAULT NULL,
  `vicmsdeson` varchar(50) DEFAULT NULL,
  `modbc` varchar(50) DEFAULT NULL,
  `motdesicms` varchar(50) DEFAULT NULL,
  `modbcst` varchar(50) DEFAULT NULL,
  `pmvast` varchar(50) DEFAULT NULL,
  `predbcst` varchar(50) DEFAULT NULL,
  `vbcst` varchar(50) DEFAULT NULL,
  `picmsst` varchar(50) DEFAULT NULL,
  `vicmsst` varchar(50) DEFAULT NULL,
  `vicmsop` varchar(50) DEFAULT NULL,
  `pdif` varchar(50) DEFAULT NULL,
  `vicmsdif` varchar(50) DEFAULT NULL,
  `pbcop` varchar(50) DEFAULT NULL,
  `ufst` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`icms_id`,`nitem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icms`
--

LOCK TABLES `icms` WRITE;
/*!40000 ALTER TABLE `icms` DISABLE KEYS */;
/*!40000 ALTER TABLE `icms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipi`
--

DROP TABLE IF EXISTS `ipi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipi` (
  `ipi_id` varchar(100) NOT NULL,
  `nitem` varchar(50) NOT NULL,
  `qunid` varchar(100) DEFAULT NULL,
  `cst` varchar(100) DEFAULT NULL,
  `vunid` varchar(100) DEFAULT NULL,
  `pipi` varchar(100) DEFAULT NULL,
  `vipi` varchar(100) DEFAULT NULL,
  `vbc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ipi_id`,`nitem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipi`
--

LOCK TABLES `ipi` WRITE;
/*!40000 ALTER TABLE `ipi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_02_16_144208_create_failed_jobs_table',1),(2,'2018_03_16_152801_add_index_tables_outnfe',1),(3,'2018_03_16_185042_add_autoincrment_fe_ngtb_innfexml_dup',1),(4,'2018_03_19_194708_create_jobs_table',1),(5,'2018_03_28_105419_changeConfInboundNfe',1),(6,'2018_05_17_134914_addMsgSefaz',1),(7,'2018_05_17_161156_create_table_reinf_event',1),(8,'2018_05_23_171114_add_column_NSU_nfe_inbound',1),(9,'2018_05_30_153352_add_column_retry_nfe',1),(10,'2018_06_06_073541_create_table_reinf_history',1),(11,'2018_06_22_134103_alter_table_gnre',1),(12,'2018_06_25_181745_create_table_gnre',1),(13,'2018_06_27_101227_alter_table_reinf',1),(14,'2018_06_29_111617_add_index_outbound',1),(15,'2018_07_20_143512_newTableConsultaSefazStatus',2),(16,'2018_07_23_083247_create_table_contigencia',2),(17,'2018_07_26_144629_create_table_template_report',2),(18,'2018_09_26_135420_add_column_docnum_gnre',3),(19,'2018_10_01_164724_addColumGNRENumeroDeControle',3),(20,'2018_10_19_171146_add_column_cte_emit',3),(21,'2018_10_21_133109_add_index_cte',3),(22,'2018_10_22_160110_add_index_nfeout_docNum',3),(23,'2018_10_23_132926_create_table_nfeout_header',3),(24,'2018_10_23_160726_create_table_nfeout_item',3),(25,'2018_10_23_175318_create_table_nfeout_imposto',3),(26,'2018_10_24_110139_add_columns_nxmlnfe_is_nfesaved',3),(27,'2018_10_31_154909_cteate_table_ctein_header',3),(28,'2018_11_05_153610_add_column_cte_is_saved',3),(29,'2018_11_09_115624_add_column_gnre_type_operacao',3),(30,'2018_11_12_171146_add_column_gnre_juros_e_multa',3),(31,'2018_11_20_221801_delete_permission',4),(32,'2018_11_28_170217_create_table_fe_ngtb_ctrlconsultaservico_mdfe',4),(33,'2018_11_29_103744_create_tables_mdfe',4),(34,'2018_12_11_175921_create_table_consulta_mdfe_sefaz',4),(35,'2018_12_12_153719_add_columns_mdfe_encerrado',4),(36,'2019_01_15_173759_create_table_fc_ngtb_eventidl',5),(37,'2019_01_16_142703_add_index_fe_ngtb_nfexml_nxml',5),(38,'2019_01_22_121726_add_column_cte_imp',5),(39,'2019_01_23_145603_add_column_table_eventidl_evid_centro',5),(40,'2019_02_12_164512_add_index_innxnfeevent',5),(41,'2019_02_26_133114_alter_table_inned_email',5),(42,'2019_03_07_151038_add_column_campanha_eventidl',5),(43,'2019_03_18_200120_create_tables_epec',5),(44,'2019_04_18_231441_create_table_inemprnfssp_ienf',5),(45,'2019_04_24_112834_add_column_nfe_menssagem_de_interesse',5),(46,'2019_06_24_113140_population_permission',5),(47,'2019_09_04_133342_add_indexs_status',5),(48,'2019_09_06_160720_add_column_innxevent',5),(49,'2019_09_11_163327_create_table_nfs',5),(50,'2019_09_18_140319_create_table_date_cont',5),(51,'2019_09_21_130310_create_table_aux',48),(52,'2019_10_24_100432_create_table_darf',49),(53,'2019_12_08_185007_add_column_nfexml',50),(54,'2019_12_15_162649_add_permission_input_nfs',51),(55,'2019_12_26_141237_add_coluns_nfse',51),(56,'2020_01_06_145119_update_fe_ngtb_nfsexml_nfml',52),(57,'2020_01_06_142522_index_nfe_contigencia',53),(58,'2020_03_05_114836_add_permission_config_code',53),(59,'2020_03_06_142556_create_table_email_code_sefaz',53),(60,'2020_03_06_155749_create_fe_sytb_certified_table',53),(61,'2020_03_10_173208_create_table_email_company',53),(62,'2020_07_09_180049_create_column_nfeout_eventdest',54),(63,'2020_07_16_101722_add_permision_button_download_reort',55),(66,'2020_07_20_111523_create_table_boleto_nfe',56),(67,'2020_10_26_093600_add_column_gnre_transp',57),(68,'2020_10_30_175934_grnre_change_gnrg_numcontrole',57),(69,'2020_12_18_134123_create_table__c_f_o_p_to_refuse_nfe',57),(70,'2020_12_18_170527_add_column_nfe_email_anothers',57),(71,'2020_12_21_150302_create_table_nfe_refuse',57),(72,'2020_12_28_084127_add_column_nfe_refuse',58),(73,'2021_01_28_142113_create_table_iens_arquivei',59),(74,'2021_02_10_141324_add_column_nferefused',59),(75,'2021_02_17_084059_add_permission_page_bi_research',59),(76,'2021_02_19_144105_create_permission__c_f_o_p_denied_printer',60),(77,'2021_02_25_143615_create_table_sefaz_conf_by_user_group',60),(78,'2021_05_11_224628_add_permission_bt_event_saida',61),(79,'2021_07_01_165819_add_column_cte',61),(80,'2021_08_06_152403_add_permission_event_dest',61),(81,'2021_11_09_150552_create_email_history',61),(82,'2021_11_09_150701_create_email_dest_list',61),(83,'2021_11_09_150736_add_permission_email_events',61),(84,'2021_11_09_150756_alter_table_user_login_length',61),(85,'2021_11_09_150817_alter_table_config_email_limiter',61),(86,'2021_11_10_101300_alter_table_custom_user_management',61),(87,'2021_11_10_145300_add_permission_admin_sac',61),(88,'2022_02_23_124509_add_column_gnre_atualizacao_monetaria',61),(89,'2022_03_10_123812_add_coluns_inbound_nfe_event_dest',62),(90,'2022_04_04_084644_add_data_fe_sytb_permission_perm',62),(91,'2022_04_19_103625_create_table_events_frete_fy',62),(92,'2022_04_25_221321_add_column_nxml_nfe',62),(93,'2022_05_11_224908_add_column_fe_ngtb_empresa_empr',62),(94,'2022_06_15_144220_add_configs_onergy',62),(95,'2022_06_13_101555_add_column_uf_destiny',63),(96,'2022_06_13_142943_add_column_nxml_cfop',63),(97,'2022_07_04_112655_add_column_innfe_cfop',63),(98,'2022_07_04_112827_add_column_innfe_ufdestiny',63),(99,'2022_12_13_160736_add_column_nxml_uf',63),(101,'2023_01_18_002211_create_table_orders_any_market',64),(102,'2023_05_19_101015_add_columun_nfs_inbound',65),(106,'2023_09_10_195845_add_column_reinf_protocolo',66),(107,'2024_01_18_101836_add_column_innfse',67),(108,'2024_01_24_154107_alter_column_innfse',67),(109,'2024_02_20_222115_create_table_gko_dnes_files',68);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nfe`
--

DROP TABLE IF EXISTS `nfe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nfe` (
  `nfe_id` varchar(100) NOT NULL,
  `id` varchar(100) DEFAULT NULL,
  `versao` varchar(50) DEFAULT NULL,
  `infadfisco` text,
  `infcpl` text,
  `dest_cnpj` varchar(50) DEFAULT NULL,
  `dest_email` varchar(255) DEFAULT NULL,
  `dest_indiedest` varchar(50) DEFAULT NULL,
  `dest_idestrang` varchar(50) DEFAULT NULL,
  `dest_ie` varchar(50) DEFAULT NULL,
  `dest_cpf` varchar(20) DEFAULT NULL,
  `dest_isuf` varchar(50) DEFAULT NULL,
  `dest_xnome` varchar(100) DEFAULT NULL,
  `dest_im` varchar(50) DEFAULT NULL,
  `dest_xnum` varchar(50) DEFAULT NULL,
  `dest_xlgr` varchar(100) DEFAULT NULL,
  `dest_uf` varchar(50) DEFAULT NULL,
  `dest_xcpl` varchar(100) DEFAULT NULL,
  `dest_cep` varchar(50) DEFAULT NULL,
  `dest_cmun` varchar(50) DEFAULT NULL,
  `dest_cpais` varchar(50) DEFAULT NULL,
  `dest_xbairro` varchar(100) DEFAULT NULL,
  `dest_xpais` varchar(50) DEFAULT NULL,
  `dest_nro` varchar(50) DEFAULT NULL,
  `dest_fone` varchar(50) DEFAULT NULL,
  `retirada_xcpl` varchar(100) DEFAULT NULL,
  `retirada_cnpj` varchar(50) DEFAULT NULL,
  `retirada_xbairro` varchar(50) DEFAULT NULL,
  `retirada_xlgr` varchar(100) DEFAULT NULL,
  `retirada_cmun` varchar(50) DEFAULT NULL,
  `retirada_cpf` varchar(50) DEFAULT NULL,
  `retirada_xmun` varchar(50) DEFAULT NULL,
  `retirada_nro` varchar(50) DEFAULT NULL,
  `retirada_uf` varchar(50) DEFAULT NULL,
  `total_issqn_dcompet` varchar(50) DEFAULT NULL,
  `total_issqn_vdeducao` varchar(50) DEFAULT NULL,
  `total_issqn_vbc` varchar(50) DEFAULT NULL,
  `total_issqn_voutro` varchar(50) DEFAULT NULL,
  `total_issqn_vpis` varchar(50) DEFAULT NULL,
  `total_issqn_vdescincond` varchar(50) DEFAULT NULL,
  `total_issqn_vserv` varchar(50) DEFAULT NULL,
  `total_issqn_vdesccond` varchar(50) DEFAULT NULL,
  `total_issqn_vcofins` varchar(50) DEFAULT NULL,
  `total_issqn_vissret` varchar(50) DEFAULT NULL,
  `total_issqn_viss` varchar(50) DEFAULT NULL,
  `total_issqn_cregtrib` varchar(50) DEFAULT NULL,
  `total_icms_vfrete` varchar(50) DEFAULT NULL,
  `total_icms_vbc` varchar(50) DEFAULT NULL,
  `total_icms_vseg` varchar(50) DEFAULT NULL,
  `total_icms_vicmsdeson` varchar(50) DEFAULT NULL,
  `total_icms_vdesc` varchar(50) DEFAULT NULL,
  `total_icms_vicmsufdest` varchar(50) DEFAULT NULL,
  `total_icms_vii` varchar(50) DEFAULT NULL,
  `total_icms_vbcst` varchar(50) DEFAULT NULL,
  `total_icms_vipi` varchar(50) DEFAULT NULL,
  `total_icms_vprod` varchar(50) DEFAULT NULL,
  `total_icms_pis` varchar(50) DEFAULT NULL,
  `total_icms_vfcufdest` varchar(50) DEFAULT NULL,
  `total_icms_vcofins` varchar(50) DEFAULT NULL,
  `total_icms_vst` varchar(50) DEFAULT NULL,
  `total_icms_voutro` varchar(50) DEFAULT NULL,
  `total_icms_vicmsufremet` varchar(50) DEFAULT NULL,
  `total_icms_vnf` varchar(50) DEFAULT NULL,
  `total_icms_vicms` varchar(50) DEFAULT NULL,
  `total_icms_vtotrib` varchar(50) DEFAULT NULL,
  `total_rettrib_vbcirrf` varchar(50) DEFAULT NULL,
  `total_rettrib_vretpis` varchar(50) DEFAULT NULL,
  `total_rettrib_virrf` varchar(50) DEFAULT NULL,
  `total_rettrib_vretsll` varchar(50) DEFAULT NULL,
  `total_rettrib_vbcretprev` varchar(50) DEFAULT NULL,
  `total_rettrib_vretcofins` varchar(50) DEFAULT NULL,
  `total_rettrib_vretprev` varchar(50) DEFAULT NULL,
  `emit_cnpj` varchar(50) DEFAULT NULL,
  `emit_crt` varchar(50) DEFAULT NULL,
  `emit_ie` varchar(50) DEFAULT NULL,
  `emit_xnome` varchar(100) DEFAULT NULL,
  `emit_iest` varchar(50) DEFAULT NULL,
  `emit_cpf` varchar(50) DEFAULT NULL,
  `emit_im` varchar(50) DEFAULT NULL,
  `emit_xfant` varchar(100) DEFAULT NULL,
  `emit_cnae` varchar(50) DEFAULT NULL,
  `emit_xmun` varchar(50) DEFAULT NULL,
  `emit_xlgr` varchar(100) DEFAULT NULL,
  `emit_uf` varchar(50) DEFAULT NULL,
  `emit_xcpl` varchar(100) DEFAULT NULL,
  `emit_cep` varchar(50) DEFAULT NULL,
  `emit_cmun` varchar(50) DEFAULT NULL,
  `emit_cpais` varchar(50) DEFAULT NULL,
  `emit_xbairro` varchar(100) DEFAULT NULL,
  `emit_xpais` varchar(50) DEFAULT NULL,
  `emit_nro` varchar(50) DEFAULT NULL,
  `emit_fone` varchar(50) DEFAULT NULL,
  `cmunfg` varchar(50) DEFAULT NULL,
  `tpimp` varchar(50) DEFAULT NULL,
  `cnf` varchar(50) DEFAULT NULL,
  `tpemis` varchar(50) DEFAULT NULL,
  `indpag` varchar(50) DEFAULT NULL,
  `cdv` varchar(50) DEFAULT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `tpamb` varchar(50) DEFAULT NULL,
  `dhemi` varchar(50) DEFAULT NULL,
  `finnfe` varchar(50) DEFAULT NULL,
  `tpnf` varchar(50) DEFAULT NULL,
  `indfinal` varchar(50) DEFAULT NULL,
  `cuf` varchar(50) DEFAULT NULL,
  `indpres` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `procemi` varchar(50) DEFAULT NULL,
  `dhsaient` varchar(50) DEFAULT NULL,
  `verproc` varchar(50) DEFAULT NULL,
  `natop` varchar(255) DEFAULT NULL,
  `dhcont` varchar(50) DEFAULT NULL,
  `iddest` varchar(50) DEFAULT NULL,
  `xjust` varchar(100) DEFAULT NULL,
  `nnf` varchar(50) DEFAULT NULL,
  `entrega_xcpl` varchar(100) DEFAULT NULL,
  `entrega_cnpj` varchar(50) DEFAULT NULL,
  `entrega_xbairro` varchar(100) DEFAULT NULL,
  `entrega_xlgr` varchar(100) DEFAULT NULL,
  `entrega_cmun` varchar(50) DEFAULT NULL,
  `entrega_cpf` varchar(50) DEFAULT NULL,
  `entrega_xmun` varchar(50) DEFAULT NULL,
  `entrega_nro` varchar(50) DEFAULT NULL,
  `entrega_uf` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nfe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nfe`
--

LOCK TABLES `nfe` WRITE;
/*!40000 ALTER TABLE `nfe` DISABLE KEYS */;
/*!40000 ALTER TABLE `nfe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nfref`
--

DROP TABLE IF EXISTS `nfref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nfref` (
  `nfref_id` varchar(100) NOT NULL,
  `refnfe` varchar(100) DEFAULT NULL,
  `refcte` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nfref_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nfref`
--

LOCK TABLES `nfref` WRITE;
/*!40000 ALTER TABLE `nfref` DISABLE KEYS */;
/*!40000 ALTER TABLE `nfref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pis`
--

DROP TABLE IF EXISTS `pis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pis` (
  `pis_id` varchar(100) NOT NULL,
  `nitem` varchar(50) NOT NULL,
  `vbc` varchar(100) DEFAULT NULL,
  `ppis` varchar(100) DEFAULT NULL,
  `cst` varchar(100) DEFAULT NULL,
  `vpis` varchar(100) DEFAULT NULL,
  `qbcprod` varchar(100) DEFAULT NULL,
  `valiqprod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pis_id`,`nitem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pis`
--

LOCK TABLES `pis` WRITE;
/*!40000 ALTER TABLE `pis` DISABLE KEYS */;
/*!40000 ALTER TABLE `pis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rec_evento`
--

DROP TABLE IF EXISTS `rec_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rec_evento` (
  `id_evento` varchar(100) NOT NULL,
  `statusnfe` varchar(100) DEFAULT NULL,
  `ultimaatualizacao` varchar(100) DEFAULT NULL,
  `chavenfe` varchar(100) DEFAULT NULL,
  `xmlprotocolo` varchar(100) DEFAULT NULL,
  `env_status` varchar(100) DEFAULT NULL,
  `nprot` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_evento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rec_evento`
--

LOCK TABLES `rec_evento` WRITE;
/*!40000 ALTER TABLE `rec_evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `rec_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_table_sqtb`
--

DROP TABLE IF EXISTS `sequence_table_sqtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence_table_sqtb` (
  `table_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `key_seq` int unsigned NOT NULL,
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_table_sqtb`
--

LOCK TABLES `sequence_table_sqtb` WRITE;
/*!40000 ALTER TABLE `sequence_table_sqtb` DISABLE KEYS */;
INSERT INTO `sequence_table_sqtb` VALUES ('fe_cdtb_groupuser_grus',9),('fe_cdtb_user_user',6),('fe_ngtb_empresa_empr',4);
/*!40000 ALTER TABLE `sequence_table_sqtb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vs_ngtb_nftracking_nftr`
--

DROP TABLE IF EXISTS `vs_ngtb_nftracking_nftr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vs_ngtb_nftracking_nftr` (
  `nftr_chvnfe` char(44) NOT NULL,
  `nftr_cpf_cnpj_remetente` varchar(18) DEFAULT NULL,
  `nftr_nota` varchar(12) DEFAULT NULL,
  `nftr_serie_nota` varchar(5) DEFAULT NULL,
  `nftr_data_postagem` varchar(8) DEFAULT NULL,
  `nftr_nome_unidade_postadora` varchar(50) DEFAULT NULL,
  `nftr_remetente` varchar(50) DEFAULT NULL,
  `nftr_codigo_remetente_cliente` varchar(20) DEFAULT NULL,
  `nftr_valor_tarifado` varchar(12) DEFAULT NULL,
  `nftr_prazo_entrega` varchar(3) DEFAULT NULL,
  `nftr_entrega_domiciliaria` varchar(1) DEFAULT NULL,
  `nftr_entrega_aos_sabados` varchar(1) DEFAULT NULL,
  `nftr_consistencia_prazo` varchar(1) DEFAULT NULL,
  `nftr_data_evento` varchar(8) DEFAULT NULL,
  `nftr_tipo_evento` varchar(4) DEFAULT NULL,
  `nftr_codigo_evento` varchar(3) DEFAULT NULL,
  `nftr_tipo_evento_pers` varchar(4) DEFAULT NULL,
  `nftr_codigo_evento_pers` varchar(3) DEFAULT NULL,
  `nftr_descricao_evento` varchar(90) DEFAULT NULL,
  `nftr_status_do_objeto` varchar(3) DEFAULT NULL,
  `nftr_data_entrega` varchar(8) DEFAULT NULL,
  `nftr_nome_unidade_entrega` varchar(50) DEFAULT NULL,
  `nftr_cep_unidade_entrega` varchar(8) DEFAULT NULL,
  `nftr_arquivo_origem` varchar(50) DEFAULT NULL,
  `nftr_numero_plp` varchar(12) DEFAULT NULL,
  `nftr_destinatario` varchar(50) DEFAULT NULL,
  `nftr_endereco` varchar(90) DEFAULT NULL,
  `nftr_numero` varchar(15) DEFAULT NULL,
  `nftr_complemento` varchar(50) DEFAULT NULL,
  `nftr_bairro` varchar(50) DEFAULT NULL,
  `nftr_cidade` varchar(90) DEFAULT NULL,
  `nftr_uf` varchar(2) DEFAULT NULL,
  `nftr_cep` varchar(40) DEFAULT NULL,
  `nftr_telefone` varchar(20) DEFAULT NULL,
  `nftr_financeiro` varchar(10) DEFAULT NULL,
  `nftr_registro` varchar(13) DEFAULT NULL,
  `nftr_peso` varchar(6) DEFAULT NULL,
  `nftr_altura` varchar(5) DEFAULT NULL,
  `nftr_largura` varchar(5) DEFAULT NULL,
  `nftr_comprimento` varchar(5) DEFAULT NULL,
  `nftr_cubico` varchar(6) DEFAULT NULL,
  `nftr_declarado` decimal(17,2) DEFAULT NULL,
  `nftr_valor_cobrar` decimal(17,2) DEFAULT NULL,
  `nftr_adicionais` varchar(18) DEFAULT NULL,
  `nftr_contrato` varchar(11) DEFAULT NULL,
  `nftr_administrativo` varchar(11) DEFAULT NULL,
  `nftr_cartao` varchar(11) DEFAULT NULL,
  `nftr_email` varchar(100) DEFAULT NULL,
  `nftr_observacao_1` varchar(100) DEFAULT NULL,
  `nftr_observacao_2` varchar(100) DEFAULT NULL,
  `nftr_observacao_3` varchar(100) DEFAULT NULL,
  `nftr_des_objeto` varchar(50) DEFAULT NULL,
  `nftr_id_do_volume` varchar(4) DEFAULT NULL,
  `nftr_qtd_de_volumes` varchar(4) DEFAULT NULL,
  `nftr_cod_cliente_visual` varchar(9) DEFAULT NULL,
  `nftr_telefone_celular` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nftr_chvnfe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vs_ngtb_nftracking_nftr`
--

LOCK TABLES `vs_ngtb_nftracking_nftr` WRITE;
/*!40000 ALTER TABLE `vs_ngtb_nftracking_nftr` DISABLE KEYS */;
/*!40000 ALTER TABLE `vs_ngtb_nftracking_nftr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vt_ngtb_ctrlconsultaorder_ccor`
--

DROP TABLE IF EXISTS `vt_ngtb_ctrlconsultaorder_ccor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vt_ngtb_ctrlconsultaorder_ccor` (
  `orde_orderId` char(50) NOT NULL,
  `ccor_dh_consulta` datetime DEFAULT NULL,
  `ccor_return64` text,
  PRIMARY KEY (`orde_orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vt_ngtb_ctrlconsultaorder_ccor`
--

LOCK TABLES `vt_ngtb_ctrlconsultaorder_ccor` WRITE;
/*!40000 ALTER TABLE `vt_ngtb_ctrlconsultaorder_ccor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vt_ngtb_ctrlconsultaorder_ccor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vt_ngtb_invoicesent_inse`
--

DROP TABLE IF EXISTS `vt_ngtb_invoicesent_inse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vt_ngtb_invoicesent_inse` (
  `orde_orderId` char(50) NOT NULL,
  `inse_invoiceId` char(50) NOT NULL,
  `inse_type` varchar(20) DEFAULT NULL,
  `inse_invoiceNumber` int NOT NULL,
  `inse_invoiceKey` char(44) DEFAULT NULL,
  `inse_courier` varchar(60) DEFAULT NULL,
  `inse_trackingNumber` varchar(50) DEFAULT NULL,
  `inse_trackingUrl` varchar(100) DEFAULT NULL,
  `inse_issuanceDate` date DEFAULT NULL,
  `inse_invoiceValue` decimal(15,2) DEFAULT NULL,
  `inse_rec_date` date DEFAULT NULL,
  `inse_rec_receipt` char(30) DEFAULT NULL,
  PRIMARY KEY (`orde_orderId`,`inse_invoiceNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vt_ngtb_invoicesent_inse`
--

LOCK TABLES `vt_ngtb_invoicesent_inse` WRITE;
/*!40000 ALTER TABLE `vt_ngtb_invoicesent_inse` DISABLE KEYS */;
/*!40000 ALTER TABLE `vt_ngtb_invoicesent_inse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vt_ngtb_order_orde`
--

DROP TABLE IF EXISTS `vt_ngtb_order_orde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vt_ngtb_order_orde` (
  `orde_orderId` char(50) NOT NULL,
  `orde_sequence` char(15) DEFAULT NULL,
  `orde_marketplaceOrderId` varchar(30) DEFAULT NULL,
  `orde_marketplaceServicesEndpoint` varchar(100) DEFAULT NULL,
  `orde_sellerOrderId` varchar(30) DEFAULT NULL,
  `orde_origin` varchar(20) DEFAULT NULL,
  `orde_affiliateId` varchar(30) DEFAULT NULL,
  `orde_salesChannel` varchar(30) DEFAULT NULL,
  `orde_merchantName` varchar(60) DEFAULT NULL,
  `orde_status` char(40) DEFAULT NULL,
  `orde_statusDescription` varchar(80) DEFAULT NULL,
  `orde_value` decimal(17,2) DEFAULT NULL,
  `orde_creationDate` datetime DEFAULT NULL,
  `orde_lastChange` datetime DEFAULT NULL,
  `orde_orderGroup` varchar(30) DEFAULT NULL,
  `orde_totals_Items` decimal(15,2) DEFAULT NULL,
  `orde_totals_Discounts` decimal(15,2) DEFAULT NULL,
  `orde_totals_Shipping` decimal(15,2) DEFAULT NULL,
  `orde_totals_Tax` decimal(15,2) DEFAULT NULL,
  `orde_giftRegistryData` varchar(50) DEFAULT NULL,
  `orde_marketingData` varchar(50) DEFAULT NULL,
  `orde_callCenterOperatorData` varchar(50) DEFAULT NULL,
  `orde_followUpEmail` varchar(100) DEFAULT NULL,
  `orde_lastMessage` text,
  `orde_hostname` varchar(60) DEFAULT NULL,
  `orde_changesAttachment` varchar(255) DEFAULT NULL,
  `orde_openTextField` varchar(255) DEFAULT NULL,
  `orde_roundingError` varchar(20) DEFAULT NULL,
  `orde_orderFormId` varchar(40) DEFAULT NULL,
  `orde_efit_empr` bigint DEFAULT NULL,
  `orde_efit_imp` datetime DEFAULT NULL,
  `orde_efit_status` char(20) DEFAULT NULL,
  PRIMARY KEY (`orde_orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vt_ngtb_order_orde`
--

LOCK TABLES `vt_ngtb_order_orde` WRITE;
/*!40000 ALTER TABLE `vt_ngtb_order_orde` DISABLE KEYS */;
/*!40000 ALTER TABLE `vt_ngtb_order_orde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vt_ngtb_orderclient_orcl`
--

DROP TABLE IF EXISTS `vt_ngtb_orderclient_orcl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vt_ngtb_orderclient_orcl` (
  `orde_orderId` char(50) NOT NULL,
  `orcl_id` char(50) NOT NULL,
  `orcl_email` varchar(100) DEFAULT NULL,
  `orcl_firstName` varchar(50) DEFAULT NULL,
  `orcl_lastName` varchar(50) DEFAULT NULL,
  `orcl_documentType` char(10) DEFAULT NULL,
  `orcl_document` varchar(30) DEFAULT NULL,
  `orcl_phone` varchar(30) DEFAULT NULL,
  `orcl_corporateName` varchar(60) DEFAULT NULL,
  `orcl_tradeName` varchar(60) DEFAULT NULL,
  `orcl_corporateDocument` varchar(60) DEFAULT NULL,
  `orcl_stateInscription` varchar(40) DEFAULT NULL,
  `orcl_corporatePhone` varchar(30) DEFAULT NULL,
  `orcl_userProfileId` varchar(30) DEFAULT NULL,
  `orcl_addr_addressType` varchar(50) DEFAULT NULL,
  `orcl_addr_receiverName` varchar(100) DEFAULT NULL,
  `orcl_addr_addressId` varchar(40) DEFAULT NULL,
  `orcl_addr_postalCode` char(20) DEFAULT NULL,
  `orcl_addr_city` varchar(60) DEFAULT NULL,
  `orcl_addr_state` char(10) DEFAULT NULL,
  `orcl_addr_country` varchar(30) DEFAULT NULL,
  `orcl_addr_street` varchar(100) DEFAULT NULL,
  `orcl_addr_number` varchar(30) DEFAULT NULL,
  `orcl_addr_neighborhood` varchar(60) DEFAULT NULL,
  `orcl_addr_complement` varchar(255) DEFAULT NULL,
  `orcl_addr_reference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orde_orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vt_ngtb_orderclient_orcl`
--

LOCK TABLES `vt_ngtb_orderclient_orcl` WRITE;
/*!40000 ALTER TABLE `vt_ngtb_orderclient_orcl` DISABLE KEYS */;
/*!40000 ALTER TABLE `vt_ngtb_orderclient_orcl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vt_ngtb_orderhist_ordh`
--

DROP TABLE IF EXISTS `vt_ngtb_orderhist_ordh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vt_ngtb_orderhist_ordh` (
  `id_ordh_cd_orderhist` bigint NOT NULL,
  `orde_orderId` char(50) DEFAULT NULL,
  `ordh_dh_reg` datetime DEFAULT NULL,
  `ordh_evento` char(18) DEFAULT NULL,
  `ordh_msg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_ordh_cd_orderhist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vt_ngtb_orderhist_ordh`
--

LOCK TABLES `vt_ngtb_orderhist_ordh` WRITE;
/*!40000 ALTER TABLE `vt_ngtb_orderhist_ordh` DISABLE KEYS */;
/*!40000 ALTER TABLE `vt_ngtb_orderhist_ordh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vt_ngtb_orderitem_orit`
--

DROP TABLE IF EXISTS `vt_ngtb_orderitem_orit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vt_ngtb_orderitem_orit` (
  `orde_orderId` char(50) NOT NULL,
  `orit_seqitem` int NOT NULL,
  `orit_id` char(30) NOT NULL,
  `orit_productId` char(30) DEFAULT NULL,
  `orit_ean` char(20) DEFAULT NULL,
  `orit_uniqueId` char(50) NOT NULL,
  `orit_lockId` char(40) DEFAULT NULL,
  `orit_quantity` decimal(15,2) DEFAULT NULL,
  `orit_seller` char(10) DEFAULT NULL,
  `orit_name` varchar(60) DEFAULT NULL,
  `orit_refId` char(30) DEFAULT NULL,
  `orit_price` decimal(15,2) DEFAULT NULL,
  `orit_listPrice` decimal(15,2) DEFAULT NULL,
  `orit_manualPrice` decimal(15,2) DEFAULT NULL,
  `orit_imageUrl` varchar(255) DEFAULT NULL,
  `orit_detailUrl` varchar(255) DEFAULT NULL,
  `orit_sellerSku` varchar(30) DEFAULT NULL,
  `orit_priceValidUntil` varchar(255) DEFAULT NULL,
  `orit_commission` decimal(15,2) DEFAULT NULL,
  `orit_tax` varchar(20) DEFAULT NULL,
  `orit_preSaleDate` varchar(100) DEFAULT NULL,
  `orit_measurementUnit` varchar(20) DEFAULT NULL,
  `orit_unitMultiplier` varchar(20) DEFAULT NULL,
  `orit_sellingPrice` decimal(15,2) DEFAULT NULL,
  `orit_isGift` char(10) DEFAULT NULL,
  `orit_shippingPrice` decimal(15,2) DEFAULT NULL,
  `orit_addinfo_brandName` varchar(100) DEFAULT NULL,
  `orit_addinfo_brandId` varchar(100) DEFAULT NULL,
  `orit_addinfo_categoriesIds` varchar(100) DEFAULT NULL,
  `orit_addinfo_productClusterId` varchar(100) DEFAULT NULL,
  `orit_addinfo_commercialConditionId` varchar(100) DEFAULT NULL,
  `orit_addinfo_offeringInfo` varchar(100) DEFAULT NULL,
  `orit_addinfo_offeringType` varchar(100) DEFAULT NULL,
  `orit_addinfo_offeringTypeId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orde_orderId`,`orit_seqitem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vt_ngtb_orderitem_orit`
--

LOCK TABLES `vt_ngtb_orderitem_orit` WRITE;
/*!40000 ALTER TABLE `vt_ngtb_orderitem_orit` DISABLE KEYS */;
/*!40000 ALTER TABLE `vt_ngtb_orderitem_orit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vt_ngtb_orderjson_orjs`
--

DROP TABLE IF EXISTS `vt_ngtb_orderjson_orjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vt_ngtb_orderjson_orjs` (
  `orde_orderId` char(50) NOT NULL,
  `orjs_json64` text NOT NULL,
  PRIMARY KEY (`orde_orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vt_ngtb_orderjson_orjs`
--

LOCK TABLES `vt_ngtb_orderjson_orjs` WRITE;
/*!40000 ALTER TABLE `vt_ngtb_orderjson_orjs` DISABLE KEYS */;
/*!40000 ALTER TABLE `vt_ngtb_orderjson_orjs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-04 23:08:00
