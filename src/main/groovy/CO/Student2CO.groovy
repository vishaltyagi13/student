package CO

import grails.validation.Validateable

class Student2CO implements Validateable {

    String name
    Integer rollNo
    String phoneNo
    String address


    static constraints = {

        name nullable: true
        rollNo nullable: false
        phoneNo nullable: true
        address nullable: true
    }
}
