import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_flutter_template/src/utils/utils.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        iconTheme: IconThemeData(
          color: Colors.grey.withOpacity(0.7),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
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
                  child: Icon(
                    Icons.announcement_outlined,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
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
