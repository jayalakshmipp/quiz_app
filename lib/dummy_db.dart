// class DummyDb {
//   static const List<Map<String, dynamic>> question = [
//     {
//       "Question": "What is Dart primarily used for?",
//       "Option": [
//         "Web development",
//         "Mobile development",
//         "Server-side development",
//         "All of the above"
//       ],
//       "answerIndex": 3
//     },
//     {
//       "Question": "Which company developed Dart?",
//       "Option": ["Apple", "Microsoft", "Google", "Facebook"],
//       "answerIndex": 2
//     },
//     {
//       "Question": "What is the file extension for Dart files?",
//       "Option": [".dart", ".dt", ".drt", ".d"],
//       "answerIndex": 0
//     },
//     {
//       "Question":
//           "Which of the following is a valid way to declare a variable in Dart?",
//       "Option": [
//         "var name = 'John';",
//         "name := 'John';",
//         "let name = 'John';",
//         "String name = 'John';"
//       ],
//       "answerIndex": 0
//     },
//     {
//       "Question": "How do you write a single-line comment in Dart?",
//       "Option": ["/* comment */", "// comment", "# comment", "-- comment"],
//       "answerIndex": 1
//     },
//     {
//       "Question": "Which keyword is used to define a function in Dart?",
//       "Option": ["func", "function", "def", "void"],
//       "answerIndex": 3
//     },
//     {
//       "Question":
//           "Which collection type does Dart provide to store key-value pairs?",
//       "Option": ["List", "Set", "Map", "Array"],
//       "answerIndex": 2
//     },
//     {
//       "Question": "What is the entry point of a Dart application?",
//       "Option": ["start()", "main()", "run()", "execute()"],
//       "answerIndex": 1
//     },
//     {
//       "Question": "How do you declare a constant value in Dart?",
//       "Option": [
//         "final pi = 3.14;",
//         "const pi = 3.14;",
//         "constant pi = 3.14;",
//         "var pi = 3.14;"
//       ],
//       "answerIndex": 1
//     },
//     {
//       "Question":
//           "Which of the following is not a type of loop supported by Dart?",
//       "Option": ["for loop", "while loop", "do-while loop", "foreach loop"],
//       "answerIndex": 3
//     }
//   ];
// }
class DummyDb {
  static const List<Map<String, dynamic>> question = [
    {
      "question": "What is Flutter?",
      "options": [
        "A web development framework",
        "A mobile development framework",
        "A backend framework",
        "A desktop application framework"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which language is used to develop Flutter applications?",
      "options": ["JavaScript", "Dart", "Python", "Swift"],
      "answerIndex": 1
    },
    {
      "question": "Which widget is used for layout in Flutter?",
      "options": ["Text", "Container", "Column", "Button"],
      "answerIndex": 2
    },
    {
      "question": "What is the default state management approach in Flutter?",
      "options": ["Redux", "Provider", "SetState", "Bloc"],
      "answerIndex": 2
    },
    {
      "question": "Which command is used to create a new Flutter project?",
      "options": [
        "flutter create projectname",
        "flutter init projectname",
        "flutter start projectname",
        "flutter new projectname"
      ],
      "answerIndex": 0
    },
    {
      "question":
          "What is the purpose of the pubspec.yaml file in a Flutter project?",
      "options": [
        "To define the project structure",
        "To manage dependencies and assets",
        "To configure the build process",
        "To write unit tests"
      ],
      "answerIndex": 1
    },
    {
      "question":
          "Which widget allows you to build a scrollable list in Flutter?",
      "options": ["GridView", "Column", "ListView", "Stack"],
      "answerIndex": 2
    },
    {
      "question": "What is a StatelessWidget in Flutter?",
      "options": [
        "A widget that does not maintain any state",
        "A widget that maintains state across its lifetime",
        "A widget that is part of the Flutter framework",
        "A widget that handles gestures"
      ],
      "answerIndex": 0
    },
    {
      "question":
          "Which method is used to start the execution of a Flutter application?",
      "options": ["main()", "runApp()", "build()", "initState()"],
      "answerIndex": 1
    },
    {
      "question": "How do you add a package dependency in a Flutter project?",
      "options": [
        "Add it to the pubspec.yaml file under dependencies",
        "Run flutter add <package>",
        "Add it to the main.dart file",
        "Run pub add <package>"
      ],
      "answerIndex": 0
    }
  ];
}