import 'package:flutter/material.dart';

class SettingItemContainer extends StatelessWidget {
  const SettingItemContainer(
      {required this.title,
      required this.icon,
      required this.child,
      super.key});

  final String title;
  final IconData icon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Icon(
                icon,
                size: 20,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: child,
          ),
        ],
      ),
    );
  }
}
