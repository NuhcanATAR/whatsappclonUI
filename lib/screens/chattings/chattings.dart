import 'package:flutter/material.dart';
import 'package:whatsapp/model.dart';

// routers page
import 'package:whatsapp/theme/theme.dart';

// pub dev
import 'package:kartal/kartal.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: camel_case_types
class chattingsScreen extends StatefulWidget {
  const chattingsScreen({super.key});

  @override
  State<chattingsScreen> createState() => _chattingsScreenState();
}

// ignore: camel_case_types
class _chattingsScreenState extends State<chattingsScreen> {
  final List<chatListModel> chatsList = [
    chatListModel(
        username: "Taner Çadir",
        userimg:
            "https://store.donanimhaber.com/2a/71/96/2a7196fa4e85b977760a7f33586ee603.jpg",
        date: "16:08",
        msg: "bu yazı cloud firestor üzerinden geliyor"),
    chatListModel(
        username: "Deniz Olukcu",
        userimg:
            "https://listelist.com/wp-content/uploads/2019/02/yapa-zeka-kedi.jpg",
        date: "09:15",
        msg: "Merhaba Flutter"),
    chatListModel(
        username: "Büşra Tepe",
        userimg:
            "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
        date: "18:23",
        msg: "Ugyulama Geliştirmek Nasıl"),
    chatListModel(
        username: "Ali Demir",
        userimg:
            "https://listelist.com/wp-content/uploads/2019/02/her-tiklamada.jpg",
        date: "16:08",
        msg: "Lorem ipsum metinleri"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: unnecessary_null_comparison
      body: ListView.builder(
        itemCount: chatsList.length,
        itemBuilder: (context, index) => Column(
          children: <Widget>[
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CachedNetworkImage(
                imageUrl: chatsList[index].userimg,
                imageBuilder: (context, imageProvider) => ClipOval(
                  child: SizedBox(
                    width: context.dynamicWidth(0.15),
                    height: context.dynamicHeight(0.08),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => ClipOval(
                  child: SizedBox(
                    width: context.dynamicWidth(0.1),
                    height: context.dynamicHeight(0.1),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/nopicture.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                placeholder: (context, url) => LoadingAnimationWidget.beat(
                    color: themeMainColor.backgroundColor, size: 20),
              ),
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      chatsList[index].username,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                  ),
                  Text(
                    chatsList[index].date,
                    style: GoogleFonts.nunito(
                      textStyle:
                          Theme.of(context).textTheme.bodySmall!.copyWith(
                                color: Colors.black54,
                              ),
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                chatsList[index].msg,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black54,
                    ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: themeMainColor.backgroundColor,
        child: const Icon(
          Icons.message,
          color: Colors.white,
          size: 22,
        ),
      ),
    );
  }
}
