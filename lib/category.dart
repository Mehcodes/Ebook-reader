import 'package:flutter/material.dart';

import 'color.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
              onTap: () {},
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    color: KFourthColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Recent booka',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: KPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
