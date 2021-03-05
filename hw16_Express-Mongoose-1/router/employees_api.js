const express = require("express");
const router = express.Router();
const CompanyLists = require("./../models/Companies");
const EmployeeList = require("../models/Employees");

router.get("/all", (req, res) => {
  EmployeeList.find({}, (err, companies) => {
    console.log(companies);
    return res.send("companies");
  });
});
router.post('/test',(req,res)=>{
    console.log(req.body);
})
router.put("/create",  (req, res)=> {
  console.log(req.body);
  const New_Employee = new EmployeeList({
    firstName: req.body.firstName,
    lastName: req.body.lastName,
    nationalId: req.body.nationalId,
    gender: req.body.gender,
    manager: req.body.manager,
    dateOfBirth: req.body.dateOfBirth,
  });
  console.log(New_Employee);
  New_Employee.save(function (err, employee) {
    if (err)
      return res
        .status(500)
        .send("Somthing went wrong in add company \n!" + err);
    return res.json(employee);
  });
});

module.exports = router;
