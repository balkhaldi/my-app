import 'package:doctorapp/model/categories_data.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'category_item.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  AutoScrollController? _autoScrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _autoScrollController,
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(CATEGORIES.length, (index) {
        return AutoScrollTag(
          key: ValueKey(index),
          index: index,
          controller: _autoScrollController!,
          child: CategoryItem(
            onTap: () {
              onSelectCategory(index);
            },
            isActive: CATEGORIES[index]["isActive"],
            image: CATEGORIES[index]["image"],
            title: CATEGORIES[index]["title"],
          ),
        );
      })),
    );
  }

  onSelectCategory(index) {
    CATEGORIES.forEach((item) {
      item["isActive"] = false;
    });

    setState(() {
      CATEGORIES[index]["isActive"] = !CATEGORIES[index]["isActive"];
    });
    _autoScrollController!
        .scrollToIndex(index, preferPosition: AutoScrollPosition.middle);
  }

  init() {
    _autoScrollController = AutoScrollController(axis: Axis.horizontal);
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  void dispose() {
    _autoScrollController!.dispose();
    super.dispose();
  }
}
