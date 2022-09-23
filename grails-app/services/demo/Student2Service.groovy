package demo

import CO.Student2CO

//import grails.transaction.Transactional

//@Transactional
class Student2Service {

    def serviceMethod() {

    }


    Boolean update(Student2CO student2CO) {

        Student2 s = Student2.findByRollNo(student2CO.rollNo)
        if (s) {
            s.name = student2CO?.name
            s.rollNo = student2CO?.rollNo
            s.phoneNo = student2CO?.phoneNo
            s.address = student2CO?.address
        }

        return s.save() ? Boolean.TRUE : Boolean.FALSE
    }

}