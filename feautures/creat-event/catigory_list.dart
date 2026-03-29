import 'package:flutter/material.dart';
import 'package:responsive/Feautured/creat_event/Widgets/service_card.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key, required this.onCategorySelected, required this.selectedCategoryIndex, required this.categories}) : super(key: key);
  final Function(int) onCategorySelected;
    final int selectedCategoryIndex;
    final List<String>categories ;

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex==index;
widget. onCategorySelected(index);          
   ; });
            },
            child: ServiceCard(imagePath: 'lib/images/barbeque.jpg', albumTitle: widget. categories[index],)
          );
        },
    
    );
  }
}