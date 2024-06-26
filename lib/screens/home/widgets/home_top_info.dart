import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeTopInfo extends StatelessWidget {
  const HomeTopInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amberAccent),
                ),
                const Icon(Iconsax.user)
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.outline),
                ),
                Text(
                  'John Doe',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Iconsax.setting_2),
          onPressed: () {},
        ),
      ],
    );
  }
}
