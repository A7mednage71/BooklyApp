import 'package:flutter/material.dart';

class Custom_ListView_item extends StatelessWidget {
  const Custom_ListView_item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage('assets/images/Book 1 High.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}




//  SizedBox(
//       width: MediaQuery.of(context).size.width * 0.3,
//       child: AspectRatio(
//         aspectRatio: 150 / 150,
//         child: Container(
//           // height: MediaQuery.of(context).size.height * 0.25,
//           // width: MediaQuery.of(context).size.width * 0.35,

//           decoration: BoxDecoration(
//             color: Colors.amber,
//             borderRadius: BorderRadius.circular(16),
//             image: const DecorationImage(
//               image: AssetImage('assets/images/Book 1 High.png'),
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),
//       ),
//     );