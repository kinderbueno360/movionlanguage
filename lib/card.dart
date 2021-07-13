import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  final String cardImage;

  LanguageCard(this.cardImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Image(
        image: AssetImage(cardImage + '.jpg'),
        width: 400,
      ),
    );
  }
}
