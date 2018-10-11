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
  var sql = "CREATE TABLE IF NOT EXISTS animals (IDanimal int NOT NULL AUTO_INCREMENT, species VARCHAR(50) NOT NULL, name VARCHAR(50), gender VARCHAR(6),yearBorn int(4),ID int, PRIMARY KEY (IDanimal), FOREIGN KEY (ID) REFERENCES customers(ID))";
  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("Table created");
  });
});

