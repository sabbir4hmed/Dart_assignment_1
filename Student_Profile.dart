// Define an abstract named Role
abstract class Role
{
  void displayRole();
}

//Create a class Person
class Person implements Role {

  var name, address , age;

  Person(this.name,this.address,this.age);

  String get getName
  {
    return name;
  }

  String get getAddress
  {
    return address;
  }

  int get getAge
  {
    return age;
  }

  @override
  void displayRole() {

    print('Role: Person');
  }

}

//Create a class Student that extends Person

class Student extends Person
{
  var studentID, grade;
  List <double> courseScores;
  Student(super.name, super.address, super.age,this.studentID, this.grade, this.courseScores);


  int get getStudentID
  {
    return studentID;
  }
  String get getGrade
  {
    return grade;
  }

  List<double> get getCourseScores
  {
    return courseScores;
  }

  @override
  void displayRole()
  {
    
    print("Role: Student");

  }

  //Calculate Average Scores

  double AverageScores()
  {
    courseScores = [90,85,82];
    double sum = 0;

    for(double i in courseScores)
      {
        sum += i;
      }

    double average = sum /  courseScores.length;

    return average;

  }

}

//Create another class Teacher that extends Person
class Teacher extends Person
{

  var teacherID;

  List<String> coursesTaught;

  Teacher(super.name, super.address, super.age, this.teacherID, this.coursesTaught);


  String get getTecherID
  {
    return teacherID;
  }

  List<String> get getCoursesTaught
  {
    return coursesTaught;
  }


  @override
  void displayRole()
  {
    print("Role: Teacher");
  }


  //display courses taught
   teacherCoursesTaught()
  {
    coursesTaught = ['Math', 'English', 'Bangla'];
    print("Courses Taught:");
    for(String i in coursesTaught)
      {
        print('- $i');
      }

  }

}

void main()
{

  //In the main method, create instances of Student and Teacher classes
  var student = Student('John Doe', '123 Main St', 20, 'Student001', 'Grade 12', [90,85,82]);
  var teacher = Teacher('Mrs. Smith', '456 Oak St', 35, 'Teacher001', ['Math','English','Bangla']);

  // Student Profile

  print("Student Information");
  student.displayRole();
  print("Name: ${student.getName}");
  print("Age: ${student.getAge}");
  print("Address: ${student.getAddress}");
  print("Average Score: ${student.AverageScores().roundToDouble()}");
  print('');

  // Teacher Profile

  print("Teacher Information");
  teacher.displayRole();
  print("Name: ${teacher.getName}");
  print("Age: ${teacher.getAge}");
  print("Address: ${teacher.getAddress}");
  teacher.teacherCoursesTaught();


}