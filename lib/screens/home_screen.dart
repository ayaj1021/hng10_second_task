import 'package:flutter/material.dart';
import 'package:mobile_cv_application/model/model.dart';
import 'package:mobile_cv_application/screens/edit_cv_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.cvDetailsNotifier});

  final ValueNotifier<CvDetails> cvDetailsNotifier;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => EditCvPage(
                        userInformationNotifier: cvDetailsNotifier,
                      )));
            },
            label: const Text('Edit CV')),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ValueListenableBuilder(
              valueListenable: cvDetailsNotifier,
              builder: (context, cvInfo, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        cvInfo.name,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Text(
                      cvInfo.bio,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: height * 0.017,
                    ),
                    Text(
                      'Slack name: ${cvInfo.slackName}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      'Github: ${cvInfo.gitLink}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                );
              }),
        ));
  }
}
