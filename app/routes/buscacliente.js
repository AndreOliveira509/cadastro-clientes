var connectionFactory = require('../infra/connectionFactory.js');

module.exports = function(app){
    app.get('/buscacliente', function(request, response){

        var connection =  connectionFactory();
        // -------
        connection.query('select * from clientes', function(err, results){
            if (err) {
                console.log(err);                
            }
            response.render('clientes/lista.ejs',{lista:results});
        });
        connection.end();
    });
}
