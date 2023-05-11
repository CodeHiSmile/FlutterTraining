import 'package:flutter/material.dart';
import 'package:flutter_training/commons/app_images.dart';

class LoginFilmScreen extends StatefulWidget {
  const LoginFilmScreen({Key? key}) : super(key: key);

  @override
  State<LoginFilmScreen> createState() => _LoginFilmScreenState();
}

class _LoginFilmScreenState extends State<LoginFilmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    AppImages.imgAvenger,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      margin: const EdgeInsets.only(left: 16),
                      padding: const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: Center(
              child: Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
