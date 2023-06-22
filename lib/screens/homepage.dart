import 'package:flutter/material.dart';
import 'package:medicalappui/utils/category.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Column(
                  children: const [
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Testuser',
                      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                //  profile picture
                Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Icon(Icons.person)),
                const SizedBox(height: 25.0),
                //  greetings card
                Container(
                  child: Row(
                    children: [
                      //  picture
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          height: 100.0,
                          width: 100.0,
                          color: Colors.purple[400],
                        ),
                      ),
                      SizedBox(width: 25.0),
                      //  message
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'How do you feel?',
                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Fill your medical card.',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.purple[400],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: const Center(
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25.0),

          //  search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(color: Colors.deepPurple[100], borderRadius: BorderRadius.circular(12.0)),
              child: const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'How can we help you?',
                ),
              ),
            ),
          ),
          const SizedBox(height: 25.0),

          //  List view
          Container(
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                  CategoryName: 'Dentist',
                  // IconImagePath: ,
                ),
                CategoryCard(
                  CategoryName: 'Surgeon',
                  // IconImagePath: ,
                ),
                CategoryCard(
                  CategoryName: 'Psychiatrist',
                  // IconImagePath: ,
                ),
                CategoryCard(
                  CategoryName: 'Doctor',
                  // IconImagePath: '',
                ),
              ],
            ),
          ),
          const SizedBox(height: 25.0),
          //  doctor list
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Doctor List', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                Text(
                  'See all',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25.0),

          Container(
            child: Column(
              children: [
                // medic info.

                //  profile pic
                Image.asset('assets/', height: 40.0),
                //  rating
                Row(
                  children: [
                    Icon(Icons.star),
                    Text('4.5'),
                  ],
                ),
                //  medic name
                Text('Dr. Brenda Jones'),
                //  title
                Text('Therapist, 5 yr.e')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
