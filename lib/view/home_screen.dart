import 'package:al_quran_bengali/view/status_view.dart';
import 'package:flutter/material.dart';
import '../screens/setting_screen.dart';
import 'calls_view.dart';
import 'chat_list_view.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  late TabController tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(vsync: this, length: 3)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              fabIcon = Icons.camera_alt_outlined;
              break;
            case 1:
              fabIcon = Icons.chat;
              break;
            case 2:
              fabIcon = Icons.camera_alt_outlined;
              break;
            }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(130.0),
        child: AppBar(
          title:   Text(
            "Al-Qur'an Bangla",
            style:   Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white),
          ),

          actions:  <Widget>  [

            Padding(
              padding:  EdgeInsets.only(right: 28.0),
              child: Icon(Icons.read_more_sharp),
            ),
            PopupMenuButton(
                enabled: true,
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text("Go to Search" ,  ),
                    value: 1,
                  ),
                  const PopupMenuItem(
                    child: Text("Go to Last Read") ,
                    value: 2,
                  ),const PopupMenuItem(
                    child: Text("Go to Setting") ,
                    value: 3,
                  ),const PopupMenuItem(
                    child: Text("Give Rating") ,
                    value: 4,
                  ),const PopupMenuItem(
                    child: Text("About this App") ,
                    value: 5,
                  ),
                  PopupMenuItem(
                    child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                        },
                        child: Text("Setting")) ,
                    value: 2,
                  )
                ]
            ),

          ],
          bottom:  TabBar(
            tabs: const [
              Tab(
                child: Text("SURAH"),
              ),
              Tab(
                  child: Text(
                    "JUZ",
                  )),
              Tab(
                  child: Text(
                    "BOOKMARK",
                  )),

            ],

            controller: tabController,
          ),

        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          ChatListView(),
          StatusScreen(),
          CallsView(),
        ],
      ),
    );
  }
}
