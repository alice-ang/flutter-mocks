import 'package:flutter/material.dart';

class DiscountBadge extends StatelessWidget {
  const DiscountBadge({required this.discount, super.key});

  final int discount;

  @override
  Widget build(BuildContext context) {
    Color? getBadgeColor(discount) {
      if (discount < 49) {
        return const Color(0xff7a5e7e);
      }
      if (discount > 49 && discount < 69) {
        return const Color(0xfffbd686);
      }
      return const Color(0xff75b39d);
    }

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: getBadgeColor(discount),
      ),
      child: Text(
        '$discount %',
        style: TextStyle(
            color: discount > 49 && discount < 69 ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
