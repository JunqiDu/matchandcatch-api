const router = require("express").Router();

module.exports = db => {
  router.get("/auctions", (request, response) => {
    db.query(`SELECT * FROM auctions`)
    .then(({ rows: auctions }) => {
      response.json(
        auctions
      );
    });
  });

  return router;
};
