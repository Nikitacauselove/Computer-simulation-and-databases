CREATE VIEW Multcustomers
	AS SELECT *
		FROM "Salespeople" а
		WHERE 1 <
			(SELECT COUNT(*)
				FROM "Customers" Ь
				WHERE а.snum = Ь.snum);
