const router = require("express").Router();

module.exports = db => {
  router.get("/dealers", (request, response) => {
    db.query(`SELECT dealers.id, name, email, password,
    array_agg(DISTINCT auctions.id) AS auctions
    From dealers
    LEFT JOIN auctions ON dealers.id = auctions.dealer_id
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
