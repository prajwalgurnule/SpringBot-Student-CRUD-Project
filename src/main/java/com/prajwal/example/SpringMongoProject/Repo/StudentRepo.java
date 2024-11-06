package com.prajwal.example.SpringMongoProject.Repo;

import com.prajwal.example.SpringMongoProject.Entity.Student;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepo extends MongoRepository<Student,String> {
}
