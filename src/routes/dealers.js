const router = require("express").Router();

module.exports = db => {
  router.get("/dealers", (request, response) => {
    db.query(`SELECT dealers.id, name, 
    array_agg(DISTINCT transactions.id) AS transactions
    From dealers
    LEFT JOIN transactions ON dealers.id = transactions.dealer_id
    GROUP BY dealers.id
    `)
    .then(({ rows: dealers }) => {
      response.json(
        dealers
      );
    });
  });

  return router;
};
