import 'package:flutter/material.dart';
import 'package:msbm/data/app_data.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    final items = AppData.categories;
    return GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 1,
          mainAxisExtent: 100,
        ),
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final chipItem = items[index];
          return ChipWidget(
            text: chipItem,
          );
        });
  }
}

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterChip(
          label: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          shape: const StadiumBorder(side: BorderSide(color: Colors.white)),
          backgroundColor: Colors.black,
          // labelPadding: EdgeInsets.symmetric(horizontal: ),
          onSelected: (bool value) {},
        ),
      ],
    );
  }
}
