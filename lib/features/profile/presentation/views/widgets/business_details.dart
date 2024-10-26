import 'package:ecommerce_learn_it/core/shared_widgets/dafault_text.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/title_profile.dart';
import 'package:flutter/material.dart';

class BusinessDetails extends StatelessWidget {
   BusinessDetails({super.key});
final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleProfile(title: 'Business Address Details',),
        defaultText(
                controller: _pincodeController,
                type: TextInputType.number,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your pincode';
                  }
                  return null;
                },
                label: "Pincode",
                prefix: Icons.pin,
              ),
              const SizedBox(height: 20,),
              defaultText(
                controller: _addressController,
                type: TextInputType.streetAddress,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
                label: "Address",
                prefix: Icons.home,
              ),
              const SizedBox(height: 20,),
              defaultText(
                controller: _cityController,
                type: TextInputType.text,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your city';
                  }
                  return null;
                },
                label: "City",
                prefix: Icons.location_city,
              ),
              const SizedBox(height: 20,),
              defaultText(
                controller: _stateController,
                type: TextInputType.text,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your state';
                  }
                  return null;
                },
                label: "State",
                prefix: Icons.map,
              ),
              const SizedBox(height: 20,),
              defaultText(
                controller: _countryController,
                type: TextInputType.text,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your country';
                  }
                  return null;
                },
                label: "Country",
                prefix: Icons.public,
              ),
              const SizedBox(height: 16.0),
      ],
    );
  }
}