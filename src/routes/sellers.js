const router = require("express").Router();

module.exports = db => {
  router.get("/sellers", (request, response) => {
    db.query(`SELECT * FROM sellers`)
    .then(({ rows: sellers }) => {
      response.json(
        sellers
      );
    });
  });

  return router;
};
