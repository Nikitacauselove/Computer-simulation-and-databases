CREATE VIEW Highratings
	AS SELECT *
		FROM "Customers"
		WHERE "rating" = 
			(SELECT MAX ("rating")
				FROM "Customers");