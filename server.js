//Require all neccesary packages
const inquirer = require('inquirer');
const mysql = require('mysql2');
const express = require('express');

const app = express();
const PORT = process.env.PORT || 3001;
//Create connection to mysql database
const db =mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'miamiheat',
    database:'company_db'
},
console.log(`Connected to company_db database`)
);
//Connect to database
db.connect((err) =>{
    if(err) throw err;
    console.log('Connected to the mysql database');

    app.listen(PORT, ()=>{
        console.log(`Server running on port ${PORT}`);
    });

    startApp(); 
});
//Middleware to parse JSON data
app.use(express.json());

function startApp(){
    inquirer
     .prompt([
        {
            type:'list',
            name:'action',
            message:'What would you like to do?',
            choices:[
                'View employees',
                'Add employees',
                'Update employee role',
                'View all roles',
                'Add role',
                'View all departments',
                'Add department',
                'Quit',
            ]
        }
     ])
     .then((answer)=>{
        switch(answer.action){
            case 'View employees':
                // Implement Express.js endpoint for viewing employees
                app.get('/employees', (req,res)=>{
                    // Implement SQL query to fetch and send employees as JSON
                });
                break;
            case 'Add employees':
                app.post('/employees',(req,res)=>{
                    // Implement SQL query to add a new employee
                });
                break;
            case 'Update employee role':
                app.put('/employeed/:id', (req,res)=>{
                    //Implement SQL query to update role
                });
                break;
            case 'View all roles':
                app.get('/roles', (req,res)=>{
                    //Implement SQL query to fetch and send roles as json
                });
                break;
            case 'Add role':
                app.post('/roles', (req,res)=>{
                    //Implement SQL query to add a role
                });
                break;
            case 'View all departments':
                app.get('/departments', (req,res)=>{
                    //Implement SQL query to view all departments
                });
                break;
            case 'Add department':
                app.post('/departments', (req,res)=>{
                    //Implement SQL query to add a department
                });
                break;
            case 'Quit':
                quitapp();
                break;
        }
     })
}

function quitapp(){
    console.log('Quitting application');
    Connection.end();
}
