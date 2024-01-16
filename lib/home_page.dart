import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.yellow],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Gray shadow color
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'My Wallet    ',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                Icon(Icons.arrow_upward,
                                    color: Colors.green[700]),
                                Text(
                                  ' Upgrade',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.filter_list, color: Colors.green[700]),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    const Row(
                      children: [
                        Text(
                          'Rs. 2000 ',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Icon(Icons.remove_red_eye_outlined, color: Colors.grey),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.refresh, color: Colors.grey[700]),
                        const SizedBox(width: 4.0),
                        Text(
                          'Updated 1 sec ago',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.add, size: 24),
                          label: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text('ADD MONEY'),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward, size: 24),
                          label: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text('SEND MONEY'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Column
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find Your Friend',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Sync your contacts to add them in your wallet',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20.0), // Add spacing between columns
                  // Right Column
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(
                      Icons.group,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // margin: const EdgeInsets.all(10.0),
              // padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(color: Colors.transparent),
              child: const Column(
                children: [
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.qr_code),
                          SizedBox(height: 5.0),
                          Text('Quick Pay'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.contact_emergency),
                          SizedBox(height: 5.0),
                          Text('Pay Contact'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.card_giftcard),
                          SizedBox(height: 5.0),
                          Text('Discover Merc'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.qr_code),
                          SizedBox(height: 5.0),
                          Text('Quick Pay'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.contact_emergency),
                          SizedBox(height: 5.0),
                          Text('Pay Contact'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.disc_full),
                          SizedBox(height: 5.0),
                          Text('Discover Merc'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.qr_code),
                          SizedBox(height: 5.0),
                          Text('Quick Pay'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.contact_emergency),
                          SizedBox(height: 5.0),
                          Text('Pay Contact'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.travel_explore),
                          SizedBox(height: 5.0),
                          Text('Discover Merc'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.qr_code),
                          SizedBox(height: 5.0),
                          Text('Quick Pay'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.contact_emergency),
                          SizedBox(height: 5.0),
                          Text('Pay Contact'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.person_2),
                          SizedBox(height: 5.0),
                          Text('Discover Merc'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
