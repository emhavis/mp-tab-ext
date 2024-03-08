const sql = require("mssql");
sql.on("error", err => console.log);

const config = {
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  server: process.env.DB_SERVER,
  database: "datadev"
};

module.exports.getTechnicians = async () => {
  let query = `SELECT * FROM Technicians`;

  try {
    let pool = await sql.connect(config);
    let result = await pool.request().query(query);
    return result.recordset;
  } catch (err) {
    console.log(err);
  }
};

module.exports.getRequest = async requestID => {
  let query = `
    SELECT Request_ID, Request_Time, Property_Name, Unit, Requests.Technician_ID AS Technician_ID, Status, Area, Description, Technician_Comments
    FROM Properties
    INNER JOIN Units ON (Properties.Property_ID = Units.Property_ID)
    INNER JOIN Requests ON (Units.Unit_ID = Requests.Unit_ID)
    LEFT JOIN Technicians ON (Requests.Technician_ID = Technicians.Technician_ID)
    WHERE Request_ID = @requestid`;

  try {
    let pool = await sql.connect(config);
    let result = await pool
      .request()
      .input("requestid", requestID)
      .query(query);
    return result.recordset[0];
  } catch (err) {
    console.log(err);
  }
};

module.exports.updateRequest = async (requestid, data) => {
  let query = `
    UPDATE Requests
    SET Technician_ID = @techid, Status = @status, Technician_Comments = @comments
    WHERE Request_ID = @requestid`;

  try {
    let pool = await sql.connect(config);
    let result = await pool
      .request()
      .input("techid", data.tech)
      .input("status", data.status)
      .input("comments", data.comments)
      .input("requestid", requestid)
      .query(query);
    return result.rowsAffected[0] === 1;
  } catch (err) {
    console.log(err);
  }
};
