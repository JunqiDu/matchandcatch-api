const router = require("express").Router();

module.exports = db => {
  router.get("/vehicles", (request, response) => {
    db.query(`SELECT vehicles.id, maker, model, year, milage,
    array_agg(DISTINCT images.id) AS images, created_at,
    array_agg(DISTINCT auctions.id) AS auctions
    FROM vehicles
    LEFT JOIN images ON vehicles.id = images.vehicle_id
    LEFT JOIN auctions ON vehicles.id = auctions.vehicle_id
    GROUP BY vehicles.id`)
    .then(({ rows: vehicles }) => {
      response.json(
        vehicles
      );
    });
  });

  return router;
};
