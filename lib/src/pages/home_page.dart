import 'package:flutter/material.dart';
import 'package:new_flutter_template/widgets/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        title: Text(AppLocalizations.of(context)!.sampleItemListViewTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
            },
          ),
        ],
      ),
      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SampleItemListView(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Demo Headline 2',
                    style: TextStyle(fontSize: 18),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle:
                            Text('this is a description of the motivation')),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle:
                            Text('this is a description of the motivation')),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle:
                            Text('this is a description of the motivation')),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle:
                            Text('this is a description of the motivation')),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle:
                            Text('this is a description of the motivation')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
