import 'package:flutter/material.dart';
import 'package:travel_app_ui/widget/custom_appbar.dart';
import 'package:travel_app_ui/widget/custom_card.dart';
import 'package:travel_app_ui/widget/custom_category.dart';
import 'package:travel_app_ui/widget/custom_text_faild.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'Home Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30.0, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbar(),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFaild(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular Places',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomCategory(
                    category_text: 'Most Viwed',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomCategory(
                    category_text: 'Nearby',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomCategory(
                    category_text: 'Local',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 315,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomCard(
                    imageurl: 'lib/assaits/images.jpeg',
                    hotelName: 'Mounti',
                    capital: 'Roma',
                    contry: 'Italy',
                    rate: '4.3',
                  ),
                  CustomCard(
                    imageurl: 'lib/assaits/download.jpeg',
                    hotelName: 'mallorca ',
                    capital: 'Madrid',
                    contry: 'Spain',
                    rate: '4.0',
                  ),
                  CustomCard(
                    imageurl: 'lib/assaits/hotel.jpeg',
                    hotelName: 'Mounti',
                    capital: 'Roma',
                    contry: 'Italy',
                    rate: '4.3',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            BottomNavigationBar(elevation: 0, items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
            ])
          ],
        ),
      ),
    );
  }
}


/* BottomNavigationBar(items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.time_to_leave), label: "")
            ])*/