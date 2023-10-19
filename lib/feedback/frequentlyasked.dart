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
        borderRadius: BorderRadius.circular(5),
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
          Questions(question: questions),
          SizedBox(height: 16,)
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

  return ListView.builder(
    shrinkWrap: true,
    itemCount: question.length, // Replace with the actual length of your text list
    itemBuilder: (context, index) {
      return Container(
        height: 55,
        padding: const EdgeInsets.only(
        left: 8, top: 16, right: 16, bottom: 8),
        margin: const EdgeInsets.only(left: 10,),
        decoration: BoxDecoration(
          border: const Border(
            right: BorderSide(width: 0.1, color: Colors.black),
            top:  BorderSide(width: 0.1, color: Colors.black),
            left:  BorderSide(width: 0.1, color: Colors.black),
            bottom:  BorderSide(width: 0.1, color: Colors.black),
          ),
            boxShadow: [
        BoxShadow(
        color: Color(0xFFf0f1f3).withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 0), // changes position of shadow
      ),],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(question[0], style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400)),
            const Icon(Icons.arrow_forward_ios, size: 12,color: Color(0xFF6B7376),),
          ],
        ),
      );
    }
    );

  }
}
