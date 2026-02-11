import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import flutter material design and google fonts
// text, container, scaffold, appbar, etc.
void main() {
  runApp(const SimplePortfolioApp());
  // starting point of every dart file
  
  // flutter function that runs our application
  // function - standalone block of code
  // method - a function that define within a class and operates on objects data
  // MyApp() - your application
}

class SimplePortfolioApp extends StatelessWidget {
  const SimplePortfolioApp({Key? key}) :super(key : key);
    // class name
    // doesn't change
    // activate the class build

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple PortFolio', // title of the app
      home:  HomePage(), // home text
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatefulWidget{

  @override 
  State<HomePage> createState() => _HomePageState();
  
}
// return state objects
// state for the homepage 
// create state for the method
// _HomePageState holds data that can change, trigger rebuilding of our application

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
  return Scaffold ( // page structure(hold appBar, drawer, body)
    backgroundColor: Color.fromARGB(15, 18, 68, 234),
    appBar: AppBar(
      leading: Builder(
        builder: (BuildContext context){
          return IconButton(
            icon : Icon(Icons.menu),
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
          );
        }
      ),
      backgroundColor: Color.fromARGB(15, 137, 114, 21),
      title: Text('Portfolio',
      style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
      ),// appbar title
    ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                ClipOval(
            child: Image.asset('lib/assets/images/patt.jpg',
            width: 60,
            height: 60,
            fit: BoxFit.cover,

            ),
          ),
                Text('Patrick Ramos'),
                SizedBox(height: 4),
                Text('Future Developer')

              ],
            )
          )
        ],
      ),
    ),

    body: 
    Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           ClipOval(
            child: Image.asset('lib/assets/images/patt.jpg',
            width: 120,
            height: 120,
            fit: BoxFit.cover,

            ),
          ),
          const SizedBox(height: 16),
          Text('Patrick Emanuel Ramos', style: GoogleFonts.poppins(
            fontSize: 24, 
            fontWeight: FontWeight.bold,
            color: Colors.black,
            ),
            ),
            const SizedBox(height: 8),
            Text('CS2202 BSCS at STI College Caloocan', style: GoogleFonts.poppins(
            fontSize: 24, 
            fontWeight: FontWeight.bold
            , color: Colors.deepPurple,
            ),
            ),
            const SizedBox(height: 8),
            Text('Future Developer', 
            style: GoogleFonts.poppins(
            fontSize: 24, 
            fontWeight: FontWeight.normal,
            color: Colors.red[600],
            ),
            ),
          ]
        )
    ),
      
    )
  ); // scaffold
  }
@override
void dispose(){
 super.dispose(); 
}
}


