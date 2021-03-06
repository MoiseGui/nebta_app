import 'package:flutter/material.dart';
import 'package:project_app/DISEASES/PotatoLateBlight.dart';
import 'package:project_app/DISEASES/TomatoEarlyBlight.dart';
import 'package:project_app/DISEASES/TomatoLateBlight.dart';
import 'package:project_app/DISEASES/deseaseDetails.dart';

import 'DISEASES/AppleScab.dart';
import 'DISEASES/CornCommonRust.dart';
import 'DISEASES/GrapeBlackRot.dart';
import 'DISEASES/PotatoEarlyBlight.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class DiseaseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeseaseDetail(title: "Potato Early Blight",)),
                );
              },
              child: diseases('assets/16.jpg', AppLocalizations.of(context).trending, 'Potato Early Blight')
            // Photo from https://unsplash.com/photos/561igiTyvSk
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  // MaterialPageRoute(builder: (context) => PotatoLateBlight()),
                  MaterialPageRoute(builder: (context) => DeseaseDetail(title: "Potato Late Blight",)),
                );
              },
              child: diseases('assets/21.jpg', AppLocalizations.of(context).trending, 'Potato Late Blight')
            // Photo from https://unsplash.com/photos/561igiTyvSk
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                // MaterialPageRoute(builder: (context) => TomatoEarlyBlight()),
                MaterialPageRoute(builder: (context) => DeseaseDetail(title: "Tomato Early Blight",)),
              );
            },
            child: diseases('assets/33.jpg', AppLocalizations.of(context).trending, 'Tomato Early Blight'),
            // Photo from https://unsplash.com/photos/wHUFmZRMpLc
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                // MaterialPageRoute(builder: (context) => TomatoLateBlight()),
                MaterialPageRoute(builder: (context) => DeseaseDetail(title: "Tomato Late Blight",)),
              );
            },
            child: diseases('assets/34.jpg', AppLocalizations.of(context).trending, 'Tomato Late Blight'),
            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
          ),




        ],
      ),
    );
  }

  Widget diseases(
      String imageurl,
      String tag,
      String name,
      ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: <Widget>[
              Image.asset(
                imageurl,
                height: 330,
                width: 230,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 16,
                left: 140,
                child: Container(
                    height: 25.0,
                    width: 80.00,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: Color(0xff0F0F0F),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff0F0F0F).withOpacity(0.3),
                          )
                        ]),
                    child: Center(
                      child: Text(
                        tag,
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            name,
            style: TextStyle(fontFamily: 'ConcertOne-Regular'),
          ),
        ),


      ],
    );
  }


}
