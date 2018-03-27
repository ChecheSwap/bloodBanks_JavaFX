CREATE DATABASE  IF NOT EXISTS `bloodbanks` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bloodbanks`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: bloodbanks
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banco_sangre`
--

DROP TABLE IF EXISTS `banco_sangre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco_sangre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha_creacion` varchar(45) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco_sangre`
--

LOCK TABLES `banco_sangre` WRITE;
/*!40000 ALTER TABLE `banco_sangre` DISABLE KEYS */;
INSERT INTO `banco_sangre` VALUES (1,'BANCO UACH LOCAL','2018-01-01','MARTE',7,'CENTRO','CHIHUAHUA','CHIHUAHUA','MEXICO');
/*!40000 ALTER TABLE `banco_sangre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donaciones`
--

DROP TABLE IF EXISTS `donaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `detalles` varchar(45) DEFAULT NULL,
  `comentarios` varchar(45) DEFAULT NULL,
  `id_donador` int(11) NOT NULL,
  `idbancosangre` int(11) NOT NULL,
  `id_usuario_alta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_donaciones_donadores1_idx` (`id_donador`),
  KEY `fk_donaciones_banco_sangre1_idx` (`idbancosangre`),
  KEY `fk_donaciones_users1_idx` (`id_usuario_alta`),
  CONSTRAINT `fk_donaciones_banco_sangre1` FOREIGN KEY (`idbancosangre`) REFERENCES `banco_sangre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_donaciones_donadores1` FOREIGN KEY (`id_donador`) REFERENCES `donadores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_donaciones_users1` FOREIGN KEY (`id_usuario_alta`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donaciones`
--

LOCK TABLES `donaciones` WRITE;
/*!40000 ALTER TABLE `donaciones` DISABLE KEYS */;
INSERT INTO `donaciones` VALUES (17,'2018-03-26','A+','Ninguno',122,1,1),(18,'2018-03-26','B-','Ninguno',123,1,1),(19,'2018-03-26','A+','Ninguno',124,1,1),(20,'2018-03-26','b-','Ninguno',122,1,1);
/*!40000 ALTER TABLE `donaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donadores`
--

DROP TABLE IF EXISTS `donadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeross` varchar(45) NOT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `imagen` longblob,
  `numero` int(11) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `detalles` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_UNIQUE` (`numeross`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donadores`
--

LOCK TABLES `donadores` WRITE;
/*!40000 ALTER TABLE `donadores` DISABLE KEYS */;
INSERT INTO `donadores` VALUES (122,'301429','Masculino','1997-04-30','Jesus Jose','Navarrete Baca','6271137795','ÿ\Øÿ\Û\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿ\Û\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0€€\"\0\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0\0?\0ö,qšLT¤SvñRY\ïôQEBÈ¬>`ª\íd›‹!(}]\ÛM#Ú€\n(¢³Œ3G\Ç\ß\Ô\Ñ(\ï•>üV‰ZcÄ®0T\Z\0(¢Š©¿ŞŠF³•%}ª?.Xşò\îúPET\á³F\ïZ®$\0\àœCO\r@QSšPx\æ¡A\æœ[´\0QE \äÑš`<õ¥É ¢Š)\Ù4qšM\ŞÂŒô(¢Šw¥\'zL\Ñ\Ô\Z\0(¢ŠQisŠnisLŠ(£¦M~™ô4€(¢ŠZ=\é:óš_óÖ€(¢Š:\Ñ\Í\0óÚ’€\n(¢—¥¨¤\ÇZ\0(¢Š\\úQŸ|RqKÚ˜QG­Qš\0(¢Š))q\ïAú\ĞERgŠ>¸£¥\0QE´º\Ò\ĞERRşT¨\Í\0QEsøQ\Í\Í\0QE ú\ZSM–H­ i®e\Ş 2d•‚\Ì\×/ñ\Â\Zx\ÃkQ\ÜMÿ\0<\í£2\Ìq@Q]U «\Î.~0\è¨XZiw·$t2J‘ƒúšÄ¸øÇ«\ÈA´\Ñm\"OújL‡ôaE„QE{\Ó\è*ƒ^~.øŒZ\Æ\Ø\"G\ç¸Õ…øµ¯¨\Ü\Öúe\È\Ç\"8™Oş…ı)€QE\ì\ã\ïGÖ¼Š\×\âä¥€¸´š\èq\"È§ğ`¤~u³iñId—l\Úl/i\"Ÿcş\ëqúÒ°Q^‹õ£¯&±4¿\èú™,\ío1ÿ\0–W´ş¡ü\ëp‚½A(¢Š1\éIƒNÔ f€\n(¢›ƒivñN”/µ\0¢Š*=¹§\ÍJ«\íOT\Çj\0(¢Š‡\ÊÈ¤\äô«¨µ2F=¨\0¢Š+\ê&Š H\ã5ET\Èx®‡S‡6.Àt \ÖE­¼“0T\\\ç­CQE,0e°9c[Vº`P\ZnO¥X³²[e\ÏWõ«bš@QE5@Q€0aO¢Š \n(¢Š(¢€\n(¢Š(¢€\n(¢™$K*\á†j²C\Ğ\ï_NõfŠ\0(¢ŠŠ9Uú}*Z‰\âV\äp}E fN‘\ê(\0¢Š*j)¥-\0QE„R\Ñ@QL+\ÅFA©\é¥h\0¢Š+;o\Ó¨©\È\âšE!\Ü(¢Š®Wšn:ñVHÏ½4\Æ(QE[\ÜU‚µ\\R\0¢Š*SJ÷\æ¦+M+@ÂŠ(ª²Â0Ëš­Š‚Qˆö=*ùù¦•ôQEgşõŞ™ºóB\ÊÁô5x­D\Ğ$ƒ\æP\n\0(¢Š„5(luı)¦Ù‡ú·#\Ø\Ôle\ï!>\â‚BŠ(«\0\ç¥(&«,\ÊÇ¨Ï¥HQR\äf* zsNÏ®h\0¢Š)ù\Å¦u\Í(4À(¢Šw\é}©\íFh\0¢Š)h™£4À(¢ŠZ3I)G­\0QE½\r£4\0QEfŒfŒ\ãµ\0QEQG\ãGò Š(¥\Ğh¤\ï@QJ1ƒ\ÍRPEQøQøPhö\0ŸJ\0(¢Š3šI$Š\ây¡†\Æ\ç•\Ø*¨úš\Âñ7Œt@[P“Í½q˜¬\â?;½º+\ÂüK\ãMW\Åw[\Ù|¸\r–‘\å§øšQEz¾µñ[E\ÓY¢Ó¡“Q•x-‘ş|’+†\Õ~.ø¢ô<V†\ÇMBı\ÂnÍ³\\f~ {qB²«\Ãw?Ş¦EU›\íV÷Q›Í¿\Ô&¹~>i‰\Ë9\ÅT-Ÿ»*\ç\ĞñNr!)•‡‘A^2\Ñ,‹\í\ÔPES?z\İ}©`šÀNŒƒ¡h\Î\åQªba”£uº\ÓÃ¬¿%\Â\ã£c…QWÜ´[\ínc½‰ya÷$Qıj&b\ßüı\ã<0úz\Õ&F…¼\Ø\ß#³Sş\Ò&\00Ä q\"ñù\Ğ ¢Š*tŸ÷¡d\Úñ\çşZT\ím\r‘?–Ç¬ISTƒ\îÀb\â\ÇZÍ¸©$z\n\0(¢Š¾·—VGÊŸ,˜ùXú\Z\é4¿ˆ>%\ÒGÎ€›{\Ì:\ã\Ğ¢¸õ¸vR™zz\Ô{|ƒ•?¥\0QE{‡‡ş/\éÚ‰\ë6­§\Ü,<9\Ï~\â½\n\Ò\â\Şş5¥\ÔŸ2\'W\É\ìr\çQ\ÔV†™¬\ê\ZE\Ò\Ïa{5¥À\é$lp\ß\ï†€\n(¢¾§5\åøÆ„\Åi\â‹mHQ\0ùO»ß…zµ¼\Ğ\Ş[­Õ¬©=»ò²\Ær¦€\n(¢¤¤QMjE\è\0¢Š*DT\ËQ/İ©V€\n(¢¤’‰\r\éE¥¬v±lN}M9J˜\ZC\n(¢ŠZ( Š(¢Š( Š(¢Š( Š(¢Š( Š(¢Š( Š(¢Š( Š(¨Šc•8>©D˜`Ô”„0E\0QE-\Æ_ºr=\r*¸\'ƒ\èh\0¢Š*J(¢€\n(¢©c­&)ø¤\ÇZ\0(¢Šn8¦‘O\Å•À(¢Š›´zT´\Ü}h\0¢Š*//\Ô\ÓMŠn9¤EUc¦\Å[+L1ŒP(¢Š­Šiµ`\ÄFc\Í¸QE4Œ\Ô\ÛqM\Ç4(¢Š¬ğ,Ÿys\ïUÍ«)\Ìn~WñIŠ\0(¢Š L±ı\ä?QB\ÌÀ š¸T\n‰\à‰\ÆJ¨ Š(¦Ï¦iCS\Zİ†J?\ài™‘GÎ„{EPQV7\n2Z®®9§‡÷ Š(©¥š[Ô ó@QR‚(…F\r;4\0QE\ìó\ÅZn}iİ¨\0¢Š(\íK)3Š3\Í\0QE/ŠLõ£½\0QE/J?\ÏJJ;t Š(§g\Ğ\Ò})=ª®£¨\Úhö2\İ\ß\Î!sŒ³E\Í\0QEO<ğ\Ú[\Íss2Cct’\Èpª+\É|_ñjiXxX´k\ÒKùdÿ\0¸§·¹®cÆ7¿ñ-\â«;C§\ÄO“hXq\èÍ§Ú¸÷vòß…\n(¢’yg¹¸{‹«†g9i$bI¦e‡FP>”p§ 4\ì\ç?º0\n(¢–5i3‰¡\ã\Ô\àşTö‚x—|±‡½D±\ÄIÁ\Ø}\é\Ñ\Ë5³e\\\àõ\à\Ğ0¢Š)\ë\å;ûñF\×F\ß\ÓY\Öf\'j\Æÿ\0\ì\r5¨;²\r\n(¢§i\Ö\ìşõBIŒnŒc?QQNœtjk nSó:h‘›†ö Š(¥WhØ«t?­G*l;—\îúÓ\È\ï\åN±†T\ĞES#mÉ_Ò¤ÿ\0X0AÖ uh›§ˆ©Õ„‘ÿ\0´;\ĞES‘×Š±\ÕMW \à¶s\ØÒ«q\Îq@ÂŠ(§\Æ\ß)\ÇQ\ÔSÀyC\ÛÒ’U\àJƒ\æx\nll œ\íÒ¨Š(«b_/\0€\èß¨­ÿ\0x»Vğ…ÁŸL™§´v\Ì\ÖR·\È\Ã\Û\Ğû\×2Ÿ)17C\ÎjD«c4(¢Šú\Ã>(\Òü[b.4Ù¿x£÷\Ö\Ì@’3\î;ıkqx\ë_&Z\ÜKe{õ¤­ñDˆ\ÅIö$W\Ğ>ñÕ·Š-E¬Ò…\Ô#\0nPEWl©W=j!Á>\Ôõ5 QEL§*µWSR¢ÀQEX–¢V©¤0¢Š)h¢Š\0(¢Š(¢Š\0(¢Š(¢Š\0(¢Š(¢Š\0(¢Š(¢Š\0(¢Š(¢Š\0(¢Š)¬ŠÃ‘N¢€\n(¢ Ã§O™Z‘[§Z}FÑ†\ç¡õ\0QE(\Å;µ€(¢Ša˜§\Ói\0QE\ÚL{S\é Š(¦\âšsO\Å%PQL8¦\ã=jR)¸Á¤ETX¤+RcE!\Ò\0¢Š*\Ô\Ã5>2zPGj\0(¢Š¨c šiš¶V£+@QU±\Ç\"›Œv«\rÒ˜ô\0QE\r4€GJ›o¦•ª\0¢Š*³Û£õP=GZ\í\åS”!‡¡«ûi»h\0¢Š*‡šc8x\Ù}\ÏJzË“Á\Èö«eA\àµ[Ds´\'Ò€\n(¢&iCf¡1M\ÈA\íÁ¤ƒ†Ê·¡ Š(«©wf¡zxj\0(¢Š”Qš4\à\Ø\0QE&x£4Áø\Ò\ĞES¿\Z)‡¥bxŸÄ–¾\Ò\ÍÔ¡¤¸eı\Ì \ãqõ\'°(¢Šµ¯ø‡LğÎŸö½Z\àB§ı\\xù\åú\nğ?ø\Î÷\ÅZ“\Í,¯\r¨$C\n‹+3Y\ÕdÖµ\Ô5·»¸,N6\á{*\Öl’B\Ò¨=\é@QMFp?­A\Ó)»Q°\'\ÔS|—\ê5\0QEN6‘ÔŠ6\02J€+úÔ‘\ï\\v\n(¢šıp1H	^¼­[8œ@u\0T&\"¤ğô4\\,ÂŠ(¨ù\ê¹úR’`ı3O²\ä\Å40ŸÖ‹…‚Š(¦«l;XqO#=ş†›\å\äm?¥B\Êv“Ş˜‚Š(¦À\äGZP}\éK\Ï\ÔQ´‘• Š(¦‘¹|£×±¨ŒG®j\Î\Şz†˜\à:\îpE\0QE)\ÇQ\Îi¥q‘\Î;R\Æx\Å(\É\Ï|ô Š(§A/–0\İ=)Y|©29SÈ¨ˆ!ªe\Ä\Ñ\í#\æ\èQE­óFJ|D¼gû\ëLƒ+”o\Ã4\å\ÄR†\çkpj€(¢Šš6\İ\äu§³¹\Æ\î+»\Ú„?»e=ú\àúŠ¬ÀÜ‡ŠFTv\Ï\"Q_Iø\Åñø¿D¸Hõ°·0ƒ\Î¼¡®¡M|\Å\áMfk–úœ%€d\ê\0ù*úZ\Ş\æ+ˆ\"š)G$a\ãe9\Z\0(¢Š¸\r(<T*\Ôğh\0¢Š*`x§«b Ş\rM€(¢Š°\Zœ\rW\rR´€(¢Š–Šbµ;4(¢ŠZ(¢€\n(¢Š(¢€\n(¢Š(¢€\n(¢Š(¢€\n(¢Š(¢€\n(¢Š(¢€\n(¢«ú\ÑÚŠ\\{PESi\áN¤4€(¢ŠJLS±M\íLŠ(¤£Ö—RPER~T”\êLPES1É¤\ÛO\Åö Š(¨ñM\"¤#\Ûô¦•\ïHŠ(¨\È˜\íRc˜ Š(¨±\Í&\ÜT¸\Å&=¨\0¢Š*Ò•>­7À(¢Š¬Wİ§5dŠf\Ú\0(¢Š¯Š1Sy~Æ˜TúPETX¦´j\Ã z”:R@QU\r¢‚LLTúg\"˜VXú®}Á«¸\Í!h\0¢Š*’¸>\Ç\Ğ\Ó÷\Ô\ïH>e¡kL£‘\ìy\0QE\àÔ¡¨	–<\îSQHn\"H^ie\Ã\Z–yE­\0QEG«k6š“>£z\àG\Zü±\çVì¢¾pñ‰/üIªKy¨LÍ»\îÀ²|ˆ£8•¹\ãO]ø»WfUxt\Ø	D¨\Äİ²k“0D…‹º(SLAETa=#ğ\Í4û #2¨ö`n\ç˜\ĞQEZ7lU˜­±…lz\â¯\ØifS\Ç^ù®‚\r0  \Î3X\Êv:)Ñ¾\áEW;ƒ‘÷sëš¹•\ÆqlWI\r†8?Z[.9¨\ç6T\ĞQE\Ë\r/ƒñ¦7bT\ã\é]h²\'“Ò”YŒâš™^\ÍQ\\i\Ò\Û(\"«6œ\áI\ÙÓµv\íbG\İ\0z\Ô`@\ÎÑŸj|\æn˜QE\ÃIhclqP˜ò\İ9®\Âm8\ß/^ÇµP—JÁ\â1Á«S2tBŠ(®tD\ÊO¡§…9úu­“¥“œ©?…54Ã·‘\Óó§\Ì\È(¢Š\ËXy\Ïj¬™\Ç\Êk¡ş\ÏÚ»”\rf\ÍnV\\ù\ÓR…‚Š(¬\çL\0\Ê>´Á¦+@Û’¥Hÿ\0\ëS¿N2>”\îg\ÊÂŠ(ª…\Ó4\Ô\İ{V“Z”‘ô¨ü‚O9úŠ..VQEU‘7š;{S\ÈB_§­X\nT\àŒ„SDf9Y@Ê·\éM0°QE“\å…8§«¥OjkG·ŠX‡\Ìñ(QEv\Ú\í\Ò=¤®œõÁ•\ë¿¼Eq:Ë¡\\\î1 im$\' ş$÷\çšñûieŒü‡k+dg\Øø6ò\Ãw=\Í\Ê\Ü\ÚÊok•m\Ùœ\îóLAEWĞ™ö§Q+U‘Q†TúŠx5@QEH\r<j x¥½\0QEJšp5iÀ\ĞET¡ªA%W\rN¦ÀQEX\ëNÈªÁ¸§†¤\n(¢§¢£V§šQE:Š( Š(¢Š( Š(¢Š( Š(¢Š( Š(¨©§§Ju\0QE\Ê^(<\Òb€\n(¢“‡­:“ñ Š(¦\ãÚŠq\ïIŠ\0(¢ŠJJZ:\ĞES{šJqb€\n(¢›ƒM\ÇúOÆ€\n(¢˜GZL\nıi´\0QE\ÌRbŸŠ1\ï@QL\Å6E%\0QE0Šf*JLPETx¤À©H¤Áõ Š(¨\n\æ“Ë©qF:ó@QU\Ê\Òm8©\Ê\Òm Š(ªø\Å&*}¸¦\êFhÂŠ(¨6\ä€$ö¯$ø—\â5¾c¤Z8û$-şñ¶\Î?€c°\ï]\ï5\Öğ\îƒ$±ô»œ\Ånº{·\à+\Âg¸ŠFYg•g¸#4$üû\ĞEVt)TKµ1Š©$B3–\æ®H\×\Ä\ìX\Ôó‚	&‘\"g=3J\ã\n(¢©\ÇJ\ØZ\ÚÓ´­\Ä3\0}ª[+°%WŞº+;EUÖ²”ÎŠ0\êQE6\Î\È*ª:òkJ;B\0­Z‚¦\rYc\éX6u ¢Š*²[ÀÕ\0\Æ1S„˜¥\n)QEB`SÚ›\äòOj³J1\Çjw\0¢Š*\n‘È¦ı•j\Ş\Ñ\éNŞX(¢Š\Í{ rp*»Xx²c\ëL(\éE\ÂÁEV)±\áEDt\İ\İTV\ï=(Ó»(QE†tğ#+´V%î†Oj\î\ãZM=dùU)\âQEq\'Nß€«É©c\Ò”|§¯<W^–.sŠ\ØÂ\0§\Î\É\äAEW(ºk \Ã“\íUe\ÓN\âF8\í]‹\Ûg·\éT\å³(\æDQEq²Z¾\í¡x\ê\ÇÒ™%§\Ï#¥uÙ€x^µX\é\à°$Ö­H‡L(¢Š\åÙ‰\ä\Z® a/+ô5\×5‘aµW$÷\íQM¥1TŞ¤U)ºaEW4ŒD›p2k´ğ\Ä\nóD‘J\Âi3\Ë,¡\ç€qœw®N\î\Î[9Õ›j\é<?­]Á —\íw°\Ç›€‚´LÁ«Q^\Ù\á¹\Ú;V\Ó%Y¿\Ñ\0\É\"\íób?u‡òü+p\Z\â|?\â=%§o6\å\ã¼eXÈ¹˜€	\àu®\ÍX7åŸ¨õ«QE-(¦J\r\0QE?4 \ÓJ\\\ĞESÁ§ƒÇ­Cš\\ö Š(©A§Q\éO€\n(¢¤\rOT§÷©° ¢Š*p\ÔğÙªÁ©Á½\éX.QEY¢¢SƒP0¢Š)ôRGZ\0(¢ŠZ(¢€\n(¢¢¢ŒQ´\0QE\ßz:S±Šn2:\ĞERRbŠLPERw¤â—½ Š(¤£QŠ\0(¢ŠJJSE\0QE\'ÒŠZJ\0(¢ŠJ)qI\Í\0QE6“ğ§ö¦ô Š(¦\Òc­;˜ Š(¦\à\ÒbŠJ\0(¢Šn)1O\Å&3@QM¦âŸŠN”\0QE\Â8¤\ÅK¥&1HAET{sYú¶«c¡iò_\êS¬Vñ©<õb?…GsZ\'\0c…,Oa_<|Eñ÷‰¼@\æ \ë§[\å-¡tó‚\íõ¦€(¢Š\Ïñ_Œ.<_©›»„6ö°\å-\áİœ\'\Ğw¬‹S+qkƒ\ŞC\Ô~\'¥W‹`\Ü2&ğq\Ñ\ZŸp+±\Ê:*(cAES¤&Cû\ÙZyzr\Ùñ©­£,F\Õ{\Õxß¢ \n3\Ğµ±§Ç“\Ğó\ëPËŠ\Ô(¢ŠÑ²¶cƒ\ÛŞ·-\áÂj­¢ğ¸Á\ÏQZÈ»Es\È\ë‚\n(¢‘\àf¤… \äsKPj‚Š(§S€\ÏjŒi\è\Ø\Ï(¢Šv\ßlR\Å\0óŠ\\Š\0(¢Š\0\âœ>”ÀqJ)€QE\êL{RM\Ğ ¢Š)})\ái”üŠ\0(¢ŠP¹£\é@\"‚}P‚Š(¤\Æxâ¾”FN:\ĞETf0}*6„zU•Á\Îi\n\ĞEV{Z\äŸJb\Ù\0r+Oo=3IŒôĞ˜QEMm¾jTÓ„‡“òû\nºŠ:\0*u!GJi™…Q\\Ş¹¡¤±…\0p:\×\"{+†‰Ğ‘\Z½j\è	¡|½+‰\×ô\ĞO™Gj¸\È\Îqº\n(¢³\íµ\í§B!‚uÁS\Ñ\îVS\Ô}}\ëÒ¼â˜¯$[bš\Ö5òâ•³\å7t¸\ãŠò„}\êl0\èj\î—}m§l.Hp\ã\Æûv7ğ¹ö\Î2+d\Îf‚Š(¯¢\ãq\"†§\Ö^}ö\ë}\ß.\â`§€zó\ïZB¬AES³J\r&h Š(¥\Í.\ênh\Ï\0QEüÒƒL\Í Š(©3N\ÍD\r(4\0QE6úPMBz\Ò\çŞ€\n(¢¦\rN\rô¨{\Ò\î\ïREU€\äS\Ãû\ÕmôyƒÖ‹\0QEh8\Å(qU7sMóh°ÂŠ(«tv¢Š@QEQE\0QE6i\Ô\Óô Š(¤¤¥¢€\n(¢›´ô½¨\í@QIHiÃŠJ\0(¢ŠJJZ(\0¢Š)¸ô¤\Å:’€\n(¢’ô´”\0QE\Ìu¤§\ÓM\0QE%%-Q@QI\Î)¸§Q@QLÇ½S±I´„QE&)=©Ô˜ Š(®_\ÆÚ °\Òc¶2²§\"B¿x  {•óÆ©\çK¨N³¶$99c\ìOzö¿ŠqJ¶ºu\ÂJ\ÈT¸n@=sõ¯	Ô¤i\î™W-\ÎI=sTET-wå©Š•WûÇ“N‡Ï”\ã¾CK—\ËAR¤››\åR=º~u#\n(¢¬B¢>no\ĞV¾	l‘\Íc£t\Üş•±d\ÛH¨‘¤Š(®š\År\Äş¨¸\Æ=+\"\Ä\ç’J\ÖO»\\\Ïs¶;QN\ÏZ~iƒ\ëKŠE ¢Š(\ïK’E&\r9x\éHaES‡½<fš¹©\0\ÏÀ(¢Š)\Ø\éI´””(¢ŠN3M\ÎiH9¦¼ƒ@QOŠ)´\Òx\Å0\n(¢\r¹¨³Š\\û\Ğ+QSƒ\ïEF\rH9 Š(£¹ {\ÑÛ‘E4ER\äI“\Ø\Ğ;ñM˜‚Š(©\Ğ\ÔÃ¥V±V“”ô¦„\ĞQE\Ö\ëXº”$d“[l8<Vm\â\åM4CAEW\İD\Ğ\È\Ø\Æ\íŞ¨N\Ä\È\äcµµª\ÆV\èÿ\0u+\à\Ä{\ã[Åœ“Z…Q^…ğ—Zœx’]2YÙ£¸Š\Ç!:\Óğ¯e¯—ü;©Ë¤x’\Êøc÷3©$\á\'ô&¾¡\Èa¸U¹=«RŠ( i\Ô\Ì\Ò\ĞEQNõ¦~4¿Z\0(¢Šw4gğ¦\ä\Ñ\ï@QN\Ï\\P\Ú(\0¢Š)À\Ò\î\íQ\çŠ3@QRn£uG»Š7}h\0¢Š*MŞ´nü*<õ¦\î\ĞET¾e4¿5jin\r\n(¢¶¨\éŞE@QEQ@QGoz(¦\ĞERQF( Š(¤¢”\ÒPERQÒ—½%\0QE¤¥¤4\0QE\ZN¢–“µ\0QE%¥\éI@QIE-%\0QE\Úu4Š\0(¢ŠCH)ÔM!QIÚŒb–’€\n(¢’ô´”\0QE\Ã|S´	‰a]şL¹+¹¯–;m%|‹öóµ;¼˜N\í™\ì\Í\Ó?L\×\Ò>0Ú\Õ†BD_\ãšùÍ¥Š\Ê\Ş)T	¯\îşaR[\'¹?Ò¨Š(¬é¡–2%š/!\"29ªşabq;Œÿ\0:ò\ÒxX5ó•¹\Úzô\íT„„\'ÂŠ(«±ª‚Irs\éZöVû¿bC\ê+ \Ó\ãó1\Æ\Z\ÎFô\ĞQE\ÒXs‚?k);Ef\Ù\Æ#QùVŠöú\×3:QE\ášr\â˜OÖ€Ni(¢Š—µ\"sŸ­ \é“\Å=G(QE\"¯qš™Wi¨zT€”\0QEª=1ALŠ“ (>”\0QE	\\”Í¦¥\äœb“Ö\\(¢Š‡\Ë\Ï/5>i\Çp¢Š*¾¤¦+\ÏJ\â€\n(¢„i\àõ¥\Û\ÇC@\\t Š( (ô\çÚ”(ğ¹\ëK\å\äô AETDw\Í ¸©¶÷\ëK\éE\ÄQEB¬Fx¤\Ú)24\ÄQEJzUµ,¬\\Ï½Uœü­M	…Q\\F±Yõüs\\ü¡¼À¦;ú\×M¬¦r\ã‚}k˜¹mÑ•b7v®ˆ•w\n(¢¡[an\És6\æ\ÆL©c±\×\Ó~»ş\Òn?¼µB~¸ÁşUòœ\Çr\È\ê+\é†w\ã\áŞ”Oğ#\'>\ÌEldQEußƒ½-\0QERE\0QE.x¤4{\Òf€\n(¢–Œ\Òdš3@QKIšLƒI\ĞûP(¢Š\\\Ògš)3Ö…QKœRg­\'T\ÜŠ(£4\İ\ßZNÔ„\ĞEVø\âE)\0QEv£Q@QG\ãF(£Ö€\n(¢›\Ø\ÒSñM Š(¤¤\Å/jJ\0(¢Š(\í@#4PERbŠ^””\0QE”QŠ(\0¢Š)(\Å-%\0QE\'JLRõ£¾(\0¢Š)?\n(£„QE\Ş\Ô\ìzQ@QM4t£µ Š(¤¤¥\Å\0QESS…n4›\È\\)W…Á\İÓ¡¯–\ïİ¬gk\à\Ò©IXï¸ \ãu};\âÃš‹€ ns\Õó& “Apg»;•\ãm\ãŸ\å\çTEVJF0\Å\Égo™‰çšŒõ4\àÂ¡:»uö¨W€wô˜\ĞQEr\Ò?1•Fq]n™h@\Î\á´{V‘jòL¿)À\æ»k8.8\ÍsÍTÖEUˆ\×n\0©\â˜0\áFMdn‚Š(©@\æ¤Q!õ©DƒX.QE?¾½j#(¤2ñE˜\\(¢Šd\ÇJ‘_=jŸš1É¥YG\\\Ñ`¸QE{wªşõK\Ì÷4\ï;´X«…QWƒdÓ»U5–§švQE!Ò§­*¸?ZRA¬ETdô¡E.9 }h°QK¶”/½7v3\Í7\Í\0cš,0¢Š*p)p\ïQ	)Dƒ¨§aQRm£“w­&\àh±7\n(¢”šŒµHzf¡o­ ¸QEõ<cùUk¯õgı\Ät\ëU\îİ„|\Õ aEWª\Êpz\×,Ï\Êz¯L\×M¬™\È8õ®6\àŸ0k¦Uw\n(¢¢“«\ç\r}	ğ…‰øyh	Yœzf¾{“?7¡\\\ä\×ÑŸ 6ÿ\0\r´Œõ;ŸÅjfQEv&~´™÷£\"€\n(¢IšLñI(\0¢Š)s\Å) Š(¥\Î);SsF{T€QE¹¤£4f€\n(¢Š	\íMÉ¦\çh\0¢Š*L\Ó7u¨\ÚT^QùŒÀùjO×Š\0(¢Š•›´\ÒÀw¦ys±#\åQù\Ó\r´¹$\Î\Üö\0PEWUÚ’j?!…QEQ@QK\ÔRQG=h\0¢Š(¤üih Š(¦óIKE\0QE%z\ÑÒ€\n(¢“ñ¤¥\ëE\0QE\'jJ\\Q@QIIKú\Ñ@QIIKÒŠ\0(¢ŠAIKH)(¢Š1\íGN\Ôt¢€\n(¢\ÔQE\0QE7c­:Š\0(¢Š\Ï\Õ\ìWRÑ¯,ˆÏ(ú\â¾_¾ˆ‹\é¼\Ö&+L¢}Aô¯ªn§Ö“\\‘l\ØõÀ5òÆ½1i\\µ¥r\í\äœ\Ó\0¢Š+I‹ovû\Ï\ßÒ’Å‡_jg\nsóv\\Ô¶Š\Ít›±\ÉšM\è4µ\n(¢»Z¢¬ŒMtv\ãùU].\İb´^Ç­\\e\ïÚ¹^¬íŠ²\n(¢™ß®(\İ\èj\îb€e5ƒy­º¶€úgùÓŒnQE»5\ÊB¿;ªûTf\Ö\"Q*\ëš\ä®5‰X\í!¸\äşµRK¢\àòkHÁ#Q°¢Š+­M~\"J—Áö=ju\ÔUú7_j\á¾Òª\'ôÑ¨²’O|\Õr“\íXQE\ß\âGQsS%\ç\Ü\0ú×k\Üxş4ô\Ön\áúô©\ä-TaEW¥%\Ø#\ï~5\"\ÏÁ;¸®\n\Ë^—xYBó\ÅlTG\nÀ\î¤\ài\Z—\n(¢ºx\ç\ÎM[|ŒW3¦¥q§ĞšĞ·¼IwÂ¥£U$ÂŠ(­°ÿ\0/Z~ğ¢¨G6G5(“\Ô\ÒQEc\Ì\'¹§\ï\ç­V\ßL2ZV…QVZi“Ÿz¨Óª÷]¯UXóùši2\n(¢µOZp}+\êh	‡\'\'¦ÿ\0k 3dd\Õr™¹ ¢Š+lL\0\Æi\Ë0õ¬hõ•AWõ©R\çw ÎV.dQEl$€ûæ‘‡\\Vz\\€\Ø\Ü?\n²³\î\î	©hi…QNÉ¨d]\ÊE=E4”ĞŠ¸QE\Æ\ëÙŒ³cŠ\ãnv¹ùN\ìò\í]Ï‰¢\Ä\Ì	¾+„v\ä\äa¿tCc®\áEUwoôw\ã\'n}M\á{O°xGFµ )\Ñ\ë€Oó¯¼%¡K\â_\ÙiQ#\Ş\á‡ğ\"I?\Ëñ¯§\Zİ£8‰ÁAÂ‚;V¦aET›……U,\ÉÃ©ıi\Ê\àô# QEX\Í\Ô[ı\èó(\0¢Š*]İ©3\ïQ†\ã­ =\è\0¢Š)\å³FqL\İ\Í7p\Í\0QEI»ñ ·& iUO\à9œ\å\ÉÒ€\n(¢\ÊI!sü©\Ë²r\í\èµa/\0S\ÂûPETIn©\ÑA4ı½€©BñN\ÙÁ Š(ªû?\niRj\Ş\ßJaŒ’x¡(¢Š\Õ\íKGZ=i\0QEŸ\ë@¢€\n(¢Š(PEQÚ\ÔQ@Q@¤üii¹ Š(¤¢Œf\Ô\0QER~4´”\0QE¨¥\íI@QE%/\áI@QE&(u4(¢ŠNh¥¤€(¢Š)1Jh\í@QIŒQ)G”\0QEQE\0QE‹\â\İEt¯	\ê%wb=€~+\æ=GS·¼¼oÜ’\ê»CFÀ*\ãù\×Ğ¿/\ÛMğsJ-~Ğp‚E\ã<\ç·ó¥\Ùy\ÍÎ£2„–i	1®\0\É=½©€QEš\än,G=…Y\Ò›T„›\Æj–IR\ÜW¼=,\ë6\æyVİ’X\à~µ2Ø¨\îQEz\Ì1\íˆœRJ\ÛF1o ’8e]³\ÆsÃ\×½W»Xd›Ú¹\ìu¦‚Š(¬ıAƒ+rw}+˜¹‰Ë±-\Üc¥n\Í!$€z\Öm\Ä72[­\í¬B[Fm©r~Uc\Ü.y8\éœb´‰”\ØQEŠ\ÖO)\È8çŠ‹\ìRs\Ôb®<÷JÇ”E¨E\Í\Ê\ç,­\ë¹kC+QU¾\Å+…8¤6~lCVZò\ç\Â:T¾¸\íò $÷ÁÖ…QY¦\ÒQœi[®IŠ\Ùó\å\àIl„¤HAıjt,s/x4QEg£\íá«±NøM\Í÷O\"7!‡Ó¥\nƒ‘øõ h(¢Š¹û%ó_sLÖ­®®\îUƒ’OJ\ÂU$dš¿h¸À%ºš\ÎH\Ú(¢Š\ê\ìn\Ù\Î\âN+XMx\Ås¶M¶3×*\à—+´§*\r“\n(¢µMÀÛœñU\'¼üÁ½@dÜ¸\ÍQ¹o-NyÒšBl(¢ŠóVhÕ°\Ù çš¨ú\Ç\Ê\\p½Mg^†ÁÁ\É5šX…)z\Ñ#\ØQEmõwU<³e·{š®º‹f9°\'5HÇ‚q–5‰8üªÑ‹¸QE»½<hT9#\Ó5z-yö\ã,\rr¡]I4\åv\æ\ãŞª\ÈWaEWa´Å¾b<VîŸ¬Dp—\'¾N+\Îâœƒ‚\ÇZ¹\r\Ãp\ä~8©qCRh(¢Šõˆf.EK\Ğô®H\Ô\î°’ıAk¸µ˜\Ï\Zz\ÖN6:#;…Q\\×G¤³¥€ık\ÏùŠ}«Ğ¼~J\è\Ğ( n—óÀ®\Î\ŞkË»{[u\İ5Ã¬H¾¬N+XlaSp¢Š+Ü¾ø~K\r\ëY—‰5\Û=¢^ÿ\0‰\Ï\å^–\Ñ\ãµG¤iq\é\Z]¦›+8V!Œœrj\éZ£;…QTÊj¬¶‰!\Î0}Eh˜\ÅFbô¢\Ã\n(¢³\r»Ç²\ç\Ø\Ôe\å\ï¡ıkI£ \ÔmZQEQ†\éK¿<qRI·8ÁõQ¢•9V\İõ aETÛ¹\âšòùc5WÌ—q_)õ8£Ë—\ÎFf;})\0QEr,w·,z{U\ä*¼*vŠ¶ S\0¢Š)\É*U\Ü\Ò(4ğ8\Í\0QEx¥\Û\ïNŠ~(\0¢Š*-´m\ÍKŠ Š(«TQ@¤0¢Š)(¥\Å&=¨\0¢Š(£>´Q@QEt£ğ Š(¢›N4\Ú\0(¢Š))h Š(¤¢¥\0QE”Qø\Ñ@QIE-\'j\0(¢ŠJ)zRRQE”v¥¤ Š(¢’”QÖ€\n(¢“µ(\äw¢€\n(¢“ó£´”\0QEÁ|Tó[C³B	´—Ÿ° )À5ó\í\ä‹y+Ê€\ì\ëÿ\0Ö¯¥¾!\Å\çøF{e¶I\ŞVXÇ˜pg“Ÿ¥|ñªB°\È\ÑDŠ« õ¢\ãH(¢Š\çg|£­uş·Š\Ó]Š\ê\ê\Ò;´6ó\"“¿Py¬m	a,«\Ó\î\æ»O\ÂH¸˜\çq;j$\ìTcvQEv—\Ú¬\Ñ|°™m”ì…˜/¾\0\éùV-ô`¥Ô±$~@.Zö\È\ëœ*šxBœµJ\æyä³’\É\åo³È»Lg\í\ÇŸ:5\ä}Š(®N\çTIm\åIbuµÀ÷¥‘Ù•2N\ÔPª¹\áGµ&©¥m\ÖXœ•3*¶\à:‘Hclg½Rw\"Ï¨QE^U_J¥$R¶v`}kE\×«°$\ät«B\n(¢³œJ¹\ÜO\áPùŠ²$Ö¨‡\ÌS\ÅRš¢\Îş=‡z`QEUk–$‘)Ç¥,2´‚ù\ã5EÊŒ€1SÚ§™÷A<sL€¢Š*\äœ+`ö«º=¤S[´²Œ±lœb³\'Ü‹À8>µ»¥Ÿ.\Ñ¾3ZSŠd\É\Ø(¢Š–M\å-ƒş\Ë1PB\ïşT±<m\Ûp\ê+b)I<1]À\Ñ\Ê:†A«4Öƒ§Q¦QE6\Û<“šÒ0{\Z\Í\Òf€[ ¸NÀ÷µ·Í€_š\îúµp´\ÑÚ¤š\n(¢ höóYw¬5³<ÖŒ?uw’;6+–Õ®ü²UNy\íB¸¤\ÒAEU+«…\ç§Z¦¡\æ8Hœ\ä)5Ni‹IÀÁ§°,£|®@\ç\áZ¤s¹QW\rÁ™Y=š@\åœ\Ó\Ò\0ù\å€\'ù\nCH³4¤w`r+¦‚EÃ•?Z\Ş4îŒœõ\n(¢°¾\ÏhG\Ä\×?øš\àµ\çb\È}\Ú&\ÌWZ²7÷\Ë~4\ÉL¤>e™•±û²rÒ©Ó¶\ÂS¸QEÉµ­¸2®qDQ\ÛeV9\îÂº‹=\ßhc\åb\">c ÿ\0\Z·öky”™m\à“\'\İ.G\éR¢;…QX6¥£‘p\ÊA=k¸\ÑdfQœt\â¹\Ç\Ğ\ì$b\ËB}br1øt©­b\ÔôÀZ\ËP\'üñ¸Œ0>Û†1Y\Ê\ÆAET¿\äia9gsŸÂ¤ø5§G¨x\Ç\í,l\ã2ñ’A\Î÷¬\ê\'Tµ±2À-\î\"\Ü^-û†FS\Üq\í^ğO\Ûe«j\'3¤+ƒ\è2¥VÂŠ(¯`\×4Ò½j|qQ\â™!ET[z\æ˜V§\"˜E\0QEW+Q²\n²E0Š\0(¢Š¨ñg¥WxÈ«\åq\ÍDÑšQEf2sÈ¤t\áN:õy\Ó\'¥D\ë˜\ÛÚ€\n(¢Ÿ\â­ \â«B>Q\ÍZQ\Å\0QEH¢\"Jx Š(§\nZ\0¥\0QE”b—ŒPEUŠ(¢ÂŠ(£½%-\0QE”QE\0QEQŠ(ü(\0¢Š(\Å£ÖŠ\0(¢Šm{ÿ\0J(\0¢Š)(\Å-%\0QE%â–Š\0(¢ŠJ;QE!QIÒŠ( Š(¤¤¥£\Ô\0QE”QŠ1\Å\0QE%\Ò\Ñ@QIÛŠ1E(¦ ¢Š*µ\âDö\ï±,ˆG*Ãƒ_5ø\Ô.±*¢pY¸5ôÜˆ$‰”÷¯\n\×t \Ş ½ŠP\0‡|™\ÏNj†\ÔU\Ó\n(¢¼ú\è•Ú‡‚8\0Ws\á8<­%\ß\Ï5ÁN\Şm\à\î7cõ¯M\Ñ\â1\ØÄ¸<(¬\æ\Í) ¢Š*\Ä\ê\rg\Ï\Î@­G\ÕI#\Ï¬€¢Š+P³Š\ê$³¯—&ñ·¹÷öªF!ƒ[·P~\í°+%—š\ÖCD(¢Š¤ğ¨ê¿¥C$ .qøU«—	f\íÒ°f\ÜHYœ\àxü*\îG(QE<òˆ“× ³ea:ó\×\×5$ŠAÁ\'Z„£Hv¨ı(L\\¡EU&¶±’E^\Ó\0Rë·\Ù–°¤“2KÂ´|•EÊ®\0­°QEGR*Lk€9\æ´ š\" $ªp:YW\rŒA„\Zªa$§>õQŸ(œ.QEuğ8\"¬Kp!´–V\Ï\nq\\Å¬÷ÿ\0r^@y¥:­\Å\ÙòfO›wcZª‰’\é´QEm\è\Ş\Òç´\î\ÅÄ®G?>\ÕÏ¶u6şğ\Ó(\'JS\ï\çË“ú\Ö>ˆ<J¡HPzú\×kmn\ËoÀ\ÍqI\êv\Â:jQEr\×ş\Ñ\á%œ—Ö˜³\î_É®*\î	tùX>\'LğÌ¸b=x¯MÕ£sk&†+^s¬Nc\Îw\Ü\ÕÁ³:‰ ¢Š+“$Œ}Oe\àuRXgµv\í$¡•[\ëÚ¯]»ó\ĞU\Ü\ç°QE\Í,l€œ˜\äÖ¼Rnùy¬X.bUU$©\Èâµ¬\İ‡óU†;\ZêŒ“F‹¸QE£ñìš•.8†iŸhO/\n*I\Îj®aEUñ  ô«Ï‘\Íf®ş„ñV\âùW“e ¢Š*\àlŒU{»‘G““òŒzÔƒ\î\ä“U}ª÷h\Î\Èù?Z\Âr±¬#p¢Š+e‚mem.\'xbeÇ˜±\îÁ\ÆzqŞ½³\à\Òiö~º´¶¿ûUÑ›Î™|†O/?(Œ™\â¼V\î\İ\ã\×Cªjü¿\Şcœ\×Ğğd\Ş³º{»”\ê\ì«I\åÇµP\0~^§=z\Ò\Ò\Ä=ÂŠ(®ĞŠiş””®ETx¦‘Ş¤\"šyÀ(¢ŠŒŠi©¦\â€AET$S«Tdu aEUV\\\Ôerü*\Ë/^M\0QEW¶\åG¥[A\ÅU¶Rxc\×\ëWŠ\0(¢Š‘G\"\Ó<PES©\İi¢ŸB\0¢Š)´S¨\ÇC\n(¢¤¥¤£­@QKÚ\Ò\Ñ@QIGò£ÖŠ\0(¢Š(¢Š\0(¢Š(¢Š\0(¢ŠoJ)İ©¾´\0QE”v¥¢€\n(¢’\Ôv¢€\n(¢QG4ô„QE\'\ãG\çKI@QE%-\0QE”}h£\é@QE%S\0¢Š(¢ŠJQE\È5\å3ˆ[\êú›.s\'ò¯X¯(ñûõ‹ŒsMg=\r¨j\ìQEy³\êÈ»@%½:s^¡i—n‹\è:\×1 Y­\ÕôÓ˜‡\îñ†>õÖ¨\Ú\0¬$\ît%`¢Š)¥sÁ¨™<U“M8\ÅA¢\n(¢¨I#µ‹wi,LH—Û¨®‚L\\T,¡†)­ÁEW{$NDä½±Tˆx\ãŠ\ì\îl\â~$?†+\"}û’ºŸs*Ô…\ÈQEsoc\Ç?…\\†\ÙBå±š¾º3ÅŒ8|b†´˜dl$}*“3qaEV-ôS¬\éÓ½CsrBÅG\Ì}+KPYc„ …Ø·÷Pš\Çò\Êğ\Ñ8>ñ‘ı*”…\ÈQEVX™³\ØT\É\Ş\Õ:‚\n#OX\'~\ê	è†•\ËP\n(¢ •I«zn‡-Ä‰3d\É\Ïz\ĞÓ´9d“Í»\"ù}Iÿ\0\n\ém-òÃ€9\àT¹¡}ÂŠ(«zUª[ªª\0\à\n\èaùy\ÇV\Ò\ÛoaÒ·­­\Ô\ÅóúT–QEa]\"°q×Ey»¢²\İ\ÈeAÜ€W®^\ÚH­s\Z•«˜®qÒª.\ÄJ*H(¢Š\à\âAoj7»z\ç­e\İ\\3Hv³Ğµ»­Ú´sg$!<}k\r\àaV¤sºv\n(¢©c ñ¥\"©95lBsŒ\0iD\0óÒ¯š\Â\ä\n(¢ˆnf”‘\èkN\rM°ÃŸu8ªiÀ©\ãŒ\0F8©\çcöh(¢Š×†úl¯¦E\\Daò°?C\\ò¯8*\Ü6ò±\Ê\ä\ã¾hö¬^\ÅQ[2\ÈcŒœs\ĞSS\Ú@\"P[<œUK;Y·+KŸ—\ç5¯k\\\\$H2\Ì@Á\íR\åvRQE‡t¯x\Ş\Ö\ÕB´a–\â\ãy R8\ïş5ô€\ã\ß_\ì\ß5h¯–\Ñƒ Œ>¸ı+Ø…l¶9\áER\ZLb—z\ÓQE\Ò8¦\Óé˜¡	…QM4\Ò)ø\íHGj`QEDFA¦‘R\Zm\n(¢¢a\ÅEŒ\Z°G\n\0(¢Š¬ ,\Î=y«	Q0_r*d\é@QR\nxÁR-\0QE8qN‚œ8ª\0¢Š(\Å&)\Ø\ã­;7QER\Ò´R\0¢Š)i(£\ë@QEQ@QEQ@QGQE\0QE\Úu7Ö€\n(¢—ŠJ(\ï@QIE/˜ Š(¤w¥¢‚Š(¤£QE\0QE%bŠ\0(¢Š)1KI@QE%-\ÄQE%bŠ\0(¢Š;W”|B‰Ÿ[œ€xQÒ½c¨5\æ~3…\æñ,¶Ñƒ¾DR?*Î®\Æ\Ô4QE\ÈøN0\Íz\n\ç`5¼FX\Õ=\Õm\rø7eT\ãñ«£8¬ ¢Š)¦£cR‘\ÅD\Õ% ¢Š*\"2.*^´\Ãô\Í40¢Š*¬ •M\ã$ò+LÇ‘P´ \çŠe ¢Š+;f3\Í!®\â£(E`¢Š*\n\çJcQœŒ\ÔûOj‰Ö€°QE(PJÊ«³“Á\æŸ4›H’(‡8\àP+QRÄ¹8­›p>c\ÔU!ù‡­\0¯4\rQZ0(\Õ}\'8À5Š.1\ÇJ±üP€(¢Š\Ób\Ö]í°‘[\å«>1ŠEu=9¦HQE\Ç\\\ÙE0x¥_”œq\ÔV,\Ş\Z~L\ÆÀ^	üG\Ö]\Å\åJÇª“U±Ÿjb\n(¢¸™t]F.~\È\\wòœ7õ\ÍV{;˜\Ö\Ú\\\'û\Ñğ¯APFpj2¬§*JŸcEÃ”(¢Šó\í\è2	\Æ;0\Å=^.\á\íŠô%gşó~ub Á³š.¡EWÄ››–\'°­[]:ı†b°ºq\Ûlgú\×w6\ì\îoÎ¬¬‡ f\ÇÖ‚Z\n(¢¹¨4»½ K’ø\é\'$~U­§iñ[\\	@&\\`µ^\Üs\ÍX·Œ\0u\Í5¹œİQE½\à\ß\Ïg=ş¥q¶&º¸Y¡Ûƒò\ßó5Ş*x\Äp\"€ª*nÕº9BŠ(¤¤?…:“Š`QE2ƒJG¤À¤ ¢Š)´\Úw­%RQE\ßÎ˜EHG4\Â=hQE0ô¨Û­MQ° aEUy>õ\"t¤‘~ZT\é@QR¯İ©F)\â€\n(¢´\áMÓ‡¥\0QE>Gj!…QEQ@QGj;\Ò\ÒPERö¤\íE\0QE~TQE\0QEQGZ\0(¢Šm\êm\0QEQE\0QE&h¢ŠB\n(¢Š(¢€\n(¢\ÑKIõ Š(£’–Z\0(¢ŠL\ÒQE1QEŠ(\0¢Š(¢\ÔPEQ\\\'Š\ÖTñ01o÷«»\è+‚ñm\çüM\ÌK•pÆ³Æ´~ ¢Š+\Ó\ä\ÃtÃ»óùT€d\ÔZlF(n20÷*u­ac¨(¢Šcp;\Ô’MX“úUf95% ¢Š)Œx\Í(\æ†&…\àu ¤QE=T`\æ“hÁ\â€\ÜÓƒqT0¢Š*#EB\èZ\'üŠ¯\'\ç@ÂŠ(ª\å@\ãµWœ€¤Õ‡?•R¹o”\â€\n(¢¨·ï®‘S\ë[i\0@\0c…\í½\ã¡J\Ú7 F9 AET\ãl`ôªòÜ•bªwš…½¬FI§H\Ğu,kŸ)°}‹3p)\0ş4$K•‚Š(®²;’x&§Š\èŒŠÄ†dtOB;\Ôñ\Ï\ĞŠvÂŠ(­\áu…\ç=\êD¸\çšÈÀlg“N3„l\äõ\ì\n(¢µgÏˆ‘\×•‚ƒÚ´\í\åV^¢ª\\(ûA#¸\Í\0QEF«œSŒy\éOD¦\n(QE\nBx«	§(÷§ƒ\í@QMXÊšx%h—	…QOSš\ÒÒË¨@€g2\Öljs[¾‡\í\Z\ìH2.ó\ÅTV¦EW¤”´Š0)ks˜(¢ŠJ(¢€\n(¢“)zRP ¢Š)\r3iô\ÓBQE\ÓM \Óú\Òc®zS\0¢Š)˜¦‘Á§\Ó½AET2”\Óc\ä3R•\ÈÇ­p3ñå¿‡!“O´”6£Œ3\n\Ä<u\Î\ê\0(¢Š\ï\Õt\Ğ+æ“¬\êú~\ëƒ}}\î•’G\\÷\É±¯£t\ÍB-[K³\Ô\"9Š\æc\ÜPEUÁN\ÑN\0QEğ(\n)(¢Š(¢Š\0(¢Š(£<Q@QFx¢ŒñE\0QEè¢Š\0(¢Š(ıi Ó¨\0¢Š(¦\ÑÚŠ\0(¢Š)?\nw4”\0QERRÑŠB\n(¢’zZA@QGÒŠ(\0QE””½\é;\ĞEQE­1QIŠ1GAKÚ€\n(¢QKG\ã@QIŠóŸ\Û7ü$\Òòv~•\èØ®[\ÆVL`k\ä•k`TM]\ZSvQE\ÅAp&–X—øGJ•N	¤]¬:4£\0g©·	;ˆ\ÍsaESe9\ÍVc\ÔzTòwª\ìI©-QN úT{‡\ãI»\"QE½)Dœ\ã¥0¶z\ÓwÂš\0¢Š*mÙ¨\Ü\çŒ\ÓDœ{\ÓKŞ˜\\(¢Šk\Õ9£$š¸Fj&\\æ…QXW#É“x:Ô«r$Q\ÎA¡5²\È \ZÅ¸\Ó\åF- SD°¢Š+/Sµ“0ğ:)\éUcÑ¢Œn&´~\É9l±9«	n\ØÁ5D°¢Š*=\'+D8^ \Z\ÕR:*ªZ•lŠ´¶\î\Ë\Ç5D…QY:ô\×\æ\Ïıg†/\â1ğ\Íøõ®oJŠSx²‰d.\Éf$š\îöwGwn‰\Ã\\dôõ IjQEtúuËˆ\Ô:U\æròf³¬¢,\Çğ­=˜\çESÒ§^jº\äTñó\Ü~T†QE?\éØ¡G\î1Ò©(¢Šô©PSŠ•:ô L(¢Šp_Òº[–¼¼º#…Qşu\Í(É®\ïÁÖ¦\ßDW#\r4Œ\ç\é\Ğ*¸#«\n(¢º!KE©€QE„sIŒŠZLPERRu4´\è\0¢Š))§\ëN£‚Š(¦R\Z\\\ÒñZ(¢Š<\Òm$\àu§\×)\ã\íZ÷Gğÿ\0™b\Ë\Ê\Û\ZSü#ªAQY~.ø‘m\áÛƒeij×³mmóG Qzƒ“^a\á\Ïiš\ÜÚ–¥ \ë‰´s\Ü\\h¹ş\îİ¿3Yšœ/5¯œù6H\Ï<÷5`ƒqS’(QEéš¯‹`\Öü_iske%º\\À\Ö\ÓùŒl\ç?\n\ë~\ê\Í\áË\à…¹\Ò\î\Z#\êò?\\×Aj\×\r²\"\ÆTR\è7 fº?…Ú»\Ø|D{yd>N§N{¸\äZ`QE{Ø§L\áÖQO´ÑZp¤0¢Š)(ù¢\Ô\0QEQŞj:PEQ@¢Š\0(¢Š(\Íq@QE6G\á@QM¥üii?\n\0(¢ŠJ(¢€\n(¢“­¨ \ZB\n(¢–’Š(\0¢Š(¢ŠJ`QEŠ)(QEQš){Q`\n(¢’EXŠ(¢Š\0QER2$‘´nª\êF\n‘ih¤EV#øcE¶K©\ìô»X.]\ïR!»ğô¯?mc\í\Åz\à²:ƒ\Åyf£“{<x\Æ•œÑ½)QY\ïÒ«ji\ËUÙˆ¬N´QE!4\İô\Ò\Ô\ÆaÒ¤aES\Ëuı)†Lô¦L\'óª\0¢Š*Mİ¨=\ê\Ä\ÔÑ)\\aET R\í&“\Ìÿ\0¯Q™»ÒšÂŠ(¥`1õZA¸\àŠ˜¹4\ÌgÖ˜®QEVO\ËJ ¶*Ò§­9\àP€(¢Šªb\Ú:T‘ŒS\ä\Å6<–\ÅQ˜QEÿ\0(8Á\Å2;(„™\n2j\Ê/\áR\nzQq ¢Š*X\"U\ÅH\Ê1Ò‘`u©:æ¤´QEW#\Í¼TAˆ4\0QEl?\Å<3\ÍVY3RƒL.QEXZ•Š®§\êt¦ˆaET\ê¬\ãjı\â@S^©g\0¶´†ÀD^}\á\ëe»Õ Vû¨\Û\Ûğÿ\0\ë\â½$t­¢´9fõ\n(¢ŠUQE”´”\0QE”\éh Š(¤¦\Zq£µ!QL£µŒU!QIX~.°‹Pğ\Íò\É\ÈbO57\à¯9¹QO\ÚHHÈ‘qõ€AEW\ÎWñï²”€O\á\Ís\Ø[¢	\ï]}\Ô`4ñ\ÈfS\\€b—ŒFG9ªQE¿§J-õ+iy\Ì\0ıù\Õk¶›AÖ º‹\"[µn	\Îÿ\0\nb\È|¼óG\"¯ø¢?6õ¥ m¹¶IA\Îrq\ÍHQ_H\Ú\Ïİ¤7Q\ÑÎ\ÔûšœWğ§V:§\Ãû•šÌ›gÿ\0€ôı1]¸ Š(§úÒ”ƒ´¢ÂŠ(¤¢E\0QE\n(¢€\n(¢Š?\Z?\n;PEQøQ(£š\0(¢Š(¢@QE6Š(\0¢Š(¥\íÚÊ’€\n(¢“R\ÑHAERQJ\r%\0QE”´”\ĞQEæ´b˜‚Š(¤¢Š\0QEQE€(¢Š(QGZ\0(¢Š:÷¥¤ PERµ\ç%ƒ\ÉÕ¦lp\çwOZô>\Õ\Çx\Î,4Sm\á\\ûŠ‰­\r)½BŠ(®*^¦ªHpO5f_¼}*¤\ëœ\ëAETEª2yæ”:\Ó1Š\n(¢€\Çğ¤<¼Rf”¥HÂŠ( \n©„\ãÚ¡y°¸SHM…QS4§ \â¢Œû\ÖeÆ¢°™ÀÏ©¨¢Õ­‹g\ÍÏ¸\æª\Ä\\(¢Š\Ş]\ÄgÖ¥U\'XÏ®À‘\åO>˜¨ˆ\â_L‘\ëE˜\ĞQEÒ¬\\sN1\à\Z\æF½,Ÿtš±µ.A—q?AN\ÅX(¢ŠÔ’2\Ç\éS[\ÃQ\Û\ß\Ãr¬zc¨4Ó©A	8Ï§4‚ÁEV€‡š6şUU5›VA™0jĞ’)Wr09\éLL(¢ŠAòúÓƒô¦6Tô¨\ÙÀ=h%0¢Š*\Ës\ïU_ƒ\Å=Xœ\Ó$9\ëH«…QJ†¦Z¬x\â§Jd…QVSğ©£\êWS\Ïõ«PŒ\Ó[“\'dQEvµùnnJ¡÷õ?Ò»Yz©´\Ñ\àFv\Û\êy­NÕº9¬(¢ŠZA@¢˜QAö¤\ïKI@QIIJi(\0¢Š(¦´\î\Ôb‚Š(¦\ÒR\ÑT ¢Š)1B}\àh£Ö¨QE\á&µû/ˆ5°8™ˆÇ¡9¯>¾A \Üc\rµ\ë_-<Ÿ\Ë(,ñ+~=\ryv²oq\È¤aETœ¨º\rIbŸ\Ã:M\ë\ï5»F\Ün\0ôü«›‡”Rk¨°ÿ\0JğUôo2\Ş\ä:ıb€\n(¢º…!±“\Å:†‘g¦Ç§E-ºÊ±\Ç+:»©\äŒô\àş•\ìÈ¯œ<)k¬\Ùx›KñµŒ\ï§A.Ë™€T8V\ï3•ôy\å\0QE(4\àx¦ƒ\Í8R\0¢Š(\Í¦ö§P0¢Š(ú\ÑÚŠ;PEP(\Ï4Q@QA¢Š(\0¢Š(üh\Ï\Ú(\0¢Š(\ãQGZ\0(¢Š(¢Š\0(¢ŠJZ))(¢ŠZJZ(\0¢Š))8¥£4\ĞQIESQEIKø\Ñ@QIE(£ñ Š(¤¢—˜ú\ĞEQE\0QE¹\'#Š\áüK¨ÿ\0hm¢Q²Ø‚\Í\îkª\Õn~\Ïh\Ø8$u®\ÕK\Ú\\³\Í$ŒI\Çn‚^`N\Ì(¢Š\çeÀb*£“\ÍZ¸ùdp{\Z¨\í×Š\äj\Çt]\ĞQEÖ¢\êi\å±Q“H\Ğ(¢Š	ô¥Ài¥ª@(¢Š@ª2\äqV$\'yªŒ»*–€ÂŠ(¬;‹&¹”³\ä\ç\Ô\Õ\ìfN\æØš\ë\ã=©\Æ9•W0¹BŠ(®^-u2·\çS¶Š¬¿$„\ZÖš&ˆ\åNEB²ü\ÜôşUI ¢Š+5tû»r\ï(8\ã­0\İ\ÜB\Ç(x®\\1\Í!H¤ùYOµ2¬QEbÁª4G8q¼U“©\Å(\èxõ«B\Ê$\'	»œó\ÍY\Ò,nÚ£\×‹(¢ŠÆ’úbIŠ\'ÀJš\×\ÄS\Û²«\0=+a M§G\áT¤±Iİ¹&	aET\ãÅ¶\î¡>m\ßîš»§\ê6°9ô¬”Ñ¢E$¯\Í\î)Y›iò§ƒÚ¥™«…Q]T†\ïŸZ³÷…d\ÚÉ€+N6\éRPQEğ¿Î¤_Jh§€1@QR!ù…mhvfÿ\0S¶€”¾\çÿ\0trkÁİœ×¡x2Ä­¼·Ì¸òGŸA\ÔşÊ´‚1¨úQ]h”Rö¤\í[QGz3@¢€\n(¢–›KÛšJ\0(¢Š)1KIŸJ\0(¢Š:RRş””„QEše)¥ü)¡QM¢Š*ÁQ^qñF\Ü\â\Æ\ì\ád\'ñÈ¯ \×mVy\î\ß\í|ÿ\0‰{Á:¶}\â¼GVŒInO¡©QE“fw)5\Øx9\ÒKN\ÚQŸ:\Óx_u?ız\âl›’:âºŸ\Ï\äx¢\Ô66\Ê\Z#Ÿö‡ÿ\0Z†EV. nm\Ö\î\Ş\Ş\âhF\âÊ†\ç¸k\èÿ\0j§\\ğ~™¨1\Ë\Ë‡ÿ\0|p•x.³\r¤>)k{\çš;y\n\èHŠôÿ\0…ºJZjš.‘w=Åµ¤«2ˆ¶¸>a¨ıh\0¢Š+\ÑÀ§ƒLÇ½<}i\0QEQE(¢Š(QGµ\0QEQ\Ğ\Ñ@QG\ãM¢ô\0QE\î”fŠNh\0¢Š(ü)(¢€\n(¢Š(¢€\n(¢ŠAKF8¤ ¢Š(¢“Œ\Ò\ĞERP>”RPEQE(¤\ëT ¢Š(£ñ¢Š\0(¢ŠQ@QEº\ÑF(\0¢Š(¤$($)Dr\ì\0ú\ÖmŞ¤­Xº3J\àQEe\ë—;\Õğx\Æs\Zd»¬¥\ç÷Œ1øÖµü¾`#9…c\"G<ğ©$\çw+ŠÚ–\ä\Ë`¢Š+ıÿ\0\Ò$9ª%½\êÆ´:³`ad\\úsY\ì\Ü\Z\å¯Y3®ƒ¼BŠ(§–¦nô¨÷šf\ãX ¢Š*lı*2Æ1=\éßŠ\n\n(¢˜ız\Ğ&‚2h\0ö¥pAERñŠalS\Å5‡Zc\n(¢«»õôª’\É\æ­Èƒ<T\ršqQE_q+Î¤Y\ØwÉ¨_\Ê\Éÿ\0\n`\ØO·½h.fQE\\ûC1=©\É<¸\0±ö\æ«$A¹b8yÏ°¢\ã\æ\n(¢­\ÄY\Ç\ÍW\"Uª\Ç–*tcŞ¦\ä…QVJ‚:Ui!@©\ÃP\ßr‚Š(¨\"Êµh\Âj‚x\íW`\ìi\0QEuI©f¢S\×õ8¦‘-…QZšuœ··q[D>y/\Ğw?•zİ­ºY\Ú\Ço\ÂF¡Er\n\Ò\Z[R¸Œ	$b¨__Æ»\Z\Ş*\Ç4\ØQE´”Q*‰\n(¢j3Š( Š(£=\é(\Å\0QERw¢ŠQE¸¤£¢QA<S)ôÎƒĞ‚Š( \çµ¿úô~U‚\n(¢±¼Smö¿\n\ê1m\Éò‹¨\æ¼\nù–ó9\Æq\é_H\Ï\ŞHXdHŒ¤}F+\ç{\ØWB~ò–CŸ\ÄTŒ(¢Š\ä \Ìs¦+b\ÆSm¨[\Üÿ\0W*1öÁ¬b¦;¦S\ëWÿ\0\å‘PNq@Q]§‰´„Ô¼o¦\Û\Í9‚;\É<“2Ç¸®y~µ\èşø{i\àûû«¸¯åºšu\ÙóF*\ç=^•Áø™¼\ß\n\èº\ÜL¾e¸ILƒ#¦3\ÛÚ½¢\Úu¹¶Š\áNVTW\ê3B\0¢Š*~Ô šm( Š(§\ÑE\é(¢Š(¢Š\0(¢Šz(¢€\n(¢Š=¨À¦\ĞEP=\é\Ô\Ú2h\0¢Š(\ï\ÍgŠ(\0¢Š(¢“4\ìû\ĞERRRğzR\ç(¢Š\0â–Q‘HŠ(¥¤£4v\ç½\0QE \éÒŠ(\éLAEQF3U¯/\í´ø\×\r´v’kÕ¼e;«G`¢\ÃB2\ÔÒ¸›°QE\ÛI4P©y%DQÔ³b±\åñfŠØºÃŒ(&¼\Î[\ÙX“su4\ÄóóóY—LN!j\Ô\æ\n(¢½r/\Ø\É‘[p\'•\Ş$D\r²\íV\èÇ­xÄš\Ô7\0\Æ\ç±\æ»=\"\î[\ë¥a\ÔrMDÕ‹‹¸QEºÚ¤ó\Ì\Ùù\ë\Ïc\Ï%I8À¬x\â\"L\çvY6ÃŠ‚‚Š(ªò\ÊdfİœœVL\Òy7\ÈøÀn\r[i98\ÍP¼_12>ğ\äâªœ­\"d®‚Š(ª~#„\Én\'A–Œ\î®|\ÊCzWW\æyö¥#f¸\é\á’\Ê\êX›[¡\ïZbió.dU\n–v\n(¢¯\Æh\Îj\"\Ûh¯>\ÇraEU…8§¥@$\ãŠz\È1Šap¢Š(¥\ï\íKR¤y÷©-0¢Š)8\Í4Ç*Ò¨ô§ˆ\è\0¢Š*\ÙÉ¦µ\îI­EAOz\n¤À(¢ŠÁ}\'\Ì$\çŠhÒ‚ô\ÍtNhòTõªLŠ(®ulO~•:À\ëÚ·„1w\ä _º(\0¢Š+	\"nõ(‹¨m\×Ò¡hG#‰\n(¢©…â*c	ô¤ò½E\n(¢¢T«\ZEúÔ‹\í@˜QE`–¶¼/£6µ©9û4D4Íüwñ¬k+{‹\ë\èm-´\Ò(\ÇS\í^É¢i1hºbZÄ«»;‡ñ1\êkHG©„\å\Ğ(¢Š\ÑUX\Ô*€\0\0§f“µ±QE½h\âô¢€\n(¢ÆŠ( Š(¢’—šLú\ĞEPMQHAERQE¨\0¢Š)´”\î\İ\é½\é¡QK\Û\éIø\ÑEXQIĞƒ\ï^\â\ëo³x§QLp%\ÈÇš÷Jò/‰¾O‰\Ú` 	\áF\ÈH\È5#\n(¢¼¢ş?.\éû|\Õ*È¥G^)Ú¼{nKve\ÉşU^Ù„‘ö8\â€\n(¢½\Z\ÑEÿ\0Â—ˆıø·\Æs\ìr?Jô‡·\ãPğ—6\âÌ°ˆXœõSŠ\â¼=oma\á!‰\î-\î‘^A1sœ=j\î<)m˜·ºd‚\ĞB\ë)‰[ \ãŸjHŠ(®R\Ó<UŒ(¢Š~(£ô~5\0QEQE\0QEQE\0QE´~U“¬g¡ûI\'ƒJ\àQE[8ö¨š\á µViwd3{TdÅ4\\Š(©Zÿ\0ûˆ\Çß¥Fo\\ö\Å1‚‘Ò«Lb\\fTR¼Ø Š(«ir\Ù\İQ\Írv’fe\ã¨5RbÑŒ±zƒ\År!\Ô\Ø\Æa„ğüdcŞ„ ¢Š+h\ë¡\Åó¸^X†\à}kj\ßW†p6N¯‘Ù¯\'ŠYÂ€À\ê@©\ã¾h\â·±=\Zv\0¢Š+\×\Ö\ì\í\È \Ò\í½pkƒÑ¼@ñ/”\ê\ì˜\È\İ]0•.¡óbn£ò¤EV¨\ÔP¢¦\ê)8\é\\\ŞYNÓ*\Äw­\É\ï@ÂŠ(®ˆ2†¨_ß­ºü¸,zU¿\Ï\îó\íX÷·¢I±À\ÇzB°QEfyş\Ò\å¥ùlöªOiñ,JW\éIœdšBÁ\ÎHÏµ;ŠÁEU\İ&\Ñ\Ô\í\àŠ8\×)¨i\Ó\Ç8‰bc’v®\ÒL/8\æ¹\íS[Š	\ÄQ\'˜\Ã\ïJ¸É™´‚Š(¬\ÈôdU,B\às\Åm\éj–\Ñy\0ğ½©Öš”W)”#±\Æj©¥\îrp\ÜT\ÉÜ´QEm\î\Ë8¥¸\äó‚¡ŠE\Ú95Ì†@xü\rIAETE\Îx4\×\é“\ÏÒ£Şœ\Ã#\ïPEVk;[\İ\íb|·\î{\Z©«Z	£.¹ÊŠ¹š\n@+\Èj«k>ø\ÌR\ãrğ}ë¶Œ”£\Ê\Ìd¹]ÂŠ(®ieùš&\á×­;v?ıT\ísL”1¸¶ H¼¯8\Ü=+2\Öın8<:ğ\Ë\èkŠ½s®U$QEi† Ó„œôª\ÂNù\â¤Y+š\Æ÷\n(¢­£‚s\ÅZG\æ³LsS¬\ã¬RaEUğÃµ?y=8ª+(\ÆE8J;Ó±W\n(¢®£€rju~85›\æ\Óô©c¦\n(¢´C94¢QO5g8¦™ù\îh…QZa\ÅJ­œVJ\ÌI«q\ÌHúS\"\áEU\ÍÀ\ĞT5WY3\Îi\ë/\\P\n(¢”§*6]§­=\ßµU’\\šB\æ\n(¢Ÿœ“ŠDó,0\Ä\ÓL\ä*\"XÂ /Á\ç\Øø!­ôıj)nR63®\È\æ=Qaõ­¡NRW2D´\n(¢º\ïøa4;C5ÀF\Ô%¼a\ÈQı\Ñık©úRQš³…QK\Í)(¦ERš)z3@ÂŠ(¥\íIGSÒŒP ¢Š(¢Š)\0QE~4QI@QE§Q\r\0QE6’–’¨AER\ÒQÒŠ AEQŒ×üP´t\ë¼s–N¿ˆ¯C5\É|D·xU¤\ÆL«\ç\Ø\ä\Z‘…Q^­İ£\Ï#ğ\ëYV²ü\Äpõ­\ÍR?2Ğ’z\×/o•¸ \çƒÖ€\n(¢½‡\ÃM-\ï€æ·‰‰™¤gĞƒ‘\Ïj\ì¼7©\\Ï¬Ú‹\Í\â\â\âĞ«}\Ãr\àñ\ÇÖ¸_†Ò´–wğpB:¸\ìF+¬y\Ö\ËW\Ò\îÁ*\ì#z \ÛıEHÂŠ(¯Bü©GN)Á\Å©\0QE-ER\0¢Š(úQEV¸»Š\İK3ŠW\0¢Š*fq\Zj”\×è€€y®Qñ\ÜB\Ê0zV\ÚÁ•¾nÇJW\0¢Š+¯’\è3e”«u\çÉ‹\Ğwš5r\Şü`aóõ Š(®HÚªMt¶\à–lcœ8¨b¼<|ÃŸJ­«Ú®¥d\Ñ:“A´\0QEy\â©%”\Åj\å|\ÃÁ5Œ÷\ï3n–\"\ÌA,D™8«+ ]\Ëq<j\ì\Ø¨\'SU_I»´YX·¨ş\è\'4À(¢Š\ÛT-\ÂË˜\ÏUf\Í:H#¹o™Àv\è\ra\É2ù,n\èq\îj[{¦(\Ù\â%\Ôcv{\ÓQEv[	\í‚D\ÒÒ«‘U#•\Ò&óF[øUºV\æ“rú‚±…°@*zU\ë\Í\n\'*ò\Ø0™°7FxE\î1\Ü\Ó\0¢Š+—{½\à•P\ãœu­½5`|ñ½¢\ÈXcŠÒ´\ÑôûZx¼ö-ˆ\á#\çü{Vf¥¬_y\Æ $µH\Û%À\çŞ•„QEv\Ê$ŒM­\èj9%8*ª{\×1§\ër³G\ç9989\ì+¬Œ\Ã2†$`\ÒQEA†7”Xôæ±¤b3¼\Õ\Ğ\ŞFd\Æ\Ñòö²n!`	U<RQETM3ŒT¨ùP{zUV\Ë­\r*ÁK+mUz\ÓHL(¢Š¡¯\êi\Ù\áuó¤~\è®;\r¸³6\ã\îy©.\î\Ú\ê\âYI\'qı*·CÒº##\îÂŠ(«¶\Ó2Iûs\×­jKv—*Oş¯®=kŸY±ú\Ô\È\Í	8n;Š‰\Æú•	Q]m½Á0\ã#‘K$›½I\ïX\Ö7?.\Üğ:V¢?˜¤ƒXš…QJ:y§\ç\0\n‹v:\nplrO4\0QE\Ädô²/#û<\â\å6O\ï1\Ï\âk]\Æ\ã’*YYT©\ìj©Ë•Ü™+ ¢Š*›2\\E\\æ©£¸7f9\\cğ­]\ÍezĞDD\æ2M\\‘U\ã½+F¤N{¸°¢Š+Š\ì\Ä\æ•(ùÀ=])^„U\ÍGMIÔ£/¸\é\\Ä²\İ\ér\í“/nOv¸já­ª:\èÖ¾Œ(¢Š\İ\npc­g[\Ş\Å:\å[¯oJµ»Œ\æ¹9,ts ¢Š*È—\ÜQ\çö\Î?\Z¨dÀ£r‡0QE}e>µ\"\Ë\Î2k9d>µ(›ÿ\0¯G(\ÔÂŠ(­\0ß¥!ƒT\Äù\ã¥;\Ìç©¢Á\ÌQE[I@\Îju˜Á\â³<\ÜS\ã˜ñ\ÏX\\ÁEV´sñS	±“Yi/AR‰LÓ±7\n(¢®4ûºT2Lª3`\n‰AfÀ?sš\éMMû¨@@N9?iFš”µ&r²\n(¢´e¾77\Ëq\nó\ß\ë]†‡z&+n\í\å¸\0¤ƒ\ë^tÒ˜\î7wö®£Jœ˜‘Á\Ç<×£M$¬I»\êQE{“¨Kqb„\Ëû\å\á9\Íh¥øH¸=ğs^y¤\ê\Ëe\æ\Ä\í\ë×š\éô\İJ-NÜ±;fNGj\ç­O•„%}Š(®o`?\Æ\ÔÒ‹¨H\Î\à\ZÍƒ\ïrÀÚ–eNP®s`¢Š*ù¾µQ–™Õª6\ÕlPü\×?\àU›öhºˆ>»E4\ÛÁ\Î\è#$õùE\0¢Š+Z-F\Îbw11=\0j³¹I\ë\\\á²\Ó\È\Ë[CõNi\í4øÃ‹Ÿ#œ\0NAö Š(®‹¥“g­Ap6‰£sş\É\éZI*0\È9 Š(©);Ñš3LŠ(£4\Ú)3@‚Š(£4\n3\Í.p) \n(¢“ùQ@\éEP\ĞQE‡Y~#¶ûg†u(p	0\0Œô\çúV¥5\âYax!Ô©üj@(¢Šù¢ñ7Á*…k\İ\İg\Ô\çš\ï¯\á]\Í	q\Ùq\é‚Ep·\ê\à‚9€\n(¢½\á­Ï—®\Ï$	­\ÉüA\Üx…\\i\×E8hñ0\'ºAş•\å\Şº0x«K}\É$(\àC\ìzŠ\ZX†6¼eO\â©c\n(¢»Ky\ÅÍ¬‚³\"¸?QšW9\àKß·x;Of9’ \ĞI\ÏC]HŠ(©¨£Š§}¤%‹s\ØT€QE—\×\ÑZ\ÄK¶j\á5p\ÌI\İ\ÇnsLÕµ9®\ä=J\çx¬d\Ó.\ï,Q3g¹\à\n@QEP¸½f\àbª¹}k¤_\n\\ª\îo\ÔTRø~h¹Ø´\0QE†š”«Á\\ŠÑ³\Õ\à	\ÅEq§¼y!ø\nË–-ˆşT\0QE\Ş\Û]o^¿kBû\Æ3:W¤jrüsÁõ®®\Ú\åX˜ü\è\0¢Š*\àcÁ_\á~\Õa±\"€@úU9\É1\ïQó/5b\ZH÷\r¼s\ëBQEB\ãH¶‘I\Ø\æ$\ÆIõ¬\Ø<-\Í^l\ÅAÌ›{ó]dvr\Ìl/”\\²ZFV%ş´À(¢Š\ç5<\éÁk¥Dp2•ù½ó\\ò\ë·}\ï,\ÛÁ\ã\æ ~U\×;™€fUS•Ÿ6m:ùN£\ÎGÓ¸QX2\êw2“(vW\êw5-¦°ò:[\ßÛ¤ö\Ù,À\0›İºš}Îu\Z\â\ÚUx†Y¼\Î1\íY1\Ì[\"X¼½¼\ÓQE³ı˜·H%\ÓÜ»ä±Œ/l÷­m\'P?)¤böÈ®@40–#Z\Ñ\Z¤W\ÅX°†ñ@k€À}:\ÒQEvb\ç9\ä\æ˜\×\n\Ã2\rsú~­\ç1‚bVe\ì\İMYšbM!…QWf·µ”e[kÕ—¨\é“MdñC.Iü*PNÜ“XšŞ¦ö…\"YX¤\nqZ“-‚Š(¬\é|+¨,Q-\È\ÇZ¡u¢\ê6\ÒxHPHw\ÇSV¢\Ö\î\"G\îd\0ğ±«M	â«°»\×B6\âA=+ \Ä(¢ŠÁWp\É\ç¥Km\Í/•9®ûSF\ÕÊ¹±»¹£ô…^k8´\ë\Â\ØI+A\Îv/©\n(¢²M–È‰e•T\Ó<\ÕûgF1\\ä—·,\Ç\í\Ì\Í\Ï\Ì*Ö›w¹¶“È¬gjkQEt\'¿Zh¦\ÄÀZqN{zVe…QHM5ş´3zşTÌ‘š\0(¢Š\Ï\ÔmV\âÜ…¯ÿ\0\\\Õ+–\æ\'Àu8\"¶\Èÿ\0d~5‰ª@\ÖÒ­\Ü@\ã£k«\rRÏ•˜Ôõ\n(¢¯´bE\Çö¬{\İ9fVŠP1\ïZv—*ñğzÕ™\"¯bk¾É£\Ø(¢Šò\íGG–\Ê\à\Ë§°¦[jò§\Ë2õ9\æ½\n\îÁfVFAš\âµ]\âb\è1Jã¯‡ûQ7§S£\n(¢¬\Ãwü«ş¦İ+˜w«ğ\ÜL‡·˜5\Ãc©H(¢Š\Ùô§¾µI/u Õ•¸‰ºÎ•‚\áET\Ã>”ñšbÉ‘OV\ì:\ĞPQEğ™§ªc\ëQ«õ¥\ÜA\ÇzQEXV\ÛR©\Ï^*°$Š™8\ë\ÍHÂŠ(«BQe\ÏE¿*\á,f3\İI3}\çbÇŸSš\é5Û¿+E¹\0\á\n}k’\ÓN\Ò8Ñ‡\Ş\æuEVÌ€‚H­,J»YÁ\Ú9õ“l‚i71!A®†\Ş\Õ\ä‹Í†\Õ\ê;\×|SšL(¢Š\ë´{\Ö²¯88a­¿´d\ê±\İD“?$v÷Á\Û\Í,eD$‘\Ô\í\ê+®\Ó\ç\Z•«Z¾7»\Ï\İ>µU!ÌŒ–EWymvj\×1`¦8\ÅB/›<œf²´f™4Ù’å¶¤r`zT­µ°\Èr>µ\æ\Î<¬éŒ®‚Š(­/·²ÿ\0#ßš?´ƒ~‡–%\ãyô£\Ìc\ßô¨-QZf\æ\ÔòQ\×\ØW;­\ê\ZC]¤W:©…Â“\ä‹}\ÃØœ\Z»$Ì‘3œq\ë^q©N\×:“Ê¨#,H\ä\çüŠhŠ(®¿N\á¦f\Ò\î\ì®\Ù@`¡\Ìl}€n¦º×š\Ì\ÔÚ²\à4b¼ª9Jõ¯¸ı\Ó\ØWQ§\ë+yn–ZŒ¾r…`9B~¹\âª\Â\n(¢½\×VŠu+ˆ&‘\å\È\ri\Åp²x?Zğ»\è\ßKÔˆ·y	j\í§\ã]›¨xM7zĞ¸–@<«y8ñ‹\0QE\è\ÙÈ¤\ë\\¦—\ã>ö_&ôy:’ËŸcŠ\é\áš)—tL¬§ºœŠ\0(¢ŠRñF)*€(¢Š?\Z(¢ ¢Š)(ƒIŞ¤Š(¯ñ­©²ñUús†—xÏ¡¯7\×eÁ8\ãvJö/Š\ŞWˆ\áœcÀ	\ã¸â¼›_La Š\0(¢Šn‹p\Ö\×v“Œ\æ	U¸ôW¾_LR¯\İ<\×Î–R\ÏÒ½ÿ\0L¸\Z‡‡l.4(I\Îy\Æ*XÂŠ(«?\r\æ{J\Ë³^FGA \ÍwCÖ¼\ã\Ã}“\â}õ¿!o´õ{²?Æ½qT€(¢Šu\Í\Â[\ÂÒ±\é\\•\Ôwz­ÁÀ\"?S\Ó½872n¸:\nA¶1…Ò aEV=·‡\ì\á¦_:^¼ô¨\"H\Æ\ÔP£\ĞqN2u\âšI\ÆqÇ½\0QE1£óøT[«ƒ\ÅLd\ãµ0¶(QE“ucSò\n\æu]aš!ƒŠ\î_¼U9\áY\äg\ë@Q^T\Şe¬\Ù\0d\Z\éô}F;•1zÔšÖ’\ÆÎª¹;YN\Õ›;\r@Q^™o/™\ÖzÔºo•²¤³ \Û\ÈR+\Ê\é\Z5“vA\ç=ª\ÕÄ¾L‘Ê¬\0-‚=h@QEn¾¤ò(²…\Æ8ª\Î\ÅĞ–9>•Y\ÆI\Æ9\â¥R1\Ï\éLŠ(¨°ryÀ5nHú\Ôòd\äf«\ÊFÌ’Iö Š(©D„ª\à\äUk»5\"éƒ\åÁ\Å1XzóS$\Ø\í\Í\n(¢¹‹½.\â\ÎF\n¥¢q“úU$ˆ¹WŠ£ûÇ­tzŞ­oif\Ë.\æ,ò\ã9\ÇS<1wo{§&Qac<š\0(¢ŠÊ’\Şo(Oo,\Ë÷˜œ\ä{\n¹kt.\â\Ù\rĞƒÚºI-Ğ«\ï\\\Íí±±i^§O\ÄQEZ–\í-m\Ù\İş\ïAµ\Ã\êWR\Ş^[ §œU›‹\Ùe.X\î=‡¥P\çs\Ím\Ø\ÊR¸QE]ŸœdœQ\æLRco=\é™X*œp+BBŠ(­\ß\Ø-\Ì\Ïs3\ây<E%ïˆ®¤¾–X§t_»…#=j\åóÿ\0dh\ÛD\ë#\Êwn<†¹03“‘œ\Ò\0¢Š+¥şÒ´\Ô\â‘.‘Rf#\ç=+&h\Êò  ²°\á½ES=±*in\Zm9üÒ§\İc\×•2Z,(¢Š\ê,fÜœj\ã¥sº%\ç›,9\ÇNõĞŒÖ¹™²\n(¢£l’OZa8©{\æ¡9\ÎhQE‡sQ°WC+px\æ¤+x\Å0ô\ã\ëBvQE‚\ê\Úu\á@1¯=+f\Ş_1r9¨¯\í\Z\êÑ•HŞ¼‚Nei·-ƒ\î×¥‡©Ì¬r\Î6aEW@ñ\î»\Õ»®#!±šf³®#Kk„@ó¿Êƒƒƒ\ë\\\ãĞˆµ%ó£c“*˜s[¹\"RaES¯¼?,l^ zô¬‘	A#µz2/\"\ÛÍ¾\"3‘YWš*\ÜeûÃœŠæ©‡R\Ö&Ğ©mQE\Éy\ëõ©#¡©§´{YJJ¤\Ç˜¸\äŠ\à’iÙ)\Ü(¢Šš2\ÛsS©8\ê3UÁ\ã¥AiQEL„õ\Î~•\"\Çßšb²¨©A\È\à~5#\n(¢¤L÷\é\ïN1œâ™€ªs\Î*‰\ÕT\ãó Š(¬o\\\ïFˆr¥fiË:§QS\\ƒwq\å„\ä\Õûm:c>\ëp¢\ç\æ\ï]Tb÷0›\n(¢´­¢DŒvşµ³h\ïóò÷Rz\ÖT\"U!\å\Õ?½\Üúu­%F?+¬§\ê?\n\í\ÎÂŠ(«3\ÚÎ¦-GN\ÚgŒüĞƒ\Ë\Üb¶ôÛ™m\î<Ğ¤+\àóü5ŸlLj•jÚµUªÿ\0½ŒV„Q]4\×S\\işTMŒó\ÇCXj—Z{2‚dCÙ´­ˆY;Qr:¶¬}F«[ƒ\ÔB6˜c¡\Ï#¹jE\\qmQ[v\Úõ¤«‰I…ş™ “E0\ÌR«3Á®«ƒ\Ï4ø<\İÀD6°=Á\Í`\àc6QEuZ\Õ\ÒZiò\ï#,6®\ïzó›‰\0Ç•) œq\Æ\êô„³‚\æ\Ö$»ˆO´r%\ëU‡´˜ö•´\n\ãs=bjQEpJÎ¤DŸ7\à\ç~\Ò\í\á]@À\è8®º?\éÑ±uˆl–bry¦\É\á*`\Û\È\ìAÏ˜Hü	€QEı-l/$WL\ì\ë¸\ê}«˜\×u™ouNP\r±\İ¥vºw‡Fgwqö·t1\àFÑŒJ\å\ï-´[\ç9»û\Ûe“˜Ù‹w\Â1õ«\0¢Š+\n=@‰A\'¯½tz\'‰¯4\Ğ&@ ÿ\0«\ç\ëPŸ\êr\ìû,¶÷‘‡q‘:Œ€98ô¬§†\îÅ¶\\XÌŒW H»r=E\0QE{—\â\ÛKĞ©;¬2œ›\î“\ìk¡Y‘€ ğyÖ¼27Å¾R\"8\Éâº\rj\Z´\"18µ#+\ætü*nEW¦Š\\\ÕK\İê»†3W†â‹Œ(¢Š3IKÓ½\'\0QE\ç\ßm·\Ûi\×@•™zdf¼gZˆ5ª\ç±\Å{÷\Ä+OµøNF&)útó¯	\Ô\×u£ó\È\æ€\n(¢¹k2<\à+\Ü|/\Úü\r“¼X$gƒ\Çó¯Œ\ì»À\ë×¾\Î[KÔ­\Ï&\èGÿ\0Z¥Œ(¢Š\Ñ\Ô.Mñ†5-\ÛA¸6Òœ\ã†\éŸÎ½gs^5\ã¸\Ú?‹¨²e³¹I€ç±¯_²¸ºm­\Ğ\àO¸Ç¸œXQU·\Zf\à¹\ÍD\í\ÍB\ÌTRXQEk\ÎAœ‘\íQ™\Ó\×ğªNN\ß¥ViX‰s\íA!EV •O\\R¸5“ö‰0A4\á;ƒ\Ï4(¢Š\Ô\àƒŠÀõ÷ª‚\åz}ñR‰’Ns\Ïò\0QEğù€\ä)şB¸ÿ\0h\ÆHšhˆ\É\ç’~•\Ù9,¼c“\Â\çù\Ö}\ânVR\íÒ€\n(¢¹\é\Ò/²Jaûµ\Ó!i-XX¬x\ÍrW\íö{Á2\0¨§õ®‹Mº*¾rjQElZ½½Ùµ‰%\ÜFN\æú\Õ\Ñiû§—øAÀ\ç¯5o!‚IbÀÈ“r\ã=\r_Š\âu%C°‘\Å1…QV\Ş,m\ÆF@ªRG·\' nRm\æR<\Ü€\n¯s\Ä\ß>\0ñ@QY\ÌPr	÷ª—÷ğ\Ù\ÛK+—(\è	§\ßL«Bİy¶³®›«\ÉV\á\ÎÕzZ‚Š(«÷š«\İ\Î\î\ÌÅ˜ò\ßÊmªMm$gso^\ãŠÄ†\âUq•úUq*©\Ğn\ë\Ç4\ì+…Q^£\ë°\ê1lf\"e“Ş­\ŞZ,\ÊIÆ¼¶\Ó\Ì\ä°=T\ãùW¡kK¨\Â\ÑJê²§\ÊBhQE‘¨\è›Ù™8e\ìbMg-¿¸\'{W}4`Ç¥!µ†Eù\âOb*\ã;8\\(¢ŠóI\áa×8\Å[\Ğl\çQ€\É,s‚>•\Ø\Üh³dy_LTVƒHÑ¥KXw\'¦h¦™<­Q\\~½t\×Z‹9bT|ª	\èf^İªm@²\È7{ú\ÕU$U¢BŠ(©:ñ\Ícp;P	\Ò¸9æ‡° ¢Š*ÖŒ^\Şg,~ùùF:Wcm!’1’Ms1ÀÁC(Á­n\éòOj\ä–\æ\è(¢Š¸\Ñ\î\â¢eõ\ÅY<®*³šEQPóÓ­!}\éûqÀ\'>´Œ1ô\0QEÁŒ\ç ›©Z\r\És ¼õ­æŒ€¤6÷&´§7r$®QEy‰u¶\ê\"$uh\àF={\Ö \à\çùWM\âO\Ëc;\ÜÛ©6®I\ÉnA\Ís\Ë#ğ®ôùµF[QWtR\ëL¸\Ã+\è\Ñ\ç\åaô¯J\Ó5mJx›\í\åEy|v\ì¾õv\Ö\ê\â\Ê@ğK±‡¥\\n‰j\áEW \İi\ËpNõ\Üz\×9y¤ı²\ä\ì}+wBñZ•¾Û–(8>æµ¦µB\0O\'\éJ¥\Í*8°¢Š+€À5\"F¯\'Ş·u- À¦xcî£¨¬¥PW¦kËœ™\Û	)+ ¢Š(Š5 cğ©7`Ò…\0uÁô\Å1\Ü(ô¬\ËAES%p¹¬kÛŒ¼}j\İ\ÕÊ…<œ\Ömµ³\ß\Üı\Å<\ÕÓ‹“&N\È(¢Š¿£X€¦\æe\ÎyµV\Ë#\Ät2F\Ü\"QF§\å\í^”U•F\îQEY‚)Q@\0ŸZºE\"\æ\â\Ù_Ñˆ\ä}\r%¬\åF\0­\Z–¯¦\èù·ò¬\×2–I÷¦\ïîŠµ¦\ä\îQEM	\r»Ü›Ÿ&\Ò1ó5\Ëp =I©4\ï\é“\\[\éöm\ÅÄ‡ÁHE÷É¯3\×<G¨k·\n\×\"‚3˜­“„Oñ>\æºß†V?m\Ô\å”b/”sŞ¢u¬´\Z€QE\êšÎ—ú!U‹÷±\âB@\ä\×3k®Ol\ßg¹E¸·a\Ìr}\áô=«¿8*ƒ·\İa\ê\ryŞ¹¦\Ëe|\ê\ê\Å3•ojæ„¯¸\åQ[a´Ô¼\ÇÒ¥\Î&\ŞfÃ¨Á\ïøULx\æiç”¯X`\æ¸ûO9§Dˆ\á‹œ×¦\Ø\Üù‘\"N8t‡’~´ª;+\n\ì(¢ŠI#8\éëšƒ \áIúÖ£[™(\È\ã¯Ò¨\ÍFH\ÏNØ®sdQEUO”ôôr\×- R@S½:z\Õ\Û?\İC$Ç‚=I˜QZ²\ÍSl\ë¹Á\ã­ywŒôf\Ó.Œ\é™-¤€:¯Ö»\Ë{†f$¹\ÜOz¯\â[Q£J\á´c\'=\Çz\0(¢ŠòHY¤\Ã/’}s‚\Zè­µb\0PŞ¬\Ñ6\Ç?Î„\Õ\Í\\E$R`¡OCjh6³\\ÊªÌ¾P ³\'Â¨V\n(¢»\İ&\ÓL\ÖwK{b-&f\r»ıšê…ˆŠ1\åÊ¼)ƒXvşJ\í\\01[\Ê\Ñ\êF‚Š(¦ıªh.$Ee`w3\ÅoY\Üò“Á\èk1•\'\âûÃªµØ££4 \n(¢ºSIP\ÛL%‹¯#ƒSU\0QE¯[}³\Ãú¿w±õ\×\Ï7*\Z9q“E}.À:”nC)ò¯œu¦¡q˜\åeü\0QEpRü·\é.\ÄZ\Å\å»6öû€\ìJŸş½yŞ¢†;¶„ÿ\0:\ê~\Şo\Øq&\äa×ªŸ\ëI€QE\é(µû‡õHqğ1\0{s]O\Ã{ÿ\0\í/‡ºK’wC…‡û§Ê³§€6\è™xu)ƒ\î1Y¯Y4\í[G•k+½\É\ì­\Çó¢0¢Š+ºò€\ä~Â€ŒóšS(¨\Ï8Á¤0¢Š*	 n{\Õ)¢1şüV¦ğE4¨‘I\Ï\ã@Q\\ó‚¬r[§L\Õ}ò©,[­n\ÍoäŒŞµqjªÄ€s@‚Š(¤K“·8«	pŒ63ŒšÇ™%˜\ïqÓ¹¦Œ	#\æ\íŞ€\n(¢ºUU’1ŸJ†\åW\É;¸‰GN¹¬\Û{¬•\Úzõ­›p\Ët\ã\è@QErZ\ÜN¹\Ğò>H\Çğû\Õ]\Z\ìüĞ’oB+§\Ôô\Ów\rØÁ9\' ®&—M\Ô\ØJ\nŒ‘“Ş† ¢Š+³yDwJ¨<¦\à±ãš¾®\0ô\ÛŞ²]Äº~\æ<¦W\éÒ¯BDƒvÌ£¶h@QE\\V<“\Æ>Ÿ…XK¦u1K\Ğ\ã\æ<‘TÑ±‘\ÎOlUMGQO·2°g·Sô¦EVŒ%˜+\Å_R\İ\È\Ïjóy&}\Ñ+n{W¢ıµ<C\\\åp?\Ñ\ãQ\Ë9\éš\àõ].\ãO\Ô.-\åqû¶\Ã|UXAETM\çLCŸjº°	\Ê@-\éÉ¬\ë`\áò§zĞS¸T\İ\è\0¢Š*ÁV„°<\àñš³§^\Ïi:N¿+¯!I¨\Í÷€İ»œ\n–%šB–ñc\Øş\'Ú€\n(¢½N¾KûU•NOz¿\Z\î;{\Ö‡4]JÅ¿~\É\ä°û ô5\Ó¼L‹µM†‚Š(¦°Š\Ú=Í’Çµc\ß¤\îİ§µX,_,\ìO\ãQ´{\Å°QE\É_\èñ\\Hs}«\ãF\ì•z\×s4c$\ãóª¤)\Èn1V¦Ñ›€QEÁ˜e\ÂkSK°{·C\Óù\Ö\åÕŒs¡`GJ}Œ`A´ÁN	Nw@ QETº·1\0ñv\rœ­\ç@¶+V\î\Ğ0\\\ç®v1L7d\àõ¬Y¢\n(¢º”—\èuEo*´j{Ô­\Ğ\à\ZQE@rL\Ôm‘\Ï\Ì0y\ã\ëQ··\ëÚ€\n(¢š@#´\Ó\ÃSÀ÷¤úŠÂŠ(¨\åH®-\Ş@eak‰½\ĞÍ•\Ã.3?)\ÇZ\î3\ßú\Ón-\Öò‰À\'³ÆºhV\åv{Mi QE\ç\í\n¨\Ç5]\â\äûñ[—6O28\0úU7·;Mzj)\êŒnQEeª´L	ñ]\â\ÙlJ\Ã{š›³È¬†ˆƒ\éQ49Z,…Q^›g¨\Øj\Êÿ\0d”8\æSÖ¹\íJ\Ã\ì7÷G\îÿ\0…qI=ÍŒ‹-¼\ÒB\àğÑœ\Z\íôwûv\Ë\ì×¿ñõ·\å—û\Çükš½>xùšSŸ+\n(¢¨\ç…Pº”\"·?AV\îÁ·‘\ÑÁ§ƒy9ló^O+½û\ép¢Š*	Y§” \Ï\'ºE†S\íYºe®\0•ğ\\ô\Õ\ÑZÀò°L€kĞ¡N\È\ã©;°¢Š)DvñV-­LŒDGs ğ>y\ítµw8g\ío\Üÿ\0aY—z´·0‚$¶„õX\Ç-õ5Ö ap¢Š*][Y‹EFŠ\ÓËŸP\äÌıs^s<=Ä’M!’Gl¼\É&·¯S\å\ã9¬\\Hk)š@(¢Š‹olşu\í\ß\r´¡a¡#IÌ²\äıMxöjo5+{e]\ÆY\à\×\Ğú5²\Ú\Ù\Ç\n®İŠ1\\•\rQE¬[÷dg¥V\Õ\ì\Òÿ\0Nmë¹”dõ!nµ*8Ú€š\Å;`¢Š+…Ñ­\Z+¹%p»‘°½ˆ5\Ô\Û\Ü6\ì7\çD¶jŒ\ä‚sU\Øùg¢M°Š°QE»o!`\Ç5+KfLŸ\ï-d[NG«U\í\á‡\Ì95%QN‘ bD2\ç?\Ş³A4°ªÄ¤ª®\æ\Ã\çØ¢ı\è# \ç®*¥\ÅÜ’\Ï+$Œ ö\à*c\n(¢§Xe‡–ˆ¨«\ÖÒ¤™‰ú‚½fG{22î”±S‘sZPj*\à,°\Îw(\ç&˜Q^S\âm\ê\Æö|–\0Ky*+W\Ãv¢C†ù	-úWo¯Á¶\Ä\İVU\Ğt\ï^`\"º²E-\ã\Æ1ÔŒû\ÒQE\é>G ıj\ìrg Àõ¯=\Ó|r²®\Ù\ì¦8ÀFFõ®³L×´\ë\æ\Ä\06\í¾\\œ7\å@QZ\ìYpTò?\n‘o\"‘‚Î§/>ô¾d|qTX¶\ãH\ì(QE\ÒY8Y8m\ÈxÏ­iöõ®r\ŞA£Jq‘\Ç5±\ÈÀ•=\r4+QW\ãÚ¼+\Ç6¿dñeú\ä\Ş?k\Üø#\"¼“â±Mr‘œI\0Ï¦A\"˜Q^;­!\İ3ƒN\ÑnMµõÁ#÷7yÿ\0xT\Ú\Ú\nÀs·µ•j[k\0	\Î\0QE}3z˜hÛŒpAü\×\àY\ÛLøÃ®i\ÌN\ËØ‹\Ç\Æ \î¡®¢\Â\ã\í^Ó®ºù!\ëq\\-üÿ\0\Ù´AA\Ù>Ô“r¿Ö’\ÜaEW ½\Ñ\Ï.3Ó¥Gö\Ìğ¤qÁ\â³$¶óõ¦\äª\à‡z‘…Q[B\ï\Ì\ã?J·Ÿ(\ãŒq\ÍsLÌ§¯¾jH®YH\È9\İ@‚Š(®˜L÷±€94\ÇT‘F0I\äAYQ]@\r\Æ2j\Ô71n	\Æ Š(¨.,ü\Í\Ø]\Ã<ŸJÅ¹‚T¹âº\é.qÚ¼‘\Ó&©M™Xr\ßt\n\0(¢Š\ç\ãc\Z\î\Î\\UûiylãµNòÕ£\'=2j¼rmaƒ˜g(¢Š\éVRcl\ç{ü£\éX~\"\Ğã¿·óbr’À¼7½^¶»;z½>µs)/|½Xz\ÓQE\Ê\è·^too\ËJ‡a\Éô­)XA±Š‚—¥d^H\Ö#c*¥Á-\ì9«‚u‚wı\àù†\ì“ü©(¢ŠÑ¹¿†\Â\Õ\åg@¯­p\×úŒº…\Ûa\å);©úÎ¦÷S¤…ch\ïY\àÅ’ÀŸz¤„QEI\r\ä±L¬\×SÃ·½n\ì<Kh–\×c\Ëx#f8?4\ï\Ğf¹ö@6s»5]o&Ó™\ß\çƒVETÚ¾‹s¥·”ğl	f\nr=}k:)J¶Y\0VŞŸ\â\î¥a¨:L\\–\İ \ç8À?…M&‘n—ÖŒ²´\Ü9ı\Ük“µq–\'·z\0(¢Š± i_\ÚEn&I’Õ˜ƒ \\túô®\İÂ¡\à–O´\ß)P|¢e<\àš§}«[\é\Zl\Ú.ÿ\0h‚eÌ’¤ \Î:W\çt¯\æ \'8€\n(¢º›¿]\İ]\"\ÛJ!„…ÿ\0\Z\ë,n\r\Ô*\åòOZòÀÄ·#\Ğbº_\r\ê‹‚\İ\å!;\ÅCQEvrDË“\×Ò¡7°j)„‹Œ‚\ÆA¦=˜eg‰˜\Øõ4†QEP™s\×ôª@«\î1”a­U‘B½)\0QE{p µwù®W\í\Ò\Å8))?6H\'Š\Ö×¯“öp1üF¹°§\ÍtB7FR•˜QE\ØZjQ].!ş+2\æ-—l1Œœ+\"\Úv‚]\Ê\Ç\"·\'˜]À’‚8\ä\ÖsŠŒ®QEX²˜ª…n?\Z\Ğ\îñ\ë\ëYÌ¦;5•B·<ú\Ñ\Ê\Ù ¥fXQEzBrH\ÇøTG\î\ã\'šx*Ëİ‡©¦\äƒÈ Š(¥\Ïù\Í8\ïQõ œû\nx9<š\0(¢Š1Â€8\è=½©Àsü©\Äÿ\0U\n(¢ª\ßY-\ìXQû\å\éõ\Ì\Ïm*\ä•\Ø\'\Şİ…T\Õl\ÖH\Ú\ê!\Èÿ\0X ~µß…¯ödsÔ‡TQEq\ì«üB¢hQÈ­v)z\Õ\Ù¨\Üû×¢s\Ü(¢ŠÁš\Ğ6\î9\ë\ÍUå±¸¹H\í]¶\Ì,§¢³§€F:\Ô4Rw\n(¢¶uF]_L[øZH\Ç\ïc\Ï8õ®Z\Í\Å\Ú\Ä9\ä\Ó\ì\ï.t›\à\ĞQ¸hÛ\n\ßÑ´¸\åÁTf\É#ù\n\å•)\Ü\èU¹c`¢Š*Õ•†\å0n\Ô\íOQ–\Ö#£yc2/\ŞoÇ·Ò´~\ê\Õ\Ï\ê‡Ì‘•sŒ\×\\`¢w;°¢Š+2\ÖÓ’W$œ“Z&<Qk\ÕÕ†Œ\ãù\Zl.QEbß®}k™v\Ê\Ü\×]su\'š\æ/b\Ì}+’¡´Š(®—\áönõÏ´0ù \× ±\é^\×n\0«\Ï~\é\â%®$\Ì\Çòşªô8x\ÅpM\êm¢Š)\ÒGZr¸\Ú)¬8\çù\Ó%a¬’ôÀ¨E0¢Š+;P\ÕE­\èÀ\ÂF\Ö\Ô\Ò	âœ‡\ÖA®fõ\Ù\Ù\Ã\å³Ş³\â[f&&d9ş[{=ùÂŠ(®ş)6·&®£o\ã<\â¸{Mv\ê5P\Åf\Ç7WA¥\ë\ÍqNŒ®\í\Ç9f\à\ÑJI…Q]dcÉ´.N\Ön­c\Ì\'ŒdóZ×®\ZE„\0Œ\ÕTF7j\n(¢¨ıN1Ş­@ı6\ç\á›\Óğ¥\\ŠQEk\án\ìä¶•w$ŠTƒ\Ğ×ŠkVË¦\ê²\ÚÊŒ¬Œp=+Ø­\ç\Æ2pµ\ç¿RL\Í\ß58ny¦„ÂŠ(®=n–`}Oj\ĞIZ9c¸G%\Ç?.Aü\ë\r‰\r†\ê9À9­[¥”\ã6\àr*\ÄQEzo…¼R’¬v¯óœ*HA\É>õ\ÖÜ¢\ÙFeùL§\î‚?Zó	i\ësx··\\\ÛÀ77L}O|\×gq©E¨\Æfˆ¿\áPÆ‚Š(©ù\ç›sóu»ÙOJ\ä\á˜ù˜\nÃ¾MoZK¾\0G8\ëšQEnÁrG\äWñb\ä\Ò4ûœgl¬„údfºA)\â£\Õ4\Ø5\í.K\ÛnFQ¿ºŞ´\0QEó¶­\ë|€r\r`\Ú²\à+²ñ“q¦Iqmv¤<g®8#5Å sœõ¦ ¢Š+\Ü|wöŸYó\ÌL\Ñ~F¹ß‰q\Ëi:Š4Sc?ˆ#ùU¿†—^f™}l\İc”0\ç±g\â$+7„g”º	ñø\â¦öcµÂŠ(®ù\í”\ç8\çÛ­V’\ÅOR>µa¦xhû@ŒÒÂŠ(¬‡\Ò\Ïc s\íT§¶–2HV\É^†º#\"õa8õ\Æ$\ç‘É AEW/!t\äŒT\év\Ê\Ì<¦¯\Ü\é¨\à°g…µwo%¸=w8 Š(­˜n¬A\ã¯UÔ•[\æ\à\à`b¹H\î\Ìe”õ\â¯A~ªù\Ï#€(\0¢Š+^X·*©s\Éƒwh\Ê\ÌÊ¤\r\İOzÜ\è2—^]†1I<\nê«œ	&˜Q\\õ¼­ n€“Z–\×&L|Ü\ß\ç\ëY·v\Ò\Â\Û\È\à©\Å%´\ÅdÁ8 v&€\n(¢¥ñ-“\ŞX\ï¶\Ín»Â\ãÒ¹k\ë—m02¹@\ÎGO©®\ŞÕ£<\îü8\é\\¹fÖ“\Ï\Ğ ›•\Ï@MAEW*\×q9#Œ‚—ieÀf,:\ã¦*¡ó`$2n\nİ‡XK„q´p\Ø$Š´ ¢Š*yÜˆ<¥õú\Õf•š#œ\î…\ÍLUC±¨e!—\0z\Ó\0¢Š*–Ye%;f»m\í \ÒÎ•srv\Ä\å<\×?š’n$õ\é\ëZ³:u£>GR\0=(\0¢Š+²\Õ|>ó«\êZt°Ã¦Ú¡Q&ßšgüû“úW.\âXö‰– ñ»\ßŞµ¼?\â6°h–\áZ{hØŸ%›\å\É•»¬\éö\ÚÍ¹Ô Ÿ\í:„ñ*\Ê\"\0ˆ\×\ØÀ\è\0¢Š+‹S\æ3\0\Ùôa\àhcYT7\Ôv¨n\ì&°¼¸·¸eY\ãm¬ ‚¿ZSr\áv³p:PEWO \ëˆ\Ò-´\Ò\í#$\È\Ç¸®\Î4k,G#¨>µ\ãüË\Ø9\ëš\ìô=y­\áXefd\0ŒT4(¢Š\ì\ä\í;œ\ç\Í\'Ò²®	U`{u­!–=\È\ç#­f\êşl¶\ä½W;\ÑpnÁEW	ª\Ü/‡ Oj¢ÒŸz\Òù²©V‘U£\'=Ô•‘\ÎÂŠ(«ñ\Å^´˜…1J 6qÛµJ…‡L®\r)+«\r;Q]I¶\Ş(Ø®CUL§*h?¾µŠU\'#‚)°\Ê&V…şğ\éšæ’±´]ÂŠ(«\ĞÍƒ\É\çb§\È~H?OZ\ÉVhf\Ø\ç€>\\µ~	wûT”QEY\0“N\ÆNG\Ğ\Óvœ\äŒúP0z“@QR©©\Ç\áR\02rqP\ãwô\Í<~´	…QO\nÈ§!\Úqü$`¹¦.@ÿ\0\Zg9\é\ïMhHQE\Îj:s\Ú\\ ù-\Ì|\ÕeV\Õ\\@.,Ê’2>`O\'5Î¸\0ğk×¡S\',\ãfQEE»hç¡ª—0\É\\*\é\ëQÈ¿»cƒ9­Y((¢ŠÁ·±ûN ±ŒrH=ë¶\Ãk\ä«A\é\ëŞ²¼3c\çAyv\Ë\ÄÙ‰3\è:\Ö\ÒJR\Ù\"VÁ\n‡Ò¥\Ş\è\n(¢³\åUPa\Ë<™#Š\è\'\åHª±?Î¶ (¢Š¯>´÷‡\àU\Ä@¼€1Q\ÊFx¬\ä\ÊAEV\\±(œW9©E\æ0\\ı\æÀõ5\ÓÜ¶\àq\ÛÒ©\é6ky\âh™AUm\änkš¶\×6¦QEzf‡gö-.\Ú\Ü\îı\Üa~oOÂ¶SÚªÀ¥Uxi8\Îk\Íl\éAEP\çû\Õ{\Ù!’g)\ÚÓ®#nÁ‡J–N\Ü÷¬?–SlA8*:pÕŠ[QXº•¥Å•\ÃAp…d_^‡\éXó‚§8\Îkª¶\Õ-¯-\Ö\ÇSR†;…û\É\ÏZ¡\á\ë˜ü\ç³qyn2\Şd|•\\ñ‘]fEV,*\ncÎº½\ÜYÚ¾¥:\à \Ä`\äd•\ÌX\ÛK5\ê\Û*\å°\ËĞÎº­v\ìXÆšRnQ\n†|\Õ,QEA5{¥»y’R‘šÛµñ$3\r—12Nc®:P~ğ?•>˜gƒ\ïK‘2”š\n(¢»³,R®\èœG#ÁÉ®(I,²3!ö=jå¾»w¨uYu\r\Ôş5”©Øµ;…Q]M\Í\ìV¶’\Ìì©…\ã=ë…˜-û\\+)\r -™­uvÍ«\é±E¼B\Ù\ÜC(a\Ø5Ï¾‡©À¡ŒBU+–*\Ü\n\Í\ZQ\\ñıš\á’\\u\éZz8\Ş\Ã	^¸\0Jı	\ì+b÷J°¾…f! º@rÇ4\0ü)\Úka­Ô±<\Âá…cT9F}O>µb\n(¢ºKıV\Ò\Â\İt›¤P81\ÜUP¬:¯5‘}\"\è’| z\×.¥iD¡Šó\Ó\ê\Ü\íº\Ş)UÊ¸n½*XQ^\Ø#r=«f\Î\\À\Ã$?:\á´MUo`—+2€22w{õ®ºÅˆû§­\"QEµü¼*X_i\È<\Ölü¹\ÏÖ¬\ç¯\éJ\àQEK«\è\Ú‰,Z\Şú52\0DS•\Ë!ş£Ú¼\Æ>\n¿ğ¢‰w‰­\åÉ†\æ%!\Ç\Ğûf½ú9À=H§j\Z}ˆt™t\ÍF1%¼£‚z£va@Q^5ğ\Ê`º¥õ¸\ë%¸a\è0úõ\ÛxŠ\Ø\İøgQƒ-	?—5\Äi\ZMÏ…~\"&Ÿ?rÈ’p£\é^™$^u´¨@!•”\ç\èjYQ\n(¢­±\'¬=j¼d\çØ«.¹’FN*\'PÄ°”\ÄQE3\Í>™õ©UÂ©\îOlô£8\Æ85\Z\È\0û\Í\Ï\\hQEx\Ê$;˜\0Uk‹T–4R¹få½ª0À‚7g<f¥IŠ\ËóŒzû\ĞEV%\í†Ü°İ€zZ\Èÿ\0VÁ²A\Ï\'<\â»1\åM\Zª¨›\'ù\Ö>£¦\Ü\Ñ\à…8 ö¢ÀQEQ†ù•²ò\ç“[0]	¨Àlu&¹YƒÙ²+a€\É<U‹K\ÅÊ¬NOÒ˜Q]<¨“oxT\ÆOJÂ¹µkv%s–\Åj\Û^$\Ê—øzÕ‰#I\ãvÀÁ\â<PEV=¼\ì¹\ë\ÇV\Í/\ìYHùó•ãœ>\â\Õ\í\Ëm\ÜË}ª[y>c¼A\ÈÁ\ÏÒQ\\L\Z|°ª:\ía!gú\Õ;\Í0\ÚÁ5\Ä@\"–À\n¹5½¨D¶: *HK‚X/¡jÊ\Ê[fpA¦˜‚Š(®.(Ê«‰‘À\Ø\İÁ9¨‚\Í\'!c¯J\í.´˜®\ŞiñûÒ»W\Ğq\År—ºeÖ›&\æ\Ô.\æ+J¤À(¢ŠÍ†\ÔOxpsô\ç­M©\Ê\Zt·M§g\\w&µ\ì`Š\ËK—Q¹Ø¬\ÙÙ özW\×m-ñ—\n›\'À(¢ŠÛ…%Œm\Üp{(­ıY¸\Ò.[rŠ\ÄY”¥s0Ü•$°\î*h\'Š@\Ã\Ê‘(\0¢Š+¹Õ´û^\ßJˆ\Ü\İHw\İ\É\Zô8\éıs\\…Í«–ÚŒ¤Õ·\á\Í{û5¤¶P;œ$„ó\Æq×µ&»¥\Åk|\ÓZk B\Ç&8c\ÎqùPEW2X\äÀR@\ç=¾•Mk\ë®	8\Î1øf­Zi\ÇP‘‘&;\âº\í;KŠ\Ò,\0g–©`‚Š(«v\ïoc\å)*q\É85\æX¤@\ï\ëõ­ùF\Ñ\Í#\ÂuÀ>´\'`h(¢Š\å5‹¯\à{˜\Úq’ş\çÚ¹9\"xd18*ãª‘‚+»¼7\Ztj\ë‘\Çª—Vz\ìr²ùwJ	+Y\Ïô®„ô0h(¢Š\ãĞ·¶;U\ËxZ\æaƒ“M¹°¸³m¯[h8\ë\ë]7‡´Ái\ê`\Æ­Ù\Ï\ËV ¢Š*;û5Ò´ˆ\âr¬r~•Ë›öY½1\ÜV¶±¨K{$®B¡ûª:\\ı\Ìc9Š‡Æ‚Š(­\È\ï\ìX¯¿5b\Ú\ã\Æ+“YZYI&®Zê¿¼p /p+	A£X\Ê\áEWk`\ë\ÅH9ã§¿¥g\Ù\ÜUd †\íZjÁ†ÿ\0®³,(¢Š8Á\æ…9\0\çŞ“nşT\á\ÇB÷8 Š(©ı	´\íŞµO¥H§8\ã·j¡QS \Ï\â+Sµhg¡Š?9÷­¤l\0Z|ö\â\âÜ£` ‘Ò·\Ã\Ôä–»T…\ĞQEÊ¤Fª\ê\r\åÛŸpEk<EƒÁ\ÏkUUs\Æ\à?Zôp¢Š+°\ÒlşÍ¥\ÛEDcw\ÔòjÁ¶‹\æ;F\ã\ßeSj¯=*\ç¥Z (¢ŠÍ–\ÓñT\å´òÔ°ú\ÖÓ®A\ëU¤\\`S¸‚Š(¬O^:\Ô)üª\Û\r¬ÀñU\å#½K-QYsš³\á(M}¥!²©Á¤\ÕK‰=\ëSÁ\è\ßÚ“K´mU\n;“\\\Õô‹5†\áEW  ÀzT\é\È5€EL§ŠòÎ¤QE6@\0\íÖ±¼K(%8$dÖ¼£õj†½6‡+*–1\ÄJ¸;2e°QEÄ±lğH÷«÷÷V­º)2{©\ëõõª­´ô\É÷\Í,@\ÈBOLWY\ÎQEvZE\ì·Ù»¹Š-¶\çi”m-Ÿ\ï†©júÜ»ï¢”]@ÁX\É8\'¶=ª\Í\Ö\İB[`\n\ÜJ2\Ì8;}\ë\n\ÏY»\Ó$[\Ìx<©ğ¨((¢Š\Ìu!ˆô\â¡F!ˆ\Ïø\×Gı£¥j;Rş\Ğ\Û\Ì\0Q4tó’H§\Éá¤¹,úeı¼\è\ÒaT°V\à\Õ& ¢Š+*X€ŸZ\Ò\Òô\Ã<şl€mS\rEÿ\0\î¯l\É\æ\Ú¬»²­œz\ê´\ËAº¨8\äj*JÈ¸\Ä(¢ŠA¨%G\'­X…„gÿ\0\×N–,)\íP¨\Úxˆ®c`¢Š+\'\Å‡PÓ¤–\Ğ*\É\Õ\ã\'\n@ôÀ\â¹u)|9ud©)|\É3y‰½»ŠõKf\İ\Ç\Ô\ZòŸi¢\ËZo”„—æŒ‘\Æ?\Ç4\ĞQW4\ßøG5S\\5‹g™›\ì{9ª\Ş!Ğ®´«(\Ä\Î&I<rF8\Û\Îr‘¦\Ñû\×ƒ\Æ+¨±\Ô\'Ÿ@½\Ó^S\åJ›’K+J±Q\\\íü¶“\î\ró)\ÆO¥z—†5d\Ô,ó½<\ÄN@\'\'\ß\åö:|·\r¼\Ä@\êsº½Ãšd:}¤®Š\0q!6j†(¢Š\é\í\ä\Ï\n¶$ ñÒ²\í\äÜ \àôô«ğ§“H ¢Š*\ê\ËÁ5f\ŞL6k)XÀ5j\İö\ã\×Ú€\n(¢ªø·\Â\ã^[MJ\ĞcQ²p\êITŸZu±e‘ò¬ ö­»iŠôõ§\Ïc\r\â³&\Ø\ä<\î¯Ö¥¡¦QEf«–\'5\Z·˜—w4÷†9?-!!Nr~^0\n(¢˜G\ŞNp*#\ÜA_z˜Œ°\Çc”™8sØœzt AEU_+ŒôEG´)8pXõaô\Çz´Ü·^\0\ÅVäª±Pv¨\0¢Š*@ş^0H\Ç\ï8´x!r\çœ}Â«t\\†\0§‘NG\à©\ägÛ­0\n(¢«\ß\é\Ñj\n\å0\nŒ‚3š\å.\í\î4\é[\ÍÀùp{Wl¥\ÆF\ë\íL¼²µ\Ô\ÒU\åÀ8\É\0QE\ÊX\ßüÊ¹Â¤ö®Š\Ú\é@F.Bö\\}+’¿Ò®ôÉ‹ªîˆ€|\Ïo¥Mc¨$\î\È˜RQEÛ©Y¢$ó¼ƒ\È\íUç€†–Xˆ\n¸À=\ÍP´¿2m=[\Ğvÿ\0=*ò\Ì$	X¶\æ\0\İiŒ(¢Š\Åñ¤²\Ù,Ä®m\Æ\àBö\Ï5N\ÎtxU\Ã•\Ò^*\Ï¨Ëÿ\0(\×l\Æ;\émñ\Ê\ÈG4\0QE¼˜$d\' &‰m\Ò{w…\Ô;H»­GÆ¸-Á\Ç\\t­x\Ã.7\Æ\Ã;‡ozh¢Š+ŠñÕ«iş¶†ª¶\Ó5\æ\Ö\Ä$\à¾O=I¯Wñ®Û»£•OºGZòY	IŠŸ¼#Ò¬Š(®‚¬0\Ä7pFE[pN\ÖP=v÷¬«Eó\r\Ädu\'`G,|0\Ü\0ş\Ï\é@QW!\çkóJ\î4x»¤‹[‰\Ì1ÚÈ }\â}}k‘±\Ò.n$ˆhVAzŸlúW \èvqi±\'Ë—\à?Ö¥°°QE$\Z“\Z¨ \0H\Í[Xğ\0\Ïµ^º‰¶+µ[¦\rS`{*FQEI¥ f\èq\Û¹`¸õ¦ÿ\0c\è8 Š(¥dh\Ù;Š\ä5kC¤\\ˆ’s\é]€luôª\×ö©hğ¸<Š¸J\ÄIQ\\õ–°.­\ã†{p\î>U*9\äòkRö\Ê[½­¬¥/·\Ì#\Ï;«7E\ÓÆ•,·’	\ØGAY¶úŒ¶úŒ³ù\íó\ÈO^+tdQET½°¸³‘¢¸‹\0==k:dq]ºj:v±·¾%e‘†f_AX:¾\Úr¤ªÁ\á—qŒxµHAEW0É‚}\rUl\ëW\å#5V\æ[…R:µ2\Ø#¸QE½£oŠ\İUØ•<\Ç\Ío\ÛÉœv?Ê²\"ˆˆTój½\ç‚0Ã¨®Vt ¢Š+Pª\í\'§Ó©¤ô\İ×°\Å61Œ\ã8\ïS0\ÎHú’i(¢Šfrzó\ØÔŠ~l•<ó÷{\æ”0\'Ÿ\Ã\ÄQEZFÇ­XF\ÊòsøU4 t?XI0 ”À(¢Š­¨\Û…\æ@IQó}+\Ï<Q0Œ¡\ì¾ù¯O:•\Æx\ãC–{3we“o2$kÊZ\ì¡_\ì³	Ã¨QE\Ù[\È\'µ†lpñ#c\ê9”m÷¬\Ï	\\‹\Ï\ØKœ²¦\Æú+e\Ğ=«½3™…QU½V\Í\\\ÇQQº\äU(¢ŠÃºLdöŸ1I\ëf\æ<\äzV5Ê˜\Ø\äqÖ¢H¤QEfL	$g¥t>ˆe\Û\'\æ“==sÒŒ·õ®³\ÂH«n›wd\ïcŸ\\Š\åÄ¿tŞ\áEWV¼T\Êr>•]I\É\ïR©8\ë^i\ÒQE6l˜\É\ä\ãµMDËQQœ \çšKf\Ç\Ëø~T\0QE‰¨ø}$\Ü\ÖÊ±¹BsU´M­\ïe¸»M°\Â~f\'ƒJ\ëLa†=\rvĞ›‰85¬j5¡(¢Š\áµ{ß·\ß;—%3û±\è+(“×Šİ½\Ğ\Ú%fŒ…q\×½cMmq	a,2.\ÖÁ;x\Ím&d\ÓAEUcùúS\ÒGGÒœ£®\á\ïO½j\ÄQEnø{U\ÔR\à\Å\ç»Bclğ{\n\î!{K€ş\åÀ\é\Ô1®?BµnÒ•~†¶\ãa\Æ®Y»³x-Š(­9\ãxq\æ§^GM€\ê¹õr\çeòŸ\r¡\ê>†\Ö\ë.Z‘‚Hn\Õ%…QT\ã\ÆNzV_4¹u_´°Ä’Oo–Q\'qŞ´\È\Ãò\Î~•~\Æ!+2J¹La”\Ô	…Q_=,m»k¸\éZ¶\0\Ç8‰_$úö¤ñ^’š7‰®m¢‰£ˆü\è¹\' ú\Z«c\çy»¶‚\äóT„QEuVvJŒI\çwJ\é-ÿ\0sb\ã±\Îz\ÖE‘\n@9ÖÄ›,€\rÕ‡h(¢Š¹o!‘Œõ;J#œg¥S´“+’)%”\É.ÀxH(¢ŠĞ³H?Î®\Ç \Èó¬¸[\æ\çğ=ª\â°\é\Îh\0¢Š+V\'†J¹\ØÁ\ÍdÁ éŠ°²\ãŒ\ĞEU5JŒ¨.Ç°\éŸşµ.Ø¤fp Ÿz\ÏI‰\Î\Õ{ş\"\Ê>m§;½iQEX0‚ôµe`pœ)Á\rŒlSŠx»À8\Ë8\ÇOj	\n(¢«\Ûi!I\İ\ÇNƒ¥5£’x´\à<Š\r¡iE$yõn1õ AEV4‘dªn#\'\'\×Ö«´oH$€x\Åm5²\É+c’U\ì\ÈTÁ\È\ëú\Ó@QEf‡898\àcÒ¬G)Prr}\Èúv¦\Í*rU<¹öü\ê%\á?!\ã\Ğ\n\0(¢Š¾\ë\rÚ´R€\ÈSi÷\í\\>µ¢É£H.­w\Ír\ã¥uQK°wô\ãŸ\çV\Òl£€Ë·{\ĞEW§jb^S%³¼]\à›\Ôq\Å`kZºDŸk´_ô]»5_º}h\Óõ$•Wq\äòq\ÎE\0QEuq\Ê\ÃiÁ\nA=\ÏZåµ…û§øÚ³.	÷\ÍnC:•ƒŸÂ¨x‚q¦y.’Ï§ÿ\0®€\n(¢§²Œ\Ë\å>\ß8¸<š\×y¡‚\×l§\ï#;\í\íYZ]\ïÙ´õ1\Ü\ë†gJtl$Ug+\Ğc(¢Š\ÍÕ¡Í‹–>ı+\Ë5+V[Ç—RZõ«\í\ÒBAS^y©.nH{Ó¸X(¢ŠÍ…¾d$cµv:6†$Y\ìxğ„‡Ö¨\è:j\ÜOí‚ƒ\å\Û\ê~µ\İZÁ\äm\ä®X=>”\\Š(§\Ø\ÛŒ.Ò¨¬ppHµ¢\ÆGAÀ\ÅG }\á\ßüóõ©.8\ÆÇ¥ \n(¢®Y\Ü	W\É(wj£d‘†\ì€z\Ô#\å(}={\ÕÜ­\ÄY\0.\Å\ç\Í\0QETbA\çÜœrE=·+*A¢;¨Ï©€(¢Šny~X§ ,½\'”F¾cm	\Ï\â´!·Xa¸\Îÿ\0\nQ\\Ï‰tÙ›M2\Ä\ÛBòÀWŸ;	\é^¹z\ßh\r\ÒÁ¯2\×\ìÍ•ñ\nC\Ç5\ÑM\ßC ¢Š*²I\ÓG=kwMÕ£™M\Û&A³\Ì`~@O8®n#\ÆA~jp}¸­ˆ\n(¢¬\ëZY±”•% rLRu\Ê\çŒ\Ót› \Ä\ÊÀ\îŸJ\Õ\Ó\İuKF\Óf`¥DŒzÚ§Š\Ì\ÃªŒ\ã‘Ö²©-,T·\n(¢ Á‰±ŸÆ¤’2€Ê¤\ĞÓ¦L#¹© ;°¯ƒ•\În‚Š(¤@¸e\ïW\"“pû\Ù\ÏjÏ‘M´¸9(\ç¿j–6\Û\È\äR\0¢Š*\éùp~^zcµ4\Ã\çùP’n\Ç)À8\Ç\çM(¢Š‘“\ÎjeÁ\ëøUEÊ¶G\ëS¬€óLŠ(«\ÜR+\nö#QLV\çŠp\É€(\0¢Š)4\Ë4õ–;u\Â\Î\\F\İ\'­^\'\éT–O,\î{\äUµ\"E\Èâ»°õ\ï\î½\ÎZ”\íª\n(¢¢~Z˜ü©©\Ùx=sP;â»‘ˆQEJak.\î\àúÖ¼Ë‘\ÅP™Fó™H(¢Š\å\ç\ä\à\ç‘]‡…˜›%=>V†\ê\æ5Hx\Ş8nõ\ÒøMÓ¢õ\Úü\çıª\á\Å|\'E¢Š+§\\S\Ã8\ç4\àN1\\\áET§œ\çŠd\\K\×Ş…\È>´\Ö8•gÁ¦0¢Š+F\ËJPz\Ôw\ì\ZL)\àv©­_?µT•²\Ä\äòzPET8ƒ‚\r5¡W\å\ÕXœ0\Í<òq\ÎhS\Í°QE—s \Û\\\Ä<“\ÏÒ±g\Òfµ™#—%?x=«³Ú‡DxYC)\â©M“Ê‚Š(ªöV\ŞLJ½TJ°\ÈO¯n*­•\ìFS0W8\àŠ\Ô IRÆ‚Š(ªjvu\È52¾0CPÉƒş\Ü\0\áš\n\n(¢¯-\Ò\Ì\Z)”6ñ3­Mmoÿ\07˜¡¾I3\Î¨¬ôE\àø\Õ\é&ò\Z £p{\Ó\0¢Š+ñîš–˜·£>d>k\Ê\áb6’Fñ?\núx!Ô¬§ˆ&RHÈ‘jñ›¿\Ü\Úje,J·\Ê\Ş`\Î3\é)¡Q[V(\ÜU”\æ®ß¸\Ûjˆ\r“ŸJ¹öUƒO´\Î\Åò\É\0şU™~\Ä\êû	_İ¨QƒùÔ‚\n(¢´¢%a\ä\äõ<õ¨\à“.[?­E4¦88 –\ã\Ó¶dI\ç\æ}E\n(¢µ\"`T@¡\íVP¿9æ©©\Û\×¿\Ù\ïR\Æ\Üñóz\ĞEU\è¥òø\ÅXÁª!ˆ\åFjÂ²ª\åNOÒ€\n(¢•Œò@ò)¬r€X\è:ñOb¤a›†=\ÏZ3†\È#ò\éHaETa\Ş0\ì1À8#¥H³<L©ƒµ{ñ\Ø~uÎˆ¡Xgx\Î[·SFHùŠ\å±\Î:QEXóp¯´gtt§$\Í	Àª\ËÀV$Œò@?‰¦©\È\á·Ç®;ÿ\0Z\0(¢Š¾·‰\Ød’{¸\àT¥ò\ÑD\n…PI\Éô¬\ï3iX³ùqÒ²\íf8\Î8\É\0QEY\Å\å³>ö\0¦Icœu¨\ÒUm‘û\Ä~¦”\ÍÌ’\ç\' \Å0\n(¢ ’\ÉX…\\cÚ•PpT±ÀúU\Õeó-\ß8\\\â…`\Ë# Š(ª’F$Y£(WoÖ¸][Km\ì\Ë\n³[;\0¸_¹\íô®şH÷Fy\Üü\àvÿ\0\"ª_\Ù\Åyo4RŒ@Ss@Q\\­¥\ê•\n œu\Íh\Ï\"\Íd\ÊN¹®nhgÓ¯¾\Ë*°\Ü\ÜHGQ[L\n„#\å=x Š(¬\í>\è«<[°QˆÇ¥lC#s“ßš\çp-µ‰Bğ²|ÀZÜ¶n\0ÀÀ}\èQEbb-§­p:‘\Íñ\ÈÉ®\îá€ˆŒ ®U!n\È\ĞEWY Ávh\Ë\È=	®\nd†Ò¹\í\r‰\Óc\0_Æ¶\ÕU›ıkg\×(¢Šº‡÷‡\n1\Ğs\ÍXM§!³Ÿ~j¤_(û\ÙoR:})\ã$\ä`ŒÖ€\n(¢­ŒdCN‰ü©K)?xg5\Üc\ß\ÔS–6õ\'ó Š(­v]¨d¼s–8\Æ*¡‹÷Œ£‘¾µ½\Ï\Ìo^zÕ‡÷\ì% \'– Š(¨\á†(T´£)Ï¥Qº»–Y\É\ãf\ÑÓ¶*{Û±4Ÿ”)ÀÀJ§\æ.\ŞOL´(¢ŠzH\Ì\Ø8Çµ`x£Iû]¿Ÿ7\'Zİˆ \çG­9\Ñ&‰\Ğô<S‹³&J\è(¢Šò_)\àfV{*xù\êO\ëC^­\î.\àÄƒÕ›r03“Š\êOCQ[Z<--\Ø;°\0üëª’5¸‹r\áY@õ¬\í\"\Ñb·ıó\ÏNÕª¿º!”Æ¹\ç+³X«QY3BM§†\ïUUš98\Ğ=´Wjv°2dbqY3Ù´d\ä1À\Îj\n(¢›\åù\êTœ\ÕA›f>Jÿ\0\rHT\àu÷÷‹\í99şT\ÄQE9\Ï\å\éW ¸\â³@·”\ÌùÕ˜e\0\Î?•!…QV6Ÿ˜c¾(Á\ÆGOJ™Y^0	ç°¦*v´\0QEÿ\0{\êj]Ş†¡\àG ´\0QE/<œ~\"M´ŒqŞ¢\ä‚qM8\Ï<\æ„\ì&®QEh)V]\Ù\È5‹\ÔÈœ©<zT¬.A\È5\é\á\ëó+=\ÎZ”\íª\n(¢ª‘sU&A\Í]`•«[³$QEsšŠ¼ks\ÃDx\È[r=wzV.ª1“\Î=«g\ÃJ\Í9\Ú\ÜçŸ½\\˜­š!EWD©\à\åNy\çú\ÔDá¸§n …y\æ\è(¢Š6:ô\ã#p£¾=}é Œg­6Fı\ÛzQ\ïLaEU\ëv`9\â§ó¢‘q*\Ï\ŞZ¥px\Èõœ²qÖ€\n(¢­›E*\Z\'Á$w—·‚0i\Ê\ìñ«^dS®Ù¸`,ƒ\ÓŞ€\n(¢ªc´\Ù\İbµyX\à’j\ËZ²|\Ã,Œ~RZ\Å\×\'ò\í<¬ıó\ÈúUE]’ÂŠ(®fi™§\ß\æóœ\äµ±§k\ïH®\\º½>µÎ‘´•\ÈÀ=9mÀ\Î+¡Á4c\Ì\ĞQE\èq\Ü$«””\êipKn>•\ÃX\êR\Ù0e9Á\É\Ít\Ú~¯\Úòøn3ŸJ\ÂPh\Ö2L(¢Š\è¬Pe˜ñÁªSŸ6v}¥I5wş=\ìƒ)\Ã0\àç¨ª\Å\ÎCRXQE-³˜¦§¸õ¬?Ûˆ\ä‡S‰• \'÷ƒ\Ë\Î¥k£“ø\â£\Õ\íşİ£\\Ú§z\ädg‘@QX6·i¨X\á\ì‘\éX#\ßI(é¸œVF}{¥\ßM[\Êp\Ë&\Ñ\íZV\Ãl;Ù‰#œ\ç­\0QEZ¹s$\É9 ñZPª‡q\à`g¨†°­?{p\Îy\×\ÛŞ¶–By\'‘\ÛÖQVü\İ\Ç$jx¸;‡Ò©(\Ëdr=*\Ô`ÿ\0q@QVÓ¾ÿ\0^¤t\ÅT\0:œŠx“p$}\ê@QE]%*Cp:‘Gi\0VBœòx\É\éVLD\ï\ÂtıÉ¦,\rò\í>‚…QU\Ør@9oş¾?¥&\Ö «x\í\Æj³°ß´©#¡\Æ1ş4å‰£*e\ç¾{P ¢Š*¶•\È?\çúR\àÈ«‚ğ~ù?¥NŠû[€rp1\Ç|T‚0K\0q·¨ Š(¨”;1!H\\\0{\ç\'&š\nŠñœó¹=ıªPhòˆùˆ\àñ\×ÿ\0­O\İóz(\ëóÚ€\n(¢¡\ä.00\ã¿\'úSCP­–\É\ÜOw§2BUK)\ê}ÿ\0úÔŒN\æ\Ü\nª{ò)€QE­(%\Ü`ºÒ‡Áz(\ÍBÑ°U@6\ç\æ#ú\ÓF\çNG;A=\è\0¢Š*a&6/’Æ›¼:¡\ÏËœš†Ve,Gû¢ 2T\0F\0QEŸ¯\é\âş\Ğ<kû\ÔËŒu>\Õ\ËX\Şo%B›2\0aƒš\í¼ø\É+»†\àA\\¶³gö{\Ñw1WÛ‡=¨\0¢Š+3V!. ”Œa€\Íj@\Ä[*}+7RFš\Èg\ïpq\éV¬ƒ“¾\0¤ ¢Š*ô’p@\ï\É&¸}U•õ=ªAúô®ºwÂ•\æ\Åq\Z¬¦;Ü©\É&˜Q]v‡(\íKó)\ÉÁ\âº\Û<\çõ¯6±¾•.\"\É\"\Ã~\ßL\×ye:\\*\ÉÀl\ã\æ\Ï¨QE°·zó‘š°’\îPzq\È\Û\ÍQ„\Ê8$ƒØƒ\×\éSÇ»8\Ã1\×üşt\0QEtuşT1\Ê\ç4\Ô<IÀ\àUˆabIÀ\àd†½hQEû[S&	\îzT“_.ğ¥Np@\ëZŠ\îõbQonŒ0c	5@\ÕJŒ\ç­\0QEnK¿\r*\íDEh\ÆsY\Í\Æ@e \ç½C\ÃG&rH\ã®’%\ìLNZ\å\Î\Ñ\Æ(\0¢Š+0^\ØüEL»\Ó\Ù\á1HQˆm¼S#a\Çn)\0QE\â=,^D²Œ)“\\™§´·m–%TğGA^\Ê%VS\ÎGzÁM=l§qÙ¥h¤\íb9u¸QE<)\å€Fz\Õey^G\áQ®|¼É§F\\•…QU¦C\È\Ï\åN(\êRq»<@©\Ù|\È\È=jŒ‘°\0~”\0QE1²‚`\ïU(=X\Ó\ì\à\×@JzŒñ\É÷ª*\ÌE8\ÏJÑ·v·\å.¥›\Şœÿ\0ú©ˆ(¢Š\Ê\Ôs4­.~`r*­´\Şp\ÃJ:Õ·\"ErbX‡Ï’\ãYwš|±5Ê¶\ÒGz\0(¢Šš\Şm¹ŒZºH•r8\Ç_SYÈ²&I\0\çµr‚ÆÂŠ(©1G4\à011Ö¤ò\ÖE.¤óÖ¡ \ã\'?J\0(¢Šzğy=i\Äwšbw\ÎsOİ“‚r=i\0QE)=›*É´\á?:`Nsù\n]¼\äòsÖœ[N\èM\\(¢Š|‹òñÈªrœõ\æ®n\0`şuBV*\Ç&½J5”×™\Ë8r°¢Š+V CZş\ì1Œ\ìş¦°õ‡\ã“ÿ\0×®“C#±ˆc‹\í\\ø¦kH(¢Š\ØšE8\ã©\Éşt\Â2­\ny8\çÚ¸\ÍÂŠ(©#®)²\ÈLd{ÿ\0Z7| ­G$€Q@QV\í\Êùy>´üÆ ˆ°^üóÒ•f!˜ßµŠ(«*GSO<ô5ÿ\0H¹+Á Š(«V÷\Äÿ\0)á¹¬}ZÁ5pói÷!¦[Í·aóŞµ%ı\ç\Ø\í\Ì\Ätö\ë\\‰\Ô%ğ\ÜE+$§’Âµ¦º™É…QLuu$J¤8\ìF£q¨®/´\Ã\äİºZjgg\ÎÀ+˜¹‚k9|‰ğ\0[¦dQE\0†R	\È\ÏJ›O´i¯¡H˜ƒ¸t\ä\ÃÒ¨y»2z\ã­t\Ş7\Z” lp\î}½QE\Ñ\İjV\İ\Åc¼‰@l\É\Æ}GµHH\éÛ±¯:Ô¯Z\â\èÏ¿$üVæ‡¯y«\ä\\¾\\–M\Ü}½a([Tkt\n(¢º|˜\Û\å\ÎJt’p5In\ÖE\Î8÷ªú…ù·³f7º3\É5™ QE\ç’\Ä\é«L‰Q!\ã=*\Ô\Ób=™úU8®¦šúF—!Nzz\ç¥2I”c\×\0QE±¥\íH\Ëÿ\0tÿ\0JĞŒù\ç¶k>Üª®1–\î3úÖŒ\'*@QE^ƒ8\ëS\ï\n1œ­V…$ŸJ‰®\äƒ\êh\0¢Š*Ñ— ;šš2=jŠ±g\Ğt\ìj\ÂH6ƒÛ·j@QEv&€¤ğ¼µ1¡Á,dğµ)6…$eûgœw¦ı¤y¬6ª\çAaETbŠõ,zóL+…,T\åŠ•\æ\rQ\Î@ú‘G\Ú3.\ÊgŸSA6\n(¢£\áŠ\ãFMA*	!8\0y\Ç\0ıxşU;Hd‡)\ÖF\0sÚ‘\ä\ÍÂ€\È\×w½\n(¢ hÉ´tQœş‚›’\Ñ§;\ÎiÛ¾Y¥\ÎY\ÏtE4\Ñ^I\Î\0üõ Š(¥\á§Œ\\ƒçŠ‰0üª	v\ïş}*¸\ÜzsùS\Êò£~\ì|¼{c4À(¢Š°\ä,¼p6^ıU\"5¿€gñ¦	FI\ç;)‚˜\Ãv\î\ÃÚ€\n(¢›¿\Ì+\Çm\Ø\Ígİ’‡…Ç½_8\Ü\ï/\Ş\Û×¥Es^3\Û4\0QE‹öœ=ñRÜ»\İ\ÙÊ«\Ø\È\ã¦:\nÇšV‚m	\äñW-\'A‚\Ä\ã\Ğw Š(¬;¢ñ\Â\ês•œU\í)\r\å„kaµ~cQkPª¬²©7\\c­VÒ®\Ê[Ÿ(q\Å\n(¢®\\#$LÌ­€q“^{­HMğLc•\é’=¬\Ö\â(ò™\Ã1$rEyÎ·üNN\ÊH#\éM\0QE‘HT#`£¸5\Ñ\éZ\×\ÙT¼K\Ê\èkfd]\Ùb¥F\Ş\Ägh\ã$\Ñ`\n(¢½.\Ú\èÌ±\ÊÁCH €x\ãü+J)77A\ÓÖ¼÷C\Õ\Z;‰\Øp©’x\æ½O‰\Ú¸vI*\Ü\àæ€¸QE©g˜Û€Ü§\ïg?-Oq(	\åDw`œH:š…¯¶+ˆ0«\"ƒ\Ô\Õ@\å\É\êM\n(¢•\×,X¹-Œ?\nƒNNG>•&W \í\×u2VÀ/O›½\0QE\"¶I99ôô©\âvŒrx\'j‘“\áFGÖ˜d\'ƒ‚¤EWM±]Bü‘â¸ª\ÒBWyL•\Ï²aX\ÙHbR1ùVİ¥\Ú]¬KpN\Ä\ÉÀ\ïõ AET\n\Ü`õúUmB-\Ğy \Ë\È\ÍZ‘Dj%#†?(1\ë\\Ş¯«q²™Pà·­Tcq7`¢Š*ÍòÊ»‰3\Ğñ\Å]\0¹Ha\ë\\¥\Ä\æC¸j±c¬½¾È¤;‘G@9ªt\Ù\nh(¢Š\éó\ïQOrGCE¥ôWXë¸Œ\ã=>µs\ÊÜ¼\ãğ¬\íc@¢Š+6+ey29#\ĞU‹Óˆ\Ò-\ÙÀ\Éù{Ö…¬b5gÀ8¬«\ÒLùcœ\çš\0(¢Š¥\Ğp*œ]7\Í\ì}i¦01\ïÚ‚¡F@\ãò V\n(¢©Ü¬Yybù]›;q\Æ)ˆAR\ëß¾j\ãG\æÀ\ÏÒ³e´{Y|È˜•\ï?­\n(¢´\à”œzšDr\'°+:)˜e9=À\íZL\Êy4€(¢Šf\Ş\Ü\ãù\Ñ\ætt©\İ7\0\È8ô¨\Âúñ\ë@QB±#\0jPq\ØThp1\ï\Å9³»¯\ë@QNnzşUFñ÷§ –¥[l¨#5F\ê@\"\'¥T$\â\î‰j\áEW/¬KœşX®\ÏMË°ˆ\ä\"‚>‚¸»¨ÌºŒ\ã\çš\îmÂ‹t#¡\ÉıkJ•9\Â1°QEg ®FN;Re»Šh+\êO½.\âF5‘aESó\ïŒTLI‘AÒ”\ä· \Ôd“(8\ã\0QEv!ò–\Î3PC4S)\Ãy\ïRù¢8™¾mª¤\äsÚ¸+=j[&gE%]‰oozQ^†\Ç¯)Œu\ã\ÖN›ªC}ºœ\Å|²9\ÍO~,í‹‘óc\åu>”Ò¸®QEcx†ù¤h Tn\Îx\Ís\Í1POSšm\Í\Èfİ¤\çj¤’Œ¶9\Ód`\İ\ØQEu.‚z0<Úº¶¸_h¦9\\\rB\×eQºQ\Ğ\nó\ã19\'Ö´´{ù­µHeƒqvùqÁ#½1QR\Ù\ÛK{y\ä\àaX‡<q\rmjZ\Ìv\Öÿ\0\ÙPE@¢FSÄ®¿\ÅùU}ncfŒ°¡S)f2O\î\×!%\ÉóI#Ö\Ø(¢Š\ÔkÂ¤‚;\Óc½(\ß+\"²Œ¤m\çœu5\Ú>o»Çµ! ¢Š+\Òtcí¶¡e L£sU¼K!Í«!g\Ì\Üş\Ëh÷\í\Â8V8<\í8­rS;\ØF\Õ\Ú2kJ\Ì\Õ0¢Š+,\ÊV&f>€óQZ°’Ebˆsš¥$\Ä\äg\éW¬¹ù±“\Üz\Ò((¢ŠŞ„ œU¡(LO=:\ÖjMÀ?<HH;±œóHŠ(­!1\ë»\èE!mÇƒÁı*oş¸©ÔœmSŸR(\0¢Š*x›a\Î\ÏZ¶¬W•#ÛµPW®x\î*\Ôr\ç\0õ\Ïj\0(¢Š\ìÁ%¾\è¸>¦¡@WW~Ys’	\ë\ÍH\Ê\ÑU\É7$g\êiN\ÒÄ€8?ZE…QLW\ß1Ãœ \ÚTv\'ÿ\0­Q	¶\Æ\å—,\Ç#ğ1vƒ\Ì_”9\Ï~ü\nŠL³uG§\à($(¢Š°&MÊª\Ã:\ÈRy\ÅU\ß?yºg¯aT~lF*ON@ö\ï8«&Y¶ƒ\ë\Ç^(QE-\ĞrÀ !I8=úVd*›/\É\Çj\Ó¾9N\á\ÉÀÁ\Î;S.-’_7“ PEV;\Îy\ÇµD&b\İx\í\Å]šÀc\å@\0ùFgKI6•\í\ÇJ`QEZKœ—\ÜrOn	¹ ’\09¬|”!IT±Î®\Ø#;{mşT\0QE®B\Æ\0€	\'M08÷\àsø\Ô\Î6\ì\ãÖ—óó¹O4\0QE…\â+\\0¸EùO\Şú\ÖM¥\É\Ü2\Ì¦+¬¼·K«vC\Üqõ®\rî­‘µ±‚1@‚Š(­\ë‰R{ˆŒ|¼rI\ïX\Zzù6ûwø«ŸiFH\ëÖ³­YZ,( q@QV\în6C\Ôq\\U\Õ\ë\\^Npq‘Zº½ò…1D~el•Î¤~d\ÄnÀ\'9¡\0QE¡\n—¸\0’\Ù9\æ¬\Ç³\Ï\åA;»U^\ä\Ñik,Ò®Ó•,¨[\êq]¼\ZM¦›\n\Ü\İKwP1š(\ÆUŸ²\æ¨AEVnƒ¡\Úï™­ş\Ë)r¼/aŸz\ì_\ÄR\ÛùVjñ\å~e‚]_Â¸w\\Mb`ñE\å¤+´ª“‚z“Ÿ­d\Ú\Í,„\ì\Ä\Ä\nQ^ª%\Ü\Ù,X‘Œ\ã ö§ \É8|ÓŠ\çô\ÍG\í‰\\\î\'?J\ÛG!x\ÉğjJ\n(¢¬òœ=) /÷‡=¶\Ò);y\Éz\Ó|\ÂÜ\Ù\ÏQOİpO¥Bë¸\ßsM\'®z}zS|\Å\Î6\äy¦ERù›N3ŒsS\Û\Üùy\ë€1Ö³\Ë€1\Ğ\n©s¨-¤Ch\Ä\Şf½4®Kv\n(¢º‹[\ÛK¶6\Ó\\ª2GŒr\0?Î¹}SFŸNxğ\æA9fA\É;GO\ëXhu¸v,~f$œ\×I¥ø©d-ow\Z\È6ˆ¢‘±òc#ó­\â¬d\İÂŠ(¬Ebr	\Í)@pk_T\Ğ\Ö\ŞF–Ğ«[\Ã\ç“vy\Ï5¯\Î<v\"­QE\"HĞ±(H\'Ş¶¬5ö‹j\\\"U#\Íb¶\ãK\Z%£98\æ¦QLjMQ^g,7\Zs<Nuf\É3\Ç\éZC¢x÷A®F##­Ac©\År\' LG+ŠÁÅ£T\Ó\n(¢˜\ãi¶sL\çÓŸJ½$E\ÎE@aù°sPPQERš\è¤cjo(c\çM‘8\àt(¢ŠÇ–\ÚXe\ß%sÊ\É,3+ıÑ†\î«“.&f `u#¥pS\êú”—Ds³\Ë\r1Q^\ç\ëJ°Q_‘z\ç´\ÍN\Õ\Ê® ­k\Å3)Ç¿­!…QRA\ç¯ô¤\Îr5eH˜s÷±U¤Vˆ SLŠ(¤\É\nA\É\Íg^6\Õ\Æy=*ñbW\ßùVN¢\Ûcaœ€(\0¢Š+*\É|ÿ\0Fxı\Ğg\ÉõWb§\ËÁ¾µ\Èøx4š…Ì€.\Ğrzòk®-\Ïˆ4\0QE\í\ã ôj~\ã\Øw\íPt\nUl.üh\0¢Š*GbX\à‘MY<\àö\È\íQ´„\ïLrPd«@QK©\Ü}\"\æU-\Â¹ã±¯7ŠYw:¢\á	\à(5\Öx²ù\í4´@[3H¸®;¹U‚(c–\ÇœSB\n(¢·\ì>\Ş.\ìóm ô8®“Zµk(¥IKÀ1\ä\ç\'ô¬\í\ÖQ	–`CQ\Ít\ë´\ÄPœŒb©;2lQEyì„\Ü\ç‘P²€N\ĞMtzÎŒ!Sqù	 Ú°Jr\0\Ín\ÌZ°QEX)vW98®†\Ö\Üh¶\éq(if%ş\çniºVŸ\ÙÍ¨])ò£Ç–0\çÿ\0­Yz…ü·s™e\Î\î\æ˜ ¢Š+z\İÎµ¤g\Ã\\\ÆIS·\ÉIIYN\åb§\ØÖ¨Kgp\'ˆ‚Ë‚;V¦³e\Ü#W¶O’Có\í\Å\ëHaEW*ñ\ã\å\à\ãŞ§·ÓšRò«\é\ê+OM\ÓDÛ¥px\ägÖ´ö\ã8\Æœ§mQˆQESM±H\0\Û\Ôq“\ÜU­yXZ\Ã\"¾\ĞÀ\çµ$Mû\ÂGµ.¸LšJ\î#¬®k`¢Š+‹÷\Ôúõ­KQÀQµ—o‚[­iÀ\ãnqŒ\Ğ4QEh«uÏ­M‚ªK\'_—\åR#ma\×€(¢Š\ĞŒ*q&\Î?RS\Î\ëŒÒ³\î\ãi\r0\n(¢®ˆ\È5vØ\çƒŞ²b<«F\ŞLasŸ­\0QEwl­¹‰Á\0\09üOô¨dbW©rG¿ÿ\0Zœ\Û\ÌaKm\'†\Ç_SQ°ó.€\ß($\Ç=±ô©QEÖŒ\ÃH8ô”\å>ùÀÒ§G\İ\å–<1\ÇAÖœÈ¦b6Œ*şT(¢ŠÏ’-\ÅUr¡1Œ3\ĞS¯µF\Ö\ëÀ8úõ\ê\ëAò\åw6x\ãÿ\0\ÕP\Ë,Å¾P£“ş}¨\0¢Š*5‘¼\Å\Ú\Çbœ‘»¯¥Xo•‰rŒ6\äö\éU¾@£Ağ¬yÿ\08¥f†ò>Ÿ\á@QWØ«3ª¸ \Õymk(d“Šdr0ŒG\ÏÓ¨Àÿ\0õU‘(m\ç°\0t4\0QE…uhc ©$}\ÅQ#c0U\Ã­k©š-Àñ1ô¬K\Û?,—Nœ\Ó\0¢Š*²L\íí™\ä\n¸dn¿xp=«\'\î¶I\ÉúÕ¸\ä(Å‰û\ß(ö\0QEw\ÌÛ®s\\Ÿˆm„W^x\\+ò[=\ë¦l0\È=+\ÄñôY\n½>a·Ò˜‚Š(®>ÿ\0SŠY\å†5•ı«˜‚/\Ê|šÊgš\á·Jk}î´€(¢Š–\ê]\ì\Î^ıi–½\Í\äQ/,Íµ\\\É\ïZ\Z\É¤“Jq\åüÃŠhŠ(®ö\Ê;o\rØ¼·\0¼óGû¸\Ô\çk\àŸÎ¹CQ¸½”\ÜNò4Í…\Üº:¥.§«5ô\ì\íßŸL\Ö{Jd=XÉ¦ ¢Š)L,D3„T{\Ñgp`,K\ç@(G/‚zP#O1¹SÀ=(\0¢Š+F\rQ\ã‘eˆm+\Ï\Ê\İk»\Ó5X® Aœ(\ÎOzóAû¦\ÈÁ\Éæµ´\Û\Ã1‹i(¢Šô\Õd#~´\ã&G\n:sXZ~£\ÔÃ¨]\ÛFOz\ÔVQ\åO¾)(¢Š’G*\ØÊƒ\Ü\ÓYÂ‚H#\ÅCHy$\ã#\'Föş(FŒ8qM+‰°¢Š*Bô\ÚBS`22‚§?tf¹ù¦idógw\Ìy¦\ÜÜ™¥\r\0\ÅUy±	U#suÀ\í]Œe+…QM–BXó\ëRFvœ†9µU\ë\Ô\ä\â‘&#¡Q!EWk¢k«­µ\ÖZÕ\ï\ÇJ\Ó\×4´‘_S·R\ßh•DJ¿\İ\é\Óò¯?u +`ık«ğş½öEQ\æDƒ\åV Š(¬\Õ~\n\ã¹\â¶ü;l\×W\È1Âx«—\Z\r¦ ¾v›6Å\ZYˆ\äòô«ºDp\éZ(\Ô	ß¿\îtc\Æ>”®\n(¢©ø¦ğKvmÀ%!\0.=kYb\ïšu\ä\Îó\ÊÛ\Ä\Õl’94Z\àQEnZx\ã&]ÁF\rl[\ê\×AN¥\È\É^â¸“\É\ãŠMÎ­¹X©Á©t\×B\ÔÂŠ(®\ï\ät\Í)Qßµqp\ê·p0!÷\Ğ0\Íh\éú\åÄ¬\"òw\ä¶\î\ßJ\ÅÁ£E+…QRøtO0¯\É\Üv\ë\Ï.YŠ8+¹×´»\ë\æy\à!”\'\nF5\Ê\Ég<L¢[rW8oJHaEVt\Ë’ºHœ‰µuú&¹ö˜\Ö\'\ã÷„ğ\Õ\ÍJ…ee\éù\Ô\\À‚Ò\É\Ï©\íNÀQEz”w\ê:\n¶O˜¾¾µ\Å\è:ø”-­\áQ0\á¦\ê\ê}¼ò\0©QEÙ,\ĞV&© \n{\íıkr\çF_9b?Jåµ©vB\ägğ\ëš\0(¢Š¹\áx\n\Ú\Ë+|\é\ç\Øp+¡s´w>õ›£Ä±iĞ„\Èo,gp\êzŸ\çW˜d“ƒš\0(¢ŠS&0z\ÒoÁùO­W’\\ñ\×•]\æ\İ;PEU\ß4Œ\à©úi‡<g>‚¨o2>\Ş•\r\í\×\Ù4\Ù\å$‹\Æ:\çµ\0QEs~)\Ô<ıeaÈ…v•=w§\èšsJ~\ĞøT\Æœ\ç5\Û.k°\ï\æ\rÁ·sµ\ÓDÁ\0\Û&˜‚Š(­+yj>œ\Ô\Épñ¬¿8pHüi\â\\ô<\Ğ\n(¢¶…\ÄF6±\æ¹k\İ:Q¨,)\Ñ\Ïõ­T•û\ÜÖŒD¬-u\ÆøÁ\Ú	\ë‘UX™F\áEVµqöuM:\"¾]±;Œ}ûš\æ%ù˜’M_\åó¥’I\äõF@W?Î·FAES\"1\×Òº_D»´ù¢ó-\ær\çœ\×-\Í\Çs\Ô\×C£Xù8\É\'Œ„\ZRvEEQ]Y­·\î“\0/@*\Ó*kM6\\\Ù\äHFzû\ÕvQ$cŒ\×9ªAEV9Œ‡$/\éT|I,«imğ\ä\íõĞˆ7K·’+ñ}\Ì¡ƒh\'zP0¢Š+œ‰–?˜“jú7=z\Z\ÊB\Ù\ï\Çz¹0Ny\äRQE¢¬rNjEm\Ø\0\ä\Õ4b\ëOV\Æp\É\ã\ëLaEVŒo1ƒÔƒ\ëS!RpyÇ¨ªQ¶wg=ªÁ—i\àÿ\0õ¨\0¢Š*À>ƒğ\ÍYu\Æ\ï›\'ª‘Ò²ü\ã»qZ±Ä¶I\ÆG€(¢Šô\Ğ\çsƒ\Î2zzšo˜\æ˜.Xÿ\0=OøRV8|¥ù¼s“Kµ¤¸vl\nI\Ãn>ı:R‚Š(¥\0y‹‚¨\Î?AH[÷8\ä±8==©ópv\î8\ï\Øt©Ÿ~\è\ĞQy\äuÿ\0¯@‚Š(¤¶dC\ÑT“M+º\ßı\é9>\Ù\Å<`	% |£›\å°.\ï»\Ë~Y Š(¦I\Zù’\ÛÖ«¼nÊ¹\ä¿<ñÿ\0\ê«NùRW©À§S#Êı(\0¢Š+5IY–¦8\Ïù\Å=Kù€RNOõ«N\è\â$ú\Õv‹nù\Æƒ±FO?\ä\ĞET‹+\ì\Ç\å$\0\0§K\Ì•_˜\Ê\Å\å.\Õ\äñ}:‘¶®Fr{\Ô\0QE‡wm\å³|½ªªË€=s]$‘-\ÄD2Œ\ä‘\Ås—0½¼‡\Ó?4À(¢Š9*yvªóbhe‰¹GR¤S|\ÂA\â©<¾Y%†Niˆ(¢Šò»\Ôû5õ\Ä#Ÿ.F\\ûf¢2núÖ¿‰UF±3…\áğ\İk\à\Ó\0¢Š)©ëµz\Ö(š\"\è\ß0ª\0)l15½¥[$\Ñ	fqò\ëHŠ(ªÊ¡ùn”l*zÛƒV!	\ZÊJ÷\'ğ¤U©\Åp¢Š*¸\\«\Èô©\Ó\ÉÛŠŸ\ËŒ·S|—b	a‚1Ö€\n(¢˜¬ÅzŠ’\"Ie,UI\çˆ¡aó~†‰Qóéš \n(¢¯i\×\ÍmsFfˆ\í<f»›ñsn’\ï\ÚH…y\Ì,şfÑqÒ»\"\0`À\Æ\ÜJ\n(¢µou5¶$‡\Ü\Äğ1À\0wük˜’yeS¹\Ş\Í^\Ô-\Ş8\Ê\å\æwl’A+(·–Iu\êp+X$g ¢Š*2Ä’wM5€\ç?)9f\0b/p\rlfQE4\\ú‘\Å4|ªO^™À§ò×ıª&\ëÿ\0× Š(©C€\Ã\İV\í\æ*6½ª”x\\ŒŒúV—¥Í¨HW•&2\ÈH\êi1…Q]?„\çšYg†T®.xÇ­j\ê\å\ï4i.\íK Ú‚!Ğ¶y5‡¨\ê\é±}’\Ôm¸`y\à6;UM[–\ÆrÁƒ©9ò\Ø\ëR0¢Š).±\ÊğÊ»dC‡\\t5eõ\ë\ë]5Å”> †7´•EÜ³y\×\0º1OÆ¹f\í€óT¨bB’1»šb°QE#0‘Áô¤R;s\íQ\îgwšeÁÊ\Õ@QE=€\Èé­ohvKóJ\êzq\áX¶ªgPŒ“Œûõ\×\Û †5E\rµFv\ã‘\íX\Ô}‚\n(¢­mùN\ãÛ3š«5Œ2³¦\æ\nTô?şºµ\ædu\Ç\Í3\î\ÇÒ°5\n(¢¹\ÏŸ4,;X›¦\Ö\Ís’#…\Úñ€ùú\â½2^ ·N¼šÄ¼\Óx\Õ\ãk1À\ÓLŠ(®U  F\Ú\ëĞ¨Áu\Ú¬×°yÿ\0\×\ÆIş!\ë\\\İÍµÆ›&\é‘p%q\Éô«\Z\\s˜d\Ôaa\Ü9Áô8õ Š(®\Ï\Ï\'\äcÛ®+™¿Œ\\j[nÀy\0\çÓ®kJ;\ásn“0\Ã8Rµ>¾Ò¦Í©\Éú1ú\ÒQEÒ…Q\'~”\×bG$LÒ»€z¤e–\îv‚,\0¸\Ü\Øı(\0¢Š)&pN	ª’9^NzzS\î\âK|¨Ÿsã‘•I³§= \n(¢­Dø\\‚=\r<yWa\í\å#o\\œ\ãµA‚ª\\p:t¦B¸;†sŞ¨Š(¦\ÍÛ±\n¸Á\ãÚ˜®\å$úŠß¶D½‡\ÊrÁ=S–\×É”®:ò3\ÜPEU@Ä§ \ç\éR.s\Æ*°°9\äúT‘[3øùW“\ÇA@QN´€\ÊK0\Â½\ì*\ãM».6 À5Ì‹Ø¢<)Á`~ğ¨\âpñ\Å\0QEP\Õ4ÿ\01LñÖ°Œ@\ä\Îk·M®¥$r;\Ö§§¼2U\Â\Z\Ò\è\Ì\ÜBŠ(¬\İ6ÈµÇšÀmˆ\ë[Aš2F?Z\Æ\Ì-¢\ã=3š2¤œ‚\ßÎ¦R»**ÁEU›+\ß$\åø«²\0q’¬2\rc&I\çšØŒ°X`A­IAER©ò\âbOQÖ¼\ï\Å+jXGŞ¸\İ5\Ş\\¸RTtQúW˜j³´ú„®AQ¸\àgµ\0QE1$$rj\ÄlÀÖ¨FHô\ÚyÁ«Q:‘\ëô¤ ¢Š+B)3€;t\ÅH\nŒôÀı*’79\çÖ¤Œ9\'=:\ĞEU\è\ä\Ç=*q!Œız\Ör¹\03ƒÁ\î*\Ê8\'\'\'”\ÆQEN§SW\"\00$…\ã<÷ª*N:sô«V\äñ´ü\İh\0¢Š+ÿ\Ù',7,'AlfareÃ±a','Centro','Parral','CHIHUAHUA','ISCH'),(123,'AllenPaul1','Masculino','2018-03-01','Paul G.','Allen','88745169885','ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿ\Û\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0÷\0÷\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ğš)E-1\r¥´b€\nZ( Š)h¸¥¥£\0”T\Ğ\Û\Ëq*\Åm#Š£š\Ôş\Âkqş™(G\ë\å§$}OjM¤4›1\Ï4 qšÛ\Î4?ºƒ>\í“Zöó…\É²óüª=¡\\Œ\å:u£j\ìÁ\Ú@yx=2\rgi7Ş†O\Úolğhöˆ=›8\ÊJ\é\î<?m9?e—È“´r©úÕ…ucse!KˆZ2=zÆ­I18´U¢IL‘))Ø Š\0m%:Š\0m\êJ\0n(\Å;†€E-\0\Ú)h Š1KE\0QŠP(1KŠZ(1KKE\0%m\è¾ºÕœŸ&\Õ\Í)\ï\ì=\êoøûf÷|ùqŸœô\Ş}õô\êvö\Êğ¢\Ç\ËH”yQ€Gb\ŞÕJ¼º#jtœµ8Ô²LµZF!F\êøı\ãÿ\0…g\Ü[\ì“\î’\ß\ís]ôúKO7˜ù2€U«o™NùWÀö®ohu*Gš‰¹ù\Éş\è\àUˆô)ˆ\ÉF\ë\ÍzªxRAˆ”7­Lº&s\íKÚ•\ì‘å©¥N¹qQØŠ4¢Ab{\Õ\è\Óh\Ğ\Æ:f³¥±X•\Í\Ô^\È\á\Z|ø²sƒ\â­ÁıŸq	²¼\ÑÁ\Ã8\Ç\á]Ö‘°Á\0\ã\ÔVV¡¦#BÌ QW\Z„J™\çºÆŒ\Ú}Ãµ¹i\í:¬€gÑ«\'\é]¼¼w\'S\Ç\ÍşSQ\Ó`º·¼_\ãAµÙ‡cÓ‘]1¨YA£“¢¥š •¢•\nºœ04\Ê\Ğ\Ìm!\ê)€\ÌQŠuPM%;”€JLS©(´R\Ñ@”\n1KL¢–—\0˜¥¢–€¥¢\é2j·Es²†\é¤=Q6–T\Ì\Ì}O\ê\Z‡šöX|=m„†<K}*÷ÿ\0dõIr£Jq\æfÏƒ´c}\0q\Í=\"P0üó]\ìzBˆ‚\í\êr:Ÿz¿ei\r•´Vğ H£@ª£µ\\U\Ä\Õ÷;S¶\Æm¾•-»nO©«¦%QÀ©\Ê\àqQH~^h\å¶SŸ\å\éTd\'Ö´d]\Ë\ÅP”c<VrF±*Ns\Î3X\×Ò·$û™lt¬K•“\ß5™Rı\ãU\É\ÈÁÕ»„\Ç=EPb}\ê‘2G;ªÀ\ĞM\çG\Ğõ«¦\Ö-_OY\ê1µ[\ÔvSş5=\ÄBddaœŠÃ¶M6ù‘\Ï\î˜\àÿ\0osN%½\'ûF]·Q‚wª¥r²:À\á\ìkÓ¦Q5Ñ¸P\È\Ş}}Ö±ük¡¬v–\Ú\ÄCaò\ç\0w\ì\ßÎº)Ï£9§.pôS±F+s!”bœE%\06Š\\QŠ\0n))Ô”\0\Ò(¥¢\ëKŠ)i€˜¥¢—\0QÚŒS€\É\è|%¦´÷r_\íR¶¿swB\ç¡ü:×¼xODMID\ë<\ÇÌ•\ÏVcÿ\0Ö®\Âú/\Ù-4\ÛFA½ˆ–Cş\Ñ\ä\ç\ß\0\nõ˜”m\Ï\ë\\UevvÒ‘0\ëõ*S\ëR/™¨¬p8¨%pGSš™Á5I÷Fi°ˆpEQeñWA8\ÅV‘0I\éP\ÍB\á¾R?•cÍÇ•­qÛ“œ\Ö<ù\\\ÔX³>u$\çŞ¨H2I\Î«Ò¿Rj„¬:\ÓH–Ê’\r¬H=k+TµÀXœwõ­r\Üxª7.1Î´\ærfV¹M¼­ó•)“\ï\Ğşó­\Û\âú§‚5Yı\"\İ|À½şR7\n\ã.\Ğ\ÅrYxü«±ğ\ÅØºX_\æi!gø†0\ÃõıkW£L\ç\Ş\èò\ÚCS\Ü\Äa¹–\"0c‘“˜8¨H®´r±¸£´˜¦!(¥\Å%\Zi)Ø¤ \"ŠZ(iÂŒRŠ%.)ih\0«ú4\çY³„®\àÒŒa\ÉşUHVÇ…†|Gi’üt\Ò{1­Y\ì:DÀ\êH\Ä\å÷’\ì\è>•\ŞCƒaù×˜\Ø\Êc¼€.K’q^\Ë¨fl/Z\à{ñØ¼­O¹\ë\\¾£\â–E\Ü\0W\'{\ãMR]\ßg!S§ƒùÒ¹J7=U¤`\Z©+\0¤‚3\\\â©˜1v\È\à‡=kwûT´¥\n¶\âx\ïš\\\Å(Ù›Aø<ôª³İ¢¯\'ğ¨¥˜\Ãö\Ï>µ\Çjšú‚\ëœ3K}Š\Ø\ÖÔµ˜`t›}+\ÛK&\Ô`ÔŠ\çn¯öO“2„ö\Û[d›‹¸#=0d¯”\Í\Íô:VºF\ç€É¦M÷8õS\\\ë\Ü[ÂªSQ¶\'@dÎ®\Ûk™G,G  ¸\àûJ9\Î[™vjÅ»”«Mj\Êûœ€\ÖF¦„(‘zûÓŒ$\îŒ\é£\\ªŸs[\r¿G¨\î¿B§úŠ\Ëh´lsş\ïqş}+OAºV×­öw|§¦U†O\ë“øš\Ñ\ìa\Ô\çügpø¦\ìÄ¸I1 Q\Ï\ë\\ù®«\ÆpŸµÁ1\á¢-\ëƒş¹|WL>[Œ\Å§\Ój‰IN\Å%\06’Hh¤QKEN\Å&)h´´˜§b€µ¼72\Ûø‚\Í\Ü\á\ìcõZ\Ëœ¹ƒ‚9Ş†®†´g¯\Î<½EQx\ÎOArk®kÆ¿¶ÿ\0B‚YQ@s\ìI\æ¼ò-Aõ\ÜóZ¡aŒ1X†˜ıko\ÂZ\ë^Y\İDğM‚@NAG`kŠq±\ÙMÜµ¬\Æ\Ğ[¿òSp8M\ä“\ëÀıkœoZ\ÚZHb¶Œ\Ç\n‚\ì±p€œ™?\Ïz\è\ï´\ß\íMN9dŒ¼1ª7­7Y\Ğ\ìõ;¥–X%Œ\Â:ya‘°r¹\É\í\ÍD^æ“Œ\Ò\ĞÆ´»÷/\åqÙ“iü1\Åhiú³\Ô\í™td\ÚrN;SaÓ£MA#‹v3–r\İñ\Æ=+¡·	q\ã;H\Ì`y6,íŒ\åÀñÁ¡Z\åZI+\è\Ìø\Ú\ë\È)t‘“·\ÎrT*\än¯2»£Š3¸ò[\æ5\é^/Q5Œ‘œó\Íy\\*¼¿§¿\Óÿ\0­N\r;\Ù\nqjÚ–\â1ˆ\Ë	™\Øş\î\Õ\ÏÓ°§kr\Ş\é²ù	›\æˆ\Ş-wyj@!‹£’?\n¹¦˜\ÒS+§\Íı\àH\'ñ¡zö÷\Î&p†@»rÃœzUs.¤¸Iü\'\×+)&4\Èr›\ãQ·ò©Q\İA½ BÃ†@\çÚº³Å·\Ê@ vT\\\nU\Ò^-q¼ô\ÆM\'5}‘\ÛS7Á[d\Ö\î¬.·M’v+TŒ|:\ÓñM‡ö]¨p\âº\ÅOZ¥e¥\ÄòKpQI+\àäƒ´\Ãºq\á\Ë1—aör\ìAÈª\æ\Èä•0·¼›…f#\å‡øf´t9\Ä\Ğ\İÀlzGòª \Ğ.4›µ“va”eX˜85z\ÃM–´\Ì\'¿\çúÕ¹+\Æ-±|@\âóLY\Ôı\ÉA<ú¿Ê¹ŒWGwp³i\×Q˜¶Œ{\ÖZÖ›÷Lª+HˆŠn*R)¥kC2:LSÈ¤4\0\ÊLS%\00Š)\ÔP\âœ(¥€N \nv)€J(\à0h²ğ-\é“\íš3¸h\ÚKb\İQş5\ê\Zq¤}¢@D¦FrŒ8*}Á\ä\ßbI<gd¶\â=\Î+ÜŸM„\Ï%\Ä\r$Kƒ#D~ùõ ñœ\×}Î¼:3\ÌLû°8¦K¦\Ü\İp]\Êçh5Âøş“şı\'øR‹i|\Ë\ë\Ã\ÇEeAú\×7*:\îú Ñ£±C=\ÛFˆ£9b©5ƒ\Úõ=GW*@„0d`ùI\ÆI«oanø\í÷L:K+a\îƒW\ì¡H‚B¸\0Ï¿ÿ\0^‹D\Z\Ú\ì\å|N˜VxŠó\rRÉšAqÌ‹\Ã(8\Ü+\Õ|[, ¿\Ì\Íy\Ó+­ŞˆhT\ì\Ñ…\ì)µeŞ€\00\ÈÂ¶\"¸\ÓX`Ëœÿ\0\Ó\'?Ò²•\Ä„\'ù5\Ôi\ê\Ï•r\ZsaÊı‰~\å½Ìƒ=\ÙùüHŸ}=\ÍÀ+o³`ad™—#\èªO?l<,œö¬›¬ƒƒY©\âTµHÀL*\áWoıúõ\Ó@\Æ\ŞŒ\âD<)S\ÃŸ‡z\æb*un\n“Şµ&¸*B`m\'*lÖ¨\ÆB\êz3j\Ö\Âœ¸\È\à¼~u\É\Ü\ÆÖ³ÂŠKy+\ÈWªx~A$„\ä“Ú¼«Æ¶O¥xª[¸ıš\éòTŸº\à\r\Ã¯\ã\íUĞˆ\é\"/\é‘\Ç ñp¾\\S§¡FŸ\é\\i^k¹\ÔeoI8\å\Ã,ûn?‘®(Š\é£ğœØ‹s\èBE4Š˜Ši¹\ÎBE4Š”­4Š\0‹\Ò*R)„R<QN¢€8\n1N˜\n8\n\0§@<\nP)ÀP2\æ[N\Ú\ê(ñJ­{df¾—Xt<Šùˆe~aÛšúZ¶\ĞÈ¿u£VˆÍˆZ#«õe´UnH§ºÆ‚ °:\Õ\Û\ÇyV\Î]¸À\í\\—;\'’Gš)|•\ÉU$S\\fŸ\â»\ë\íN\æ\Ø\é\Òş\ç:3•úCù\×wjR„hG\Ş>¦«>\Õ.$º\İW\Æ\æQŒ\ÓH¥%±\ä¾ Õ¥º¹x\Ø2•\êb¸\Ù\îµHn‰P<®Á}+×¼Wa\Ãw”»\ÇCŒW ú3/8*£$‰’oc\0\Í-\Ü(ø!\×Öº¿\ê\r·É›\ï•C\ìOJšZ3¹N<\ZR\Õ.\Ç_$»”r>•¨H7qÚmvfıÜœ8ª\×Í·$\ç5”V¦’zB\á‘Õ†A<{Vœ±µ…ı>^+ŸLI\ë\Íu{“\Û#Ú¶9\ïs[C—\ËE<d?q>7µ–÷Vº´Œ¨ynü\Å{\éø\î­ı:å œ.z­7Q±“Qñ±\n±€»\ã\0\åI\\\ç{ö6—\ncw¸_õÊƒŸ\æ?:ç¶“Öºß¦¡¬K\ä“\äDJ&{\ã‚~¼V!\ÛMZ\'\rYsJ\äi¥jb)„V†D$S©ˆ¦LH¦S‘Q‘@E8Š(ÀTh(\0œ(ğ´\0jEZÔ€P\Ïj÷k\'Xğ\Ô\"…–\Üw\Ç} `ş#âŠµ\è\ß\î°u2¹(ø\éş•ux›\Ğv‘\ß\\\Îb…½@¬ı5Ë‰®ØómRjüñ	±5ËŸ°\Ø%­¸\Ëö\0s^q\é-†ˆ\Âü§8\êjG˜6F{t\Ír:^Ÿ\â94™&k¨¡\Şßº‰£\İÇ¹\Í!\Ò|A.C\ê!\ïˆ\Î?i¨”4\îl¥½¹\0+;RµŠ\Õ\Â\ï_»U\æ\Ó|AlQFb¤‚\0?‘®SP\Ñu\æù\×û¢‚hQ+’Æ\ÔĞ¡ 2Æ¨‹\ècp€R:Ã—E¿Vù\î[§\'5%‡†\ŞKÅ™Ë°^„š¦’FO}\ËO¶Ñ²MÖ ©À­¯\Ø\ìYdnv\Öˆ\îs; \Åf·-\ì`†Ä¼WIc7ú6\Üg¹„µl\ÙIµ=\0\èkFb‹Iş–qƒšn¹­>\Â\â\0ß¿‘b\ÇP\çú\Õ8\\µÁ ÿ\0`\ë\Òùú\Ô\ìB\á\à9«¥ÈŠ²å‰ŒW×µ0­X+ÚšV»N±ZaZ²V£\"€+•¨È«,µÀ€Ša3\na„Š)\ÄQ@  \0 SÀ¡EH«š\n*UZjUZ\0@µ\Öx\ä[x¢8\Ø\àOGõ=Gò®eV¬\ÚM%\Ô71I‡S\îjd®š*.\Í\ä\0‘Y¢\ØO¬$Œ3°q\ÅMi}ıŒ7q’U§¨5j\ÕG˜[¹¯1Å§c\ÓRº5\Ó\ÑÀ¨r»S\0Js #\æ­:™\Ï]¼\ÛI€\éÁ¬A%|>\Ó\ÓÖºÉ O/$}+2\ê(\×;‡j†h™\Åı\ä—,8\Ï5{hUX\0O¥)…P\ã™\æ\'\Ì\Ç!zS{ŒÚ³™m\ì¤^‡\Ãkù—Mów­yµA,\ë\\µ\İÏ›)#<š¸£91Ñ·Ï·Ö´\åEm\×\ÖD.jI\îŒòNUxú\Õ2.h\Øe\æ\r\Øs\\Ü¡Fw\ÎöbÍŸRk¦\Óı¢2\ÜF„÷5OÄ¶©m­HËµR\à	”g×¯\ëš\î§A\Â\ï©\ÃV²œùCŸ+L+VŠñšaJ¢J¤TdU–J–È¨\Ùjv]–£+VTL(h§0¢˜QR¨¦¨©TP”Tª)ª*EZ=EH¢‘EJ«HQR*úŠUZ•V„õ\Ï\ìùM•\Ãb\ÚS•cü\rş»\è/[‡­y\Z­k\Ø\ë7V\È#\'z(Àõú\×=ZW\Õ«[Fz\äW\n\à\0{T¾h\Î	®Jñ!o–PsÚµ¿n\ß(g\ëÈ®vš:SLŞ¸\0<\\ö£z \0\ëU/µ\È\"Œ“(®/Sñ\0bB>\ã\ìjy[/™DÙ¼Ô—\æP\İ+\Z}W\nÀXj- 95]§c\Óó­;J¥\Í9¯™\Ï^*£\\dğj‘vjpzj¬G5ËŸh#\åS×©«v€/\Í\Î{\nÍ‹\çn*üm´şÙ‡\Âs¾ih‘ÇˆÅ¨{±Õ%”‰P\ä\ßŞ¹\Ş\Û]\Şi\â\ÌĞ£$„v\çEö§ö{sórr\Ì\×bNMv\â$£4”®liWŒf»’\Ó=l•\Çj\å!r¬8#¡®®	Í²J§¨\ç\ë\\)\Äej&Z´ËŠ…–˜XTLµi–¢e EVZ‰…ZaP° EvZ)\ì(¦\0L¢˜¢¦Q@\Ç(©”STf¦U¤ ©•ijeUZ•V„ZR¥T¥U©Uh\ê·‡V9.dµ‘G\ï²Bøf®_h\ÑÈ¬H\Ú\àuSƒš¥§<zlğ]\ÍÁ.\0S\Ø\ru÷q+n ƒŸN†°\ÄSpjO©½	©¦—C\Ê/¬¥Wd7Bk&[gn5\Ö\ë6\ì—m\Ç²\å¶!7\íY\Æz\Z\Ê\ZBó’hb*ÄŠS<r}ª›$f®qÕ»ñ­#M\Ù\ÊQ‚¼…i–\ÏS\Ğw¤ˆ<Í¹ò«\éI¡V\Üÿ\03zš´«Šô¨\áu‘\æV\ÅóidÀ\0R\É0	\'Š…›h\É5•{u¼•S\ÅuNj*\ç$ \ä\ìV\Ô.\ÍÌ§\å\éP\"\Ò\Ürje¯.rr•\Ù\êB*1²©š\Ó\Ó/\r´»d?»sÏ±õ¬\ÑR/\éRQÕ°\î9\ÍDÂ«\é3™-š)nC…\ÏR*\ë­4F\n²\ËQ0¦\"«\n…–­0¨XPR9¢¤aE1Š™G\ZŠ™G‘N¢£E©”R\"Š™E1N‚€‹S¨¦ ©\Õ:LU«\ÖV¢Vó$\âû\Ç\×Ú ·Ï¹X\ädƒ\Øw\'Ú¯\İÊ–\Ñù)ò„\0ÿ\0:\é\ÃQ\ç|\Ïc½Ue¹‹\â\ŞgN\ÃÚ»/ê«¬h\Ó™U|¹=x?Ò¼¿X»óÜ…9¯Ö´ş\ê\Æ\rV\çLvù.Íı\å\ëÿ\0ÿ\0*Xøó\ÂıŠÀË’V\îv\Zİ¦ù\í\ëY’Yş\é	S× ®\éE\Ã*XqU]¡¶\0<ƒ¹\è+\Ï\Ãa§]\é±\èb10¢µß±\Í\É\áõ—÷·LR?ù\æ§¾§Ò«]YC/•ª[—34­–9¬ù08¯ ¥B£¡\àV­*²¼Œ!…V‘v\ÖÄ\í\Íe\Ş|ªqÖ›Fks\"örª@5IsVo%\İ)@zu¨‘8\é^v\"­İ‘\èĞ§Ê®\ÅT\â¤QŠr¯\à+˜\è\éApƒq\íJ@Zg\İ N\İ\è<Ë‡$\î<ñZvÚ¤©ÄŸ:ş¢²\ã½(`y¦:ˆ\çŠ\áwFß\ëMa\\\êL\ÊÀ†`G|\Õ\èu7Jw^ôy…@\ËS¤©2\îCŸoJcŠ`Ua\Íö\Ñ@„ZED¢§Q@\ÉPT\ê*%©Óµ%QS \ã¥Vy¢·|®G¯§­c^kò6V\ÔyKı\ã÷øR¢¸»·³|òªqÀ=O\ĞVMÇˆ^V\Ù!P\Ç\'\è+™w’yw;3\äœÕˆ\çòfA\Ñ[ò\"š\ÜM\èz‰¦Ik‹†\Ï&Z\âP\ÙÁ\ì€û¾ÿ\0J\ç5s\íL\"‰‰\Æw7­]ğı\Ó\İ.¡¥O, ‘\İ!i6Hå²§0$ô\ëÏ¿—ºT&{§Jf´\'°ù‘‡P\Õ\ê\'hZ\'k\Îò1&É§x~\íõ«}]œAge.\é&“;I\îƒÔ‘\éW­­ Y\ï2b‡º\rµ¤bp=‡©ÿ\0\Z£|÷\Z”‰¾Kx\ãŒb8\Ğ\á#Š+7O™Yš)ò»£¶Ó¼{k¨\ÍlmMºHq\Ìñ\Öô\ÏoÃ¥[’\äù…†\ëŠ\à\í´È‘w;™\Ô)®\Ş\à\Ü „³ˆ\Ô`‘Ë¯ø\é]—*µz²\æw5÷fš\Ê5‰#¨\á…N\0<\ZÕ³4Q¸P\×/«\\­º\\ı\Ñ]F©\"\ÛZ¼²\å¨\É\"¼ò\âgº¹y¤\' \ì¿J\ã\ÄUQZ4)9Hˆ&NI\æ€;ÒŠóD\\‘N\İHx47€\Z\Ä\Õuå™ªIdH\ïLA…	\Ç4›‰¥\'&’€y¥u\çx¦´¹ÁB1R+N\á(\Û&zŠ\Â\\gŸÊ¤{`\Ó|óƒ\×\éEdEr\ËÑ\ĞQL\ru©Ö QV’­2\êú+8\Î\î\\Ö«\\\êR2\Éô¬\'‘¦»I<š@Msu5Ô›\äbq\Ğv_aP\ãŠ1(\êp:P\î\Âñ\Æj=\Ù8\Í9\Ï8Ò¡W\'½«Ÿ¶\éi2q=«lr:‘üğ\Æ)«-´ò´’E?ú\å\ŞAr}Gj©¤Ü‹{\àu2ùR}	\ëø\Z¿šú–¹o¦(?<»X\Ê:Ÿ\Ğ×¡F\\\Ñó9&¹dv~\Óm.`»{”ó¢b«ñ1»?¨­\Äğ\å‰PÑ¢\"zmÿ\0=+F+k{(–8\Õ\0~\0\Ğ\n’P~cø\×drMİ™ƒF¶\ÎFÁü\ë! [vk+U”J¤\n?vŠ£?™&ºx—\nI8F\ãô\ëX\ŞPš]şµ0\Ã]\Î\ì„ÿ\0t)·\ĞJ+r¾¥iı›~dCº,ü\ã\Ó?Ê–L\Ã\İ\èjµ­Ä—š\Üó³nY~B‡¡›­\êhVóY`–£1şŞ¦r\ä\Ø\áiY!\ÔZ\î\è\Û+\æ\Î8<¬lSy\ëœûúÓ…xó›œ®\ÏVQVB4¸8¥µ£µ\ÈX\àsRÉ‡\àjT\à\Ò\03–\ä\Ò\âôS)1N\Å&)\0\Â)§âŠ\0iR\0ô§šry\éL, ´PXòqE7Ö¢½º6ğ\rŸ}ø\ÔQTÀÊ\íPŸ‰>¦˜:fŠ*@p\è)À`E\å³M\ÑE\0@\İ?\nô¯‡B\âkVN]W\ÉO¯V?ÊŠ+¯	ñ3›ğ£®{a$\ï)-\Ù4¾L’1fsŒt¢Šõ¤:ü¯i\á«ç‰Işó£ùÑ¬l\Ñ<;„\\$¬\\\n(¬ş\Ñd\É\Ğaò­úbÁ`qœÿ\0¥yÖ±©¶±ª\Ízw\Ø\ì‰I\åPt®\Z(®ltŸ*6Á\Ås2ŸzW˜w¡\ŞÔ‚Š)Œiô¦8\0sE€j±\Å:Š(\0¥\ÅPŠ\n\æŠ(y¥f\ç\âŠ(\Â;\æŠ( Gÿ\Ù',873302,'Redmond Street','Cielo Vista','Los Angeles','BAJA CALIFORNIA','The Best Programmer!'),(124,'LinusTorvalds0055Linux','Masculino','1999-03-19','Linus','Torvalds','85479546546','ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿ\Û\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\Ì\Ì\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ò\Ğ)iE!¨(AO‘E>€Ša)¦5\00u§\ãŠhÓ¨¦‘O\Í%\074”\êLd\Ğ )\Ê(ÛŠpZ\0;\Ò\ã4¸¥n\Ú\\T€dQ¶€#Šv\Ü\Z]¹ ñM\ÅJTâ›ƒš\0LzÒ¨§cŠ\0 \Å&)Ô R S±@Z~(2óIŒ\Ği\Ê8¥\ÛOP(6•#\nf9 ›iø¥@\ã\æ¦\Ø m\â˜\ËSñŠ\Í\0@Â˜N\rHM1†M0»…¥aL\Û\í@¤=ih LaR´\Â(˜\Í4­?£µ#\Æ)¤T„f›ŒP1L\"¥¦´˜§‘\Í&9 0¦b¦\"£#š`lŠC\Í?mi@)iV–€L5&)¤PV\Å\0sKŠ\0N´˜À¥#h´\à3H5\"®Š^{S±@€\08\æ”\nQNŠ\0RsN<Rb€šp€)İ¨0)§fŒš\0n3K¶”\n~8 N R\ã€@)\Ûh\à8 ˆ\Å&y©S6\ĞiÃŠ\nv(‡šh\Õ.\ÚP¢€J”(ş\ÔP±9«%sQºPJ\ÔÇ©\0¦½\0CŠ6\äSñJ\0W+HENÂ˜E0  æ’¥+\Í0Š\0Œõ¢œE4\Ğx¤4¦@†ûSMHF9¦ö \Í0š{\ZŒŠ\0i\æŠ;\Ò5\0!¦Ò±¦\ÓkÖ–šA´†8R\Ğ\r:€M4ò)(¸ S±IŞ€(ŒS€ Ú—¥.(\ë@jP8 \nv1@8QFi\0´\ìSF}*¼ú„p½[Ò€-\æ—A5e\rû\Ä*=sK>¯meN\ã\é@\ì]ôæ—“\Ô\Öö\Ü\ÎH¶º¬\È\àŠb78iÜ+=kbT\Èõ\ÍKı¢Œ	~”€\Ô3Œó\éJ\\gˆÚ‹¢\åWñ&ªK¨\Ì_†? ,u”´\í\ÙW\'öÛ–?y¿ïªš+\ë…?y\ÇÕ¨(\éKdRdÁ\ÍcG«•o\ŞEHú¸şsÿ\0 V5sŠPsXË­`üğŸû\ê­Á«\ÚL@-µ½\è\Z \æ€\ÊÀ!‡µ(8\ëL\\Ô¢˜)wRškE\rš1‘@ˆ0òjV¨‹\Ğcš~2:SsKÖ€\ZEFjL\Ò\Í\0DÂ˜EL\ÃS@â“Œt©¦0¦G­%<­7i\Ã\ÅJEFÂ€\"\"˜jB)Œ1@w \Ò\ãšCÖ€\İzRsN4”À\Ù4\n\\R\í\Å!Š1KINU =)1O*zP\Ğ1F)ûiv\Ğx¥\Å?mb€Rc\à)v\Ğ\nu7\Ó\Æ(\04æŠG\áIô\æ–ÀS½¢‹jºU†4LJ’·<ö©œ™%FqÒ•¤\ì\êO½MËµŠ\Æ\äa1Ú«\ì\Ç^kL¢ŸºùÏ­1­À\ç“ô¢\àe4x&”\0vö5}\íüØ¤Kb\æ\Ñ\Ì)´\È+B\ŞÄ•.\Ü(f\ÚÈ¾dn‚®\Ê\Éò”\ZWR®\æòöñ\ëQùDğ‰Ó½k\Ãh&Ÿ5$†(\×j\0w4\Â\Æ7\Ùfs\éR­¼ŠpW5e\æsåª:“ı*.>\ÌOÒ˜Zİ˜tU\İ<°y­	GD\àH»x\İ\ïH\n,ü}\Ü\ZŒ¨aR¸\Ú\Æ7Zˆ§\îğ\İ\ÜÚc|Úµ\ìõh\çÂ¾Qÿ\0`\ï\íL\'\æ\êA\íE\Åc·G=)\ÇÚ¹{-Vk|+ü\ëü«z\Ş\î+„\Ìn)ˆ·\Å¥5Azq\\P\"5Z²VšV€!S\Æ!\n`“4´¡A¤l)›y©\Za\ë@\r+Q‘RµF\Ô˜§‘IŠ\0aTl*b)Œ)ˆƒo4\Ö>)Œ(«S1\ÍL\Õ\Z\0LRb–Š\0\Ù\Å?bœOK·\0\Ã@\â)@\â€Š\\SÀ§b€#\Å!Z—†€#\Ú)qK@€ŠQœ\ä\Ó\Æ)H\í@9úUy\ÎrN\ß\İ^\ÕJ\æM¶¥²\Ñ.üØªs\\lùw“ô¨æœ»\íSŸ¥0/\æcš›\r„Snl\ÇÖ´m\ÏTR\â6Â”\ÄUûxYˆ\ç=)¶(–\Ò\ä-)µıùÊœ«P\Ù\ÈTu´Ìœ68\Æ\rEË±÷d\Ø\Æ\'s\àü¸«\éf|\í\ÄsœR›/•”\ä\Ñqò™\êV„Ÿ½!\ã\éTZ0\ç/Ÿ){x\Ö\Ü\ÖÅ˜GŒ*Š«%¹bn\0\ëUryY‹$¤¶ßºŸÂƒ­	3£\0V\ç¶H˜™c\Üöª²&<I\ÏĞ¬L\'p\Üdz|±\Å:e~I‡\ëY¢ò`rÀmô«\Ñ\r\ê9\Ç<\Ğ\Â\Å+€Ò©\ä‰®j¢¶úØº\Ø\\NŒ0¬YI© \îi=\é+ôƒŠb‘\éRÁ<–\ï¾>1Ú¢,1\È\Å!\é‘L³NÔ’\å\0$,•£¼\\4r4n$C‡ö®K\Ôñv¹AÚ˜™§ŸJi4\à8¤\ØM‘\â—m<!ô¥\ÛL™i¼ŠŸm!Qš@@A4\Üf§\"˜E\0DEFG51Š\0a\Å0Óˆ\Í!Z\0ajc\ZyZB)ˆˆ“L95\'zk\n\0„\ÔN*f¥\Å;oµ.\Ú\0\Ù¤‘jM¼RF)E€#\Ç4ğ(\Å;\0\Å«Ö‚9 ši§‘L\"€E?h¦O˜	´t¤r8\çšyH3Ò“\ZA9À¹\êk\n\ævwØ}jÖ¡s½\Øöª‰SŒ\Æ7;zv¨Ü²\â8\ç\Ô\ÕWœ·Ò–hö’d|ŸAN¶ƒ\Î`XÂ¯K»±=¬\×SE¯A\ÑôdŠ\İ£.EG\á\íYF²?\Ì\ç\Õ\Ó\"…\í\ÍsNk¡\ÙJ–…!h¤\íbm°¸^‚®•æ±‚*…H\Ëxo»\ïJÖ‚1œdš\Õ\Û\Ü\n®\ë’Ô¹‡\ì\ÌIm\İKUSl$“[X\ÕicªS%\Ó0®-X·cY÷A…t2ET¤‹ªùŒ\\v]4m\Ï4\Ëd6\Óş[r/Be\Ã\éO˜‰D[«_—Ù«¼‘‰=«´0yöAú\àq\\Ş¡õ\éƒ\Ğ\Õ\Å\ê`Ñ­Ÿ¥<•xc=*Pp\Ûœô5£ nCqMû­\Ô\â¥2½MFÇŒR.\Ò:Ó£\Æ\Ê\êJ•?@¤†¦V¹#\r\ëL¿K¿K\ÈÀn$‘Zd(+ƒ¶¸{I\ÖE|Z\î,.\Òö\ØH‡\æ\î(­\ÇjiúT\ì¼\Ô{h1—56)1@Š\åi„sV¨\ØP$Tnµ9Z¨jCÒ\Ã\Ã@4Æ§54)ˆÒE)æ’€\"e¦b¥jŒ\Ğb–›Iš\0\ŞAR¥QO\æÈ±\ê(\"¥\ÛM+@\êP)½\è\Ê9 Š; ñš\çµH¢Ÿ´\ĞA)\áG¥.)\à{P1‘T®cUŒw&´dÂ©&¹Ë¹LŒü\ä±À¨eD#ûD¬ÿ\0À§­%Ä¾Z•‡\ä«w5`·“–8aUåˆ¸ùG\'­¦g”\Üÿ\0(\É=\Ív~\Ğ_p¼™:}ÜŠ£\á\í\í·jÌ¹z×¥Á@ŠŠ\0QÀ¬\êN\ÇE*w#Hv\0*M˜\íV!\ÎG4\ï(+š÷;¢¬SÁ\İR`ƒS˜€4\å‹Úš_“Q4x\Íhˆ‡aP²sÒr\ÆB*“šÙ0\rg˜³\ÍR(:†ª\Íô­FÚªÊœ\Ó3hÉ–!••uº£\ã¥e\İE\Õfmh7M¸\İk$dô<V^§—qş\É*–¶ºSü=\ê]U¶bQüš¤sM•\Úm“p\ïJ§Ìˆ\âf\å7E\ÇQT¡m¯ƒ]TbL\Çr«ÿ\0¨‰ÁÊ\\\Ô\í…\áNG\0Í»¹\ZU<\áª5$ğ8§\ç=z\ĞÀsd0\ÏJ\Ò\Ò5\'°ºRX\ì$Õ˜0\ß)\éN9üGJB=dIP:0en˜¦\Z\æ¼?«yl-&?»?u½\rtÌ¼ñLC¡ºQ\ßh„Tl*FÈ¦5\"=j6\ëR±\íQ=\0Fõ©\Z™@#4\Â)\æši€\ÊB){\Ğh&\ÔmR·Z‰¨4\ÜÓ7€: )q\Í\"TsH¡6ñM+š—P€!)\Å7mNÃŠŒh\0	\Å.\Úr)\àPAZ~­H‘–€±z”õjeS\Åaú›\ì·>¤W4’®L\ÏÂ¥t\Z\Ø?e-øW6S\æT¸9úš’\âM\\—s\×Ö¯[\ÙIr\Ê`fªÂ»\Û8Ï¢úWM\á\Ûw¹»]ü*•v-+³¨\Ñ4¸´ûµ>w\êkac§(\0\0v©‘2kZôÕ,y©:T\ÑG\ÍZX©$is<ÀI\Í.À+H§]¢ù©\Øw*˜»ƒP0\"¯”!°9NR©!¢Ár”\ëUZ0R´e]\Ê=j)\"\Û\"‹\Íh9U)c<Öœƒ±ªó*í “.Pvô¬ëˆ‰µe\àú\ÕI†A\â©\È\ç\îc\Ï^\Ô\Õ>m”‘µz\æ<ık4\æ7\ÍZ0™ˆ\æ(G\"©\\Bc“w­h^(Š}Ãœ\Ôşñ}«h³•¢¿xŒ¦£\Æ\Ö\ÚiPùMœÒ°\Ü7{\Ó.\"§÷t¤qM\Î*€@>SFü/4£­\rô¤¶®ËŸZ\î¬\æi!UoJ\àŒcs]Æ‡/\Úl\Ï¼R`^\Æ\r;µ8Œú\Ò\Å2š£5#TDf˜5Fõ3ƒQ\Z\0……6¤e\Í0ŒR„SMHiL\Í4Ó!^(&¨\ÍHÃša DF›Oje\0uª´üP£š”&i0\n~\ÓN\0\n^1\Å\0@ãš‹\Ô\ïQ\Ó\0QR\Í5i\Ô\0´†‚h¤OZ“wAL\ïN\æKSŒ=¾OA\\œ€³…õ5\ÚjƒdMr²\"‰	\"[eX\È\ËWw\áˆr8P9\äŠá­¾f\0v¯Cğ\Ğ_³£³¨ÎŠQ\Ô\èB–—mZŠ:dc2f­ ùk´–8\êÀ^\Õ\Z-L§H›ˆW•^UºU“Ö¡rAr»¯\Z£p™lÈ«\ç®EVŸ†\éR2›;2²\í1\î4cƒ\éQ\Ê\Û\È\Û\ĞPQBPH<UI[Œµ~e\"³./H\n\ÒrN*¤‡š´\ÌA9Ra¸\æ©È£*á‰¬Ë˜ñšÖ˜f©Ê›\ÅYŒ‘\Ï\İEMQŒ\á\ÙOJÜ¸ƒ®+&Hp\ä\â­I$œR \Ê\ãµL9\È=\r\"\ÆCgµ]\Ì\ì3gˆdsZ™\\\âªL¸¦¡‰óJ)€\â—;‡½1rk®ğ¬¨\ĞIp\İk‘\æ\â¶ü6\í ­&g?\ZB¹©\n\å¦šd2\Ô%pj\Ë\nˆŠ`@Â¡e«*6PsL#4ö¦R\ÅD\Ã5#\ni¦x¦“\ïNjŒŠ\0C\ÍF\ßJ”\n“&i¸©\nâ›Š\0\ìV:~1R¦\í\æ‘CZ\r8­5†(h\\\ÓG4óŠ@)€ R‘Iœ\ĞM\0(Z¥5\"®i\\…§¤djx¢\İVR£¥\0dj„-¶:\×+0bÇŒWs}b\ÓCµFI}+‘»Ê” \ç,¤2\Ô*ªÖ½#\Ãñ•±F¯4…†\à\\×§ø|ƒ§!\íX\Ô\Øé£¹½æ­U\áÁ\íV€\â±Ga2r£4£#$ô¢.¢œ\Ñ\î\â© |•R\îwU¢€/ ~vªSa´jN[­O8\å±U	\ÌeªKC\áŠúŠhƒ\å\ÈÏ½Au>õ \ÑlC\ÇšbL¤œVt\à½+f\ä|\ß-gJ¿)½!˜Ò““\éUœ\å*\ìÉ‚ESd\àvªDH¦Â«ºóV\Üb«?5fL«\"f³¦ƒ$Œu­69¨™§r\\L)m\Z6İ*x-w&Mj4×šH\áE\ÌùJ\Ûmˆ\ÖD\ë]4Éº#\\\ÕÀÃ°­ È¨¬T+J‡µ;R\ÍY\å5t\Z\r¨k°\Ä9\ÍbD¸u§­vú5°Š\ÙI^OzC4À¦°©1\Í!^ô\Ñ„*«,*Z\0®G5\n™…Bz\Ğ¼\ÔEj\ÑZ‰€.*&©˜f£\"˜\ZLT¥i s@*)†¦#Š‡\Å6¤ \Ó1@\ÈÒµ0¢\ÈÉ¦:Õ’´\Æ\\\Ğ2™Zr®jR¼\Ò#¥;€\Ï.¥Ll$\Ò`F«S*Ğ±“VcˆúR[h«¡TQ‹Óš\\94,aĞ§L\×!­Yy½~nMvIw¬ır\Ì\É`ûW¥}\æ\ç\ïW§øm³¦Šò˜K%\ÉV\à\nô¯	K¾É=\re4tP\Ü\ì\ãû‚§\Ş3\É\Æ*¯˜±À­`\ßkE¥1A“\ïYX\ë¹\ÕCp:\ä\Z°gE\äO¥pCWxT\îb=…SoÊ»\Ê\İØ“V‘›g¡I©\Ãmv\0\ÔMwòW—¶©wq.öµlXjR•\n\Ù\Ô\Ò³ºa\æBXzU\'‹mº‘\ëLÓ¯‘„š»( cƒRjŒ¹\ÜC[Mÿ\0\ÈŞ«Xú„M¹ppsW­\î¼\İ5[9À\ÅfU\ë\ájÌšq³\æ T—÷$3w®~ògf?7\ËM39»]\ê1FHšË“RF>†³®&*\äcšªS\Ì\É/Š´Œ\Û4\ÚıXœ\Z…\ïvµ!x\ß“G\ÎF[5V#š\Érëš“vGŒ¾b¶y«P\ÌC|Æ•†¤h­iˆ\Ù\æ¤\Ï%¦C1\Äm\\\İ\æ\çÒºK£ˆkœº±$æ´‰•B¯ò¡GcJ8¥\è\İ+Cji–~{Û•\Íw6\Ğ,Pª§LW;\áa’F3]g^”\"Y\rF)†¨D-LaS¦•(U…FÉŠ´c\æ£u \nÁ¨X\Z´\ãsHDqQ°©È¦@\ØSqR‘M\"˜\r#Š‡6)¼R-CS‘Š®\Ù\rLõA©1K· R*\ÃJ\ÓvÔ´bŠó\Í5¾•gfOJiŒPNsSÂ¥š‘fŸ\íj@]\ß5`E\ÇJKw\Ü:U\Å@:Š@Wõ¥`©õ«€®Ú¯ \İ@\ÄG\Ê\Ôw©\æZÈ´ƒ÷|Myøeõ \åWhc¾–?G®÷Á\ìNô\ï\\n¥n\í¬\\>8\×Y\à\Ğ|üg–Z\ÎgE=\Ğj×\ËötlÖ±\Ä2Ü –õµwj²JP\'Íµ$‹u\ß!_-{VgC»9+›{™(CT®t­D¶ÿ\0(ªû\Z\ê\ï5\02ªFˆ?ˆ\Ö4úùy<˜\"šiC\ÈQM™Ë•ngC¥\Ü.÷%oYDğª†lŠ\å$\×%’ù\í\ß\ÌŒo«ö\Ó\ß&9eôf&”¡`„¢ö;‹9BÈ›\Æke¤2l\Åqú}\ÃH\Êv•oJ\ìt\èÃ¢–\ëY¨ÇºÌƒ\ÜW1k©ı˜<\İø®\ÃS*,˜ûW”j—\r\Ëm4\Æİ‹ú «#õJ77\Ç\nœz\×?ur\î\İzÖ¾Ÿq\"Bcõ¥Œ9®j>ƒ]Ò¸SÓš®¾¶\ÜIj{\0ooR\Æ{—;B“ò¯¹«\Ú×†$³b—\Z®\É<–“\ËO”1Á\àsMF\ær•Œ‰4k4J•F\ãNˆ®\Ø\Ûw°®b\Ú\æú{Æ‡\ÍrÉ­–\æû°M_-ˆR¹;\Ú08\0\Ó<ƒ\éNõ•†ó½sÖ®.UÜ¢¤»Ä¤\ÍN$ji\İñPÊ‰VóıA\Çj\ç\æ9lWI2n‰\Ås6\ÌÀÖ3¨Š\åI\éÖœ\"s”Õ¸ Ä¡J·$¦\Ş\åTª\ìnj®f£s¡ğ•£%¤\éƒØš\è|¼”ºZ Ó¢d\\.*\Ë/^)£9nTh\É\è*B\r]#•‚\ÄU#\ÃS7Ò›´\Z.f†N:T»2iJœQp(È˜\ëUÊŠ»:\ÔM1Lu&*\ëGU\ä\\\n`V\"£\"§+\ÅD\ëŠ\0‘úR÷¦±\Í\0B\Õu©óQ´\è\0R\âœô§„È¥rˆ@$\Ò\í\æ¦ÛŠBh¸©MqŠœSY\r!X¬Sq©b¶\ïJ«óUÈ†8\Å °øe\\\" EÁ©ƒ\0:\Ğ48Š…˜”¬I¨\Ê\Z\0¹4\Æ\0r>õ+\äQù¨£9B\×\ÌK‰Šœ³ÿ\0J½à¼¶¡&9\n˜­G&³6ä‘º›\á?³\\\\–\à\äcõ¬j3¶”o©\Öy	$y#‘XZ½´Ò¯\Ù\í\Æwu®¦%¨\Şóm\æ³6M\\\ã4Ÿ\"Ş¬÷ß¿D9ò\ÏE\Åik:\Ù%ƒR\ÓQ%Ø¥L$t\Ïÿ\0®¶\Äe.­2`¸\Æ\Ãø\n\Ò±œ\é©Q‹+kR_KyÅ¶ö­o³Ì¶è¨‡y?•u·6\Í\'İˆ\çŞ¨ÿ\0g\È%óöÿ\0³D¥qÂ’‰kHµ\r\n	“\â½\0òdc1Yö0\í\ç\'•i\ß\ålu5–\Æ\é\ê—c\ì¥{‘^cª¯\ï\Üú\×g©H\ïÁ=+\Ôf\ÇZhUV†.÷\í[¶±	m\Â+\ãÖ²$L1#½[²r§´9V‡G¦E\r‹o†B$õ«ºu8\Ç\ÚÜ¹tÕ\ÊğØ©\×x^ŸÆ…t[I™RiğK¹\ê7µ‰zƒzÕ“\ÌaU~\rSdr2Û©o–œ‹´€j\ë[mú\Ô~Y@5\rŠÃ”\r½)3OQò\ÒbÖ„X\â±. \"\á;V\é\â©\É’Fõ\ÅTXI\\§#n9j]Z3\å\Å7­Y†(\å`Q\ÆWƒR\İÛ™¬:\àdS¤u¾M£öMjºš\Äğb\ãH‘OU~*ŞŸj\Ò,å¨­\"³\0V““\ÅXc\éP•ÏµQr¹¤\ÙS”¤eÈ öñM+ŠR7J\0­\"ñU\Î«3p*ƒ1¦\"F\" f—&”ı\ÚW\Ú*&QS·7µ\0WqP5Yp1U˜ˆ¯\ãQ´ö<\Ôg­=%@§\nN(¤±	¤3\Z” \ïS@$X\Ğ\ë\ÆXU\'µJ#S\É\Å (\ÅnÅºUÁU\ÍJQ\ÅÈ X\â˜95+TYÁ 	rFò”\áó\nHû\Ó»µ4©©;Ó‚\ä\Òm> \í(=\n\ãõ«°Ù­\ã0\ãz¯\éFkĞ§\îãšµ~ÀŞ€‡…\â¹\ê\á-\Ç!+R,\Õ j\ØQ*Qj S€ŒTRª\Ô,\àı\êh9Ì‰·Ö³’\İ\î%\åHu˜nû¹©‘¸\éŠCH\ì\ë\í¨Y3zTÒ¶Açšˆt\æ“.(\çµT1a÷k‰¼mò“]¾¼q«„¸ÿ\0ZETPª™ri\Ñü´¤RqœW±\ÌiA\'®«|½k*À«¨r)‘pÓ„DóPÇ€Õ‚ûW\ëH«\åB\Õ\"j\ì’v5I\â‚lF\à­0“Nnh\"ˆ##\"ªÉ•óW•â­²\äTI& \ÓB9«y^)I$Œ·\"µc\Ô9Ö³\ï-öJ\ì½Éª¶\åÌ u5LKs\Ñ<)>\Éo \Ï\ÊÀ0\Ñ:³Ú¹\r9\Z\ØA\Ş>*\ì\ÛÚœ60ªU)ŠcqS±¨d\àV†$y ô¢“µ\0FG4\ÇBEMŠz®E\0f\Ê\ê*¡^zV\ÌĞ©ªO¥0±Ggµ5\ÇlÇš‚T\Å\0V+\ÅD\ÉVx¨\ä \n\éU\äU™*\ä\Zb*MÀö©sQ\Ğ#\Ò#L·5cn;S#\Ô\Øâ¤²-¹5*¦:\Òd\nM\æ€&\Î(“MPOZ“oPŠx¨ù¤&qš‡5*œ´¥A¦hqN|¥\Ù\Í?`€)„Ôª˜©jM”€³¦—ú®?\Z¨$g»™ª5Mm•œc¯QS^@¨\ép\ZO¿õÿ\09®z§¥†~\ézÅˆZ´[”U+fÀu	f\àT£Q„3R4x©\Ğ`\ã½9–˜\Ê[1\Í4CV˜v¨òŠ§jFUq½L\'\Ó3>=\êX#g\Í\"¶1|A!&¸+…ı\é\ÍzF¹a`z×^Å¶S\ÍZ2\Å\Ê8¦œÒ˜òÔ¯\Î*Œ\à\Õ\è\È\æ±aŸ\rŒÖ¬G*)2¢\Ë\Èp3Ş•\Û<S€3Oíš’\Ùõ\ëU\Øc5hŠ«/ªD6C\Ô\Òô¤\Å3!QEÌq\Æi\îsLˆ\í%\Ï8 y\\\İÈ‡îƒŠ–\r9ló,\İ Tà¡›p\\1j5\r\ÒJ©\Î\Ğ3Be\ìlxB6›Sš\èôU®Á\ÜXş²6šhs\Ã\ÊJ\Ô+Š\Ö:•\ä5¹=i¥sOÁ§ªU•|£AŒŠº‚£“L\n‡Š@øJ\Ø9¨wqA$\'NG÷§HÆª»\Ña¡\Şf)¯†Zˆä´ğ8¦Àª¥É«’-SeÁ4‡Š®O^jyG\\\Óõ¨\êF\à\Ôyõi\ä\äST¡MIcf\npQ·š\0M¸¥ \\\nB(£šB¦¤Œ\Ğ\0c­L¢Ÿ°5(LPª\ĞëŠ‘Gµ<Çš\0ª¢¤‘NÛƒR\Â\Ğ\nv\Ê\r]½¬Ç¢°5JAj\í¸ó¬¥S\Ï\ËYTG^}Àv\"®CòŒ\Õ+nc_E«H\Ø\æ±:\Ñc~Nj).´\Ç|.EP¹wqAW!¼\ÕV2pù¦YI4Ù‘ó´\Ô)§£Ì­)\ãÒµ\\\Å… w (mÁªÍ½\Â\Ã) ®gTûS\ãÈºØ™\çŒ\Í\æ­\Ñu=U\Û4X4µ»½\ê\à\n\áoŒ\ÎÁG½tú™—w#‚+‰\Õm\Şf|¾WÒ­#\n’Ğ™\ŞS„‘I§\ËXX\çŠ\æc·H2G\r\ëV\Å\Å\ÃEµ\ßå«±‚–„j\ÌOj\ß\Ó\É*¬X€\×&´\í&\Ú8¤\ÑQv6\ÂûSYHØ§½j|‚+;\Z\\„*´\ËS\Èpj95H–\Êø¦‘RŞ¢4$@\Òj)H?­H£Ö¡»\Â\0:u¦¤7+wIÓ¡2ƒ÷‚\Ù\ïYöv2M6#B\ÄñœWg¦Xg\Û\ì\'\çn´\ãT‘}cH\Ñ>i6óšP( ZœD\Å=H¨I\"\0öz¯1©\Ô2)ˆ§+f«“Š\Ç\ÍLtùh°™¸ª¯œÕ·\\TEsÚ¨“Ş¥l£i\Å&\\Š¥.3WsU¥Jß¥Unµb^*«šb\"“­GŠ\ÅE@TE©\0\É\éIæ¬ %‘4,mš°Vœ‚€!\ØI¤(sŠ°W¹ 6b”(©J\ĞŠ\0ƒ\'<f¤SN+¶„ š\0‘FhbVœ+b€ \äœÒ–À\Å;¦•4¯!$\æŸix`b®\ÓC©\ÅWt¥%q\ÆVf¥”Š\Ñş&¬¯i¬ı?ŒŠ\Ñk™£º\Ğk6Åª²L n«W\0ˆ\Î<Vd»Šõ‘¢c<ÿ\01†A,“…Lg5]É;\ÔÈPŒÊ˜\îg¸\Ş[‘ô¨LD¾\ä\ã -œ•-šIm\Ê\Äq\Å1\\Æ¼»i7FË’+’\Õ\Ù\ÉE#Úº†‚G‘\Ær}j;8¼ˆ\äU\"$®p/¸Ó„Ny\Ç»5[ª\íl\Ê\íWsK¡1éš‘	jÉµ$\Ò1H[Á1^õ£ùL\æ²\ã‹¯\Ú\'\ÌjYI“?\ÌD§\ç Ó‰Á<\Ô?òĞšHm‰\'\ë\ÍL\Ç4\Ì)¢\ÍCw)†e;†:²Fj¼\èfhÓ¶i\ÇpzÅ‚$Vq²H`\Ôv¸6q\î¨(\Íj‘\Ï)1ÁiJÒŠ^\Ô\É+°æœ\n‘Ö€¼s@™5\æ§a\Í7o (Ì¹55zD¨|¾iQ—½\"¨n\Õi¢\Í0G´\Ó³\'<\Óv\àU¢™4_)E†*¬‡9­	R¨\È1´ (H¹5Y\Óu\Ç\ÍÒ •1LE7\\\ÔgŠ°Ã•ô ,z \\TªqRlİµ%)È§¯^*0p1OC@cŠ@\Ô\É\ÍH«Š\0h§…§\nxQh³®i9©[­*õ D[&§z„h\ÊEK€EA´Šp“P0‘j©J²Ï‘P“\Åc²LzÖœm»Š\ÉR\ÃzVœn+«”\çtO\"o±\éXW	0½³[A¤ãj+ˆ·>\â0=+6je\îõYG—j$Qü^Õ§¿hcİ‚¡­H”,l¸å«Ÿ¼±\ÎÍ³\å¢&±\Í!®\é\î:\ZT³2±õ¬¡h…w\"s\éLkt\ÚQÔ£Ÿj£GM\"ò­¨BÁ\Ôæ¡ºÔ¬¢f\ìš\Ã{9–\á£RJ…MR›K»r	\êhBY\ï-|\Â\Ë\ëYó\\Û±98¨š\ÆE-—\ä•J{` \å²}*¬c8$¾³~g?…eO­\åö\ÛE»Ôš_³n\È¥Š\É##\åÇ½;\Ø\çh»d\ÒMfLZğAµrEP³H«w\åò8ô¨`Œ9„§)?¦—ïšˆ›4 bH\Ãå§œŠN«@’\Z¿v ßµƒ’FÓš™¸Z©p\Ñ_\Übš\×H»‚\â\Ôm‘I÷­26ô¯$³¿’\\LW è—“MùÜ©âµ¹\ÎÑµÖ“š™WŠB¸ª[‘…\Í;fE!85\"\Ğ®ñ\àšam\Æjœ\Ğ2³­DV®¨h$„/­1–¤\'üš0®)‡¥LFEB\êG4-À­ ª\ÏEYc“\ÍBÙ¦|©†¨]sV\å\Ô¹¤€¨ññPl«\î¿-T+\ÍPWš@¥BM.\ÜÔ”D~õJ‹\ëM+\ÍI\0I€(4ÓŠrc4\"ŠÒ—€µ5\0+R)¦’M\0@c\Å0O÷\äS¢_š€\rŸ/5ŒU\É@Š¨\ãš\0Œ*\'<TŒ*#\éB\Ü,5FO5r\ÖL\r•]R¤\Æ\ŞGZ™«šS•™©dƒ\ÓÖ™),N9ö¨¡|\Ï&\È\Ë\'­s3±lOµV\â/3!³S\Æ\ã±É©\noô&Zv2&¶xğc\ãV\æú}˜t\éœVÔ‘¿8¬»Ø®X\ãb•ª¹§´2G˜²\'&™uu)l\í$)gf6-\Åf\Çu,ŒTôõ =¡R\â9\\\Î9ªMk–\ËŠÖ¸G”v\ëU™0pi£)N\å3/\İÀœóV)˜ \ÈlGi­$r\Ğ\ÖbŒ=[b<”…qƒõ¨À\ÏjRrjEÀôÀf:\Ó	\ÅI!\Â\Ô\Ëf‰7©]¸X>•bg\Ë\â²õ9ö\ÄŞ¢„)2™	º\Ô@ş\æ½7L€\Ån?:\â¼-d[32ı\ãšô8e¿¥jy—;T\ÓH\Í(? úSKU•æœ \æ”š/\r\0y|ÔŠ´¤`\Óz«2c5rG\ÅQšLµ•%]O<\Ôò\Õ|Qa“1ÖšÜŠh\Í8ğ)NUÁª’I*\ì\ÃuTtÉ \n\ïó\n€õ«Lµ^h\\­@Sš´G84ÀôulT\êOT”<°¡\\•¥Q@i)VLv¤ PF\0;\Î\Ï£q5õ©z\n\0A×¥;$\Òf—  ±5<@\â«\ç\æ©\ã|\n\0••±P$\Ô\æ\\ŒTg9 \Ú/–«<d\Z¼4¦,\Ğ\Ô\æ§\Û\ÅK\åc ¥Šú\í1\İje*_qû¸ ®r¹\âª\ïòØ¡¬*F\ÇU9Ü´¤\0Jõ«±\àš\Î\ãÖ§I	l•š6L¿ò\İ\ê¬ñ+–$\â_\0<\ÔNJ‚I¦ZF\å’6~l\ÖD¶H8­\ë·\Ã`¯^\â³\æˆr})\ÆGG\ÃsŠÂ»t\Å[¸‡g#ŠÏ‘Âš.C@ñU%\Âô\æ§i€µNs†\ÚZflL\îl\æ§\İòbª ;±VBqÀ\æ‚B \\Õ’›W9¤Š\"ƒ\ëL¸“j\í¤R •ò\Ø\íQÛ“Lcù\Ôs>Ô &—[µd]¹‘bO¼\í·µr\ê\\.ÁÖµ<#£5ö¡ö\Ù÷Pı\Ã\êÉ«‰gO¡\éb\Ö\Ò$\0pµº\ë¶<T\Ñ[ˆ€\\Tw\0j\Îv\îWK\È\Ôì˜•\Çz™n-œ|’\ç\ëXó6LN[0{s\ëLFÒ°\ÏSÖ²\"¶–6R¬\ÇÚ´M\ÑòyL,X\Î)¥÷qQ;H¹\Í	\ë>Eùªü¬1T˜\äšd\ÅDx©Z¢<šc\"š\Ç\å©i’(Á \nsP½S¸\æ <\Z\0\ÅDENÂ ~(ñPœf¤s\ÅV\'´\éA\r.\Ê|cŠ—nE\"Š¼æ¥iZ:zq@0ha\Å)æŠ\0ŒñM\Ü}\é\Ì8¤rÒ³S\Í\08u«8¨•y«(m!Z—šÃŠ	dT«Š­œSƒ´•…¦\ëN€\0\Õ[¸¼\Å\Ü:Š·œTğX<ö\ÓI\ÑTf¥«šAÙ˜\"Mƒk}\áR\Å#79§Mp$_J©¹­\Û=kH\ÓI6rıû\Ğò+/\ÕºITüß$²ˆ\Ç\ÊùúR4RvV1\Ç9ªH–_ø³Q\Í3·!N­D³\åsAW!¿\É^\rbLÁ3Z×3·\ïV4\Ê\İ\r4ˆl…¹\ëMò\Ë6\å\Ô\Ş[0À \ÔÑ \ÔU™G	1\ëSªrO¸ùzPNÖ¤,9¤+>Y7±©¦lñU¹\Å\"†–\ÅRš\\zz\Ôò\Z¥\'\Ìpzw µ²ŸT\Ô\"´ˆe\ä?1…zæ—¦Å¦X\Ål‰ü\ë#Á>û›j<ù\Ç\ÈU_òk§cœÖ©Xçœˆ%m£ƒ¥eÜ±sòÕ©\ä\ÉÀ¥·µg9\ÅQ™Z\ŞÓ€\ÄsV¾\Í\éZ)lòi<œq@\\­pMa%\Æu	a¸®­\ÓË¶w=I®.\Ê\Ö[«\ÙgE\"2\ç­6†í¼œŸZ\\°÷§ynj/-ƒ|¬qLCe9\èj£6\ri‹T™~|©\ìÃ¥Q¹³š\Ø\å×ï”W4\Ğ9¥ \ãp\äR)\ËzSø¤t\Ê\ÔÀv¦·J\0Ï‘*»j\Üıj¤‡\\š‚QŠ›u1ù¦\"”‡Š¬zÕ©Gj¬Wš`zŒgŠr*ºU„%	Ši^*}´›y \0§m§2óA\é@\ä\Í0sS•É¨›ŠqÁ{Ó‚\Ôjy©\ÇL\Ğ«\ÏZ™~\íD;T™\Å\0H:SñBšq¦s\Í9zb\É\íB€(§ŠUlŠkŸJE\ç\0u4¬\Û[v¹FFFk©Š\ßl-Œ)]µ[I²û=º¹ûæµ€Àöª\è	\êyô\ÑyW9­U–T£Òµµe¬\\Ğœ\Õ\"»[Ú¹^\ç|U\ãs[Rƒt|\Ø\Õv•Áù£#Şº)mƒ®A¬\ë‹V@x\Í\0c\Ï0`0\ßZ­%\ÂÚ‚¯\Í\n/ašª\á	\Æ\Ñ@jg6[Ú¢ò€\å²kB@«\Ğ\n¬\èP‰µÊ†#!\ã\åZ~ÕŒb§Ù€1M(^he(³ds\ÅE#\ç\îô©™w»LòI\Æ)\Å7É¨]*ûBUyŠ•”$\\ñŞ¶|\'\áó­j`Ê‡\ì\Ğü\Îq÷F\0ªVö3^]GC2H\Ø\\W¯izL:–°»\ï;z·ù5qFU%d•v\'F1Y³9\ÍY¸–\ã’j8\íË°\Ü+S–÷+Áj\Ò6H­h-¶¯J±mht«[\Ó@\ÊFŞ“\ÊƒVXJj¦OÒªÄ”5Fé’™Ed\ÂR+TT\0p:U¿N#·H½\Íf\Ûfr~\è%\"NdcŠ™m\Ø\ãó«ñ[jfŠv™\åŠ.\ÍEÃ¯\æûŒ8«\Í	cP=¿9#\Ş\Æ\Ê\å¾ñ‚C\Ó\'Š£s¥\ÜY|\î»\ã\ì\ë\Í^’2yøn¦ˆ\Î\äş\ëóLF@#şœ\Ó\Ö÷\Øl/˜X\Û\Îzƒ\Ğ\ÖMö•ucóK\ä\ìÂ€2§\ëTŸ“W%l\Õ7\ä\ĞmÀ¨\ÃgŠ{t¨‰\Å#—Öª“\ÍO)ª\ÄóLRaV¢‰9«*¼T”\n)H§(§”\â€+0\æ£n•;¯5®\0@MF\Äw©\ØqPº\Ña\Î1Š[#\ÚzñE€z\æ¦ŠH1QS-F¢¤\0Qp*FozÏ§À‰úÖiö›´f‰i-4\æ—÷³\æ8¿Vú\n\èô\Ø\×ø#«\Ó\ß\ë@\Z;€)&q,Æx\â¿³\Ù9\'\nªI¥=vr³\İı«P¸‘Oú·\ÛR”\ÊøGQş\ÑmM\É\Î\ë†eúd\×X£(k’G£†\ÂFø¤¸]sMe f¼\Ğ;÷°n\ç›$8®‚\ä{VL\Ê`\Ğ>S-£9\â/<U\ß\'šAŸ˜hL_/Jƒ\ÈbzÖ¯“š™m•GNi\Æ@µlcµ\Ü(­fˆ/j‚TP¹4\ÆD\Ñ\0y\éU–f\äv¬ĞŒ\å‡Ò´ü7¡OR\Ôù\ÏşGRjJ\È\Óğg‡R\Ö\ßûZ\å@‘øˆu}kjòM\Ì@\àÖ´\î\ÙR?-\08\0zVrBdcEu\Åt\år”V\æV\äV¥½š¯U«0[¬kÒŸ#…S\"\ãˆ\Æ\0ªòKOv\İÒ˜—4\Ä5\Èj\ê[m\\}ªk[<uª:ş±o¦Z˜y‡€)Œ\á¼Itn5³\Ç\Ò<qZúMŸ•÷\Ïi5\íû\ÜK’\Ì{\×i\nlQRQ* \0JaLš‘rM;nz\ÓB\"gš†H7\Zºp¢¡s\èh°Œ\Ù \Æj¤‘œu­GJ­\"Pq@;ª\ÜzŒÑ¯–ûeŒÿ\0ò*)#\æ«H\nÖ‹{¤Z\Ş{\å¿Sÿ\0J\å\îa’\Ù\Ù%B¤z\×B]Õ¸8\ÅLn »O*ö \çûı\éÆ°¦0­\ë\İ@­5›ù±õ\ÇqXŒ…N\Ê}s@Šr\n¬H¹51LQŒóVæ ‹§Š\0‘qO-Q)I\Í\02F¨X\ä\Ó\Üf£`Eı*&9©˜|µ\Ú\0oA\ÍH)»zT¡h\Êi\Ùæš©R*ñHC•¨-BF]¶¨\Îj\ÚX<÷\çû‰\×ó¦H¢–g)\äÿ\0{Òµ-\ìb„\røšnŞ‚§Š\r‹„Qô\ïW-\á\Í1\rXqóIóJ»d \Ç¨\Øm§´Èª\Î9¯:ø¡¨=–‡rÑX÷`+Ñ€¯6ø‹jo4É¡\ÆHæ³™­/ˆ\à|7‘#\'@\Ë^’«Œı+\Èü99·º\\ğ\Ëò‘^¯k/›¾y®9ğD¬˜Z‰\ã\ãp«C\æ_­F@ª(Ì¹w*\0Z¢Ñ“Ö¶²WhqÚ¤\ä„\ç•50‹Š¶SŒR\ïŒ\ĞO\' ŒcÖ¬ˆXòG\íƒŠCE	GAU¤ÏµhJ¸7«…\îFqA[\"’Û´ò¢ \Ë1À\ÅzF¤®•¦$ \âV½\ë\Ã\ZR=\Ó^:|‹÷\Ó\ÜK…\Ùú\×M8ŠûˆÃŸjljR\É-D+cœ\É\Û|\Ô\å©£„±\äPI\æ\â¯Cn‘.÷\àT°Â‘\Í\\¿ˆüF V†&ù¹\Z@XÖ¼J–q²BF\î•\ç·W2\êW¥b\Ù?•2\â\á\å”\É#MZ\Ó\í\Ë6\ãJ\å¤l\é¢Á\Ç5½5J\Î”c5­[TSWŠF8\íOc(H\Ëu¦\" ¬i|±\ÔÕ¡4¥\0RxóUä‡Š\Ñu\0T¹ §†«\É\Åjºuª²G\Å!£&X}T‘H\äV¬«Œ\Õ	W\å4­ò[¶õl7µ:U²\Õ.Roù\é\Ó5‹\ÅUa°\çµ!X¥¨isY7MñŠ\Ë#9®¦ß—É¸\án\çµT›Bó¥/m.\"=14vqVAª‘j|\Ò6F)0\Zp8\æ€\â¡v§\ÈØª\ÍÉ ›\"˜\ZœG\Ğ9 CÁ\äS\ÃsŠ`ƒ\'Ò®\Û\ØI0ü\n`E\Ğÿ\0…XŠ\ŞIO\İâ´ °1\Ó5m!\ÅJBƒ¸«qB«\ĞU™¡1@¢¥ŒzRcø\ê€S÷†*\Ä,„\Z\ß/µLF\' 	À$u®3\Äñov\àõ®\Í\\šçµ‹&\áWQSR\è\Ê\ÌñMgLmYY\Ğ~\â\ã\æ\ìõ\×\èW¡ D\'Ú·|K¥\Ú_Ú=†\Ü\0€t5\çšdòY\\´)IQ°Àö®YFÇ¡NW=%qHpsY–—‹,kóUÆm76µ\ÇƒŒ©Á¦y\êiV\\ñS.\ÖQ\éE‰d\0;S‚(íŠ³´\ZM€¶)ˆ®q\éD€ \éV\Õ*½\ÉJCFl\ê	õ©¬,\î`ˆ3“\Í,V\Í,»T\'Òºı6\Î=2Ø»€$j¨F\æUj%\ÜQ¦f¨me\\\Üe\r—¾a#uP,Mu­\ç7}IL„šš%&«À¬\íZöö\Ü)ˆH`\Í^Š «’8\"Fõôª\Z–³e¦Œ\ÜJ¥‡İŒr*\0¥\â][û?O%q½øQ^g4’L\å\Ü\å\\\ÖÎ³¨¾¯u\æ\í*ƒî©¬ñnXı\Ó\ÍC-\"Œq–qš\èô\Û&\Èùi–\ZifRTWQii\å\Å4‚\â\ÛÛ…*i*hv\ÛÒ£\n\\\ÕX›Š«¼\çÖ¬¢mS¢‡h§œP\"3Q·1\ä\Ğ27SJT\å@¤)M\0Td\Æj•Á\0qW\'”\â©Ì‡Ú€(É–\éU$NØ­v·\ÇjÎº]¾Ô‡s.U\ä\Õ98\'nW\Ã\Z¬\ã9\"”\Û\"M(W zT’p*±\ä\Ğ;d\ëV\0ªÉšŸ\Ì‰³ŠC%@d¦(I&š¼\Ô[²MM\Z—ÀA“\í@\rf©`µ–\à\åÖµ,ôµPn½…iG\0ô¦+”­tÔŒ#-ZI\ŞqO	\Û**¬aH§æŠ\\Qa(\éNŠLd\ĞjEZf9©Pö‰÷š?\Z¦„mŒT7_\Ã\éh$Rr02j´\ë³ğ\á¤@®_Vñ4\Ï;\Ú\Ú|ˆ§ı\ÏÒ¦´ó‰I‘™›©É©\æ-+·\Úl3XÈ±¢ù›r­\ß5\â$°¸±Õóq)#|\Ù\í^\ëor$”\ç½r/\Ñ`¹C¸b)†£Vu#}M\éN\Ú›{\Âü\ÜWA\Ò\É®=­\æÒ®Í´ƒ•?+v\"¶-.z\Z\æ=»£}j\Ì/–¬˜¦Ï¥_…ø m\ZI\Ü\Ô\åAUXXc5eN\0\êsL\Ìi\â¡<\ÍòŒ\Öõ¦”|ëŒ…\Ç«\Ü\İ\Ç…}\0­U;œÓ®–ˆ[{[\ß3.óÚ’öô\Ì\ØGc¥b\Ü_¢d;o\îÕ“$óK/š_i\ìh¬wyjÎ¿\Ú¨\Ós¾\Õ\éT\"¾”G‰å«¶zº¿\Íü*Ö¤4m\Ø\ÚEl\"ˆ—v:w¬ˆu›T*9>˜ª\Z–§wz†8“\ÊN¹šb±½\âŸ)š\Ö\Çæ“£H;W$°\Ïw\'™+3·©5·’Kg\'©­;m/o;JÖ†Zi?\ÂEhA¥dò+¡ŠÀc‘V<•Œv¤\\Î·±XP¢¥vÒ¦‘Â­Rf.\Ô\Åq„—}¢¯[Á“Q\ÛÀs»tp´\ì!\Å0i\äf£cŠ,$\ëI³£“O)ƒ@\Ó!e\ïU\îf†¥¹”\"qŠÈ‘\Úy‚”€@\ZVö«KÑŒ\n–8%8\r\Ì1@™‹‚q\\ş¨\á3]MÂˆ\â5\Ã\ê\ÓfV¤4®fI!f?Zx-B€³Õ½ -+”Q—­T=j\í\ÇDiÖ£`\â¥š…W\æ©H\Å!>*?2†4\Âhá™œ\"Œ±\áEu\Znœ¶ñ~eaßµghI\Z\êAò§\Üú\×G- \Í12P¡c¤Q\ÍK(\äSeª¬\"E§\n@)\àPGZZSŠ@\r\0;¢\æ›\Û4\îÔ˜ùh3R€1PóT\è(\Ôg8¨\ï\0t\ÃS•\Õzš†ò\ê4»Ø \ç³Á²úT\Ç!òvzL¬WpÁ¬û}\æ¸k‰F	l\×Cm…B•)\È[÷\0ñ\ÅG\'\ÙõV\È\çô5v`¥O+\Â`º£\å\'šlIœ—ˆ¼=#\Æ\È\ã \İÉŠ\áÑ¦³¹kyAWSß½{\ÓÚ¬ñ€\è\Ã\îš\ä|A\à\Ø\ïÑ%_º;­a*gM*ö\Ğâ­®7V­´Ş•\Ï\Ëos¥\\y7HTô\äqW-®B·\Ş\â°q±\ß\ÌtñK““Ú·´˜á§b(ı{\×1¥£\ß]$1s»­u×¥ …,mø\n2ø­)\Æ\ì\æ\ÄT\å\\¨mÎ§5\Æ\è\â\â/A\\Ö©ª$\Û\Âw\Èz°\íOÕµQh†cû\Ó\ÜVµ³ó$\Év\ä\æºšj=Y,QŸõ\Ëõd šz¦ÑƒNT27¬]•\ZF\Æ8­KK>=>”Z\Ú`r+^pH‘ µP?Æ­e\éŒ\Ó\Ñ1Vi“r(\íz°±ªŠp\âš\Í\Å4+ˆXUd“­9\Û5\\‚M‰,\Õ$pe³O>jp»E!‚®\Úq¦\î\Í;µ1Ori\îhU\Í\0\"¨\Ù_h5#|«Y7\×;A€*^\Ü\î|/5b\ÆØ–\ÜUKH\Z\â\ã$qšÚ\"\0R\Z+O&8¥µj”²\î“õ­hc\ÍeMVM‘\\ûn•u\Ú\Ü\ç\r\\TÍ¹Ú“FEÉ«\'š«\"<òjK3¦\ÍQa\Íi^£˜y5Dˆ\0=O´0ª\ìZš3\Å #tÁ\éQ¤e\ÙW,v\Ôò7j¹¢@\'\ÔP\ã+É¦#¢·mmşV\íW©ªò6Z®À»c\'Ú¨DrMi®8\âˆ\è\Æ9§\nh\æ(Œ)hjO¥\0:‘‡¢Š\0ƒ‚§©¬´‹\Å\0YÂ·Zh:(¨Õ±N\Ü(OÀSAù©wSIÁ ±ÈªsG¿ Õ¢N*pM\0[²c‚:Õ—†9\ìj©\Ç\"®«~tZ\àa\ë>³\ÕmŒw0®z+È¯/\Ôü5¨\èÚš[d‘±‹\Ó\é^\ŞJ…$ğd^\İ\Ç–e]\àü€şµ¦m\nòŠ0t­=4»¨H71ş\à¬\İORò•’6Ì÷˜Sµ-MØ¸FÌ÷É¬M†F9\ç4–ˆ—\'\'v@‘f2?>õt9`Ú Vm\í‹H¥a²8¡iqZZ\ãµX†\Ûi\Î*ôQt\â­\È\á‡q#À§¤x©@˜†ªT b€1KšbqP1\æ¤sŠ®X\î ‘“@R)ÀdÔ€c®(\n0µ±\İOw\â \êh*s\ÍHM50¢š\Í@„\ê\Õ*€j$\ÜMH\íµh½\ÌÁR¹\ë‰\ZYp*ıı\Ç8Z\Â,\İ3H\rm>\ØEóP\ßMòš¿\'\î\ãœqXw²\ä•\Í!„œz\İgòmz‘Y:|{\ß5oQœ$d{P\'¹\Í\ëc\Ísx,\ä\Õ\íFf–v\ÅE.M&Zk÷\Æ*\İÂˆ”T–QªD^¨\ßÏ—*\r2¯\å\ÜõQO,ªK’zSvÁ&€GaƒŠ’$&“b!H\nóF}+w\Ãpí²–\à\\\í‘7\Z\é4e£F©ªBd\ØùªşqEyl\Õ\×ÿ\0V´\Ä@üµñH\ç\æô\ä\Ğ\ÉO\Ä\êi\Ô\0Ö¢ƒÖô 	š~*4©\0#\nn*Ji ‘OQM¥ ¦± \Z^¢€rEE\"\àÔˆhaóf€&ÙŠ²²`f©\r:F\"#®)ˆmıúÀ¼Ÿ›øEr—·¯q!\ç$ş”_O#9%‰\ÅTˆd’jYWD\rv÷\îjx,òı*\ÜH¾•z\Ş5¥IW)L·J½¶\Ğ8«I\Z\äœTÊ S°®E^\Õ`G\ÔõQN\Å1Š\\S‡JCLBS[JN1šh\\ÓZU \n#\Zjû\Ğcd´¨8¦Ó…N æ‘‰\Å9h\"p3T¯&Ú¦®1\ÂqXºƒ¶\ÍE		–C\Ín\ép¡2\ZÅ´P\Ó\×L@Kp)FòlX’òz\Õûö!O5oóM\ÍFÅœb(Kw¬½Vl«\n\Øo–J\çuf;~´÷0\Ö=óŠt\îlZQò+ª¤\æNi(I[m¦².—7\Z\ÚUm‘\éT-¢Ig%\Æy FoÙšWÚ£Z“\ìğ¯Á#½ZÔœ\ÆşZaWÚ²±=hÿ\Ù',654985,'Park L.','Las Grullas','DF','DISTRITO FEDERAL','father of Linux');
/*!40000 ALTER TABLE `donadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `alias` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jesus Jose','Navarrete Baca','admin','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bloodbanks'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_Donacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_Donacion`(
		IN id INT
    )
BEGIN
    
			DELETE FROM donaciones WHERE donaciones.id = id;
    
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_Donador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_Donador`(
	IN nss VARCHAR(45)
)
BEGIN
		DELETE FROM donadores WHERE donadores.numeross = nss;    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_currentDonacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_currentDonacion`(
		
    )
BEGIN
	SELECT AUTO_INCREMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA = "bloodbanks" AND TABLE_NAME = "donaciones";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_Donacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_Donacion`(
	IN id INT
)
BEGIN

	SELECT * FROM donaciones WHERE donaciones.id = id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_Donaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_Donaciones`(
		IN x VARCHAR (45),
        IN tipo INT
    )
BEGIN
	SELECT id,fecha,detalles,comentarios,(SELECT numeross FROM donadores WHERE id = id_donador),idbancosangre,id_usuario_alta FROM donaciones WHERE
    
    CASE tipo 
    
    WHEN 1 THEN
		id IS NOT NULL
        
	WHEN 2 THEN 
		fecha = STR_TO_DATE(x,'%d/%m/%Y')
        
	WHEN 3 THEN
		id_donador = (SELECT id FROM donadores WHERE numeross = x)
	WHEN 4 THEN
		id = x
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_Donacion_nss` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_Donacion_nss`(
	IN nss VARCHAR(45)
)
BEGIN
	SELECT a.id, a.fecha, a.detalles, a.comentarios, a.id_donador, a.idbancosangre FROM donaciones a INNER JOIN donadores B ON (a.id_donador = b.id) 
    
    WHERE a.id_donador = (SELECT id FROM donadores WHERE numeross = nss);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_Donador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_Donador`(
		IN nss VARCHAR(45)
        /*
		OUT numeross INT,
        OUT genero VARCHAR(45),
        OUT nacimiento DATE,
        OUT nombre VARCHAR(45),
        OUT apellido VARCHAR(45),
        OUT telefono VARCHAR(45),
        OUT imagen LONGBLOB,
        OUT numero INT,
        OUT calle VARCHAR(45),
        OUT colonia VARCHAR(45),
        OUT ciudad VARCHAR(45),
        OUT estado VARCHAR(45),
        OUT detalles VARCHAR(45)      */  
    )
