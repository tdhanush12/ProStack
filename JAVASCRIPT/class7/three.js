let emp={
    eid:101,
    ename:"Rahul",
    esal:45000.45
}
//update and delete
emp.esal = 55000.55;
emp.email="Rahul@pm.com"
console.log(emp)
//{ eid: 101, ename: 'Rahul', esal: 55000.55, email: 'Rahul@pm.com' }
//delete 
delete emp.esal
console.log(emp)