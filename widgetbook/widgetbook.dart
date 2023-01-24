import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/profile_header.dart';
import 'package:widgetbook/widgetbook.dart';

import 'widgets/widgets.dart';

class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      supportedLocales: [
        const Locale('en'),
        const Locale('sv'),
      ],
      devices: [
        Apple.iPhone12ProMax,
        Apple.iPhone13Mini,
        Apple.iPhone11ProMax,
        Apple.iPhone11,
      ],
      appInfo: AppInfo(name: 'Studenthem'),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        )
      ],
      categories: [
        WidgetbookCategory(
          name: "Widgets",
          widgets: [
            WidgetbookComponent(
              name: "Profile header",
              useCases: [
                WidgetbookUseCase(
                    builder: (context) => const ProfileHeader(),
                    name: 'Profile header')
              ],
            ),
            WidgetbookComponent(
              name: "Bottom Navigation",
              useCases: [
                WidgetbookUseCase(
                    builder: (context) => const BottomBarStory(),
                    name: 'Bottom Bar')
              ],
            ),
            WidgetbookComponent(
              name: "Cards",
              useCases: [
                WidgetbookUseCase(
                    builder: (context) => const CardItemStory(),
                    name: 'Card Item')
              ],
            )
          ],
        ),
        WidgetbookCategory(
          name: "Pages",
          widgets: [],
        )
      ],
    );
  }
}
