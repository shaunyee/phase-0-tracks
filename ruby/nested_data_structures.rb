supermarket = {
	Deli: {
	aisle_number: '1',
        products: [
            "ham", 
            "turkey",
            "bacon",
            "salami"
        ]
    },
    Frozen: {
  	aisle_number: '10',
        products: [
            "ice cream", 
            "tv dinners",
            "vegetables"
        ]
    },
   	Household: {
  	aisle_number: '8',
        products: [
            "shampoo", 
            "soap",
            "utensils"
        ]
    },
    Beverage: {
  	aisle_number: '13',
        products: [
            "soda", 
            "water",
            "wine",
            "beer"
        ]
    }
}

supermarket[:Frozen][:products][1]
supermarket[:Beverage][:products]
supermarket[:Household][:aisle_number]
supermarket[:Deli][:products].last
supermarket[:Household][:products].push('bandaids')