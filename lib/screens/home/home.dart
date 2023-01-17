import 'package:flutter/material.dart';

// routers page
import 'package:whatsapp/screens/chattings/chattings.dart';
import 'package:whatsapp/screens/groups/groups.dart';
import 'package:whatsapp/screens/settings/settings.dart';
import 'package:whatsapp/screens/status/status.dart';
import 'package:whatsapp/theme/theme.dart';
import 'package:whatsapp/screens/call/call.dart';
// pub dev
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
enum menuContent { select1, select2, select3, select4, select5 }

// ignore: camel_case_types
class _homeState extends State<home> {
  menuContent? menu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeMainColor.backgroundColor,
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 21,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 21,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          PopupMenuButton<menuContent>(
            initialValue: menu,
            onSelected: (menuContent item) {
              setState(() {
                menu = item;
              });
            },
            color: Colors.white,
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<menuContent>>[
              const PopupMenuItem<menuContent>(
                value: menuContent.select1,
                child: Text('Yeni grup'),
              ),
              const PopupMenuItem<menuContent>(
                value: menuContent.select2,
                child: Text('Yeni toplu mesaj'),
              ),
              const PopupMenuItem<menuContent>(
                value: menuContent.select3,
                child: Text('Bağlı Cihazlar'),
              ),
              const PopupMenuItem<menuContent>(
                value: menuContent.select4,
                child: Text('Yıldızlı mesajlar'),
              ),
              PopupMenuItem<menuContent>(
                value: menuContent.select5,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const settingsScreen(),
                      ),
                    );
                  },
                  child: const Text('Ayarlar'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ContainedTabBarView(
        initialIndex: 1,
        tabBarProperties: TabBarProperties(
          indicatorColor: Colors.white,
          background: Container(
            decoration: BoxDecoration(
              color: themeMainColor.backgroundColor,
            ),
          ),
        ),
        tabs: [
          const Icon(
            Icons.groups,
            color: Colors.white,
            size: 20,
          ),
          Text(
            "Sohbetler",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
          Text(
            "Durum",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
          Text(
            "Aramalar",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
        views: [
          SizedBox.expand(
            child: Container(
              color: Colors.white,
              child: const groupsMain(),
            ),
          ),
          SizedBox.expand(
            child: Container(
              color: Colors.white,
              child: const chattingsScreen(),
            ),
          ),
          SizedBox.expand(
            child: Container(
              color: Colors.white,
              child: const statusMain(),
            ),
          ),
          SizedBox.expand(
            child: Container(
              color: Colors.white,
              child: const callScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
