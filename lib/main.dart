import 'package:flutter/material.dart';
import 'package:wallet/pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet',
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Circular'),
    ),
  );
}