BEGIN
    
		SELECT * FROM donadores WHERE donadores.numeross = nss;
		
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_Donadores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_Donadores`(
		IN COMODIN VARCHAR(45),
        IN TIPO INT        
    )
BEGIN


	SELECT * FROM donadores WHERE 
    
	CASE 
    
    WHEN TIPO = 1 THEN
		id is not null
        
	WHEN TIPO = 2 THEN
		numeross LIKE CONCAT(COMODIN,'%')
        
	WHEN TIPO = 3 THEN
		fechaNacimiento = STR_TO_DATE(COMODIN,'%d/%m/%Y')
	
    WHEN TIPO = 4 THEN
		REPLACE(CONCAT(nombre,apellido),' ','') LIKE CONCAT('%',COMODIN,'%')
    END;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_Local_Banco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_Local_Banco`(
		
    )
BEGIN
		SELECT * FROM banco_sangre LIMIT 1;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_User` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_User`(
		IN alias VARCHAR(45),
        IN pass VARCHAR(45)
    )
BEGIN 
    
    SELECT * FROM users WHERE users.alias = alias AND users.pass = pass;
    
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_Donacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_Donacion`(
	IN fecha VARCHAR(45),
    IN detalles VARCHAR(45),
    IN comentarios VARCHAR(45),
    IN nss VARCHAR(45),
    IN idbanco INT, 
    IN idusuario INT
)
BEGIN

	INSERT INTO DONACIONES(donaciones.fecha,donaciones.detalles,donaciones.comentarios,id_donador,idbancosangre,id_usuario_alta) VALUES
    (STR_TO_DATE(fecha,'%d/%m/%Y'), detalles,comentarios, (SELECT a.id FROM donadores a WHERE a.numeross = nss),idbanco,idusuario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_Donador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_Donador`(
		IN numeross VARCHAR(45),
        IN genero VARCHAR(45),
        IN nacimiento VARCHAR(12),
        IN nombre VARCHAR(45),
        IN apellido VARCHAR(45),
        IN telefono VARCHAR(45),
        IN imagen LONGBLOB,
        IN numero VARCHAR(45),
        IN calle VARCHAR(45),
        IN colonia VARCHAR(45),
        IN ciudad VARCHAR(45),
        IN estado VARCHAR(45),
        IN detalles VARCHAR(45)
                
    )
