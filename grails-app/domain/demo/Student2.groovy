package demo

import CO.Student2CO

class Student2 implements Serializable {

    String name
    Integer rollNo
    String phoneNo
    String address

    static constraints = {

        name nullable: false
        rollNo nullable: false
        phoneNo nullable: false
        address nullable: false
    }

    public Student2() {
        println ""
        println "Called default"
        println ""
    }

    public Student2(Student2CO student2CO) {
        println ""
        println "student2CO"
        println ""
        this.name = student2CO.name
        this.rollNo = student2CO.rollNo
        this.address = student2CO.address
        this.phoneNo = student2CO.phoneNo
    }
}

