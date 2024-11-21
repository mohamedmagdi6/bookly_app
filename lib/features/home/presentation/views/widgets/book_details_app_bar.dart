import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewAppBar extends StatelessWidget {
  const BookDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FontAwesomeIcons.x,
                size: 28,
                color: Colors.white,
              )),
          const Icon(
            FontAwesomeIcons.cartShopping,
            size: 28,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
