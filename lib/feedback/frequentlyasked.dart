import 'package:flutter/material.dart';

class FrequentQuestions extends StatelessWidget {
  // take list of questions string
  final List<String> questions;
   const FrequentQuestions({super.key,required this.questions});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10.0,left: 5,top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFf0f1f3),
      ),
      child: Column(
        children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               const Text('Frequently Asked Questions',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
               TextButton(
                   onPressed: () {
                     print(1);
                   },
                   child: const Text('view all',style: TextStyle(fontSize: 12,color: Color(0xFF6B7376))))
             ],
           ),
          Questions(question: questions)
        ],
      ),
    );
  }
}

class Questions extends StatelessWidget {
  final List<String> question;
  const Questions( {super.key, required this.question });

  @override
  Widget build(BuildContext context) {

    // return ListTile(
    //   // shape:  Border.all(width: 1,color: const Color(0xFF000000)),
    //   shape: const Border(
    //    bottom: BorderSide(
    //      style: BorderStyle.solid,
    //      width: 1,
    //      color: Colors.black,
    //    )
    //   ),
    //   contentPadding:EdgeInsets.all(-15),
    //    title: Text(question,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
    // );
    // return Container(
    //   height: 35,
    //   padding: EdgeInsets.all(10),
    //   decoration: BoxDecoration(
    //     border: Border.all(width: 0.1,color:Colors.black),
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Text('question',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
    //       const Icon(Icons.arrow_forward_ios,size: 14,),
    //     ],
    //   ),
    // );

  return ListView(
    // itemCount: question.length, // Replace with the actual length of your text list
    // itemBuilder: (context, index) {
      children:[ Container(
            padding: const EdgeInsets.only(left: 20,top: 15,right: 10,bottom: 15),
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1,color:Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(question[0],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                const Icon(Icons.arrow_forward_ios,size: 14,),
              ],
            ),
          )]
  );

  }
}
