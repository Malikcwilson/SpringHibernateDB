package springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springdemo.dao.StudentDAO;
import springdemo.entity.Student;

@Service
public class StudentServiceImpl implements StudentService {

	//need to inject student dao
	@Autowired
	private StudentDAO studentDAO;
	
	@Override
	@Transactional 
	public List<Student> getStudents() {
		
		return studentDAO.getStudents();
	}

	@Override
	@Transactional
	public void saveStudent(Student theStudent) {
		
		studentDAO.saveStudent(theStudent);
		
	}

	@Override
	@Transactional
	public Student getStudent(int theId) {
		// TODO Auto-generated method stub
		return studentDAO.getStudent(theId);
	}

	@Override
	@Transactional
	public void deleteStudent(int theId) {
		
		studentDAO.deleteStudent(theId);
		
	}

}
