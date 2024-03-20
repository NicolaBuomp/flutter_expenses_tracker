import 'package:flutter/material.dart';
import 'package:expenses_tracker/data/data.dart';
import 'package:expenses_tracker/screens/home/widgets/home_card.dart';
import 'package:expenses_tracker/screens/home/widgets/home_top_info.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            TopSection(),
            const SizedBox(height: 20),
            TransactionList(),
          ],
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeTopInfo(),
        const SizedBox(height: 20),
        HomeCard(),
      ],
    );
  }
}

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: myMainScreenData.length,
        itemBuilder: (context, index) {
          return TransactionItem(index: index);
        },
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLeftContent(context),
              _buildRightContent(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeftContent(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: myMainScreenData[index]['color'],
                shape: BoxShape.circle,
              ),
            ),
            myMainScreenData[index]['icon'],
          ],
        ),
        const SizedBox(width: 12),
        Text(
          myMainScreenData[index]['name'] ?? '',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ],
    );
  }

  Widget _buildRightContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '${myMainScreenData[index]['totalAmount']}',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        Text(
          myMainScreenData[index]['date'] ?? '',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
      ],
    );
  }
}
