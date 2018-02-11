// 5a. Then create a Node application called `bamazonCustomer.js`. 
var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
	host: "localhost",
	port: 3300,
	user: "root",
	password: "",
	database: "bamazon"
});

var purchaseCost = function(productid) {
	productunit * price; 
}

// Connect to mysql server and sql database
connection.connect(function(err){
	if (err) throw err;
	// Run start function after connection is made
	start();
});

// 5b. Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.function start() {
	connection.query("SELECT * FROM bamazon", (err, results) => {
		console.log(results);
	})

// 6. The app should then prompt users with two messages.
	inquirer
// * The first should ask them the ID of the product they would like to buy.
	 .prompt([
	 {
	 	name: "productid",
	 	type: "input",
	 	message: "What is the ID of the product you would like to buy?"
	 },
// * The second message should ask how many units of the product they would like to buy. 
	 {
	 	name: "productunit",
	 	type: "input",
	 	message: "How many units of the product would you like to buy?"
	 }
	])
// 7. Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.
	.then(function(answer) {
		if (productid = product_name && stock_quantity  === 0){
//    * If not, the app should log a phrase like `Insufficient quantity!`, and then prevent the order from going through.
		console.log("Insufficient quantity!")
		} else {
// 8. However, if your store _does_ have enough of the product, you should fulfill the customer's order.
   // * This means updating the SQL database to reflect the remaining quantity.
   		connection.query(
   			"INSERT INTO products SET ?",
   			{
   				product_name: answer.productid,
   				stock_quantity: answer.productunit
   			},
   			function(err) {
   				if (err) throw err;
 //    * Once the update goes through, show the customer the total cost of their purchase.
 				console.log("The total cost of your purchase is "purchaseCost"");
   				start();
   			}
   			);
	});
}
start();