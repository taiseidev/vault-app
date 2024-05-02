import 'dart:math' as math;

import 'package:flutter/material.dart';

class MediaPage extends StatelessWidget {
  const MediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 8),
                SlidingCardsView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SlidingCardsView extends StatefulWidget {
  const SlidingCardsView({super.key});

  @override
  State<SlidingCardsView> createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView.builder(
        clipBehavior: Clip.none,
        controller: pageController,
        itemCount: demoCardData.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: pageController,
            builder: (context, child) {
              var pageOffset = 0.0;

              if (pageController.position.haveDimensions) {
                pageOffset = pageController.page! - index;
              }

              final gauss =
                  math.exp(-math.pow(pageOffset.abs() - 0.5, 2) / 0.08);

              return Transform.translate(
                offset: Offset(-32 * gauss * pageOffset.sign, 0),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(8, 20),
                        blurRadius: 24,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      // Image
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(32),
                        ),
                        child: Image.asset(
                          'assets/${demoCardData[index].image}',
                          height: MediaQuery.of(context).size.height * 0.3,
                          fit: BoxFit.none,
                          alignment: Alignment(pageOffset, 0),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CardModel {
  CardModel({required this.name, required this.image, required this.date});
  final String name;
  final String image;
  final String date;
}

List<CardModel> demoCardData = [
  CardModel(
    name: 'Shenzhen GLOBAL DESIGN AWARD 2018',
    image: 'steve-johnson.jpeg',
    date: '4.20-30',
  ),
  CardModel(
    name: 'Dawan District, Guangdong Hong Kong and Macao',
    image: 'rodion-kutsaev.jpeg',
    date: '4.28-31',
  ),
  CardModel(
    name: 'Dawan District, Guangdong Hong Kong and Macao',
    image: 'rodion-kutsaev.jpeg',
    date: '4.28-31',
  ),
  CardModel(
    name: 'Dawan District, Guangdong Hong Kong and Macao',
    image: 'rodion-kutsaev.jpeg',
    date: '4.28-31',
  ),
  CardModel(
    name: 'Dawan District, Guangdong Hong Kong and Macao',
    image: 'rodion-kutsaev.jpeg',
    date: '4.28-31',
  ),
  CardModel(
    name: 'Dawan District, Guangdong Hong Kong and Macao',
    image: 'rodion-kutsaev.jpeg',
    date: '4.28-31',
  ),
];
