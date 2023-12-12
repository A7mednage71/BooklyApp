import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ratewedget extends StatelessWidget {
  const Ratewedget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: TextStyles.textStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '(2390)',
          style: TextStyles.textStyle14
              .copyWith(color: Colors.white.withOpacity(0.5)),
        )
      ],
    );
  }
}
