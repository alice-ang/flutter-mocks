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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 44, bottom: 32),
              child: SizedBox(
                height: 38,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        width: 100,
                        decoration: BoxDecoration(
                          color: index == 0
                              ? const Color(0xfffbd686)
                              : const Color(0xff77b39d),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(width: 2),
                        ),
                        child: Text(
                          '⭐️ Popular',
                          style: TextStyle(
                              color: index == 0 ? Colors.black : Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2,
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                mainAxisExtent: MediaQuery.of(context).size.width / 1.4,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return StylizedCard(
                    title: "Alice pannkakor ",
                    subtitle: 'Subtitle',
                    discount: (Random().nextInt(10 - 1) * 10),
                    extent: (index % 5 + 1) * 100,
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
          )
        ],
      ),
    );
  }
}
