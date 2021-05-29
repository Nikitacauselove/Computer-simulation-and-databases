CREATE VIEW Nameorders
	AS SELECT "sname", AVG ("amt"), SUM ("amt")
		FROM "Salespeople", "Orders"
		WHERE Salespeople.snum = Orders.snum
		GROUP BY "sname";
