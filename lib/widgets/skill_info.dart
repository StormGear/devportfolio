import 'package:flutter/material.dart';
import 'package:portfolio/models/skill_model.dart';

class SkillTag extends StatelessWidget {
  const SkillTag({
    super.key,
    required this.textTheme,
    // required this.userData,
  });

  final TextTheme textTheme;
  // final SkillModel userData;

  @override
  Widget build(BuildContext context) {
    final List<SkillModel> list = [
      SkillModel(
          icon: const Icon(
            Icons.phone,
            size: 40.0,
          ),
          skillname: "Python"),
    ];

    return SizedBox(
      height: 150.0,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 20.0, bottom: 10.0),
          child: GestureDetector(
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                borderRadius: BorderRadius.circular(10),
                // color: tCardBgColor
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    list[index].icon,
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(list[index].skillname)
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
