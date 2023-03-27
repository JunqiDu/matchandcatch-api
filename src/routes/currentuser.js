const router = require("express").Router();

module.exports = db => {
  router.get("/currentuser", (request, response) => {
    db.query(`SELECT * From currentuser`)
    .then(({ rows: currentuser }) => {
      response.json(
        currentuser
      );
    });
  });

  router.put("/login/:id", (request, response) => {
    const {id, admin, status, name} = request.body.user;
    
    db.query(
      `INSERT INTO currentuser (id, admin, status, name)
      VALUES ($1::integer, $2::boolean, $3::boolean, $4::text) RETURNING *
    `,
    [id, admin, status, name]
    )
      .then((res) => {
        response.status(204).json({message: "Successfully Inserted"});
      })
      .catch(error => setTimeout(() => {console.log(error)}, 20000));
  });

  router.delete("/login/:id", (request, response) => {
    
    db.query(
      `DELETE FROM currentuser
    `
    )
      .then((res) => {
        response.status(204).json({message: "Successfully Inserted"});
      })
      .catch(error => setTimeout(() => {console.log(error)}, 20000));
  });
  return router;
};
