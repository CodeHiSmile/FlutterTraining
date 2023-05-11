import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_training/commons/app_colors.dart';
import 'package:flutter_training/commons/app_images.dart';
import 'package:flutter_training/commons/app_vectors.dart';

class MovieHomeScreen extends StatefulWidget {
  const MovieHomeScreen({Key? key}) : super(key: key);

  @override
  State<MovieHomeScreen> createState() => _MovieHomeScreenState();
}

class _MovieHomeScreenState extends State<MovieHomeScreen> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(
      viewportFraction: 0.8,
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.sanJuan,
              AppColors.eastBay,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 64,
                  vertical: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Hello, ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Jane!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      AppVectors.icNotification,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                padding: const EdgeInsets.symmetric(
                  horizontal: 0,
                ),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      AppColors.scampi.withOpacity(0.3),
                      AppColors.aquamarineBlue.withOpacity(0.3),
                    ],
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                      ),
                      child: SvgPicture.asset(
                        AppVectors.icSearch,
                        height: 22,
                        width: 22,
                      ),
                    ),
                    // suffix: Row(),
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 24, 50, 16),
                child: Text(
                  "Most popular",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 141,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}