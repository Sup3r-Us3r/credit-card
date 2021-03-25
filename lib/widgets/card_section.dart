import 'package:flutter/material.dart';
import 'package:wallet/constants/colors.dart';
import 'package:wallet/widgets/card_details.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Card Selected',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 40.0,
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  boxShadow: AppColors.neumorphShadow,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 150.0,
                      bottom: -200.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          boxShadow: AppColors.neumorphShadow,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: -100.0,
                      left: -300.0,
                      bottom: -100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          boxShadow: AppColors.neumorphShadow,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    CardDetails(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
