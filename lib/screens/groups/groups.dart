import 'package:flutter/material.dart';

// pub dev
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kartal/kartal.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: camel_case_types
class groupsMain extends StatefulWidget {
  const groupsMain({super.key});

  @override
  State<groupsMain> createState() => _groupsMainState();
}

// ignore: camel_case_types
class _groupsMainState extends State<groupsMain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          _buildimg,
          _buildText,
          _buildBtn,
        ],
      ),
    );
  }

  Widget get _buildimg => CachedNetworkImage(
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/whatsappdb-331ab.appspot.com/o/resim_2023-01-16_173057572.png?alt=media&token=4c4ff05d-6fae-4044-9f4f-89387133fa3a",
        imageBuilder: (context, imageProvider) => SizedBox(
          width: context.dynamicWidth(0.55),
          height: context.dynamicHeight(0.3),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: imageProvider,
            )),
          ),
        ),
      );

  Widget get _buildText => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Topluluklarla ile tanışın",
              style: GoogleFonts.nunito(
                textStyle: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "İlgili Gruplarınızı kolayca düzenleyin ve duyurular gönderin. Artık Mahallaler veya okullar gibi topluluklarınızın kendilerine ait bir alanı olabilecek.",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black54,
                    ),
              ),
            ),
          ),
        ],
      );

  Widget get _buildBtn => GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: context.dynamicHeight(0.1),
          child: Container(
            alignment: Alignment.center,
            margin:
                const EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
            decoration: BoxDecoration(
              color: HexColor("#01816A"),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Text(
              "Topluluğunuzu oluşturun",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      );
}
