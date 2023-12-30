import 'package:flutter/material.dart';

class Custom_Book_item extends StatelessWidget {
  const Custom_Book_item({super.key, required this.photoUrl});
  final String photoUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(photoUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}






// Container(
//       height: MediaQuery.of(context).size.height * 0.25,
//       width: MediaQuery.of(context).size.width * 0.35,
//       decoration: BoxDecoration(
//         color: Colors.amber,
//         borderRadius: BorderRadius.circular(16),
//         image: const DecorationImage(
//           image: AssetImage('assets/images/Book 1 High.png'),
//           fit: BoxFit.fill,
//         ),
//       ),
//     );