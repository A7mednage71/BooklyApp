import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ratewedget extends StatelessWidget {
  const Ratewedget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rate,
    required this.count,
  });

  final MainAxisAlignment mainAxisAlignment;
  final int rate;
  final int count;
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
        Text(
          '$rate',
          style: TextStyles.textStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '($count)',
          style: TextStyles.textStyle14
              .copyWith(color: Colors.white.withOpacity(0.5)),
        )
      ],
    );
  }
}
