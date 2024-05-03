// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract students{
    struct student_database{
        uint roll_no;
        string Name;
        string Department;
    }

    student_database []studentDB;

    function Enter_Detail(uint roll_no,string memory Name,string memory Department) public {
        student_database memory db = student_database(roll_no,Name,Department);
        studentDB.push(db);
    }

    function Search_Student(uint key) public view returns(uint,string memory,string memory){
        for(uint i=0;i<studentDB.length;i++){
            student_database memory DB = studentDB[i];
            if(DB.roll_no==key){
                return (DB.roll_no,DB.Name,DB.Department);
            }
        }
        return(0,"Not found","Try again");
    }
}