import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quizz_screen.dart';
import 'package:quiz_app/ui/shared/color.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // backgroundColor: Colors.amber,
        body: Container(
          decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage('assets/fs.jpg'),
          fit: BoxFit.cover
        )
      ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 48.0,
              horizontal: 12.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75,
                ),
                const Center(
                  child: Text(
                    "Quiz App",
                    style: TextStyle(
                      color: Color.fromARGB(255, 191, 231, 171),
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Center(
                  child: Text(
                    "Test your Knowledge",
                    style: TextStyle(
                      color: Color.fromARGB(223, 78, 235, 99),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigating the the Quizz Screen
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const QuizzScreen(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 59, 192, 59), // Set the desired background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        ),
                                // shape: const StadiumBorder(),
                      // fillColor: Color.fromARGB(235, 32, 179, 32),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                        child: Text(
                          "Start the Quiz",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
