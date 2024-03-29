import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/utils/utils.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';
import 'package:new_flutter_template/styles/styles.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopBar(
        leading: const StylizedBackButton(),
        title: "Test Company",
        trailing: IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext bc) {
                  return StylizedBottomSheet(
                    content: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      StylizedTextButton(
                        text: 'Text button',
                        onPressed: () {
                          print('Textbutton pressed');
                        },
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.more_horiz)),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            right: 32,
            left: 32,
            bottom: MediaQuery.of(context).size.height * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(args.title),
                Text(args.subtitle ?? ''),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImage(
                  data: "https://studenthem-dev.vercel.app/",
                  size: 260,
                ),
              ],
            ),
            Column(
              children: [
                const Padding(
                    padding: EdgeInsets.all(16),
                    child: IconBadge(icon: Icons.notifications)),
                Text(
                    'This is a single use code for your use only. Get a new code each time you shop with ${args.title}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
