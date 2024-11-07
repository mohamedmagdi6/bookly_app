import 'package:bookly_app/core/resources/font_manager.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_details_button.dart';
import 'package:flutter/material.dart';

class DetailsButtonSection extends StatelessWidget {
  const DetailsButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomActionButton(
              buttonText: '19.99 ',
              backgrounColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              fontSiz: FontSize.s24),
        ),
        Expanded(
          child: CustomActionButton(
              buttonText: 'Free preview',
              backgrounColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              fontSiz: FontSize.s16),
        )
      ],
    );
  }
}
