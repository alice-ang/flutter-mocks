import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:new_flutter_template/src/utils/utils.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const UserTopBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 2,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: MediaQuery.of(context).size.width / 1.5,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              return StylizedCard(
                title: "Alice pannkakor",
                subtitle: 'subtitle',
                discount: (Random().nextInt(10 - 1) * 10),
                extent: (index % 5 + 1) * 100,
              );
            }),

        // MasonryGridView.count(
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 8,
        //   crossAxisSpacing: 8,
        //   itemBuilder: (context, index) {
        //     // return ImageTile(
        //     //   discount: (Random().nextInt(10 - 1) * 10),
        //     //   index: index,
        //     //   width: 500,
        //     //   height: (index % 5 + 1) * 100,
        //     //   onTap: () {
        //     //     Navigator.pushNamed(
        //     //       context,
        //     //       SampleItemDetailsView.routeName,
        //     //       arguments: ScreenArguments(
        //     //           'Company $index', "subtitle", "description"),
        //     //     );
        //     //   },
        //     // );
        //     return StylizedCard(
        //       title: "Title",
        //       subtitle: 'subtitle',
        //       discount: (Random().nextInt(10 - 1) * 10),
        //       extent: (index % 5 + 1) * 100,
        //     );
        //   },
        // ),
      ),
    );
  }
}
