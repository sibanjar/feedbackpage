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
      backgroundColor: const Color(0xFFFCFCFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0,bottom: 20,right: 15,left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Logo(),
              FrequentQuestions(questions: questions,),
              Container(
                height: 108,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,style: BorderStyle.solid,color: Color(0xFFF0F1F3)),
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
                          primary: Color(0xFF00658e),
                          minimumSize: const Size(double.infinity, 36),
                        ),
                        child: const Center(
                            child: Text('Contact',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500,),)
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
