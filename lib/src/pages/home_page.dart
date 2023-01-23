import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Recommended stores',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: SampleItemListView(),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Demo Headline 2',
                    style: TextStyle(fontSize: 18),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle: const Text(
                            'this is a description of the motivation')),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle: const Text(
                            'this is a description of the motivation')),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle: const Text(
                            'this is a description of the motivation')),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle: const Text(
                            'this is a description of the motivation')),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle: const Text(
                            'this is a description of the motivation')),
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
