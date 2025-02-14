let user={
    uid:101,
    uname:"Rahul",
    loc:'Wayanad',
    email:"rg@gmail.com",
    age:52,
    status:'Single'
}
for(let key in user){
    console.log(user[key])
}

console.log("ID:",user.uid,"NAME:",user.uname,"LOCATION:",user.loc,
    "EMAIL ID:",user.email,"AGE:",user.age,"STATUS:",user.status)
