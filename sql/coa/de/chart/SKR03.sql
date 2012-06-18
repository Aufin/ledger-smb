begin;
-- General COA
--
SELECT account_heading_save(NULL, '000', '-----', NULL);
SELECT account__save(NULL,'420','Büroeinrichtung','A','420', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'430','Ladeneinrichtung','A','430', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'440','Werkzeuge','A','440', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'450','Einbauten','A','450', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'460','Gerüst- und Schalungsmaterial','A','460', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'480','Geringwertige Wirtschaftsgüter bis DM 800,-','A','480', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'490','Sonstige Betriebs- und Geschäftsausstattung','A','490', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'650','Verb. gg. Kreditinstituten - Restlaufz. größer 5 Jahre','L','650', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'1000','Kasse','A','1000', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL,'1200','Bank-Giro','A','1200', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL,'1400','Forderungen aus Lief. und Leist. Kundengruppe 0','A','1400', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL,'1540','Steuerüberzahlungen','A','1540', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL,'1542','Steuererstattungsansprüche gg. anderen EU-Ländern','A','1542', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL,'1545','Umsatzsteuerforderungen','A','1545', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL,'1548','Vorsteuer im Folgejahr abziehbar','A','1548', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL,'1570','Abziehbare Vorsteuer','A','1570', NULL, false, false, string_to_array('AR_tax:AP_tax', ':'), false, false);
SELECT account__save(NULL,'1571','Abziehbare Vorsteuer, 7%','A','1571', NULL, false, false, string_to_array('AR_tax:AP_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL,'1575','Abziehbare Vorsteuer, 16%','A','1575', NULL, false, false, string_to_array('AR_tax:AP_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL,'1576','Abziehbare Vorsteuer, 15%','A','1576', NULL, false, false, string_to_array('AR_tax:AP_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL,'1577','Vorsteuer nach allg. Durchschnittssätzen UStVA KZ 63','A','1577', NULL, false, false, string_to_array('AR_tax:AP_tax', ':'), false, false);
SELECT account__save(NULL,'1775','Umsatzsteuer, 16%','L','1775', NULL, false, false, string_to_array('AR_tax:AP_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL,'1776','Umsatzsteuer, 15%','L','1776', NULL, false, false, string_to_array('AR_tax:AP_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL,'1780','Umsatzsteuer - Vorauszahlungen','L','1780', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'1781','Umsatzsteuer - Vorauszahlungen 1/11','L','1781', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'1782','Nachsteuer, UStVA KZ 65','L','1782', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'1789','Umsatzsteuer laufendes Jahr','L','1789', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'1790','Umsatzsteuer Vorjahr','L','1790', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'1791','Umsatzsteuer frühere Jahre','L','1791', NULL, false, false, string_to_array('', ':'), false, false);
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('1820','Sonderausg. beschr. abzugsf. (Privat Vollhaft./Einzelu.)','A','','','1820');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('1830','Sonderausg. unbeschr. abzugsf. (Privat Vollhaft./Einzelu.)','A','','','1830');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('1840','Privatspenden (Privat Vollhafter / Einzelunternehmer)','A','','','1840');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('1850','Außergewöhnliche Belastungen (Privat Vollhaft. / Einzelunt.)','A','','','1850');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('1890','Privateinlagen (Privat Vollhafter / Einzelunternehmer)','A','','','1890');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('2010','Betriebsfremde Aufw. (soweit nicht außerordentlich)','A','','','2010');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('2020','Periodenfremde Aufw. (soweit nicht außerordentlich)','A','','','2020');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('2100','Zinsen und ähnliche Aufwendungen','A','','','2100');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('2103','Steuerlich abzugsfähige, andere Nebenleistungen zu Steuern','A','','','2103');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('2104','Steuerlich nicht abzugsfähige, andere Nebenleistungen zu Steuern','A','','','2104');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('2107','Zinsaufwendungen §233a AO betriebliche Steuern','A','','','2107');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('2108','Zinsaufw. §233a, §234, §237 AO Personenst. §8 GewStG','A','','','2108');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('2109','Zinsaufwendungen an verbundene Unternehmen','A','','','2109');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('2110','Zinsaufwendungen für kurzfristige Verbindlichkeiten','A','','','2110');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3410','Wareneingang, 16% Vorsteuer','A','','','3410');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3736','Erhaltene Skonti, 16% Vorsteuer','A','','','3736');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3740','Erhaltene Boni','A','','','3740');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3750','Erhaltene Boni,   7% Vorsteuer','A','','','3750');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3760','Erhaltene Boni, 15%+16% Vorsteuer','A','','','3760');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3762','Erhaltene Boni, 16% Vorsteuer','A','','','3762');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3764','Erhaltene Boni, 15% Vorsteuer','A','','','3764');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3800','Anschaffungsnebenkosten','A','','','3800');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3830','Leergut','A','','','3830');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3850','Zölle und Einfuhrabgaben','A','','','3850');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3960','Bestandsv. Roh-, Hilfs- u. Betriebsstoffe / bezogene Waren','A','','','3960');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3970','Bestand Roh-, Hilfs- und Betriebsstoffe','A','','','3970');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3980','Bestand Waren','A','','','3980');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('3990','Verrechnete Stoffkosten','A','','','3990');
SELECT account__save(NULL,'4000','Material- und Stoffverbrauch','E','4000', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4100','Löhne und Gehälter','E','4100', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4110','Löhne','E','4110', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4120','Gehälter','E','4120', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4124','Geschäftsführergehälter der GmbH-Gesellschafter','E','4124', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4125','Ehegattengehalt','E','4125', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4126','Tantiemen','E','4126', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4127','Geschäftsführergehälter','E','4127', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4128','Vergütungen an angestellte Mitunternehmer §15 EStG','E','4128', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4130','Gesetzliche soziale Aufwendungen','E','4130', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4137','Gesetzliche soziale Aufw. für Mitunternehmer §15 EStG','E','4137', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4138','Beiträge zur Berufsgenossenschaft','E','4138', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'1360','Geldtransit Bank 1','A','1360', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'4140','Freiw. soziale Aufwendungen (lohnsteuerfrei)','E','4140', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4145','Freiw. soziale Aufwendungen (lohnsteuerpflichtig)','E','4145', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4149','Pauschale Lohnsteuer auf s. Bezüge (z.B. Fahrtkostenzuschuß)','E','4149', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4150','Krankengeldzuschüsse','E','4150', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4160','Versorgungskassen','E','4160', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4165','Aufwendungen für die Altersversorgung','E','4165', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4167','Pauschale Lohnsteuer auf s. Bezüge (z.B. Direktversicherung)','E','4167', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4168','Aufw. f. die Altersversorgung f. Mitunternehmer §15 EStG','E','4168', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4169','Aufwendungen für Unterstützung','E','4169', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4170','Vermögenswirksame Leistungen','E','4170', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4175','Fahrtkostenerstattung - Wohnung / Arbeitsstätte','E','4175', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4180','Bedienungsgelder','E','4180', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4190','Aushilfslöhne','E','4190', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4199','Lohnsteuer für Aushilfen','E','4199', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4200','Raumkosten','E','4200', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4210','Miete','E','4210', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4218','Gewerbesteuerlich zu berücks. Miete §8 GewStG','E','4218', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4219','Vergütung an Mitu. f. mietw. Überl. v. Wirtschaftsg. §15EStG','E','4219', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4220','Pacht','E','4220', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4228','Gewerbesteuerlich zu berücks. Pacht §8 GewStG','E','4228', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4229','Vergütung an Mitu. f. pachtw. Überl. v. Wirtschaftsg.§15EStG','E','4229', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4230','Heizung','E','4230', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4240','Gas, Strom, Wasser (Verwaltung, Vertrieb)','E','4240', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4250','Reinigung','E','4250', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4260','Instandhaltung betrieblicher Räume','E','4260', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4270','Abgaben für betrieblich genutzten Grundbesitz','E','4270', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4280','Sonstige Raumkosten','E','4280', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4320','Gewerbesteuer (Vorauszahlung)','E','4320', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4330','Gewerbeertragsteuer','E','4330', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4335','Gewerbekapitalsteuer','E','4335', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4340','Sonstige Betriebsteuern','E','4340', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4350','Verbrauchsteuer','E','4350', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4360','Versicherungen','E','4360', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4380','Beiträge','E','4380', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4390','Sonstige Abgaben','E','4390', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4396','Steuerlich abzugsfähige Verspätungszuschläge und Zwangsgelder','E','4396', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4397','Steuerlich nicht abzugsfähige Verspätungszuschläge und Zwangsgelder','E','4397', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4400','Besondere Kosten (zur freien Verfügung)','E','4400', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4500','Fahrzeugkosten','E','4500', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4510','Kfz-Steuern','E','4510', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4520','Kfz-Versicherungen','E','4520', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4530','Laufende Kfz-Betriebskosten','E','4530', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4540','Kfz-Reparaturen','E','4540', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4550','Garagenmieten','E','4550', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4570','Fremdfahrzeuge','E','4570', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4580','Sonstige Kfz-Kosten','E','4580', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4600','Werbe- und Reisekosten','E','4600', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4610','Werbekosten','E','4610', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4630','Geschenke bis DM 75,00','E','4630', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4635','Geschenke über DM 75,00','E','4635', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4638','Geschenke ausschließlich betrieblich genutzt','E','4638', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4640','Repräsentationskosten','E','4640', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4650','Bewirtungskosten','E','4650', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4653','Aufwerksamkeiten','E','4653', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4654','Nicht abzugsfähige Bewirtungskosten','E','4654', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4655','Nicht abzugsfähige Betriebsausgaben','E','4655', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4660','Reisekosten Arbeitnehmer','E','4660', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4666','Reisekost. Arbeitn., 12,3%/13,1% VSt  Verpfl.Mehr- / Übern.Aufw.','E','4666', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4667','Reisekost. Arbeitn., 9,8%/10,5% VSt Gesamtpauschal.','E','4667', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4670','Reisekosten Unternehmer','E','4670', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4675','Reisekosten Unternehmer, 9,8/10,5% VSt sonst.Gesamtpauschal.','E','4675', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4676','Reisekost. Untern., 12,3%/13,1% VSt Verpfl.Mehr- / Übern.Aufw.','E','4676', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4677','Reisekosten Unternehmer, 9,8%/10,5% VSt Verpfl.Mehraufw. Gesamtpauschal.','E','4677', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4678','Km-Geld Erstattung, Unternehmer, 5,7%/6,1% VSt','E','4678', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4685','Km-Geld-Erstattung, Arbeitnehmer  8,2%/8,7% VSt','E','4685', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4700','Kosten der Warenabgabe','E','4700', NULL, false, false, string_to_array('AP_amount:IC_expense:IC_cogs', ':'), false, false);
SELECT account__save(NULL,'4710','Verpackungsmaterial','E','4710', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4730','Ausgangsfrachten','E','4730', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4750','Transportversicherungen','E','4750', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4760','Verkaufsprovisionen','E','4760', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4780','Fremdarbeiten','E','4780', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4790','Aufwand für Gewährleistungen','E','4790', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4800','Reparat. u. Inst. v. Maschinen u. technischen Anlagen','E','4800', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4805','Reparat. u. Inst. v. and. Anl. d. Betr.- u. Geschäftsausst.','E','4805', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4809','Sonstige Reparaturen und Instandhaltungen','E','4809', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4810','Mietleasing','E','4810', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4815','Kaufleasing','E','4815', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4820','Abschr. a. Aufw. f.d. Ingangs. u. Erw. des Geschäftsbetr.','E','4820', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4822','Abschr. a. immaterielle Vermögensgegenstände','E','4822', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4824','Abschreibung auf den Geschäfts- oder Firmenwert','E','4824', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4826','Außerplanm. Abschr. a. immaterielle Vermögensgegenstände','E','4826', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4830','Abschreibungen auf Sachanlagen','E','4830', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4840','Außerplanm. Abschreibungen auf Sachanlagen','E','4840', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4850','Abschr. a. Sachanl. aufgrund steuerl. Sondervorschriften','E','4850', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4855','Sofortabschreibung geringwertiger Wirtschaftsgüter','E','4855', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4860','Abschreibung auf aktivierte, geringwertige Wirtschaftsgüter','E','4860', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4865','Außerplanmäßige Abschr. a. aktivierte GWG','E','4865', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4870','Abschreibungen auf Finanzanlagen','E','4870', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4872','Abschr. aufgrund v. Verlustant. an Mitunt. §8 GewStG','E','4872', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4874','Abschr. a. Finanzanl. aufgrund steuerl. Sondervorschriften','E','4874', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4875','Abschreibungen auf Wertpapiere des Umlaufvermögens','E','4875', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4880','Abschr. a. Umlaufv. ohne Wertpapiere (soweit unübl. Höhe)','E','4880', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4882','Abschr. a. Umlaufv. steuerrechtl. bedingt (unübl. Höhe)','E','4882', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4887','Abschr. a. Umlaufv., steuerrechtlich bedingt (übl. Höhe)','E','4887', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4890','Vorwegn. künftiger Wertschw. im Umlaufv. (unübl. Höhe)','E','4890', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4900','Sonstige betriebliche Aufwendungen','E','4900', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4905','Sonstige Aufwendungen betrieblich und regelmäßig','E','4905', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4910','Porto','E','4910', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4920','Telefon','E','4920', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4925','Telefax, Fernschreiber','E','4925', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4930','Bürobedarf','E','4930', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4940','Zeitschriften, Bücher','E','4940', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4945','Fortbildungskosten','E','4945', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4946','Freiwillige Sozialleistungen','E','4946', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4948','Vergütungen an freiberufliche Mitunternehmer §15 EStG','E','4948', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4950','Rechts- und Beratungskosten','E','4950', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4955','Buchführungskosten','E','4955', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4957','Abschluß- und Prüfungskosten','E','4957', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4960','Mieten für Einrichtungen','E','4960', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('4968','Gewerbest. zu berücks. Miete f. Einrichtungen §8 GewStG','A','','','4968');
SELECT account__save(NULL,'4969','Aufwendungen für Abraum- und Abfallbeseitigung','E','4969', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4970','Nebenkosten des Geldverkehrs','E','4970', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4980','Betriebsbedarf','E','4980', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4985','Werkzeuge und Kleingeräte','E','4985', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4996','Herstellungskosten','E','4996', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4997','Verwaltungskosten','E','4997', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'4998','Vertriebskosten','E','4998', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('4999','Gegenkonto 49960-49980','A','','','4999');
SELECT account__save(NULL,'7140','Fertige Waren (Bestand)','A','7140', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL,'8100','Steuerfreie Umsätze o. VSt-Abzug §4 Nr.8 ff. UStG','I','8100', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8500','Provisionserlöse','I','8500', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8504','Provisionserlöse steuerfrei (§4 Nr.8ff UStG)','I','8504', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8505','Provisionserlöse steuerfrei (§4 Nr.5 UStG)','I','8505', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8506','Provisionserlöse,  7% USt','I','8506', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8507','Provisionserlöse, 15% Ust','I','8507', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8508','Provisionserlöse, 15%/16% USt','I','8508', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8509','Provisionserlöse, 16% Ust','I','8509', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8591','Sachbezüge,   7% USt (Waren)','I','8591', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8595','Sachbezüge, 15%/16% USt (Waren)','I','8595', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8596','Sachbezüge, 16% USt (Waren)','I','8596', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8597','Sachbezüge, 15% USt (Waren)','I','8597', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8630','Sonstige Erlöse betrieblich und regelmäßig, 7% USt','I','8630', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8645','Sonstige Erlöse betrieblich und regelmäßig, 16% Ust','I','8645', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8730','Gewährte Skonti','A','','','8730');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8731','Gewährte Skonti,  7% USt','A','','','8731');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8735','Gewährte Skonti, 16% Ust','A','','','8735');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8740','Gewährte Boni','A','','','8740');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8750','Gewährte Boni,  7% USt','A','','','8750');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8762','Gewährte Boni, 16% Ust','A','','','8762');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8770','Gewährte Rabatte','A','','','8770');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8780','Gewährte Rabatte,  7% USt','A','','','8780');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8792','Gewährte Rabatte, 16% Ust','A','','','8792');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8800','Erlöse aus Anlagenverkäufen','A','','','8800');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8801','Erlöse aus Anlagenverkäufen 15%/16% USt (bei Buchverlust)','A','','','8801');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8810','Erlöse aus Anlagenverkäufen 16% USt (bei Buchverlust)','A','','','8810');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8815','Erlöse aus Anlagenverkäufen 15% USt (bei Buchverlust)','A','','','8815');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8820','Erlöse aus Anlagenverkäufen 15%/16% USt (bei Buchgewinn)','A','','','8820');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8829','Erlöse aus Anlagenverkäufen (bei Buchgewinn)','A','','','8829');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8830','Erlöse aus Anlagenverkäufen 16% USt (bei Buchgewinn)','A','','','8830');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8835','Erlöse aus Anlagenverkäufen 15% USt (bei Buchgewinn)','A','','','8835');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8900','Eigenverbrauch','A','','','8900');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8905','Entnahme Gegenstände ohne USt','A','','','8905');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8908','Entnahme von Gegenstände, 16% USt §1 Abs.1 Nr.2a UStG','A','','','8908');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8909','Entnahme von Gegenstände, 15% USt §1 Abs.1 Nr.2a UStG','A','','','8909');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8910','Entnahme von Gegenstände, 15%/16% USt §1 Abs.1 Nr.2a UStG','A','','','8910');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8915','Entnahme von Gegenstände, 7% USt §1 Abs.1 Nr.2a UStG','A','','','8915');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8920','Entnahme v. sonst. Leist., 15%/16% USt §1 A.1 Nr.2b UStG','A','','','8920');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8930','Entnahme v. sonst. Leist., 7% USt §1 A.1 Nr.2b UStG','A','','','8930');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8937','Entnahme v. sonst. Leist., 16% USt §1 A.1 Nr.2b UStG','A','','','8937');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8938','Entnahme v. sonst. Leist., 15% USt §1 A.1 Nr.2b UStG','A','','','8938');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8939','Entnahme v. sonst. Leist., ohne USt §1 A.1 Nr.2b UStG','A','','','8939');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8941','Eigenverbr., 7% Ust §4 A.1 Nr.5 1-7, A.7 EStG','A','','','8941');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8942','Eigenverbr., 16% Ust  §4 A.1 Nr.5 1-7, A.7 EStG','A','','','8942');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8944','Eigenverbr., ohne Ust §4 A.1 Nr.5 1-7, A.7 EStG','A','','','8944');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8950','Nicht steuerbare Umsätze','A','','','8950');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8955','Umsatzsteuervergütungen','A','','','8955');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8960','Bestandsveränd. - unfertige Erzeugnisse','A','','','8960');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8970','Bestandsveränd. - unfertige Leistungen','A','','','8970');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8975','Bestandsveränd. - in Ausführung befindliche Bauaufträge','A','','','8975');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8977','Bestandsveränd. - in Arbeit befindliche Aufträge','A','','','8977');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8980','Bestandsveränd. - fertige Erzeugnisse','A','','','8980');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('8990','Bestandsveränd. - andere aktivierte Eigenleistungen','A','','','8990');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('9000','Saldenvorträge Sachkonten','A','','','9000');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('9008','Saldenvorträge Debitoren','A','','','9008');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('9009','Saldenvorträge Kreditoren','A','','','9009');
INSERT INTO chart (accno,description,charttype,category,link,gifi_accno) VALUES ('9100','Saldovortragskonto der Statistikkonten','A','','','9100');
SELECT account__save(NULL,'1800','Privatentn. allg. (Privat Vollhafter / Einzelunternehmer)','Q','1800', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'2000','Außerordentliche Aufwendungen','A','2000', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'1600','Verb. aus Lief. und Leist. Lieferantengruppe 0','L','1600', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL,'3400','Wareneingang, 16% Vorsteuer','E','3400', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'8400','Umsatzerlöse 16%','I','8400', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'8840','Erträge aus Kursdifferenzen','I','8840', NULL, false, false, string_to_array('AR_amount:IC_sale:IC_income', ':'), false, false);
--
insert into tax (chart_id,rate) values ((select id from chart where accno = '1571'),0.07);
insert into tax (chart_id,rate) values ((select id from chart where accno = '1575'),0.16);
insert into tax (chart_id,rate) values ((select id from chart where accno = '1576'),0.15);
insert into tax (chart_id,rate) values ((select id from chart where accno = '1775'),0.16);
insert into tax (chart_id,rate) values ((select id from chart where accno = '1776'),0.15);
insert into tax (chart_id,rate) values ((select id from chart where accno = '3400'),0.16);
insert into tax (chart_id,rate) values ((select id from chart where accno = '8400'),0.16);
--
INSERT INTO defaults (setting_key, value) VALUES ('inventory_accno_id', (select id from chart where accno = '7140'));

 INSERT INTO defaults (setting_key, value) VALUES ('income_accno_id', (select id from chart where accno = '8400'));

 INSERT INTO defaults (setting_key, value) VALUES ('expense_accno_id', (select id from chart where accno = '4700'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxgain_accno_id', (select id from chart where accno = '8840'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxloss_accno_id', (select id from chart where accno = '8840'));

 INSERT INTO defaults (setting_key, value) VALUES ('curr', 'EUR:USD');

 INSERT INTO defaults (setting_key, value) VALUES ('weightunit', 'kg');
--
commit;
UPDATE account
   SET tax = true
WHERE id
   IN (SELECT account_id
       FROM account_link
       WHERE description LIKE '%_tax');

SELECT cr_coa_to_account__save(accno, accno || '--' || description, false)
FROM account WHERE accno = '1200';

