UPDATE startup_fundings_new
SET industry_vertical = CASE
    -- Standardize EdTech variations
    WHEN industry_vertical ILIKE 'Ed-Tech' 
      OR industry_vertical ILIKE 'Edtech' 
      OR industry_vertical ILIKE 'ED-tech' 
      OR industry_vertical ILIKE 'EdTech'
    THEN 'EdTech'

    -- Standardize E-commerce variations
    WHEN industry_vertical ILIKE 'E-commerce'
      OR industry_vertical ILIKE 'E-Commerce'
      OR industry_vertical ILIKE 'Ecommece'
    THEN 'E-Commerce'

	-- Standardize Finance variations
    WHEN industry_vertical ILIKE 'Fiinance'
      OR industry_vertical ILIKE 'Finance'
    THEN 'Finance'

	-- Standardize FinTech variations
    WHEN industry_vertical ILIKE 'Fin-Tech'
      OR industry_vertical ILIKE 'Financial Tech'
      OR industry_vertical ILIKE 'FinTech'
    THEN 'FinTech'

	-- Standardize E-commerce variations
    WHEN industry_vertical ILIKE 'E-commerce'
      OR industry_vertical ILIKE 'E-Commerce'
      OR industry_vertical ILIKE 'Ecommece'
    THEN 'E-Commerce'

	-- Standardize Food variations
    WHEN industry_vertical ILIKE 'Food'
      OR industry_vertical ILIKE 'Food & Beverage'
      OR industry_vertical ILIKE 'Food & Beverages'
	  OR industry_vertical ILIKE 'Food & Beveragess'
	  OR industry_vertical ILIKE 'Food And Beverage'
	  OR industry_vertical ILIKE 'Food And Beverages'
    THEN 'Food & Beverages'

	-- Standardize FoodTech variations
    WHEN industry_vertical ILIKE 'Food Tech'
      OR industry_vertical ILIKE 'Food-Tech'
    THEN 'FoodTech'

	-- Standardize IT variations
    WHEN industry_vertical ILIKE 'IT'
      OR industry_vertical ILIKE 'It'
    THEN 'IT'


	-- Standardize Tech variations
    WHEN industry_vertical ILIKE 'Tech'
      OR industry_vertical ILIKE 'Technology'
    THEN 'Technology'


    -- Add more rules as needed
    ELSE industry_vertical  -- keep unchanged if no match
END;


SELECT * FROM startup_fundings_new