import 'package:flutter/material.dart';

class CustomInformationCard extends StatelessWidget {
  const CustomInformationCard(
      {super.key,
      required this.hotelName,
      required this.contry,
      required this.capital,
      required this.rate});
  final String hotelName, contry, capital, rate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '${hotelName}, ',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  capital,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.place,
                  color: Colors.white.withOpacity(0.4),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '${capital}, ',
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
                Text(
                  'Italy, ',
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white.withOpacity(0.5),
                  size: 20,
                ),
                Text(
                  rate,
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
