var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "mydb"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  var sql = "INSERT INTO customers (ID, fname, lname, address) VALUES ?";
  var values = [
    [null, 'John', 'Laundry', 'Highway 71'],
    [null, 'Peter', 'Parker', 'Lowstreet 4'],
    [null, 'Amy', 'Attack', 'Apple st 652'],


  ];
  con.query(sql, [values], function (err, result) {
    if (err) throw err;
    console.log("Number of records inserted: " + result.affectedRows);
  });
});
