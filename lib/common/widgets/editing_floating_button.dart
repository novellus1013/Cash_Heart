import 'package:cash_heart/features/transactions/editing_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditingFloatingButton extends StatelessWidget {
  const EditingFloatingButton({super.key});

  void _onPressed(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const EditingScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _onPressed(context),
      foregroundColor: Colors.white,
      backgroundColor: Theme.of(context).primaryColor,
      focusColor: Theme.of(context).colorScheme.primary.withOpacity(0.7),
      tooltip: '글쓰기',
      child: const FaIcon(
        FontAwesomeIcons.penToSquare,
      ),
    );
  }
}
