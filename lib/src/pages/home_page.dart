import 'dart:math';
import 'package:flutter/material.dart';
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
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: index == 0
                              ? const Color(0xfffbd686)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1),
                        ),
                        child: Text(
                          index == 0 ? '⭐️ Popular' : '🍴 Tag',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2,
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                mainAxisExtent: 200,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return StylizedCard(
                    title: "Company $index",
                    subtitle: 'Subtitle',
                    discount: (Random().nextInt(10 - 1) * 10),
                    extent: (index % 5 + 1) * 100,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SampleItemDetailsView(),
                        ),
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
