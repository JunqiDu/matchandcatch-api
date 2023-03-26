const router = require("express").Router();

module.exports = db => {
  router.get("/vehicles", (request, response) => {
    db.query(`SELECT vehicles.id, seller_id, maker, model, year, milage, sell_status,
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

  router.post("/vehicles/select/:id", (request, response) => {
    
    console.log(`Update Vehicle`);
    const {id, vehicle_id, dealer_id, price, selected } = request.body.auction;
    
    db.query(
      `UPDATE vehicles
      SET sell_status = $2::boolean
      WHERE id = $1::integer  
    `,
    [vehicle_id, selected]
    )
      .then((res) => {
        response.status(204).json({message: "Successfully Inserted"});
      })
      .catch(error => setTimeout(() => {console.log(error)}, 20000));
  });
  return router;
};
