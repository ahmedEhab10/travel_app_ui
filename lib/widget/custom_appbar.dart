import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  'Hi,Hobaa',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  IconData(
                    0xf02df,
                    fontFamily: 'MaterialIcons',
                  ),
                  color: Colors.yellow,
                )
              ],
            ),
            Text(
              'Explore the world',
              style:
                  TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.5)),
            ),
          ],
        ),
        SizedBox(
          height: 90,
          width: 90,
          child: CircleAvatar(
            radius: 48, // Image radius
            backgroundImage: AssetImage(
                'lib/assaits/WhatsApp Image 2024-09-30 at 18.20.06_feb1ba28.jpg'),
          ),
        ),
      ],
    );
  }
}
