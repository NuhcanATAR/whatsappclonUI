import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// routers page
import 'package:whatsapp/screens/home/home.dart';

// pub dev
import 'package:kartal/kartal.dart';
import 'package:whatsapp/theme/theme.dart';

void main() {
  runApp(const buildMain());
}

// ignore: camel_case_types
class buildMain extends StatelessWidget {
  const buildMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/term_referralScreen",
      routes: {
        "/term_referralScreen": (context) => const term_referralScreen(),
        "/home": (context) => const home(),
      },
    );
  }
}

// ignore: camel_case_types
class term_referralScreen extends StatefulWidget {
  const term_referralScreen({super.key});

  @override
  State<term_referralScreen> createState() => _term_referralScreenState();
}

// ignore: camel_case_types
class _term_referralScreenState extends State<term_referralScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const home()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              buildLogo,
              buildMinLogo,
            ],
          ),
        ),
      ),
    );
  }

  Widget get buildLogo => Expanded(
        flex: 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/whatsappdb-331ab.appspot.com/o/icons8-whatsapp-240.png?alt=media&token=41834ab6-65ce-4d1b-bf38-c0c23db272f7",
              imageBuilder: (context, imageProvider) => SizedBox(
                width: context.dynamicWidth(0.3),
                height: context.dynamicWidth(0.3),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              errorWidget: (context, url, error) => LoadingAnimationWidget.beat(
                  color: themeMainColor.backgroundColor, size: 50),
              placeholder: (context, url) => LoadingAnimationWidget.beat(
                  color: themeMainColor.backgroundColor, size: 50),
            ),
          ],
        ),
      );

  Widget get buildMinLogo => Flexible(
        fit: FlexFit.tight,
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "from",
                style: GoogleFonts.nunito(
                  textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black54,
                      ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CachedNetworkImage(
                    imageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/whatsappdb-331ab.appspot.com/o/icons8-meta-144.png?alt=media&token=96a44006-3250-4803-9651-a7ba9f427b33",
                    imageBuilder: (context, imageProvider) => SizedBox(
                      width: context.dynamicWidth(0.1),
                      height: context.dynamicWidth(0.1),
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
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Meta",
                    style: GoogleFonts.ubuntu(
                      textStyle:
                          Theme.of(context).textTheme.titleLarge!.copyWith(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
