import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social App Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social App'),
        backgroundColor: Colors.blue,
      ),
      drawer: const Drawer(
        child: DrawerContent(),
      ),
      body: const Center(
        child: Text('Tap the menu icon to open the drawer!'),
      ),
    );
  }
}

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.blue,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.close)),
                  SizedBox(width: 185,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings))
                ],),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_1280.jpg'), // Replace with actual image URL
                ),
                const SizedBox(height: 9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Ravi K. Nakum',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                SizedBox(height: 9),
                    Text(
                      'Graphic Designer',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 9,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border, color: Colors.white),
                      onPressed: () {
                       
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.share, color: Colors.white),
                      onPressed: () {
                       
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Flexible(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: const Icon(Icons.rss_feed , color: Colors.blue,),
                title: const Text('Feed' , style: TextStyle(color: Colors.blue),),
                // tileColor: Colors.blue,
                textColor: Colors.white,
                onTap: () {
                  Navigator.pop(context);
                 
                },
              ),
              ListTile(
                leading: const Icon(Icons.event),
                title: const Text('Events'),
                onTap: () {
                  Navigator.pop(context); 
                  
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Post'),
                onTap: () {
                  Navigator.pop(context); 
                  
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text('Notifications'),
                trailing: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); 
                  
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Account'),
                onTap: () {
                  Navigator.pop(context); 
                  
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pop(context); 
                  
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}