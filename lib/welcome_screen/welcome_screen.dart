import 'package:flutter/material.dart';
import 'package:ui_ecommerce_app/constant.dart';
import '../size_config.dart';
import '../widgets/default_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final List<Map<String, dynamic>> _data = [
    {
      "text": "Welcome to AP, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemCount: _data.length,
                    itemBuilder: (context, index) {
                      return Content(
                          text: _data[index]['text'],
                          image: _data[index]['image']);
                    }),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _data.length,
                        (index) => AnimatedContainer(
                          duration: kAnimationDuration,
                          margin: EdgeInsets.only(right: 5),
                          // alignment: Alignment.center,
                          height: 6,
                          width: _currentPage == index ? 20 : 6,
                          decoration: BoxDecoration(
                            color: _currentPage == index
                                ? kPrimaryColor
                                : const Color(0xFFD8D8D8),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(flex: 2),
                    DefaultButton(
                        width: double.infinity,
                        navigatorPushName: () {
                          Navigator.pushNamed(context, '/sign_in');
                        },
                        text: 'Continue'),
                    Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.text,
    required this.image,
  });
  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text('AP SHOP',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold)),
        Text(text!),
        Spacer(
          flex: 2,
        ),
        Image.asset(image!,
            width: getProportionateScreenWidth(235),
            height: getProportionateScreenHeight(265)),
      ],
    );
  }
}
