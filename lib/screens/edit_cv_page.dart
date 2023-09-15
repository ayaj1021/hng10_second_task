import 'package:flutter/material.dart';
import 'package:mobile_cv_application/model/model.dart';

class EditCvPage extends StatefulWidget {
  const EditCvPage({super.key, required this.userInformationNotifier});
  final ValueNotifier<CvDetails> userInformationNotifier;

  @override
  State<EditCvPage> createState() => _EditCvPageState();
}

class _EditCvPageState extends State<EditCvPage> {
  late TextEditingController nameController;
  late TextEditingController slackNameController;
  late TextEditingController gitController;
  late TextEditingController bioController;

  @override
  void initState() {
    super.initState();
    nameController =
        TextEditingController(text: widget.userInformationNotifier.value.name);
    slackNameController = TextEditingController(
        text: widget.userInformationNotifier.value.slackName);
    gitController = TextEditingController(
        text: widget.userInformationNotifier.value.gitLink);
    bioController =
        TextEditingController(text: widget.userInformationNotifier.value.bio);
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    gitController.dispose();
    bioController.dispose();
    slackNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            final updateCvInformation = CvDetails(
                name: nameController.text,
                slackName: slackNameController.text,
                gitLink: gitController.text,
                bio: bioController.text);
            widget.userInformationNotifier.value = updateCvInformation;
            print(widget.userInformationNotifier.value);
            Navigator.of(context).pop();
          },
          label: const Text('Save')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 10,
                  controller: bioController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextField(
                controller: gitController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
