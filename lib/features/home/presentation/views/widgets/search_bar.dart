import 'package:flutter/material.dart';

class SearchBarPart extends StatelessWidget {
  const SearchBarPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  
                ),
                child: const TextField(
                  decoration:  InputDecoration(
                    hintText: 'Search any Product...',
                    prefixIcon:  Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding:  EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
            );
  }
}