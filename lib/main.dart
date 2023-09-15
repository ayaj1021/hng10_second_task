import 'package:flutter/material.dart';
import 'package:mobile_cv_application/model/model.dart';
import 'screens/home_screen.dart';

void main() {
  final cvInformation = CvDetails(
    name: 'Ayodele Ajayi E.',
    slackName: 'Ayodele_Ajayi',
    gitLink: 'github.com/ayaj1021',
    bio:
        'Flutter Developer with a strong love for designing stylish and functional mobile applications. I am committed to developing efficient and user-friendly applications and am proficient in the Dart programming language and the Flutter framework.',
  );

  final cvDetailsNotifier = ValueNotifier<CvDetails>(cvInformation);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        cvDetailsNotifier: cvDetailsNotifier,
      ),
    ),
  );
}
