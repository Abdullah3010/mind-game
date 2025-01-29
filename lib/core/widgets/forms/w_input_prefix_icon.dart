import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mind_game/core/extension/num_ext.dart';

class WInputPrefixIcon extends StatelessWidget {
  const WInputPrefixIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),
            child: SvgPicture.asset(
              icon,
            ),
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
            width: 1,
            indent: 14,
            endIndent: 14,
          ),
          10.widthBox,
        ],
      ),
    );
  }
}
