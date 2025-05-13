var mysql = require('mysql');

module.exports = function(){
    return mysql.createConnection({
        host: 'localhost',
        database: 'cadastro_clientes',
        user: 'root',
        password: 'root'
    });
}
