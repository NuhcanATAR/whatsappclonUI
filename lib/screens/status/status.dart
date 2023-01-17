import 'package:flutter/material.dart';
import 'package:whatsapp/screens/status/statusList.dart';

// routers page
import 'package:whatsapp/theme/theme.dart';

// pub dev
import 'package:hexcolor/hexcolor.dart';
import 'package:kartal/kartal.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: camel_case_types
class statusMain extends StatefulWidget {
  const statusMain({super.key});

  @override
  State<statusMain> createState() => _statusMainState();
}

// ignore: camel_case_types
class _statusMainState extends State<statusMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: context.dynamicHeight(0.1),
            child: ListTile(
              leading: CachedNetworkImage(
                imageUrl:
                    "https://firebasestorage.googleapis.com/v0/b/whatsappdb-331ab.appspot.com/o/ben.jpg?alt=media&token=e6725600-a022-4bf2-b0d0-5049ad3b58a9",
                imageBuilder: (context, imageProvider) => SizedBox(
                  width: context.dynamicWidth(0.15),
                  height: context.dynamicHeight(0.8),
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
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
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                          width: context.dynamicHeight(0.03),
                          height: context.dynamicHeight(0.03),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              color: HexColor("#00AA88"),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(125),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
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
                "Durumum",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              subtitle: Text(
                "Durum Güncellemesi eklemek içi..",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black54,
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const statusList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: themeMainColor.backgroundColor,
        child: const Icon(
          Icons.camera_alt,
          color: Colors.white,
          size: 22,
        ),
      ),
    );
  }
}
