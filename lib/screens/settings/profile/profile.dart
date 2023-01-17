import 'package:flutter/material.dart';

// pub dev
import 'package:kartal/kartal.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
// routers page
import 'package:whatsapp/theme/theme.dart';

// ignore: camel_case_types
class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

// ignore: camel_case_types
class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeMainColor.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 23,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Profil",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            // profile image
            _buildprofileimage,
            const SizedBox(
              height: 25,
            ),
            // profile name content
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  // name
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: context.dynamicHeight(0.17),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: context.dynamicHeight(0.2),
                          child: Column(
                            children: const <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              Icon(
                                Icons.account_circle_outlined,
                                color: Colors.grey,
                                size: 22,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Nuhcan",
                                  style: GoogleFonts.nunito(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.grey,
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Nuhcan ATAR",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Bu, kullanıcı adınız ya da anahtarınız değildir. Bu ad WhatsApp kişileriniz tarafından görülebilir",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Colors.grey,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: context.dynamicHeight(0.2),
                          child: Column(
                            children: <Widget>[
                              const SizedBox(
                                height: 5,
                              ),
                              Icon(
                                Icons.edit,
                                color: themeMainColor.backgroundColor,
                                size: 22,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // status information
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: context.dynamicHeight(0.1),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.info_outline,
                          color: Colors.grey,
                          size: 22,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(color: Colors.grey, width: 0.5),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Hakkımda",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.grey,
                                        ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "nuhcanatar.dev ~",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          color: Colors.black,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(
                          Icons.edit,
                          color: themeMainColor.backgroundColor,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                  // status information
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: context.dynamicHeight(0.1),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.call,
                          color: Colors.grey,
                          size: 22,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(color: Colors.grey, width: 0.5),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Telefon",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.grey,
                                        ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "+90 534 988 10 69",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          color: Colors.black,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(
                          Icons.edit,
                          color: themeMainColor.backgroundColor,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _buildprofileimage => SizedBox(
        width: context.dynamicWidth(0.1),
        height: context.dynamicHeight(0.23),
        child: Container(
          margin: const EdgeInsets.only(left: 80, right: 80),
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl:
                    "https://firebasestorage.googleapis.com/v0/b/whatsappdb-331ab.appspot.com/o/ben.jpg?alt=media&token=e6725600-a022-4bf2-b0d0-5049ad3b58a9",
                imageBuilder: (context, imageProvider) => SizedBox(
                  width: context.dynamicWidth(0.45),
                  height: context.dynamicHeight(0.40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(125),
                      ),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => SizedBox(
                  width: context.dynamicWidth(0.45),
                  height: context.dynamicHeight(0.40),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(125),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/nopicture.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                placeholder: (context, url) => LoadingAnimationWidget.beat(
                    color: themeMainColor.backgroundColor, size: 55),
              ),
              Positioned(
                bottom: 0,
                right: 15,
                child: SizedBox(
                  width: 45,
                  height: 45,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(125),
                      ),
                      color: HexColor("#01A985"),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
