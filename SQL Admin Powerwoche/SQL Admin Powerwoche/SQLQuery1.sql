--Hardware
--4 Kerne
--16GB
--1 HDD

16GB-4GB---> 12GB

16-4-2=10GB

--HV-DC		2GB    1Kern  NUMA Socket 1
--HV-SQL1   6 GB   4kerne  kein dynamischer Arbeitsspeicher in der VM
--HV-SQL2   4GB  4 Kerne  kein dynamischer

Wieviel GB RAM braucht ein OS:
10%  (4 bis 10GB)

NUMA




SETUP:

#Pfade
Binärkram  C.\Program Files... ok
DB Pfade .mdf daten  + .ldf Logfile
Trenne Daten von Logfiles physikalisch pro DB!!



#Features
#Instanz
ca 50mal auf einen Rechner installierbar(SQL 2017, SQL 2019, SQL 2022..)
jede Instanz ist autark isoliert von anderen 


#Security
NT
NT + SQL Auth (gemischte Auth)--> SA (alle Rechte) komplexes deaktiveren  Ersatzkonto SAAdmin2


#tempdb
SystemDB
1 mal pro Instanz
Müllschlucker (#t, Zeilenversionierung, Auslagerung, IX Wartung..)
muss man optimieren 
eigene HDD (jeweils für Daten und Logdatei)
Anzahl der DAtendateiene werden auf = Anzahl der Kerne erhöht (max 8)

#MAXDOP
Anzahl der Kerne, die eine Abfrage max verwendet =Anazhl der Kerne max 8)

#RAM (Datenpuffer Pläne)
Min RAM lass die 0 ..zählt erst wenn belegt
Max RAM gebe immer eine Max Wert vor (OS)  empfiehlt einen Wert 2 mal bestätigen

schulung\Administrator	
ppedv2023!














