# Tabla de contingencia de una variable
	# Frecuencias absolutas
		SELECT survived, count(*) as pasajeros FROM titanic GROUP BY survived;

		SELECT pclass, count(*) as pasajeros FROM titanic GROUP BY pclass;

		SELECT sex, count(*) as pasajeros FROM titanic GROUP BY sex;

		SELECT deck, count(*) as pasajeros FROM titanic GROUP BY deck;

		SELECT count(*) as pasajeros FROM titanic WHERE deck IS NOT NULL;

	# Frecuencias relativas globales
		SET @sum = (SELECT count(*) as pasajeros FROM titanic WHERE deck IS NOT NULL);
		SELECT @sum;

		SELECT deck, count(*)/@sum as f FROM titanic WHERE deck IS NOT NULL GROUP BY deck;

# Tabla de contingencia de dos variables
	# Frecuencias absolutas
		SELECT survived, sex, count(*) as pasajeros FROM titanic GROUP BY survived, sex;
    
		SELECT survived, pclass, count(*) as pasajeros FROM titanic GROUP BY survived, pclass;
    
    # Frecuencias relativas globales
		SET @sum = (SELECT count(*) as pasajeros FROM titanic WHERE deck IS NOT NULL);
		SELECT @sum;
    