// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mboawaste/config/palette.dart';
import 'package:mboawaste/config/styles.dart';
import 'package:mboawaste/models/models.dart';
import 'package:mboawaste/screens/mboabin_view.dart';

class CouncilBox extends StatelessWidget {
  final Council council;
  const CouncilBox({Key? key, required this.council}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MboaBinView()));
      },
      child: Card(
        color: Palette.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Container(
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: Palette.ligth,
            borderRadius:
                const BorderRadius.only(topRight: Radius.elliptical(380, 50)),
          ),
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(Iconsax.activity),
              ),
              Text(council.name, style: Styles.header),
            ],
          ),
        ),
      ),
    );
  }
}
