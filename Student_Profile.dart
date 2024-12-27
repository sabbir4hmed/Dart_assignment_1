
import 'dart:ffi';

void main()
{

print("Role: ${student_role('Role')}");
print("Name: ${student_name('Name')}");
print("Age: ${student_age(20)}");
print("Address: ${student_address('Address')}");
print("Average Score: ${student_score().round()}");

}

String student_role(String Role)
{
  return "Student";
}
String student_name(String Name)
{
  return "John Doe";
}
int student_age(int Age)
{
  return 20;
}
String student_address(String Address)
{
  return "123 Main St";
}
double student_score()
{
  List<int> Score = [90,85,82];
  int sum = 0;
  for(int i in Score)
    {
      sum += i;
    }
return sum / Score.length;

}





