import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home_page.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = const [
      {'icon': 'assets/flutter_icon.png', 'name': 'Flutter'},
      {'icon': 'assets/html_icon.webp', 'name': 'HTML'},
      {'icon': 'assets/css_icon.jpeg', 'name': 'CSS'},
      {'icon': 'assets/git_icon.webp', 'name': 'Git'},
      {'icon': 'assets/figma_icon.png', 'name': 'Figma'},
    ];

    return Section(
      title: 'SKILLS',
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 2.0),
              child: Text(
                'The skills, tools and techniques I use:',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              runSpacing: 16,
              children: skills.map((skill) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.asset(skill['icon']!, fit: BoxFit.contain),
                    ),
                    const SizedBox(height: 4),
                    Text(skill['name']!, style: const TextStyle(fontSize: 12)),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
