--Eigenst�ndige DB

/*
Fetaure muss auf dem Server
und auf der DB aktiviert werden

Server--Erweitert-->eigenst�ndige DB true
DB--Optionen--> teilweise


M�glich ist:
master
Logins in der DB (Benutzer mit Kennwort)
beim Verbinden mit der DB muss auch die angegeben werden


msdb:
kein Vorteil

tempdb
#tabellen bekommen identische Spracxhsortierung, wie die 
eig. Datenbank anstatt die der tempdb

Dadurch wieder joins m�glich


Nachteile:
zun�chst keine Datenbank�bergreifenden Abfragen m�glich
keine Replikation
kein CDC und CTD


*/