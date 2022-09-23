package demo

import CO.Student2CO
import grails.converters.JSON


class Student2Controller {

    Student2Service student2Service

    // def register() {
    // List<Student2> student2List = Student2.list()
    // render(view: '/student2/student', model: [studentList: student2List])
    //}

    def list() {
        List<Student2> student2List = Student2.list()
        render(template: '/student2/student2', model: [studentList: student2List])
    }


    def create(Student2CO student2CO) {
        Map result = [:]
        println(params)
        Student2 s = new Student2(student2CO)
        println "After"
        s.save()
        result.code = 200
        result.status = "Saved"
        result.template = g.render(template: '/student2/studentNewListTemplate', model: [studentList: Student2.list()])
        render result as JSON
    }

    def update() {
        Map result = [:]
        Student2CO student2CO = new Student2CO()
        bindData(student2CO, params)
        if (student2CO.rollNo) {


            Boolean status = student2Service.update(student2CO)
            if (status) {
                result.status = 'SUCCESS'
                result.message = 'Updated Succesfully'
                result.code = 200
            } else {
                result.code = 302
                result.message = 'unable to update'
                result.status = 'ERROR'
            }
        }
        Student2 student2 = Student2.findByRollNo(student2CO.rollNo)
        result.template = g.render(template: '/student2/studentSingleRecordTemplate', model: [student: student2])
        result.id = student2?.id
        println ""
        println ""
        println "result    " + result
        println ""
        println ""
        render result as JSON
    }


    def delete() {
        Map resultMap = [:]
        println(params)
        if (params.rollNo) {
            Student2 s = Student2.findByRollNo(params.rollNo)
            if (s) {
                s.delete(flush: true)
                resultMap.status = 'Success'
                resultMap.message = 'Deleted Successfully'
                resultMap.code = 200
            } else {
                resultMap.code = 402
                resultMap.message = 'Record not found'
                resultMap.status = 'ERROR'
            }
        }
        resultMap.template = g.render(template: '/student2/studentNewListTemplate', model: [studentList: Student2.list()])
        render resultMap as JSON
    }

    def register() {
        List<Student2> student2List = Student2.list()
        render(view: '/student2/student2', model: [studentList: student2List])
    }

    def employee() {

        render(view: '/student2/Employee')
    }

    def abc() {
        render "abc"
    }

}