CREATE VIEW Commissions
	AS SELECT "snum","comm"
		FROM "Salespeople"
		WHERE "comm" BETWEEN .10 AND .20
		WITH CHECK OPTION;