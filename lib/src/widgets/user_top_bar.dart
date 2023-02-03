import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';
import 'package:new_flutter_template/styles/styles.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserTopBar extends StatelessWidget implements PreferredSizeWidget {
  const UserTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 0,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: kToolbarHeight,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: CircleAvatar(
                          backgroundColor: Colors.amberAccent,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.face),
                        ),
                      ),
                      Text(
                        "Hello Alice!",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Icon(Icons.notifications_outlined),
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext bc) {
                              return StylizedBottomSheet(
                                content: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const SizedBox.shrink(),
                                            const Text(
                                              'My id',
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                'Done',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 8),
                                          child: Divider(
                                            thickness: 2,
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 200,
                                          decoration: Styles.stylizedBox,
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text('Card here'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      'Dagliga kupoger',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 16),
                                    height: 120,
                                    child: ListView.builder(
                                      restorationId: 'dailyOffers',
                                      physics: const ClampingScrollPhysics(),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 5,
                                      itemBuilder:
                                          (BuildContext context, int index) =>
                                              const Padding(
                                        padding: EdgeInsets.only(
                                          right: 16,
                                        ),
                                        child: StylizedListTile(),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.qr_code),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0.0, kToolbarHeight - 32),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchBar(),
            ),
          ),
        ],
      ),
    );
    ;
  }

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight + 64);
}
