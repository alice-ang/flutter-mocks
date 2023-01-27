import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';
import 'package:widgetbook/widgetbook.dart';

class CardItemStory extends StatelessWidget {
  const CardItemStory({super.key});

  @override
  Widget build(BuildContext context) {
    String title = context.knobs.text(label: 'Title', initialValue: 'Title');
    String subtitle =
        context.knobs.text(label: 'Subtitle', initialValue: 'subtitle');
    bool isFavorite =
        context.knobs.boolean(label: 'Favorite', initialValue: true);
    int discount =
        context.knobs.number(label: 'discount', initialValue: 70).toInt();

    return Center(
      child: GestureDetector(
        child: CompanyCard(
          title: title,
          subtitle: subtitle,
          isFavorite: isFavorite,
          discount: discount,
        ),
      ),
    );
  }
}
