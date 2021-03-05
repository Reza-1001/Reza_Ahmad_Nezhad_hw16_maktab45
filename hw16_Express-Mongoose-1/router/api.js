const express = require("express");
const router = express.Router();
const companiesRouter = require("./companies_api");
const employeesRouter = require("./employees_api");

router.use("/companies", companiesRouter);

router.use("/employees", employeesRouter);

module.exports = router;
