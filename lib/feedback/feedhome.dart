import 'package:feedbackpage/feedback/frequentlyasked.dart';
import 'package:feedbackpage/feedback/logo.dart';
import 'package:flutter/material.dart';

class FeedBackHome extends StatelessWidget {


  const FeedBackHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> questions=[
    'When will i get married?',
    'When will i get rich?',
    'which business is good for me?',
    ];
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0,bottom: 20,right: 15,left: 15),
          child: Column(
            children: [
              const Logo(),
              const SizedBox(height: 20,),
              FrequentQuestions(questions: questions,),
              const SizedBox(height: 20,),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFFCFCFF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text('Ask free to our supporter to support you',style: TextStyle(fontSize:14,fontWeight: FontWeight.w500 ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ElevatedButton(
                        onPressed: () {  },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: const Size(double.infinity, 36),
                        ),
                        child: const Center(
                            child: Text('Contact',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500,),)
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
