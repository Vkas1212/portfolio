import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home_page.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 900;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF101A33), Color(0xFF0C1226)],
        ),
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
          opacity: 0.05,
        ),
      ),
      child: Flex(
        direction: isWide ? Axis.horizontal : Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                  'FRONTEND\nDEVELOPER',
                  style: const TextStyle(
                    fontSize: 42,
                    height: 1.05,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF7C4DFF), Color(0xFF00E5FF)],
                  ),
                ),
                const SizedBox(height: 14),
                Wrap(
                  spacing: 12,
                  runSpacing: 8,
                  children: [
                    FilledButton.tonal(
                      onPressed: () => (),
                      child: const Text('View My Work'),
                    ),
                    OutlinedButton(
                      onPressed: () => (),
                      child: const Text('Contact Me'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24, width: 24),
          Expanded(
            flex: 1,
            child: Align(
              alignment: isWide ? Alignment.centerRight : Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/image.png',
                  height: 220,
                  width: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
