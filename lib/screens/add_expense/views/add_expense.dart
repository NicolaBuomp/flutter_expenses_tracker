import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Add Expenses',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Iconsax.dollar_circle,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(),
              const SizedBox(
                height: 16,
              ),
              TextFormField(),
              const SizedBox(
                height: 16,
              ),
              TextButton(onPressed: () {}, child: const Text('Save'))
            ],
          ),
        ),
      ),
    );
  }
}
