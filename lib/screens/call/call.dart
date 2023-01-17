import 'package:flutter/material.dart';

// routers page
import 'package:whatsapp/theme/theme.dart';
import 'calllist.dart';

// pub dev
import 'package:kartal/kartal.dart';

// ignore: camel_case_types
class callScreen extends StatefulWidget {
  const callScreen({super.key});

  @override
  State<callScreen> createState() => _callScreenState();
}

// ignore: camel_case_types
class _callScreenState extends State<callScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: context.dynamicHeight(0.1),
            child: ListTile(
              leading: ClipOval(
                child: SizedBox(
                  width: context.dynamicWidth(0.15),
                  height: context.dynamicHeight(0.08),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: themeMainColor.backgroundColor,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              title: Text(
                "Arama Bağlantısı Oluştur",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              subtitle: Text(
                "WhatsApp aramanız için bağlant..",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black54,
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const calllistScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: themeMainColor.backgroundColor,
        child: const Icon(
          Icons.add_call,
          color: Colors.white,
          size: 22,
        ),
      ),
    );
  }
}
