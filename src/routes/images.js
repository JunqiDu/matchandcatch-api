const router = require("express").Router();

module.exports = db => {
  router.get("/images", (request, response) => {
    db.query(`SELECT * From images`)
    .then(({ rows: images }) => {
      response.json(
        images
      );
    });
  });

  return router;
};
