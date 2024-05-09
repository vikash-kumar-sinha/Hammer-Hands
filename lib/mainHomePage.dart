import 'UiHelper.dart';
import 'package:flutter/material.dart';
import 'workers.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _selectedIndex=0;
  List<String>s=['Carpenter','Plumber','Electrician','Mistri','Mechanic','Labour'];
  List<dynamic> t=[Workers()];

  List<Widget> _buildGridItems(int count) {
    List<Widget> items = [];
    for (int i = 0; i < count; i++) {
      items.add(
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>t[0]));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white
              ),
              child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage('images/image$i.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(bottom: 15,left: 2,
                      child: Container(height:25,width:100,
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Center(child: Text(s[i],style: TextStyle(fontWeight: FontWeight.bold),)),),
                    )
                  ]
              ),
            ),
          ),
        ),
      );
    }
    return items;
  }

  List<BottomNavigationBarItem> _buildNavigationItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home,color: Colors.black87,),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.location_on_outlined),
        label: 'Address',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.mail),
        label: 'My bookings',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Favorites',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Hammer Hands',style: TextStyle(fontFamily: 'acme',fontWeight: FontWeight.bold,fontSize: 30),),backgroundColor: Colors.blue,foregroundColor: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Color(0xffE0B2D0)),
          height: double.infinity,width: double.infinity,child: Column(
            children: [
              Expanded(flex:1,child: Text('Catagories',style: TextStyle(fontSize: 20,fontFamily: 'acme',fontWeight: FontWeight.bold),)),
              Expanded(flex: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 300,child: GridView.count(crossAxisCount: 2,children: _buildGridItems(6),)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black87,
        items: _buildNavigationItems(),
        currentIndex: _selectedIndex,
        onTap: (index) {
          // Handle navigation based on selected index
          // You can use a switch statement or navigate to different screens
          switch (index) {
            case 0:

              setState(() {
                _selectedIndex=0;
              });
              break;
            case 1:

              setState(() {
                _selectedIndex=1;
              });

              break;
            case 2:
              setState(() {
                _selectedIndex=2;
              });
              break;
            case 3:
              setState(() {
                _selectedIndex=3;
              });
              break;
            case 4:
              setState(() {
                _selectedIndex=4;
              });
              break;
          }
        },
      ),
    );
  }
}
