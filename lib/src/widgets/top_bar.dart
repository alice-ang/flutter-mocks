import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({
    this.actions,
    this.leading,
    this.title,
    this.trailing,
    this.hasBorder = false,
    super.key,
  });

  final List<Widget>? actions;
  final Widget? leading;
  final Widget? trailing;
  final bool hasBorder;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
              width: 2,
              style: hasBorder ? BorderStyle.solid : BorderStyle.none),
        )),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: leading == null && trailing == null
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceBetween,
            children: [
              if (leading != null) ...[leading!],
              if (title != null) ...[
                Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              ...actions ?? [],
              if (trailing != null) ...[trailing!],
            ],
          ),
        ),
      ),
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight + 32);
}
