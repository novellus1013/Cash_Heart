import 'package:cash_heart/common/widgets/custom_bottom_appbar.dart';
import 'package:cash_heart/common/widgets/editing_floating_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const EditingFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: const Text('홈'),
      ),
      bottomNavigationBar: const CustomBottomAppbar(),
      body: const Center(
        child: Text('home'),
      ),
    );
  }
}
