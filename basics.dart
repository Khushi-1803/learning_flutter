//1. Data Types in Dart
// void main() {

//   // Integer
//   int age = 22;

//   // Decimal value
//   double salary = 15000.50;

//   // Text
//   String name = "Mayank";

//   // True or False
//   bool isDeveloper = true;

//   // Dynamic (can store different types of values)
//   dynamic value = 100;
//   value = "Hello";

//   // List (multiple values)
//   List<String> subjects = ["Dart", "Flutter", "Java"];

//   // Map (key-value pairs)
//   Map<String, dynamic> student = {
//     "name": "Mayank",
//     "age": 22,
//     "isStudent": true
//   };

//   print(age);
//   print(salary);
//   print(name);
//   print(isDeveloper);
//   print(value);
//   print(subjects);
//   print(student);
// }


//2. Class and Object – Mobile Example (mobile1 and 2 are objects)

// class Mobile  {

//     String brand = '';
//     String color = '';
//     int price = 0;

//     void Display (){
//         print("Brand : $brand");
//         print("color : $color");
//         print("Price : $price");
//     }

// }

// void main(){

//     Mobile mobile1 = Mobile();

//     mobile1.brand = "Samsung";
//     mobile1.color = "Black";
//     mobile1.price = 25000;

//     Mobile mobile2 = Mobile();

//     mobile2.brand = "Realme";
//     mobile2.color = "Black";
//     mobile2.price = 22000;


// }

//3. Class and Object – Employee Example with Constructor

// class Employee {

//   String name;
//   int salary;

//   Employee(this.name, this.salary);

//   void showDetails() {
//     print("Employee Name: $name");
//     print("Salary: $salary");
//   }
// }

// void main() {

//   Employee emp1 = Employee("Rahul", 20000);

//   Employee emp2 = Employee("Aman", 30000);

//   emp1.showDetails();
//   emp2.showDetails();
// }

// Parent Class
// class Person {

//   String name = "Mayank";
//   int age = 22;

//   void showPerson() {
//     print("Name: $name");
//     print("Age: $age");
//   }
// }

// // Child Class
// class Student extends Person {

//   String course = "Flutter";

//   void showStudent() {
//     print("Course: $course");
//     print("Name: $name");
//   }
// }

// void main() {

//   Student s1 = Student();

//   s1.showPerson();
//   s1.showStudent();
// }

class Person {

  String name;

  Person(this.name);

  void showName() {
    print("Name: $name");
  }
}

class Student extends Person {

  int rollNo;

  Student(String name, this.rollNo) : super(name);

  void showDetails() {
    print("Roll Number: $rollNo");
  }
}

void main() {

  Student s1 = Student("Mayank", 101);

  s1.showName();
  s1.showDetails();
}