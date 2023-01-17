import 'package:flutter/material.dart';

// routers page
import 'package:whatsapp/theme/theme.dart';
import 'package:whatsapp/model.dart';

// pub dev
import 'package:kartal/kartal.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: camel_case_types
class statusList extends StatefulWidget {
  const statusList({super.key});

  @override
  State<statusList> createState() => _statusListState();
}

// ignore: camel_case_types
class _statusListState extends State<statusList> {
  final List<statusModel> statuslist = [
    statusModel(
      username: "Taner Çadir",
      statusimg:
          "https://cdn.dsmcdn.com/ty71/product/media/images/20210218/2/64454101/142784727/0/0_org_zoom.jpg",
      date: "15:48",
    ),
    statusModel(
      username: "Büşra Tepe",
      statusimg:
          "https://i.pinimg.com/originals/32/4b/04/324b04ab8fbfd86fda5aa08220096e11.jpg",
      date: "11:32",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: statuslist.length,
          itemBuilder: (context, index) => Column(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: context.dynamicHeight(0.1),
                child: ListTile(
                  leading: CachedNetworkImage(
                    imageUrl: statuslist[index].statusimg,
                    imageBuilder: (context, imageProvider) => SizedBox(
                        width: context.dynamicWidth(0.15),
                        height: context.dynamicHeight(0.8),
                        child: SizedBox(
                          width: context.dynamicWidth(0.14),
                          height: context.dynamicHeight(0.7),
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(125),
                              ),
                            ),
                            child: ClipOval(
                              child: SizedBox(
                                width: context.dynamicWidth(0.12),
                                height: context.dynamicHeight(0.05),
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
                          ),
                        )),
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
                    statuslist[index].username,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  subtitle: Text(
                    statuslist[index].date,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black54,
                        ),
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
