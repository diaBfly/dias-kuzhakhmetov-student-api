package kz.diaskuzhakhmetov.studentapi;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import kz.diaskuzhakhmetov.studentapi.student.Student;

class StudentApiApplicationTests {
    @Test
    void studentKeepsAssignedFields() {
        Student student = new Student("Dias Kuzhakhmetov", "dias.kuzhakhmetov@example.com");

        student.setFullName("Dias Kuzhakhmetov Updated");

        assertEquals("Dias Kuzhakhmetov Updated", student.getFullName());
        assertEquals("dias.kuzhakhmetov@example.com", student.getEmail());
    }
}

