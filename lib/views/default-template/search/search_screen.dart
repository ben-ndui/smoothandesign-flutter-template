import 'package:flutter/material.dart';
import 'package:smoothTheme/widgets/smooth_app_bar.dart';
import 'package:smoothTheme/widgets/smooth_textField.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SmoothAppBar(context: context, title: 'Effectuer une recherche')
          .buildAppBar(),
      body: buildSearchBody(context),
    );
  }

  buildSearchBody(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SmoothTextField(
              label: "",
              hintText: "Chercher..",
              isPasswordField: false,
            ),
          ],
        ),
      ],
    );
  }
}
