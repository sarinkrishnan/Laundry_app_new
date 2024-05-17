// import 'package:chat_bubbles/bubbles/bubble_normal.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:laundry_bin_app/extract_items/27-massage-page/massage.dart';

// class MassagePage extends StatefulWidget {
//   const MassagePage({super.key});

//   @override
//   State<MassagePage> createState() => _MassagePageState();
// }

// class _MassagePageState extends State<MassagePage> {
//   TextEditingController solo=TextEditingController();


//   List<Message> chatmassage = [];

//   void sendmessege() async {
//     chatmassage.add(
//       Message(
//         isuser: true,
//         message: solo.text,
//         date: DateTime.now(),
//       ),
//     );
//     // final content = [Content.text(solo.text)];
//     // final response = await model.generateContent(content);
//     chatmassage.add(
//       Message(
//         isuser: false,
//        message: '',
//         date: DateTime.now(),
//       ),
//     );
//     //solo.clear();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color(0xffECF3F6),
//         body: Column(
//           children: [
//             Container(
//               width: double.infinity.w,
//               height: 115.h,
//               color: Color(0xffFFFFFf),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.keyboard_arrow_left_rounded,
//                     size: 40.sp,
//                   ),
//                   Image.asset(
//                     'asset/images/Group 1072.png',
//                     height: 24.h,
//                     width: 24.w,
//                   ),
//                   Text(
//                     'Laundrybin',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20.sp,
//                         fontFamily: 'DM_Sans',
//                         color: Color(0xff567177)),
//                   ),
//                   Image.asset(
//                     'asset/images/call.png',
//                     height: 28.h,
//                     width: 28.w,
//                   )
//                 ],
//               ),
//             ),
//             ListView.builder(
//               itemCount: chatmassage.length,
//               itemBuilder: (context, index) => BubbleNormal(
//                 color: Colors.blueAccent,
//                 text: chatmassage[index].toString(),
//                 isSender: chatmassage[index].isuser,
//               ),
//             ),
//             ElevatedButton( onPressed: () {}, child: Text('data'))
//           ],
//         ));
//   }
// }
