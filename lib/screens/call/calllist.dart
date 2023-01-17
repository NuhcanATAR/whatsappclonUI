import 'package:flutter/material.dart';
import 'package:whatsapp/model.dart';

// routers page
import 'package:whatsapp/theme/theme.dart';

// pub dev
import 'package:kartal/kartal.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: camel_case_types
class calllistScreen extends StatefulWidget {
  const calllistScreen({super.key});

  @override
  State<calllistScreen> createState() => _calllistScreenState();
}

// ignore: camel_case_types
class _calllistScreenState extends State<calllistScreen> {
  final List<callListModel> calllist = [
    callListModel(
      username: "Taner Çadir",
      userimg:
          "https://store.donanimhaber.com/2a/71/96/2a7196fa4e85b977760a7f33586ee603.jpg",
      date: "11:18",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: calllist.length,
          itemBuilder: (context, index) => Column(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: context.dynamicHeight(0.1),
                child: ListTile(
                  leading: CachedNetworkImage(
                    imageUrl: calllist[index].userimg,
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
                  title: Text(
                    calllist[index].username,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.call_received,
                        color: Colors.lightGreen,
                        size: 18,
                      ),
                      Text(
                        calllist[index].date,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.black54,
                            ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: themeMainColor.backgroundColor,
                    size: 22,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
