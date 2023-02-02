import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/utils/utils.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    super.key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)],
  });

  static const routeName = '/';

  final List<SampleItem> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        restorationId: 'sampleItemListView',
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CompanyCard(
              discount: 40,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  SampleItemDetailsView.routeName,
                  arguments: ScreenArguments(
                      'Company $index', "subtitle", "description"),
                );
              },
              title: 'Company $index',
              subtitle: 'subtitle'),
        ),
      ),
    );
  }
}
