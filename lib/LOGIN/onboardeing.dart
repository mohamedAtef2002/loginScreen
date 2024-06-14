import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ONboarding extends StatefulWidget {
  const ONboarding({Key? key}) : super(key: key);

  @override
  State<ONboarding> createState() => _ONboardingState();
}

class _ONboardingState extends State<ONboarding> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(247, 247, 245, 1),
        padding: const EdgeInsets.only(bottom: 60),
        child: PageView(
          onPageChanged: (index){
            setState(() => isLastPage = index == 2);
          },
          controller: controller ,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/16.png"),height: 350,),
                      SizedBox(height: 30,),
                      Text("Manage Your Task",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/17.png"),height: 350,),
                      SizedBox(height: 20,),
                      Text("Work On Time",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/18.png"),height: 350,),
                      SizedBox(height: 20,),
                      Text("Get Reminder on Time",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: isLastPage
        ? TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
              primary: Colors.white,
          backgroundColor: Colors.blue.shade700,
          minimumSize: const Size.fromHeight(80)
        ),
          onPressed: () async{
          await Navigator.of(context).pushNamed('welcome');
          },
          child: const Text("Get Started",
            style: TextStyle(fontSize: 24),
          )
      )
      : Container(
        color: Colors.blue.shade700,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () => controller.jumpToPage(2),
                child: const Text("Skip",style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                ),)),
            Center(
              child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                effect: WormEffect(
                  spacing: 16,
                  dotColor: Colors.black12,
                  activeDotColor: Colors.white
                ),
                onDotClicked: (index) => controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                ),
              ),
            ),
            TextButton(
                onPressed: () => controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut),
                child: const Text("Next",style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )
            ),)
          ],
        ),

      ),
    );

  }
}