BEGIN

		INSERT INTO donadores(donadores.numeross,donadores.genero, donadores.fechaNacimiento, donadores.nombre, donadores.apellido, donadores.telefono, donadores.imagen, donadores.numero, donadores.calle, donadores.colonia, donadores.ciudad, donadores.estado, donadores.detalles) 
        
        VALUES(numeross,genero,STR_TO_DATE(nacimiento,'%d/%m/%Y'),nombre,apellido,telefono, imagen,numero,calle,colonia,ciudad,estado,detalles);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_Donador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_Donador`(
		
		IN numeross VARCHAR(45),
        IN genero VARCHAR(45),
        IN nacimiento VARCHAR(10),
        IN nombre VARCHAR(45),
        IN apellido VARCHAR(45),
        IN telefono VARCHAR(45),
        IN imagen LONGBLOB,
        IN numero INT,
        IN calle VARCHAR(45),
        IN colonia VARCHAR(45),
        IN ciudad VARCHAR(45),
        IN estado VARCHAR(45),
        IN detalles VARCHAR(45)    
    )
BEGIN

	UPDATE donadores SET donadores.genero = genero ,donadores.fechaNacimiento = STR_TO_DATE(nacimiento,'%d/%m/%Y') ,donadores.nombre = nombre ,donadores.apellido = apellido ,donadores.telefono = telefono,
    donadores.imagen = imagen, donadores.numero = numero ,donadores.calle = calle,donadores.colonia = colonia,donadores.ciudad = ciudad, donadores.estado = estado,donadores.detalles = detalles
    WHERE donadores.numeross = numeross;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-26  4:15:20
