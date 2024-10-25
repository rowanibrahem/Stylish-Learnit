import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class DealOfTheDay extends StatelessWidget {
  const DealOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsApp.blueColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Expanded(
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deal of the Day',
                              style: Styles.textStyle16,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(
                                  Icons.access_time,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '22h 55m 20s remaining',
                                  style: Styles.textStyle12.copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                                               ),
                       ),
                       ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blueAccent,
                           backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Text('View all'),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_forward, size: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                );
  }
}