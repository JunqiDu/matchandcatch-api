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
  
  router.put("/auctions/bid/:id", (request, response) => {
    const {vehicle_id, dealer_id, price} = request.body.auction;
    
    db.query(
      `INSERT INTO auctions (vehicle_id, dealer_id, price)
      VALUES ($1::integer, $2::integer, $3::integer) RETURNING *
    `,
    [vehicle_id, dealer_id, price]
    )
      .then((res) => {
        response.status(204).json({message: "Successfully Inserted"});
      })
      .catch(error => setTimeout(() => {console.log(error)}, 20000));
  });

  router.post("/auctions/select/:id", (request, response) => {
    
    console.log(`Update Auctions`);
    const {id, vehicle_id, dealer_id, price, selected } = request.body.auction;
    
    db.query(
      `UPDATE auctions
      SET selected = $2::boolean
      WHERE auctions.id = $1::integer  
    `,
    [id, selected]
    )
      .then((res) => {
        response.status(204).json({message: "Successfully Inserted"});
      })
      .catch(error => setTimeout(() => {console.log(error)}, 20000));
  });

  return router;
};
