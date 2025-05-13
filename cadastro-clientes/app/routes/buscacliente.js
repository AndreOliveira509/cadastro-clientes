var connectionFactory = require('../infra/connectionFactory.js');

module.exports = function(app) {
    app.get('/buscacliente', function(req, res) {
        var connection = connectionFactory();
        const termo = '%' + (req.query.q || '') + '%';

        let query = 'SELECT * FROM clientes';

        // Se tiver algo para buscar, modifica a query
        if (req.query.q) {
            query += ' WHERE nome LIKE ? OR cidade LIKE ?';
            connection.query(query, [termo, termo], function(err, results) {
                if (err) {
                    console.error(err);
                    return res.status(500).send('Erro na busca');
                }
                res.render('clientes/lista.ejs', { lista: results });
            });
        } else {
            // Sem filtro, mostra tudo
            connection.query(query, function(err, results) {
                if (err) {
                    console.error(err);
                    return res.status(500).send('Erro na busca');
                }
                res.render('clientes/lista.ejs', { lista: results });
            });
        }

        connection.end();
    });
};
