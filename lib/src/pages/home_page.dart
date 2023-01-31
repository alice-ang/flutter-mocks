import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/utils/utils.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(
        title: "Lokalkortet",
        hasBorder: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 2 + 64),
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: List.generate(
            10,
            (index) {
              return StylizedCard(
                discount: 45,
                title: 'Jennys Gelato',
                subtitle: 'Café',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    SampleItemDetailsView.routeName,
                    arguments: ScreenArguments(
                        'Company $index', "subtitle", "description"),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
