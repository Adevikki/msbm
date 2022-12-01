import 'package:flutter/material.dart';
import 'package:msbm/buttom_nav.dart';
import 'package:msbm/screens/dashboard.dart';

class GetStartedView extends StatelessWidget {
  static String routeName = '/getStarted';
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),
      backgroundColor: const Color(0xFF020C2F),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 340, horizontal: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'MSBM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                         const SizedBox(height: 30,),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, CustomBottomNavigation.routeName);
                            },
                            child: const Text(
                              'Log in',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
