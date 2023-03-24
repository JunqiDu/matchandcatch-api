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
  
  router.put("/auctions/:id", (request, response) => {
    const {vehicle_id, dealer_id, bid } = request.body.auction;
    
    db.query(
      `INSERT INTO auctions (vehicle_id, dealer_id, bid)
      VALUES ($1::integer, $2::integer, $3::integer) RETURNING *
    `,
    [vehicle_id, dealer_id, bid]
    )
      .then((res) => {
        response.status(204).json({message: "Successfully Inserted"});
      })
      .catch(error => setTimeout(() => {console.log(error)}, 20000));
  });
  return router;
};
