package kz.asanabai.studentapi;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import kz.asanabai.studentapi.student.Student;

class StudentApiApplicationTests {
    @Test
    void studentKeepsAssignedFields() {
        Student student = new Student("Asan Abai", "asan.abai@example.com");

        student.setFullName("Asan Abai Updated");

        assertEquals("Asan Abai Updated", student.getFullName());
        assertEquals("asan.abai@example.com", student.getEmail());
    }
}

