import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SortFilter extends StatelessWidget {
  const SortFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    'All Featured',
                    style:  Styles.textStyle18,
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.sort),
                        label: const Text('Sort'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                           backgroundColor: Colors.grey[200],
                           elevation: 0,
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.filter_list),
                        label: const Text('Filter'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black, 
                          backgroundColor: Colors.grey[200], 
                          elevation: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
  }
}