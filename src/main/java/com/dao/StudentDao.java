package com.dao;

import com.entity.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
    private Connection connection;
    public StudentDao(Connection connection){
        super();
        this.connection=connection;
    }
    public boolean addStudent(Student student){

        boolean f=false;
        try{
            String sql="insert into student( fullName,dob,address,qualification,email) value(?,?,?,?,?)";
            PreparedStatement ps=connection.prepareStatement(sql);
            ps.setString(1,student.getFullName());
            ps.setString(2,student.getDob());
            ps.setString(3,student.getAddress());
            ps.setString(4,student.getQualification());
            ps.setString(5,student.getEmail());
            int i = ps.executeUpdate();
            if(i==1){
                f=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return f;

    }
    public List<Student> getAllStudent(){

        List<Student> list=new ArrayList<Student>();
        Student s=null;
        try{
            String sql="select * from student";
            PreparedStatement ps=connection.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();

            while (rs.next()){
                s=new Student();
                s.setId(rs.getInt(1));
                s.setFullName(rs.getString(2));
                s.setDob(rs.getString(3));
                s.setAddress(rs.getString(4));
                s.setQualification(rs.getString(5));
                s.setEmail(rs.getString(6));
                list.add(s);
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }
    public Student getStudentById(int id){
      Student s =  null;
        try{
            String sql="select * from student where id=?";
            PreparedStatement ps=connection.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();

            while (rs.next()){
                s=new Student();
                s.setId(rs.getInt(1));
                s.setFullName(rs.getString(2));
                s.setDob(rs.getString(3));
                s.setAddress(rs.getString(4));
                s.setQualification(rs.getString(5));
                s.setEmail(rs.getString(6));

            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return s;
    }

}
