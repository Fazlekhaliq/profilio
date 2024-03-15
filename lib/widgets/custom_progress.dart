//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class CustomProgress extends StatelessWidget {
//   const CustomProgress({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 18.0),
//       child: SizedBox(
//         height: 5,
//         child: ListView.builder(
//           itemCount: 10,
//           shrinkWrap: true,// Number of containers
//           scrollDirection: Axis.horizontal, // Scroll horizontally
//           itemBuilder: (context, index) {
//             return Row(
//
//               children: [
//                 Container(
//                   width: 28.w,
//                   height: 5,
//                   margin: EdgeInsets.only(right: 10.w), // Adjust spacing between containers
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.blue,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(.25),
//                         offset: Offset(2, 2),
//                         blurRadius: 6,
//                         spreadRadius: 0,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
