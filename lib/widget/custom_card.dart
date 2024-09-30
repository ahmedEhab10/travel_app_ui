import 'package:flutter/material.dart';
import 'package:travel_app_ui/widget/custom_information_card.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.imageurl,
      required this.hotelName,
      required this.capital,
      required this.contry,
      required this.rate});
  final String imageurl, hotelName, capital, contry, rate;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 220,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 30,
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
              spreadRadius: 3,
              offset: Offset(40, 40))
        ],
      ),
      child: Stack(
        children: [
          Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageurl,
                  fit: BoxFit.cover,
                  height: 340,
                ),
              )),
          Positioned(
              top: 210,
              left: 20,
              child: CustomInformationCard(
                hotelName: hotelName,
                contry: contry,
                capital: capital,
                rate: rate,
              ))
        ],
      ),
    );
  }
}
