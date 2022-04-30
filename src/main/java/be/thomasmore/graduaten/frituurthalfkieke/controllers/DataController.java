package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Student;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.StudentRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class DataController {
    private StudentRepository studentRepository;

    public DataController(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    @RequestMapping("/studenten")
    public String navigateToStudenten(Model model) {
        List<Student> studenten = studentRepository.findAll();
        model.addAttribute("studenten", studenten);
        return "studenten";
    }

    @RequestMapping("/studenten/detail")
    public String navigateToStudentDetails(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Student student = studentRepository.getById(id);
        model.addAttribute("student", student);
        return "student";
    }

    @RequestMapping("/studenten/toevoegen")
    public String navigateToAddStudentForm() {
        return "add-student";
    }

    @RequestMapping("/studenten/toevoegen/result")
    public String getResult(Model model, HttpServletRequest request) {
        String voornaam = request.getParameter("voornaam");
        String familienaam = request.getParameter("familienaam");
        String klas = request.getParameter("klas");

        Student student = new Student(voornaam, familienaam, klas);
        studentRepository.save(student);

        List<Student> studenten = studentRepository.findAll();
        model.addAttribute("studenten", studenten);
        return "studenten";
    }

    @RequestMapping("/studenten/edit")
    public String navigateToEditStudent(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Student student = studentRepository.getById(id);
        model.addAttribute("student", student);
        return "edit-student";
    }

    @RequestMapping("/studenten/edit/result")
    public String getEditResult(Model model, HttpServletRequest request) {
        try{
            Long id = Long.parseLong(request.getParameter("id"));
            Student student = studentRepository.getById(id);
            student.setId(id);
            student.setVoornaam(request.getParameter("voornaam"));
            student.setFamilienaam(request.getParameter("familienaam"));
            student.setKlas(request.getParameter("klas"));


            studentRepository.save(student);

            List<Student> studenten = studentRepository.findAll();
            model.addAttribute("studenten", studenten);
            return "studenten";
        }
        catch(Exception e){
            System.out.println("Something went wrong.");
        }
        return "studenten";
    }

    @RequestMapping("/studenten/delete")
    public String getDeleteResult(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Student student = studentRepository.getById(id);

        studentRepository.delete(student);

        List<Student> studenten = studentRepository.findAll();
        model.addAttribute("studenten", studenten);
        return "studenten";
    }
}
