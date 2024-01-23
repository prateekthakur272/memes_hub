import 'package:flutter/material.dart';
import 'package:myapp/meme.dart';

class MemeCard extends StatelessWidget {
  final Meme meme;
  const MemeCard({super.key, required this.meme});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: Image.network(meme.url)),
            const SizedBox.square(dimension: 8,),
            Text(meme.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text(meme.author, style: const TextStyle(fontSize: 18),),
            const SizedBox.square(dimension: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.share), tooltip: 'Share',),
                IconButton(onPressed: (){}, icon: const Icon(Icons.link), tooltip: 'Visit Post',),
                IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_outline), tooltip: 'Save',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
