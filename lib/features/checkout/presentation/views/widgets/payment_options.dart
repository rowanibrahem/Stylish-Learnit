import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Payment', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            _buildPaymentOption(AssetImages.visa, '****2109', true),
            const SizedBox(height: 12),
            _buildPaymentOption(AssetImages.payPal, '****2109', false),
            const SizedBox(height: 12),
            _buildPaymentOption(AssetImages.master, '****2109', false),
            const SizedBox(height: 12),
            _buildPaymentOption(AssetImages.apple, '****2109', false),
      ],
    );
  }
}
Widget _buildPaymentOption(String assetPath, String cardNumber, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? Colors.red : Colors.grey.shade300,
          width: 1.5,
        ),
        color: isSelected ? Colors.red.withOpacity(0.1) : Colors.grey.shade200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(assetPath, height: 24),
              const SizedBox(width: 12),
              Text(
                cardNumber,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          if (isSelected)
            const Icon(Icons.check_circle, color: Colors.red),
        ],
      ),
    );
  }
