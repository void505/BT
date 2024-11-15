// SPDX-License-Identifier: Bhide License
pragma solidity ^0.8.0;

contract StudentDB{
    struct Student{
        string name;
        uint256 rollno;
        string class;
    }

    Student[] private students;

    function addStudent(string memory name, uint256 rollno , string memory class) public{
        students.push(Student(name,rollno,class));
    }

    function getStudentById(uint256 id) public view returns(string memory,uint256,string memory class){
        require(id<students.length , "Student does not exist in database");
        return (students[id].name,students[id].rollno,students[id].class);

    }

    function getTotalNumberOfStudents() public view returns(uint256){
        return students.length;
    }
}
