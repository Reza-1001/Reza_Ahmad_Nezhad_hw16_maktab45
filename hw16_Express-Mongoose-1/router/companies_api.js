const express = require("express");
const router = express.Router();
const CompanyLists = require("./../models/Companies");
const EmployeeList = require("../models/Employees");
const bodyParser = require('body-parser');

router.use(bodyParser.urlencoded({ extended: true }));
router.get("/all", (req, res) => {
  CompanyLists.find({}, (err, companies) => {
    return res.render('./../views/pages/companies.ejs',{data:companies})
  });
});


router.put("/create", function(req, res) {
  Create(req)
  res.redirect(301, '/companies/all');
  });
router.post('/create',function(req, res) {
 
   Create(req)
   res.redirect(301, '/companies/all');
  
  });

  router.get('/delete:id',(req,res)=>{
    console.log(req);
    CompanyLists.findByIdAndDelete(req.params.id, function(err, obj) {
      if (err) throw err;
      console.log("1 document deleted");
    });
    res.redirect(301, '/companies/all');
  })
  router.put("/update/:id", (req, res) => {

  CompanyLists.findByIdAndUpdate(req.params.id, req.body, {new: true}, (err, user) => {
        if (err) return res.status(500).send("Somthing went wrong in update user! \n" + err);
        res.redirect(301, '/companies/all');
        
    })
});


  function Create(req){
    const NEW_COMPANY = new CompanyLists(req.body)
console.log(NEW_COMPANY);
  NEW_COMPANY.save(function(err, company) {        
      if (err) return res.status(500).send("Somthing went wrong in add company \n!" + err);
      return company
  })
  }
module.exports = router;
