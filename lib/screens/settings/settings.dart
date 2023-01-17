import 'package:flutter/material.dart';

// pub dev
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kartal/kartal.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:whatsapp/screens/settings/profile/profile.dart';

// routers page
import 'package:whatsapp/theme/theme.dart';

// ignore: camel_case_types
class settingsScreen extends StatefulWidget {
  const settingsScreen({super.key});

  @override
  State<settingsScreen> createState() => _settingsScreenState();
}

// ignore: camel_case_types
class _settingsScreenState extends State<settingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeMainColor.backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 23,
          ),
        ),
        title: const Text("Ayarlar"),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          // profile min content
          ListTile(
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const profileScreen(),
                  ),
                );
              },
              child: CachedNetworkImage(
                imageUrl:
                    "https://firebasestorage.googleapis.com/v0/b/whatsappdb-331ab.appspot.com/o/ben.jpg?alt=media&token=e6725600-a022-4bf2-b0d0-5049ad3b58a9",
                imageBuilder: (context, imageProvider) => ClipOval(
                  child: SizedBox(
                    width: context.dynamicWidth(0.15),
                    height: context.dynamicHeight(0.10),
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
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const profileScreen(),
                  ),
                );
              },
              child: Text(
                "Nuhcan ATAR",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
            subtitle: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const profileScreen(),
                  ),
                );
              },
              child: Text(
                "nuhcanatar.dev ~",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black54,
                    ),
              ),
            ),
            trailing: Icon(
              Icons.qr_code,
              color: themeMainColor.backgroundColor,
              size: 23,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 1,
            child: Container(color: Colors.grey.withOpacity(0.2)),
          ),
          const SizedBox(
            height: 35,
          ),
          // menu list content
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              children: <Widget>[
                // account setting
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: context.dynamicHeight(0.1),
                  child: ListTile(
                    leading: SizedBox(
                      width: context.dynamicWidth(0.15),
                      height: context.dynamicHeight(0.10),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.key,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    title: Text(
                      "Hesap",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      "Güvenlik Bildirimleri, numara değiştirme",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                  ),
                ),
                // avatar setting
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: context.dynamicHeight(0.1),
                  child: ListTile(
                    leading: SizedBox(
                      width: context.dynamicWidth(0.15),
                      height: context.dynamicHeight(0.10),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.emoji_emotions,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    title: Text(
                      "Avatar",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      "Oluşturma,düzenleme,profil fotoğrafı",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                  ),
                ),
                // personal setting
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: context.dynamicHeight(0.1),
                  child: ListTile(
                    leading: SizedBox(
                      width: context.dynamicWidth(0.15),
                      height: context.dynamicHeight(0.10),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.lock,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    title: Text(
                      "Gizlilik",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      "Kişileri engellemek,süreli mesajlar",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                  ),
                ),
                // chatting setting
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: context.dynamicHeight(0.1),
                  child: ListTile(
                    leading: SizedBox(
                      width: context.dynamicWidth(0.15),
                      height: context.dynamicHeight(0.10),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.message,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    title: Text(
                      "Sohbetler",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      "Tema duvar kağıtları, sohbet geçmişi",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                  ),
                ),
                // nofications setting
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: context.dynamicHeight(0.1),
                  child: ListTile(
                    leading: SizedBox(
                      width: context.dynamicWidth(0.15),
                      height: context.dynamicHeight(0.10),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    title: Text(
                      "Bildirimler",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      "Mesaj,grup ve arama sesleri",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                  ),
                ),
                // data storage setting
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: context.dynamicHeight(0.1),
                  child: ListTile(
                    leading: SizedBox(
                      width: context.dynamicWidth(0.15),
                      height: context.dynamicHeight(0.10),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.storage,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    title: Text(
                      "Depolama ve veriler",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      "Ağ kullanımı, otomatik indirme",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                  ),
                ),
                // application langue setting
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: context.dynamicHeight(0.1),
                  child: ListTile(
                    leading: SizedBox(
                      width: context.dynamicWidth(0.15),
                      height: context.dynamicHeight(0.10),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.language,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    title: Text(
                      "Uygulama dili",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      "Türkçe (telefon dili)",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                  ),
                ),
                // help setting
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: context.dynamicHeight(0.1),
                  child: ListTile(
                    leading: SizedBox(
                      width: context.dynamicWidth(0.15),
                      height: context.dynamicHeight(0.10),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.help_outline,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    title: Text(
                      "Yardım",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      "Yardım merkezi,bize ulaşın,gizlilik ilkesi",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                  ),
                ),
                // friend add setting
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: context.dynamicHeight(0.1),
                  child: ListTile(
                    leading: SizedBox(
                      width: context.dynamicWidth(0.15),
                      height: context.dynamicHeight(0.10),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.group,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    title: Text(
                      "Arkadaş davet edin",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                SizedBox(
                  width: context.dynamicWidth(0.2),
                  height: context.dynamicHeight(0.1),
                  child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/whatsappdb-331ab.appspot.com/o/Meta-Logo.png?alt=media&token=ac4d2f6a-c27b-42d8-838e-c779bc14e43b"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
