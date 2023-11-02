--Eigenständige DB

/*
Fetaure muss auf dem Server
und auf der DB aktiviert werden

Server--Erweitert-->eigenständige DB true
DB--Optionen--> teilweise


Möglich ist:
master
Logins in der DB (Benutzer mit Kennwort)
beim Verbinden mit der DB muss auch die angegeben werden


msdb:
kein Vorteil

tempdb
#tabellen bekommen identische Spracxhsortierung, wie die 
eig. Datenbank anstatt die der tempdb

Dadurch wieder joins möglich


Nachteile:
zunächst keine Datenbankübergreifenden Abfragen möglich
keine Replikation
kein CDC und CTD


*/