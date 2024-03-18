import 'package:flutter/material.dart';

class VerificationPassword extends StatefulWidget {
  const VerificationPassword({super.key});

  @override
  State<VerificationPassword> createState() => _VerificationPasswordState();
}

class _VerificationPasswordState extends State<VerificationPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification Password'),
      ),
    );
  }
}
