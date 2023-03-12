import 'package:quiz_app/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "Which keyword is used to define a function in Python?",
    {
      "def": true,
      "function": false,
      "define": false,
      "fn": false,
    },
  ),
  QuestionModel("Which of the following is a popular Python web framework?", {
    "react": false,
    "ruby": false,
    "django": true,
    "flutter": false,
  }),
  QuestionModel(
      "Which Python data type is used to store multiple items in a single variable?",
      {
        "String": false,
        "Integer": false,
        "Boolean": false,
        "List": true,
      }),
  QuestionModel("What is the purpose of the main() function in Dart?", {
    "It is the entry point of a Dart program": true,
    "It defines class methods": false,
    "It performs arithmetic operations": false,
    "It handles exceptions and errors": false,
  }),
  QuestionModel("What does the print(); function do in dart?", {
    "Takes user input from the console": false,
    "Displays output on the console": true,
    "Reads data from a file": false,
    "Performs mathematical calculations": false,
  }),
  QuestionModel(
      "Which Dart keyword is used to define a conditional statement?", {
    "if": true,
    "for": false,
    "while": false,
    "var": false,
  }),
  QuestionModel("What does the await keyword do in Dart?", {
    "It pauses the execution of a function until a result is ready": true,
    "It performs string concatenation": false,
    "It calculates mathematical expressions": false,
    "It handles errors and exceptions": false,
  }),
  QuestionModel("What is the purpose of the async keyword in Dart?", {
    "It provides networking capabilities": false,
    "It is used to define asynchronous functions": true,
    "It allows access to the computer's file system": false,
    "It performs string manipulation operations": false,
  }),
  QuestionModel("What is the purpose of the final keyword in Dart?", {
    "It defines class properties and methods": false,
    "It is used to declare changing values": false,
    "It indicates a variable value cannot be changed": true,
    "It enables the use of static variables": false,
  }),
  QuestionModel(
      "Which Dart data type is used to represent a true or false value?", {
    "int": false,
    "bool": true,
    "double": false,
    "string": false,
  }),
];
