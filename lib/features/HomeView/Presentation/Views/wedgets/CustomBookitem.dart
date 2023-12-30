import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Custom_Book_item extends StatelessWidget {
  const Custom_Book_item({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 1 / 1.6,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
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