import 'package:flutter/material.dart';
import 'package:aast_restuarant/Splash_Animated.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Animated(
        title: 'login',
        home: Login(),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100], // Base color for the background
          ),
          Container(
            width: MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height * 0.25, // Height for the dark blue section
            color: Colors.indigo.shade900, // Dark blue color
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50, // Adjust as needed
                  top: -50, // Adjust as needed
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0, // Set your desired width
                      height: 500.0, // Set your desired height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05, // Position for the logo
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset('images/splash.png', width: 190.0, height: 130.0), // Logo asset
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(flex: 2), // Adjust the space as needed
                  Container( width: 300.0, height: 60.0,
                    alignment: Alignment(0.0 ,-9.0), // Align the text
                    child: Text(
                      'Main Restaurant',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEEB340),
                      ),
                    ),
                  ),
                  Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Registration Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement sign-in functionality
                      // After sign-in, navigate to the NextPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Interface()),
                      );
                    },
                    child: Text('SIGN IN'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  Spacer(flex: 3), // Adjust the space as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100], // Base color for the background
          ),
          Container(
            width: MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height * 0.25, // Height for the dark blue section
            color: Colors.indigo.shade900, // Dark blue color
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50, // Adjust as needed
                  top: -50, // Adjust as needed
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0, // Set your desired width
                      height: 500.0, // Set your desired height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 55, top: 150),
            child: Text(
              'Choose the interface',
              style: TextStyle(
                fontSize: 28.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Color(0xFFEEB340), // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 14, top: 230, bottom: 40),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide( // Add this line to set the border color
                        width: 2.5, // Set the border thickness
                        color: Colors.black, // Set the desired border color
                      ),
                    ),
                    fixedSize: Size(175, 120),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/Enrolled.png', width: 120.0, height: 75.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 80, bottom: 2),
                  child: Text(
                    'Partcipating Student',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 220, right: 14, top: 230, bottom: 40),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide( // Add this line to set the border color
                        width: 2.5, // Set the border thickness
                        color: Colors.black, // Set the desired border color
                      ),
                    ),
                    fixedSize: Size(175, 120),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/UnEnrolled.png', width: 120.0, height: 110.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 80, bottom: 2),
                  child: Text(
                    'Non-partcipating Student',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 120, right: 14, top: 370, bottom: 40),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Admin()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide( // Add this line to set the border color
                        width: 2.5, // Set the border thickness
                        color: Colors.black, // Set the desired border color
                      ),
                    ),
                    fixedSize: Size(175, 120),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30,left: 1), // Add padding to all sides of the Image widget
                  child: Image.asset('images/Admin.png', width: 120.0, height: 90.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 80, bottom: 2),
                  child: Text(
                    'Admin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class HomePAGE extends StatelessWidget {          //طالب مشترك
  const HomePAGE({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            color: Colors.blue[100], // Base color for the background
          ),
          Container(
            width: MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height * 0.25, // Height for the dark blue section
            color: Colors.indigo.shade900, // Dark blue color
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 14, top: 189, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Schedule()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(100, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/MealsSchedule.png', width: 120.0, height: 60.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'MealsSchedule',
                  style: TextStyle(
                    fontSize: 12 ,
                  ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 14, top: 189, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChooseMeals()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(100, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/Result3.PNG', width: 120.0, height: 60.0),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text('Choose Meal'),
                ),

                // Add more widgets here if needed
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 280, right: 14, top: 189, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );*/
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(100, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/4658943.png', width: 120.0, height: 60.0),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text('FeedBack'),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 4, top: 320, bottom: 2),
            child: Text(
              'Announcements',
              style: TextStyle(
                fontSize: 24.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.black, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 4, top: 140, bottom: 2),
            child: Text(
              'Modules',
              style: TextStyle(
                fontSize: 30.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250, right: 14, top: 313, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[100], // Set the background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(150, 50), // Set the fixed size for the button
                  ),
                  child: Text(
                    'View All>',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Card(
            elevation: 4.0, // Optional: adds shadow under the card
            margin: EdgeInsets.only(left: 10, right: 14, top: 360, bottom: 300), // Margin around the card
            color: Colors.blue[50], // Set the background color of the card
            child: ListTile(
              leading: Transform.translate(
                offset: Offset(-2, -80), // Move the avatar 5 units to the left and 135 units up
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Announcer.png'), // Replace with your image path
                  backgroundColor: Colors.white, // Set the background color of the CircleAvatar
                  radius: 30.0, // Radius of the avatar
                ),
              ),
              title: Transform.translate(
                offset: Offset(-6, 10), // Move the title 20 units to the left
                child: Text(
                  'Announcer name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(-5, 3), // Move the text 10 units to the right
                    child: Text('Date: ${DateTime.now().toString()}'), // Replace with actual date and time
                  ),
                  SizedBox(height: 4.0), // Space between text and date
                  Transform.translate(
                    offset: Offset(-7, 40), // Move the text 10 units to the right
                    child: Text(
                      'This is the announcement content.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                //   child: Image.asset('images/Result3.PNG', width: 120.0, height: 60.0),
                // ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 240, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => identity()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                //   child: Image.asset('images/Result3.PNG', width: 120.0, height: 60.0),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'identity',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 320, right: 20, top: 50, bottom: 2), // Adjust the margin to move the container
            padding: const EdgeInsets.only(left: 2, right: 4, top: 4, bottom: 2), // Padding inside the container
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the container
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0), // Adjust the padding to move the icon
              child: Transform.scale(
                scale: 1.5, // Scale the entire IconButton
                child: IconButton(
                  icon: Icon(Icons.notifications),
                  color: Color(0xFFEEB340),
                  onPressed: () {
                    // Handle the notification icon tap
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 20), // Adjust the margin to move the button
            child: ClipOval(
              child: Material(
                color: Colors.blue, // Button color
                child: InkWell(
                  splashColor: Colors.white, // Inkwell splash color
                  onTap: () {
                    // Handle the button tap
                  },
                  child: SizedBox(
                    width: 60, // Button size
                    height: 60, // Button size
                    child: Image.asset('images/Announcer.png'), // Include your image
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85, right: 4, top: 60, bottom: 2),
            child: Text(
              'Hi Fareed ',
              style: TextStyle(
                fontSize: 20.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, right: 4, top: 85, bottom: 2),
            child: Text(
              '20102302 ',
              style: TextStyle(
                fontSize: 15.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ChooseMeals extends StatelessWidget {
  const ChooseMeals({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            color: Colors.blue[100], // Base color for the background
            child: DynamicListExample2(),
          ),
          Container(
            width: MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height * 0.25, // Height for the dark blue section
            color: Colors.indigo.shade900, // Dark blue color
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50, // Adjust as needed
                  top: -50, // Adjust as needed
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0, // Set your desired width
                      height: 500.0, // Set your desired height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 140, top: 150),
            child: Text(
              'اختيار الوجبات',
              style: TextStyle(
                fontSize: 20.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Color(0xFFEEB340), // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 117, top: 175),
            child: Text(
              'Choose Meals',
              style: TextStyle(
                fontSize: 25.0, // Set the font size
                //fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 240, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => identity()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'identity',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
class DynamicListExample2 extends StatefulWidget {
  @override
  _DynamicListExampleState2 createState() => _DynamicListExampleState2();
}
class _DynamicListExampleState2 extends State<DynamicListExample2> {
  //item 1
  List<String> items1 = [
    'BreakFast',
  ];

  List<String> subitems1 = [
    'Subitem A',
  ];
  List<String> subitems2 = [
    'Subitem B',
  ];
  List<String> subitems3 = [
    'Subitem C',
  ];
  // item 2
  List<String> items2 = [
    'Launch',
  ];

  List<String> subitems21 = [
    'Subitem A',
  ];
  List<String> subitems22 = [
    'Subitem B',
  ];
  List<String> subitems23 = [
    'Subitem C',
  ];
  List<String> items3 = [
    'Dinner',
  ];

  List<String> subitems31 = [
    'Subitem A',
  ];
  List<String> subitems32 = [
    'Subitem B',
  ];
  List<String> subitems33 = [
    'Subitem C',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 4, top: 260, bottom: 2), // Adjust desired padding
            child: Column(
              children: [
                Expanded(
                  child:
                  ListView.builder(
                    itemCount: items1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,
                        margin: EdgeInsets.symmetric(vertical: 15), // Adjust vertical margin
                        child: ExpansionTile(
                          title: Text(
                            items1[index],
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                subitems1[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              trailing: MyCheckboxWidget(), // Use your custom checkbox widget here
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems2[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              trailing: MyCheckboxWidget(), // Use your custom checkbox widget here
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems3[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              trailing: MyCheckboxWidget(), // Use your custom checkbox widget here
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Show your custom box widget when the button is pressed
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return MyCustomBox(); // Use your custom box widget here
                                  },
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo.shade900),
                                foregroundColor: MaterialStateProperty.all<Color>(Color(0xFFEEB340)),
                              ),
                              child: Text('Confirm'),
                            ),
                            // Add more subitems as needed
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items2.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,
                        margin: EdgeInsets.symmetric(vertical: 1), // Adjust vertical margin
                        child: ExpansionTile(
                          title: Text(
                            items2[index],
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                subitems21[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              trailing: MyCheckboxWidget(), // Use your custom checkbox widget here
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems22[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              trailing: MyCheckboxWidget(), // Use your custom checkbox widget here
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems23[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              trailing: MyCheckboxWidget(), // Use your custom checkbox widget here
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Show your custom box widget when the button is pressed
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return MyCustomBox(); // Use your custom box widget here
                                  },
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo.shade900),
                                foregroundColor: MaterialStateProperty.all<Color>(Color(0xFFEEB340)),
                              ),
                              child: Text('Confirm'),
                            ),
                            // Add more subitems as needed
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items3.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,

                        margin: EdgeInsets.symmetric(vertical: 1), // Adjust vertical margin
                        child: ExpansionTile(
                          title: Text(
                            items3[index],
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                subitems31[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              trailing: MyCheckboxWidget(), // Use your custom checkbox widget here
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems32[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              trailing: MyCheckboxWidget(), // Use your custom checkbox widget here
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems33[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              trailing: MyCheckboxWidget(), // Use your custom checkbox widget here
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Show your custom box widget when the button is pressed
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return MyCustomBox(); // Use your custom box widget here
                                  },
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo.shade900),
                                foregroundColor: MaterialStateProperty.all<Color>(Color(0xFFEEB340)),
                              ),
                              child: Text('Confirm'),
                            ),
                            // Add more subitems as needed
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Opacity(
                        opacity: 0.0, // Adjust opacity value between 0.0 (transparent) and 1.0 (opaque)
                        child: Card(
                          elevation: 4,
                          margin: EdgeInsets.symmetric(vertical: 15), // Adjust vertical margin
                          child: ExpansionTile(
                            title: Text(
                              items1[index],
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  subitems1[index],
                                  style: TextStyle(color: Colors.indigo.shade900),
                                ),
                                onTap: () {
                                  // Handle subitem tap
                                },
                              ),
                              // ... other list items
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Add your new list here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class MyCheckboxWidget extends StatefulWidget {
  @override
  _MyCheckboxWidgetState createState() => _MyCheckboxWidgetState();
}

class _MyCheckboxWidgetState extends State<MyCheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue!;
        });
      },
    );
  }
}
class MyCustomBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Meal Choosed'),
      content: Text('Done!'), // Customize the content as needed
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
class HomePAGE2 extends StatelessWidget {
  const HomePAGE2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            color: Colors.blue[100], // Base color for the background
          ),
          Container(
            width: MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height * 0.25, // Height for the dark blue section
            color: Colors.indigo.shade900, // Dark blue color
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50, // Adjust as needed
                  top: -50, // Adjust as needed
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0, // Set your desired width
                      height: 500.0, // Set your desired height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 14, top: 189, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Schedule()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(100, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/MealsSchedule.png', width: 120.0, height: 60.0),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'MealsSchedule',
                    style: TextStyle(
                      fontSize: 12 ,
                    ),
                  ),
                ),

                // Add more widgets here if needed
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 150, right: 14, top: 189, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChooseMeals()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(100, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/Order.png', width: 120.0, height: 60.0),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text('Make Order'),
                ),

                // Add more widgets here if needed
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 280, right: 14, top: 189, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                   /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );*/
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(100, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/4658943.png', width: 120.0, height: 60.0),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text('FeedBack'),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 4, top: 320, bottom: 2),
            child: Text(
              'Announcements',
              style: TextStyle(
                fontSize: 24.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.black, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 4, top: 140, bottom: 2),
            child: Text(
              'Modules',
              style: TextStyle(
                fontSize: 30.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250, right: 14, top: 313, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Announcement()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[100], // Set the background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(150, 50), // Set the fixed size for the button
                  ),
                  child: Text(
                    'View All>',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Card(
            elevation: 4.0, // Optional: adds shadow under the card
            margin: EdgeInsets.only(left: 10, right: 14, top: 360, bottom: 300), // Margin around the card
            color: Colors.blue[50], // Set the background color of the card
            child: ListTile(
              leading: Transform.translate(
                offset: Offset(-2, -80), // Move the avatar 5 units to the left and 135 units up
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Announcer.png'), // Replace with your image path
                  backgroundColor: Colors.white, // Set the background color of the CircleAvatar
                  radius: 30.0, // Radius of the avatar
                ),
              ),
              title: Transform.translate(
                offset: Offset(-6, 10), // Move the title 20 units to the left
                child: Text(
                  'Announcer name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(-5, 3), // Move the text 10 units to the right
                    child: Text('Date: ${DateTime.now().toString()}'), // Replace with actual date and time
                  ),
                  SizedBox(height: 4.0), // Space between text and date
                  Transform.translate(
                    offset: Offset(-7, 40), // Move the text 10 units to the right
                    child: Text(
                      'This is the announcement content.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                //   child: Image.asset('images/Result3.PNG', width: 120.0, height: 60.0),
                // ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 240, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => identity()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'identity',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 320, right: 20, top: 50, bottom: 2), // Adjust the margin to move the container
            padding: const EdgeInsets.only(left: 2, right: 4, top: 4, bottom: 2), // Padding inside the container
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the container
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0), // Adjust the padding to move the icon
              child: Transform.scale(
                scale: 1.5, // Scale the entire IconButton
                child: IconButton(
                  icon: Icon(Icons.notifications),
                  color: Color(0xFFEEB340),
                  onPressed: () {
                    // Handle the notification icon tap
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 20), // Adjust the margin to move the button
            child: ClipOval(
              child: Material(
                color: Colors.blue, // Button color
                child: InkWell(
                  splashColor: Colors.white, // Inkwell splash color
                  onTap: () {
                    // Handle the button tap
                  },
                  child: SizedBox(
                    width: 60, // Button size
                    height: 60, // Button size
                    child: Image.asset('images/Announcer.png'), // Include your image
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85, right: 4, top: 60, bottom: 2),
            child: Text(
              'Hi Fareed ',
              style: TextStyle(
                fontSize: 20.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, right: 4, top: 85, bottom: 2),
            child: Text(
              '20102302 ',
              style: TextStyle(
                fontSize: 15.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Announcement extends StatefulWidget {
  const Announcement({super.key});

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  <Widget>[
          Container(
            color: Colors.blue[100], // Base color for the background
          ),
          Container(
            width: MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height * 0.25, // Height for the dark blue section
            color: Colors.indigo.shade900, // Dark blue color
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50, // Adjust as needed
                  top: -50, // Adjust as needed
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0, // Set your desired width
                      height: 500.0, // Set your desired height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 125, top: 165),
            child: Text(
              'Comments',
              style: TextStyle(
                fontSize: 25.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Card(
            elevation: 4.0, // Optional: adds shadow under the card
            margin: EdgeInsets.only(left: 10, right: 14, top: 240, bottom: 420), // Margin around the card
            color: Colors.blue[50], // Set the background color of the card
            child: ListTile(
              leading: Transform.translate(
                offset: Offset(-2, -80), // Move the avatar 5 units to the left and 135 units up
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Announcer.png'), // Replace with your image path
                  backgroundColor: Colors.white, // Set the background color of the CircleAvatar
                  radius: 30.0, // Radius of the avatar
                ),
              ),
              title: Transform.translate(
                offset: Offset(-6, 10), // Move the title 20 units to the left
                child: Text(
                  'Announcer name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(-5, 3), // Move the text 10 units to the right
                    child: Text('Date: ${DateTime.now().toString()}'), // Replace with actual date and time
                  ),
                  SizedBox(height: 4.0), // Space between text and date
                  Transform.translate(
                    offset: Offset(-7, 40), // Move the text 10 units to the right
                    child: Text(
                      'This is the announcement content.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 4.0, // Optional: adds shadow under the card
            margin: EdgeInsets.only(left: 10, right: 14, top: 450, bottom: 150), // Margin around the card
            color: Colors.blue[50], // Set the background color of the card
            child: ListTile(
              leading: Transform.translate(
                offset: Offset(-2, -80), // Move the avatar 5 units to the left and 135 units up
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Announcer.png'), // Replace with your image path
                  backgroundColor: Colors.white, // Set the background color of the CircleAvatar
                  radius: 30.0, // Radius of the avatar
                ),
              ),
              title: Transform.translate(
                offset: Offset(-6, 10), // Move the title 20 units to the left
                child: Text(
                  'Announcer name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(-5, 3), // Move the text 10 units to the right
                    child: Text('Date: ${DateTime.now().toString()}'), // Replace with actual date and time
                  ),
                  SizedBox(height: 4.0), // Space between text and date
                  Transform.translate(
                    offset: Offset(-7, 40), // Move the text 10 units to the right
                    child: Text(
                      'This is the announcement content.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class identity extends StatelessWidget {
  const identity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.indigo.shade900, // Base color for the background
          ),
          Opacity(
            opacity: 0.1,
            child: Image.asset(
              'images/AAST.png',
              width: 800.0, // Set your desired width
              height: 800.0, // Set your desired height
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 135, right: 4, top: 60, bottom: 2),
            child: Text(
              'Identity ',
              style: TextStyle(
                fontSize: 40.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(),
            child: Transform.translate(
              offset: Offset(150, 120), // Move the avatar 5 units to the left and 135 units up
              child: CircleAvatar(
                backgroundImage: AssetImage('images/Announcer.png'), // Replace with your image path
                backgroundColor: Colors.white, // Set the background color of the CircleAvatar
                radius: 60.0, // Radius of the avatar
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(12.0, 150.0), // Adjust the X and Y values as needed
            child: Container(
              width: 120.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text(
                  '20102302',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    // Add more style properties as needed
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 4, top: 240, bottom: 2),
            child: Text(
              'فريد وليد',
              style: TextStyle(
                fontSize: 25.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Color(0xFFEEB340), // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 4, top: 280, bottom: 2),
            child: Text(
              'College of Computing and Information',
              style: TextStyle(
                fontSize: 17.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 4, top: 300, bottom: 2),
            child: Text(
              'Technology',
              style: TextStyle(
                fontSize: 18.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(110.0, 330.0),
            child: Container(
              width: 200.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: Colors.white, // Set the desired border color
                  width: 2.0, // Set the desired border width
                ),
              ),
              child: Center(
                child: Text(
                  'Enrolled Student',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    // Add more style properties as needed
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 370, left: 15, bottom: 200),
            child: Image.asset(
              'images/QR code.png',
              width: 1000.0, // Set your desired width
              height: 1000.0, // Set your desired height
            ),
          ),
          Transform.translate(
            offset: Offset(20, 670), // Move the text 10 units to the right
            child: Text(
              'Date: ${DateTime.now().toString().split('.')[0]}',
              style: TextStyle(
                color: Colors.white, // Set your desired text color
                fontSize: 20, // Adjust font size as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 240, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => identity()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'identity',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                //   child: Image.asset('images/Result3.PNG', width: 120.0, height: 60.0),
                // ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);
  @override
  _ScheduleState createState() => _ScheduleState();
}
class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
            child: DynamicListExample(),// Base color for the background
          ),
          Container(
            width: MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height * 0.25, // Height for the dark blue section
            color: Colors.indigo.shade900, // Dark blue color
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50, // Adjust as needed
                  top: -50, // Adjust as needed
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0, // Set your desired width
                      height: 500.0, // Set your desired height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 125, top: 150),
            child: Text(
              'قائمة الوجبات',
              style: TextStyle(
                fontSize: 20.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Color(0xFFEEB340), // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100, top: 175),
            child: Text(
              'Meals Schedule',
              style: TextStyle(
                fontSize: 25.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Container(
            width: 370,
            height: 70,
            margin: EdgeInsets.only(left: 18, top: 220),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color:  Colors.indigo.shade900,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Sat',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.only(left: 1),
                      backgroundColor: Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Sun',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 3 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                          'Mon',
                        style: TextStyle(
                          color: Colors.white,
                        ),

                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 4 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Tue',
                        style: TextStyle(
                          color: Colors.white,
                        ),

                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 5 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Wed',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 5 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Thur',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 5 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Fri',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 240, right: 14, top: 770, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => identity()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size(160, 60),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 4, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'identity',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class DynamicListExample extends StatefulWidget {
  @override
  _DynamicListExampleState createState() => _DynamicListExampleState();
}
class _DynamicListExampleState extends State<DynamicListExample> {
  //item 1
  List<String> items1 = [
    'BreakFast',
  ];

  List<String> subitems1 = [
    'Subitem A',
  ];
  List<String> subitems2 = [
    'Subitem B',
  ];
  List<String> subitems3 = [
    'Subitem C',
  ];
  // item 2
  List<String> items2 = [
    'Launch',
  ];

  List<String> subitems21 = [
    'Subitem A',
  ];
  List<String> subitems22 = [
    'Subitem B',
  ];
  List<String> subitems23 = [
    'Subitem C',
  ];
  List<String> items3 = [
    'Dinner',
  ];

  List<String> subitems31 = [
    'Subitem A',
  ];
  List<String> subitems32 = [
    'Subitem B',
  ];
  List<String> subitems33 = [
    'Subitem C',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 4, top: 260, bottom: 2), // Adjust desired padding
            child: Column(
              children: [
                Expanded(
                  child:
                  ListView.builder(
                    itemCount: items1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,
                        margin: EdgeInsets.symmetric(vertical: 15), // Adjust vertical margin
                        child: ExpansionTile(
                          title: Text(
                            items1[index],
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                subitems1[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems2[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems3[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            // Add more subitems as needed
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items2.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,
                        margin: EdgeInsets.symmetric(vertical: 1), // Adjust vertical margin
                        child: ExpansionTile(
                          title: Text(
                            items2[index],
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                subitems21[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems22[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems23[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            // Add more subitems as needed
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items3.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,

                        margin: EdgeInsets.symmetric(vertical: 1), // Adjust vertical margin
                        child: ExpansionTile(
                          title: Text(
                            items3[index],
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                subitems31[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems32[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems33[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            // Add more subitems as needed
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Opacity(
                        opacity: 0.0, // Adjust opacity value between 0.0 (transparent) and 1.0 (opaque)
                        child: Card(
                          elevation: 4,
                          margin: EdgeInsets.symmetric(vertical: 15), // Adjust vertical margin
                          child: ExpansionTile(
                            title: Text(
                              items1[index],
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  subitems1[index],
                                  style: TextStyle(color: Colors.indigo.shade900),
                                ),
                                onTap: () {
                                  // Handle subitem tap
                                },
                              ),
                              // ... other list items
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Add your new list here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
          ),
          Container(
            width: MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height * 0.25, // Height for the dark blue section
            color: Colors.indigo.shade900, // Dark blue color
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50, // Adjust as needed
                  top: -50, // Adjust as needed
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0, // Set your desired width
                      height: 500.0, // Set your desired height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 320, right: 20, top: 50, bottom: 2), // Adjust the margin to move the container
            padding: const EdgeInsets.only(left: 2, right: 4, top: 4, bottom: 2), // Padding inside the container
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the container
              borderRadius: BorderRadius.circular(10), // Rounded corners
              border: Border.all(
                color: Colors.black, // Change the border color here
                width: 3.0, // Change the border width here
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0), // Adjust the padding to move the icon
              child: Transform.scale(
                scale: 1.5, // Scale the entire IconButton
                child: IconButton(
                  icon: Icon(Icons.notifications),
                  color: Color(0xFFEEB340),
                  onPressed: () {
                    // Handle the notification icon tap
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 20), // Adjust the margin to move the button
            child: ClipOval(
              child: Material(
                color: Colors.blue, // Button color
                child: InkWell(
                  splashColor: Colors.white, // Inkwell splash color
                  onTap: () {
                    // Handle the button tap
                  },
                  child: SizedBox(
                    width: 60, // Button size
                    height: 60, // Button size
                    child: Image.asset('images/Announcer.png'), // Include your image
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85, right: 4, top: 60, bottom: 2),
            child: Text(
              'Hi Ayman ',
              style: TextStyle(
                fontSize: 20.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 150, top: 165),
            child: Text(
              'Admin',
              style: TextStyle(
                fontSize: 30.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 14, top: 230, bottom: 40),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Schedule()),
                    );*/
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide( // Add this line to set the border color
                        width: 2.5, // Set the border thickness
                        color: Colors.black, // Set the desired border color
                      ),
                    ),
                    fixedSize: Size(100, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Image.asset('images/MEALS.png', width: 120.0, height: 60.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2),
                  child: Text(
                    'Meals',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 14, top: 230, bottom: 40),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Schedule()),
                    );*/
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide( // Add this line to set the border color
                        width: 2.5, // Set the border thickness
                        color: Colors.black, // Set the desired border color
                      ),
                    ),
                    fixedSize: Size(100, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Image.asset('images/Appointment.png', width: 120.0, height: 60.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2),
                  child: Text(
                    'Appointment',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 280, right: 14, top: 230, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );*/
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide( // Add this line to set the border color
                        width: 2.5, // Set the border thickness
                        color: Colors.black, // Set the desired border color
                      ),
                    ),
                    fixedSize: Size(100, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/comments.png', width: 120.0, height: 60.0),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text('comments'),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140, right: 14, top: 350, bottom: 40),
            child: Stack(
              alignment: Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePAGE()),
                    );*/
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide( // Add this line to set the border color
                        width: 2.5, // Set the border thickness
                        color: Colors.black, // Set the desired border color
                      ),
                    ),
                    fixedSize: Size(150, 100),
                  ),
                  child: Container(), // Empty container can be used as a placeholder
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                  child: Image.asset('images/Announcement.png', width: 120.0, height: 60.0),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 4, top: 60, bottom: 2), // Add padding to all sides of the Text widget
                  child: Text('Announcement'),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}


