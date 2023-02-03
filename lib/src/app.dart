import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:new_flutter_template/src/pages/pages.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

/// The Widget that configures your application.
class MyApp extends HookWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageIdx = useState(0);

    final pages = [
      HomePage(),
      TestPage(),
      HomePage(),
      TestPage(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('sv'), // Swedish
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //     iconTheme: IconThemeData(color: Colors.black),
      //     foregroundColor: Colors.black,
      //     systemOverlayStyle: SystemUiOverlayStyle(
      //       statusBarIconBrightness: Brightness.dark,
      //       statusBarBrightness: Brightness.light,
      //     ),
      //   ),
      //   textTheme: Theme.of(context).textTheme.apply(
      //         bodyColor: const Color(0xff0B0E1A),
      //       ),
      // ),
      home: Scaffold(
        body: pages[pageIdx.value],
        backgroundColor: const Color(0xfff7f9fb),
        extendBody: true,
        bottomNavigationBar: BottomBar(
          onTap: (index) {
            HapticFeedback.lightImpact();
            pageIdx.value = (index);
          },
        ),
      ),
    );
  }
}
