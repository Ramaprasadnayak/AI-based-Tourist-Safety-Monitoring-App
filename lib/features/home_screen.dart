import 'package:flutter/material.dart';
import 'package:safeyatra/features/auth/login_page.dart';
import 'package:safeyatra/features/home/home_page.dart';
import 'package:safeyatra/features/notifications/notification.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  String username = "";
  @override
  void initState() {
    super.initState();
    // getUsername();
  }

  // Future<void> getUsername() async {
  //   final username = "Ryan";
    // final name = await loadTokenSub();


  //   if (name != null) {
  //     setState(() {
  //       username = name.length > 15 ? "${name.substring(0, 15)}..." : name;
  //     });
  //   }
  // }
  // void setTheme(int idx) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setInt("theme", idx);
  // }

  void navigateBottonBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    final List<Widget> pages = [
      HomePage(),
      Center(child:Text("settings")),
      Center(child:Text("translate page")),
      Center(child:Text("profile")),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          },
        ),
        title: Text(username), 
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },
            icon: Icon(Icons.notifications_outlined),
          ),
          // IconButton(
          //   // onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage())),
          //   onPressed: ()=>{},
          //   icon: Icon(Icons.notifications_outlined),
          // ),
        ],
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: navigateBottonBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.translate_outlined),
            label: "Translator",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
