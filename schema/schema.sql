CREATE DATABASE IF NOT EXISTS groups;
USE groups;
CREATE TABLE  `groups`.`category` (
  `category_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `hint` varchar(255) default NULL,
  `url_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `category` VALUES  (1,'Community discussion','e.g. general chat about this place','community'),
 (2,'Society, club or hobby','e.g. Sports club or historical society','society'),
 (3,'Campaign group','e.g. climate change or political party','campaign');
CREATE TABLE  `groups`.`confirmation` (
  `confirmation_id` int(11) NOT NULL auto_increment,
  `parent_table` varchar(40) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `link_key` varchar(40) NOT NULL,
  `argument` varchar(50) default NULL,
  PRIMARY KEY  (`confirmation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

CREATE TABLE  `groups`.`contact_email` (
  `contact_email_id` int(11) NOT NULL auto_increment,
  `to_email` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `from_name` varchar(150) default NULL,
  PRIMARY KEY  (`contact_email_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
CREATE TABLE  `groups`.`country` (
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `iso3` char(3) default NULL,
  `numcode` smallint(6) default NULL,
  `disabled` tinyint(1) default '0',
  PRIMARY KEY  (`iso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
INSERT INTO `groups`.`country` VALUES  ('AF','AFGHANISTAN','Afghanistan','AFG',4,0),
 ('AL','ALBANIA','Albania','ALB',8,0),
 ('DZ','ALGERIA','Algeria','DZA',12,0),
 ('AS','AMERICAN SAMOA','American Samoa','ASM',16,0),
 ('AD','ANDORRA','Andorra','AND',20,0),
 ('AO','ANGOLA','Angola','AGO',24,0),
 ('AI','ANGUILLA','Anguilla','AIA',660,0),
 ('AQ','ANTARCTICA','Antarctica',NULL,NULL,0),
 ('AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28,0),
 ('AR','ARGENTINA','Argentina','ARG',32,0),
 ('AM','ARMENIA','Armenia','ARM',51,0),
 ('AW','ARUBA','Aruba','ABW',533,0),
 ('AU','AUSTRALIA','Australia','AUS',36,0),
 ('AT','AUSTRIA','Austria','AUT',40,0),
 ('AZ','AZERBAIJAN','Azerbaijan','AZE',31,0),
 ('BS','BAHAMAS','Bahamas','BHS',44,0),
 ('BH','BAHRAIN','Bahrain','BHR',48,0),
 ('BD','BANGLADESH','Bangladesh','BGD',50,0),
 ('BB','BARBADOS','Barbados','BRB',52,0),
 ('BY','BELARUS','Belarus','BLR',112,0),
 ('BE','BELGIUM','Belgium','BEL',56,0),
 ('BZ','BELIZE','Belize','BLZ',84,0),
 ('BJ','BENIN','Benin','BEN',204,0),
 ('BM','BERMUDA','Bermuda','BMU',60,0),
 ('BT','BHUTAN','Bhutan','BTN',64,0),
 ('BO','BOLIVIA','Bolivia','BOL',68,0),
 ('BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70,0),
 ('BW','BOTSWANA','Botswana','BWA',72,0),
 ('BV','BOUVET ISLAND','Bouvet Island',NULL,NULL,0),
 ('BR','BRAZIL','Brazil','BRA',76,0),
 ('IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL,0),
 ('BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96,0),
 ('BG','BULGARIA','Bulgaria','BGR',100,0),
 ('BF','BURKINA FASO','Burkina Faso','BFA',854,0),
 ('BI','BURUNDI','Burundi','BDI',108,0),
 ('KH','CAMBODIA','Cambodia','KHM',116,0),
 ('CM','CAMEROON','Cameroon','CMR',120,0),
 ('CA','CANADA','Canada','CAN',124,0),
 ('CV','CAPE VERDE','Cape Verde','CPV',132,0),
 ('KY','CAYMAN ISLANDS','Cayman Islands','CYM',136,0),
 ('CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140,0),
 ('TD','CHAD','Chad','TCD',148,0),
 ('CL','CHILE','Chile','CHL',152,0),
 ('CN','CHINA','China','CHN',156,0),
 ('CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL,0),
 ('CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL,0),
 ('CO','COLOMBIA','Colombia','COL',170,0),
 ('KM','COMOROS','Comoros','COM',174,0),
 ('CG','CONGO','Congo','COG',178,0),
 ('CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180,0),
 ('CK','COOK ISLANDS','Cook Islands','COK',184,0),
 ('CR','COSTA RICA','Costa Rica','CRI',188,0),
 ('CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384,0),
 ('HR','CROATIA','Croatia','HRV',191,0),
 ('CU','CUBA','Cuba','CUB',192,0),
 ('CY','CYPRUS','Cyprus','CYP',196,0),
 ('CZ','CZECH REPUBLIC','Czech Republic','CZE',203,0),
 ('DK','DENMARK','Denmark','DNK',208,0),
 ('DJ','DJIBOUTI','Djibouti','DJI',262,0),
 ('DM','DOMINICA','Dominica','DMA',212,0),
 ('DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214,0),
 ('EC','ECUADOR','Ecuador','ECU',218,0),
 ('EG','EGYPT','Egypt','EGY',818,0),
 ('SV','EL SALVADOR','El Salvador','SLV',222,0),
 ('GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226,0),
 ('ER','ERITREA','Eritrea','ERI',232,0),
 ('EE','ESTONIA','Estonia','EST',233,0),
 ('ET','ETHIOPIA','Ethiopia','ETH',231,0),
 ('FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238,0),
 ('FO','FAROE ISLANDS','Faroe Islands','FRO',234,0),
 ('FJ','FIJI','Fiji','FJI',242,0),
 ('FI','FINLAND','Finland','FIN',246,0),
 ('FR','FRANCE','France','FRA',250,0),
 ('GF','FRENCH GUIANA','French Guiana','GUF',254,0),
 ('PF','FRENCH POLYNESIA','French Polynesia','PYF',258,0),
 ('TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL,0),
 ('GA','GABON','Gabon','GAB',266,0),
 ('GM','GAMBIA','Gambia','GMB',270,0),
 ('GE','GEORGIA','Georgia','GEO',268,0),
 ('DE','GERMANY','Germany','DEU',276,0),
 ('GH','GHANA','Ghana','GHA',288,0),
 ('GI','GIBRALTAR','Gibraltar','GIB',292,0),
 ('GR','GREECE','Greece','GRC',300,0),
 ('GL','GREENLAND','Greenland','GRL',304,0),
 ('GD','GRENADA','Grenada','GRD',308,0),
 ('GP','GUADELOUPE','Guadeloupe','GLP',312,0),
 ('GU','GUAM','Guam','GUM',316,0),
 ('GT','GUATEMALA','Guatemala','GTM',320,0),
 ('GN','GUINEA','Guinea','GIN',324,0),
 ('GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624,0),
 ('GY','GUYANA','Guyana','GUY',328,0),
 ('HT','HAITI','Haiti','HTI',332,0),
 ('HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL,0),
 ('VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336,0),
 ('HN','HONDURAS','Honduras','HND',340,0),
 ('HK','HONG KONG','Hong Kong','HKG',344,0),
 ('HU','HUNGARY','Hungary','HUN',348,0),
 ('IS','ICELAND','Iceland','ISL',352,0),
 ('IN','INDIA','India','IND',356,0),
 ('ID','INDONESIA','Indonesia','IDN',360,0),
 ('IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364,0),
 ('IQ','IRAQ','Iraq','IRQ',368,0),
 ('IE','IRELAND','Ireland','IRL',372,0),
 ('IL','ISRAEL','Israel','ISR',376,0),
 ('IT','ITALY','Italy','ITA',380,0),
 ('JM','JAMAICA','Jamaica','JAM',388,0),
 ('JP','JAPAN','Japan','JPN',392,0),
 ('JO','JORDAN','Jordan','JOR',400,0),
 ('KZ','KAZAKHSTAN','Kazakhstan','KAZ',398,0),
 ('KE','KENYA','Kenya','KEN',404,0),
 ('KI','KIRIBATI','Kiribati','KIR',296,0),
 ('KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408,0),
 ('KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410,0),
 ('KW','KUWAIT','Kuwait','KWT',414,0),
 ('KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417,0),
 ('LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418,0),
 ('LV','LATVIA','Latvia','LVA',428,0),
 ('LB','LEBANON','Lebanon','LBN',422,0),
 ('LS','LESOTHO','Lesotho','LSO',426,0),
 ('LR','LIBERIA','Liberia','LBR',430,0),
 ('LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434,0),
 ('LI','LIECHTENSTEIN','Liechtenstein','LIE',438,0),
 ('LT','LITHUANIA','Lithuania','LTU',440,0),
 ('LU','LUXEMBOURG','Luxembourg','LUX',442,0),
 ('MO','MACAO','Macao','MAC',446,0),
 ('MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807,0),
 ('MG','MADAGASCAR','Madagascar','MDG',450,0),
 ('MW','MALAWI','Malawi','MWI',454,0),
 ('MY','MALAYSIA','Malaysia','MYS',458,0),
 ('MV','MALDIVES','Maldives','MDV',462,0),
 ('ML','MALI','Mali','MLI',466,0),
 ('MT','MALTA','Malta','MLT',470,0),
 ('MH','MARSHALL ISLANDS','Marshall Islands','MHL',584,0),
 ('MQ','MARTINIQUE','Martinique','MTQ',474,0),
 ('MR','MAURITANIA','Mauritania','MRT',478,0),
 ('MU','MAURITIUS','Mauritius','MUS',480,0),
 ('YT','MAYOTTE','Mayotte',NULL,NULL,0),
 ('MX','MEXICO','Mexico','MEX',484,0),
 ('FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583,0),
 ('MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498,0),
 ('MC','MONACO','Monaco','MCO',492,0),
 ('MN','MONGOLIA','Mongolia','MNG',496,0),
 ('MS','MONTSERRAT','Montserrat','MSR',500,0),
 ('MA','MOROCCO','Morocco','MAR',504,0),
 ('MZ','MOZAMBIQUE','Mozambique','MOZ',508,0),
 ('MM','MYANMAR','Myanmar','MMR',104,0),
 ('NA','NAMIBIA','Namibia','NAM',516,0),
 ('NR','NAURU','Nauru','NRU',520,0),
 ('NP','NEPAL','Nepal','NPL',524,0),
 ('NL','NETHERLANDS','Netherlands','NLD',528,0),
 ('AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530,0),
 ('NC','NEW CALEDONIA','New Caledonia','NCL',540,0),
 ('NZ','NEW ZEALAND','New Zealand','NZL',554,0),
 ('NI','NICARAGUA','Nicaragua','NIC',558,0),
 ('NE','NIGER','Niger','NER',562,0),
 ('NG','NIGERIA','Nigeria','NGA',566,0),
 ('NU','NIUE','Niue','NIU',570,0),
 ('NF','NORFOLK ISLAND','Norfolk Island','NFK',574,0),
 ('MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580,0),
 ('NO','NORWAY','Norway','NOR',578,0),
 ('OM','OMAN','Oman','OMN',512,0),
 ('PK','PAKISTAN','Pakistan','PAK',586,0),
 ('PW','PALAU','Palau','PLW',585,0),
 ('PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL,0),
 ('PA','PANAMA','Panama','PAN',591,0),
 ('PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598,0),
 ('PY','PARAGUAY','Paraguay','PRY',600,0),
 ('PE','PERU','Peru','PER',604,0),
 ('PH','PHILIPPINES','Philippines','PHL',608,0),
 ('PN','PITCAIRN','Pitcairn','PCN',612,0),
 ('PL','POLAND','Poland','POL',616,0),
 ('PT','PORTUGAL','Portugal','PRT',620,0),
 ('PR','PUERTO RICO','Puerto Rico','PRI',630,0),
 ('QA','QATAR','Qatar','QAT',634,0),
 ('RE','REUNION','Reunion','REU',638,0),
 ('RO','ROMANIA','Romania','ROM',642,0),
 ('RU','RUSSIAN FEDERATION','Russian Federation','RUS',643,0),
 ('RW','RWANDA','Rwanda','RWA',646,0),
 ('SH','SAINT HELENA','Saint Helena','SHN',654,0),
 ('KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659,0),
 ('LC','SAINT LUCIA','Saint Lucia','LCA',662,0),
 ('PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666,0),
 ('VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670,0),
 ('WS','SAMOA','Samoa','WSM',882,0),
 ('SM','SAN MARINO','San Marino','SMR',674,0),
 ('ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678,0),
 ('SA','SAUDI ARABIA','Saudi Arabia','SAU',682,0),
 ('SN','SENEGAL','Senegal','SEN',686,0),
 ('CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL,0),
 ('SC','SEYCHELLES','Seychelles','SYC',690,0),
 ('SL','SIERRA LEONE','Sierra Leone','SLE',694,0),
 ('SG','SINGAPORE','Singapore','SGP',702,0),
 ('SK','SLOVAKIA','Slovakia','SVK',703,0),
 ('SI','SLOVENIA','Slovenia','SVN',705,0),
 ('SB','SOLOMON ISLANDS','Solomon Islands','SLB',90,0),
 ('SO','SOMALIA','Somalia','SOM',706,0),
 ('ZA','SOUTH AFRICA','South Africa','ZAF',710,0),
 ('GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL,0),
 ('ES','SPAIN','Spain','ESP',724,0),
 ('LK','SRI LANKA','Sri Lanka','LKA',144,0),
 ('SD','SUDAN','Sudan','SDN',736,0),
 ('SR','SURINAME','Suriname','SUR',740,0),
 ('SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744,0),
 ('SZ','SWAZILAND','Swaziland','SWZ',748,0),
 ('SE','SWEDEN','Sweden','SWE',752,0),
 ('CH','SWITZERLAND','Switzerland','CHE',756,0),
 ('SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760,0),
 ('TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158,0),
 ('TJ','TAJIKISTAN','Tajikistan','TJK',762,0),
 ('TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834,0),
 ('TH','THAILAND','Thailand','THA',764,0),
 ('TL','TIMOR-LESTE','Timor-Leste',NULL,NULL,0),
 ('TG','TOGO','Togo','TGO',768,0),
 ('TK','TOKELAU','Tokelau','TKL',772,0),
 ('TO','TONGA','Tonga','TON',776,0),
 ('TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780,0),
 ('TN','TUNISIA','Tunisia','TUN',788,0),
 ('TR','TURKEY','Turkey','TUR',792,0),
 ('TM','TURKMENISTAN','Turkmenistan','TKM',795,0),
 ('TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796,0),
 ('TV','TUVALU','Tuvalu','TUV',798,0),
 ('UG','UGANDA','Uganda','UGA',800,0),
 ('UA','UKRAINE','Ukraine','UKR',804,0),
 ('AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784,0),
 ('GB','UNITED KINGDOM','United Kingdom','GBR',826,0),
 ('US','UNITED STATES','United States','USA',840,0),
 ('UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL,0),
 ('UY','URUGUAY','Uruguay','URY',858,0),
 ('UZ','UZBEKISTAN','Uzbekistan','UZB',860,0),
 ('VU','VANUATU','Vanuatu','VUT',548,0),
 ('VE','VENEZUELA','Venezuela','VEN',862,0),
 ('VN','VIET NAM','Viet Nam','VNM',704,0),
 ('VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92,0),
 ('VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850,0),
 ('WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876,0),
 ('EH','WESTERN SAHARA','Western Sahara','ESH',732,0),
 ('YE','YEMEN','Yemen','YEM',887,0),
 ('ZM','ZAMBIA','Zambia','ZMB',894,0),
 ('ZW','ZIMBABWE','Zimbabwe','ZWE',716,0);
CREATE TABLE  `groups`.`groups` (
  `group_id` int(11) NOT NULL auto_increment,
  `name` varchar(150) NOT NULL,
  `byline` text NOT NULL,
  `description` text,
  `category_id` int(11) default NULL,
  `tags` text,
  `involved_type` varchar(50) NOT NULL,
  `involved_link` varchar(150) default NULL,
  `created_name` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `created_email` varchar(100) NOT NULL,
  `confirmed` tinyint(1) NOT NULL default '0',
  `long_bottom_left` float NOT NULL,
  `lat_bottom_left` float NOT NULL,
  `long_top_right` float NOT NULL,
  `lat_top_right` float NOT NULL,
  `zoom_level` int(11) NOT NULL,
  `long_centroid` float NOT NULL,
  `lat_centroid` float NOT NULL,
  `url_id` varchar(150) NOT NULL,
  `involved_email` varchar(150) default NULL,
  PRIMARY KEY  (`group_id`),
  KEY `url` (`url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
CREATE TABLE  `groups`.`language` (
  `language_id` int(11) NOT NULL auto_increment,
  `language_code` varchar(5) NOT NULL,
  `name` varchar(25) default NULL,
  PRIMARY KEY  (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE  `groups`.`stat` (
  `stat_key` varchar(100) NOT NULL,
  `stat_value` varchar(100) NOT NULL,
  `stat_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`stat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `groups`.`tag` (
  `tag_id` INT NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`tag_id`)
)
CHARACTER SET utf8;

CREATE TABLE `groups`.`group_to_tag` (
  `group_to_tag_id` INT NOT NULL AUTO_INCREMENT,
  `group_id` INT NOT NULL,
  `tag_id` INT NOT NULL,
  PRIMARY KEY (`group_to_tag_id`)
)
CHARACTER SET utf8;

ALTER TABLE `groupsnearyou`.`groups` MODIFY COLUMN `created_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci;