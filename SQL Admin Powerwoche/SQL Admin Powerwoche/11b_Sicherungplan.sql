--Wartungsplan ist gut für Sicherung geeigent.
--Jede Sicherung wird eine Datei:
--DBname_DatumUhrzeit.bak


--Zuerst Plan festlegen



--500GB 
--Mo bis Fr
--7 Uhr bis 18 Uhr
 --Ausfallzeit= 5min + Reaktionszeit
 --Datenverlust = 30min
 -->Hochverfügbarkeit (LogShipping, Spiegeln, Cluster, AVG (ENT-2022 cooler) <--> Replikation)

/*
V  täglich (nicht SA/SO) 18:30
T max alle 30min oder kürzer
  Werktags von 7:30--18:00
D TTT D  alle 3 Ts  
	werktags von 9:05 alle 1,5h 16:35

DB.bak
jede Sicherung wird eine Datei


Bei der Sicherung : 
--Kompression aktivieren
--Prüfsummen bilden
--Integritäscheck aktivieren
--Testen..






*/