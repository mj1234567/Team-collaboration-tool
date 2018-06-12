public class Student
{
    int rollno;
    String name;
    double marks;
    public Student(int rollno,
            String name,
            double marks)
    {
        this.rollno = rollno;
        this.name = name;
        this.marks = marks;
    }
    void show()
    {
        System.out.println("Rollno = " + this.rollno);
        System.out.println("Name   = " + this.name);
        System.out.println("Marks  = " + this.marks);
    }
}
