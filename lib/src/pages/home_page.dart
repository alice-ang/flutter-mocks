import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/utils/utils.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const TopBar(
        title: "Lokalkortet",
        hasBorder: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < 3; i++) ...[
                StylizedCard(
                  title: 'title',
                  subtitle: 'subtitle',
                  discount: 45,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      SampleItemDetailsView.routeName,
                      arguments: ScreenArguments(
                          'Company $i', "subtitle", "description"),
                    );
                  },
                ),
              ],
              StylizedListTile(),
            ],
          ),
        ),
      ),
    );
  }
}
