package org.example.assignment1.utility;

import org.example.assignment1.entity.Employee;

import java.util.ArrayList;

public class EmployeeList {
    private ArrayList<Employee> employeeListArrayList;

    public EmployeeList(){
        employeeListArrayList = new ArrayList<Employee>();
    }
    public void insert(Employee employee){
        employeeListArrayList.add(employee);
    }
    public boolean removeEmployee(Employee employee){
        return employeeListArrayList.remove(employee);
    }
    public ArrayList<Employee> getAllEmployees(){
        return employeeListArrayList;
    }

}
