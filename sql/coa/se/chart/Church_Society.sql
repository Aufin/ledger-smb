begin;
-- Johan Hambraeus
-- May 7, 2006
--
SELECT account_heading_save(NULL, '1', 'Tillgångar', NULL);
SELECT account_heading_save(NULL, '10', 'Immateriella anläggningstillgångar', NULL);
SELECT account_save(NULL,'1010','Balanserade utgifter','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1019','Ack avskriningar balanserade utg','C','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1060','Hyresrätt','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1069','Ack avskrivn hyresrätt','C','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'11','Byggnader och mark', NULL);
SELECT account_save(NULL,'1110','Byggnader','A','', NULL, false, false, string_to_array('IC', ':'));
SELECT account_save(NULL,'1119','Ack avskrivn byggnader','C','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1130','Mark','A','', NULL, false, false, string_to_array('IC', ':'));
SELECT account_save(NULL,'1140','Tomter, markomr obebyggda','A','', NULL, false, false, string_to_array('IC', ':'));
SELECT account_save(NULL,'1150','Markanläggningar','A','', NULL, false, false, string_to_array('IC', ':'));
SELECT account_save(NULL,'1159','Ack avskrivn markanläggn','C','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1190','Övriga byggnader och mark','A','', NULL, false, false, string_to_array('IC', ':'));
SELECT account_heading_save(NULL,'12','Maskiner och inventarier', NULL);
SELECT account_save(NULL,'1230','Installationer','A','', NULL, false, false, string_to_array('IC', ':'));
SELECT account_save(NULL,'1238','Ack nedskrivn installationer','C','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1239','Ack avskrivn installationer','C','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1250','Datorer','A','', NULL, false, false, string_to_array('IC', ':'));
SELECT account_save(NULL,'1259','Ack avskrivn datorer','C','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'13','Finansiella anläggningstillgångar', NULL);
SELECT account_save(NULL,'1370','Uppskjuten skattefordran','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1380','Långfristiga fordringar','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1400','Fordran hos EFS Gafsele','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1405','Fordran hos EFS Hälla','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'15','Kundfordringar', NULL);
SELECT account_save(NULL,'1500','Kundfordringar','A','', NULL, false, false, string_to_array('AR', ':'));
SELECT account_heading_save(NULL,'16','Övriga kortfristiga fordringar', NULL);
SELECT account_save(NULL,'1600','Övr kortfristiga fordr','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1710','Förutbetalda hyror','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1730','Förutbet försäkringspremier','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1740','Förutbet ränteutgifter','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1750','Upplupna hyresinkomster','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1760','Upplupna inkomsträntor','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1790','Övr interimsfordringar','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'19','Kassa och Bank', NULL);
SELECT account_save(NULL,'1910','Kassa','A','', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'));
SELECT account_save(NULL,'1920','Postgiro','A','', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'));
SELECT account_save(NULL,'1930','Checkräkningskonto','A','', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'));
SELECT account_save(NULL,'1940','Övriga bankkonto','A','', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'));
SELECT account_save(NULL,'1941','Nordea värdepappersfond','A','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'1942','Nordea girokapitalkonto','A','', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'));
SELECT cr_coa_to_account_save(accno, accno || '--' || description)
FROM account WHERE accno in ('1910', '1920', '1930', '1940', '1941', '1942');

SELECT account_heading_save(NULL,'2','Eget kapital och skulder', NULL);
SELECT account_heading_save(NULL,'20','Eget kapital', NULL);
SELECT account_save(NULL,'2000','Eget kapital EFS Åsele','Q','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2005','Eget kapital EFS Gafsele','Q','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2010','Eget kapital EFS Hälla','Q','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2070','Ändamålsbestämda medel','Q','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2091','Balanserad vinst/förlust','Q','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2098','Vinst/förlust föreg år','Q','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2099','Redovisat resultat','Q','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'22','Avsättningar', NULL);
SELECT account_save(NULL,'2250','Avsättning för skatter','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2290','Övriga avsättningar','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'23','Skulder', NULL);
SELECT account_save(NULL,'2300','Skuld till EFS Gafsele','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2310','Skuld till EFS Hälla','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2320','Skuld till fam Norlin','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2330','Checkräkningskredit','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2399','Övr långfristiga skulder','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2440','Leverantörsskulder','L','', NULL, false, false, string_to_array('AP', ':'));
SELECT account_save(NULL,'2499','Övr kortfristiga skulder','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2960','Upplupna utgiftsräntor','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2971','Förutbetalda hyresintäkter','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2972','Förutbetalda medlemsavgifter','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2979','Övriga förutbetalda intäkter','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2990','Övr interimsskulder','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'2999','Övr uppl kostn/förutbet intäkter','L','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'3','Intäkter', NULL);
SELECT account_heading_save(NULL,'30','Allmänna gåvor', NULL);
SELECT account_save(NULL,'3000','Gåvor via konto','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3005','Minnesgåvor','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3010','Gudstjänstkollekter','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3015','Fika/kaffe/fester - gåvor','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_heading_save(NULL,'31','Öronmärkta gåvor', NULL);
SELECT account_save(NULL,'3100','Öronmärkta gåvor','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3101','Gåvor barnarbete','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3102','Gåvor körsång','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3103','Gåvor bönegrupper','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3104','Gåvor Alfa-grupper','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3105','Övrigt lokalt arbete','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3106','Gåvor till fastighet mm','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3109','Gåvor Åsele allkristna gemenskap','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3110','Gåvor EFS Västerbotten','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3111','Gåvor distriktskonferens','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3112','Gåvor Scoutverksamhet','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3120','Gåvor EFS riks','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3121','Gåvor EFS riks konferens','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3122','Gåvor EFS Inre mission','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3123','Gåvor EFS Yttre mission','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3130','Gåvor Barn i alla länder','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3131','Gåvor Johannelundsinsamling','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3132','Gåvor Påskinsamling','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3133','Gåvor Flodvågens offer','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_heading_save(NULL,'33','Försäljningsintäkter', NULL);
SELECT account_save(NULL,'3300','Försäljning bokbordet','I','', NULL, false, false, string_to_array('IC_sale', ':'));
SELECT account_save(NULL,'3350','Försäljning fika mm','I','', NULL, false, false, string_to_array('IC_sale', ':'));
SELECT account_heading_save(NULL,'34','Medlemsavgifter', NULL);
SELECT account_save(NULL,'3400','Medlemsavgifter','I','', NULL, false, false, string_to_array('IC_income', ':'));
SELECT account_save(NULL,'3405','Medlemsavgifter Solglimten','I','', NULL, false, false, string_to_array('IC_income', ':'));
SELECT account_heading_save(NULL,'345','Hyresintäkter', NULL);
SELECT account_save(NULL,'3450','Hyresintäkter, hyreskontrakt','I','', NULL, false, false, string_to_array('IC_income', ':'));
SELECT account_save(NULL,'3460','Hyresintäkter, enstaka tillfälle','I','', NULL, false, false, string_to_array('IC_income', ':'));
SELECT account_save(NULL,'3470','Hyresint Ersättning telefonkostnad','I','', NULL, false, false, string_to_array('IC_income', ':'));
SELECT account_heading_save(NULL,'35','Bidrag', NULL);
SELECT account_save(NULL,'3510','Erhållna statliga bidrag','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3520','Erhållna kommunala bidrag','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3530','Bidrag Svenska kyrkan','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_save(NULL,'3590','Övriga erhållna bidrag','I','', NULL, false, false, string_to_array('AR_amount', ':'));
SELECT account_heading_save(NULL,'36','Övriga intäkter', NULL);
SELECT account_save(NULL,'3690','Övriga sidointäker','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'3731','Kassarabatter','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'3740','Öresutjämning','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'3960','Valuta kursvinst','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'3972','Vinst avyttr fastigheter','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'3973','Vinst avyttr maskiner/inv','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'3990','Övr ersättn och intäker','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'3994','Försäkringsersättningar','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'4','Utgifter', NULL);
SELECT account_save(NULL,'4000','Kostnad för predikant','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4050','Reskostnader för predikant','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_heading_save(NULL,'41','Utgifter öronmärkta gåvor', NULL);
SELECT account_save(NULL,'4100','Kostnad öronmärkta gåvor','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4101','Kostnad barnarbete','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4102','Kostnad körer','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4103','Kostnad bönegrupper','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4104','Kostnad Alfa','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4105','Kostnad Övrigt lokalt arbete','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4106','Kostnad Fastighet (särskilt)','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4107','Kostnad scouting barnarbete','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4109','Åsele allkristna gemenskap','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4110','EFS Västerbotten','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4111','distriktskonferens','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4120','EFS riks','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4121','EFS riks konferensinsamling','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4122','EFS inre mission','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4123','EFS yttre mission','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4130','Barn i alla länder','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4131','Johannelundinsamling','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4132','Påskinsamling','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4133','Till Flodvågens offer','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_heading_save(NULL,'43','Inköpskostnader mm', NULL);
SELECT account_save(NULL,'4300','Inköp bokbord','E','', NULL, false, false, string_to_array('IC_cogs', ':'));
SELECT account_save(NULL,'4350','Inköp matr fika mm','E','', NULL, false, false, string_to_array('IC_cogs', ':'));
SELECT account_save(NULL,'4400','Pren Vårt budskap (distr tidning)','E','', NULL, false, false, string_to_array('IC_expense', ':'));
SELECT account_save(NULL,'4600','Inhyrda predikanter/föreläsare','E','', NULL, false, false, string_to_array('AP_amount', ':'));
SELECT account_save(NULL,'4700','Tidningar, facklitteratur','E','', NULL, false, false, string_to_array('IC_expense', ':'));
SELECT account_save(NULL,'4900','Föreningsavgifter','E','', NULL, false, false, string_to_array('IC_expense', ':'));
SELECT account_heading_save(NULL,'50','Lokalkostnader hyrd lokal', NULL);
SELECT account_save(NULL,'5010','Lokalhyra','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5020','El','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5030','Värme hyrd lokal','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5050','Lokaltillbehör hyrd lokal','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5060','Städning, renhållning hyrd lokal','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5070','Reparationer hyrd lokal','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5090','Övr kostnader hyrd lokal','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'51','Lokalkostnader egen lokal', NULL);
SELECT account_save(NULL,'5120','Belysning','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5130','Värme','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5132','Sotning','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5140','Vatten och avlopp','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5160','Renhålln och städning','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5170','Rep och underhåll fastighet','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5191','Fastighetsskatt','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5192','Försäkringsprem fastighet','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5193','Fastighetsskötsel och förvaltning','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5199','Övr fastighetskostnader','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'52','Övriga kostnader', NULL);
SELECT account_save(NULL,'5210','Hyra arbetsmaskiner','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5220','Hyra inventarier','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5290','Övr hyreskostn anl tillg','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5390','Övriga bränslen','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5410','Förbrukningsinventarier','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5460','Förbrukningsmaterial','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5480','Arbetskläder o skyddsmtrl','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5500','Reparation och underhåll','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5710','Frakt och transport','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5800','Resekostnader','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5910','Annonsering','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5930','Reklamtrycksaker','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'5990','Övrig reklam','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6110','Kontorsmaterial','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6150','Trycksaker','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6210','Telefon','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6250','Porto','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6310','Försäkringar','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6320','Självrisker','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6340','Lämnade skadestånd','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'64','Förvaltningskostnader', NULL);
SELECT account_save(NULL,'6490','Övr förvaltningskostnader','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6530','Redovisningstjänster','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6540','IT-tjänster','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6550','Konsultarvoden','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'65','Bankkostnader', NULL);
SELECT account_save(NULL,'6570','Bankkostnader, Nordea','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6571','Bankkostnader, Postgirot','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6572','Bankkostnader, Bankgiro','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6573','Bankkostnader, Föreningssparbank','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'658','Främmande tjänster', NULL);
SELECT account_save(NULL,'6580','Advokatkostnader','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'6590','Övr främmande tjänster','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'7','Avskrivningar och engångskostn', NULL);
SELECT account_save(NULL,'7780','Avskrivningar enligt plan','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7811','Avskrivningar balanserade utgifter','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7820','Avskrivningar byggnader/mark','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7821','Avskrivn byggnader','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7822','Avskrivn byggnadsinv','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7824','Avskrivn markanläggn','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7829','Avskrivningar övr byggnader','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7832','Avskrivn inventarier','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7833','Avskrivningar installationer','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7835','Avskrivningar datorer','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7921','Kostn av engångskaraktär ','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'7960','Valutakursförlust','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'8','Financiella intäkter o kostnader', NULL);
SELECT account_heading_save(NULL,'83','Ränteintäkter', NULL);
SELECT account_save(NULL,'8300','Ränteintäkter ','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'8390','Övr finansiella intäkter','I','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'84','Räntekostnader', NULL);
SELECT account_save(NULL,'8400','Räntekostnader','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_save(NULL,'8490','Övr finansiella kostnader','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'891','Skatter', NULL);
SELECT account_save(NULL,'8910','Årets skattekostnad','E','', NULL, false, false, string_to_array('', ':'));
SELECT account_heading_save(NULL,'899','Redovisat resultat', NULL);
SELECT account_save(NULL,'8999','Redovisat resultat','E','', NULL, false, false, string_to_array('', ':'));
--
INSERT INTO defaults (setting_key, value) VALUES ('inventory_accno_id', (select id from chart where accno ='1130'));

 INSERT INTO defaults (setting_key, value) VALUES ('income_accno_id', (select id from chart where accno = '3400'));

 INSERT INTO defaults (setting_key, value) VALUES ('expense_accno_id', (select id from chart where accno = '4400'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxgain_accno_id', (select id from chart where accno = '3960'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxloss_accno_id', (select id from chart where accno = '7960'));

 INSERT INTO defaults (setting_key, value) VALUES ('curr', 'SEK:EUR:USD');

 INSERT INTO defaults (setting_key, value) VALUES ('weightunit', 'kg');

commit;
UPDATE account
   SET tax = true
WHERE id
   IN (SELECT account_id
       FROM account_link
       WHERE description LIKE '%_tax');

