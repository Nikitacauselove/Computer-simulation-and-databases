CREATE VIEW Citynumber
	AS SELECT "city", COUNT (DISTINCT "snum")
		FROM "Salespeople"
		GROUP BY "city";