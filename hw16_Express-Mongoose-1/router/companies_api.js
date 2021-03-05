const express = require("express");
const router = express.Router();
const CompanyLists = require("./../models/Companies");
const EmployeeList = require("../models/Employees");

router.get("/all", (req, res) => {
  CompanyLists.find({}, (err, companies) => {
    console.log(companies);
    return res.json(companies);
  });
});


router.put("/create", function(req, res) {
  console.log(req.body);
    const NEW_COMPANY = new CompanyLists({
        name: req.body.name,
        registrationNo: req.body.registrationNo,
        city: req.body.city,
        state: req.body.state,
        registrationDate: req.body.registrationDate,
        tel: req.body.tel,
    })
console.log(NEW_COMPANY);
    NEW_COMPANY.save(function(err, company) {        
        if (err) return res.status(500).send("Somthing went wrong in add company \n!" + err);
        return res.json(company)
    })
  });

module.exports = router;
