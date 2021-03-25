import 'package:flutter/material.dart';
import 'package:wallet/constants/colors.dart';
import 'package:wallet/widgets/card_section.dart';
import 'package:wallet/widgets/wallet_header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Container(
            height: 120.0,
            child: WalletHeader(),
          ),
          Container(
            height: 330.0,
            child: CardSection(),
          ),
        ],
      ),
      backgroundColor: AppColors.primaryWhite,
    );
  }
}
