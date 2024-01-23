import 'package:flutter/material.dart';
import 'package:myapp/meme.dart';
import 'package:myapp/meme_card.dart';
import 'package:myapp/memeservice.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<Meme> _meme;
  @override
  void initState() {
    _meme = MemeService.getMeme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _meme = MemeService.getMeme();
        });
      }, child: const Icon(Icons.arrow_forward),),
        backgroundColor: Colors.deepPurple.shade200,
        appBar: AppBar(
          title: const Text('MemesHub'),
        ),
        body: Center(
          child: Container(
              padding: const EdgeInsets.all(24),
              child: FutureBuilder<Meme>(
                  future: _meme,
                  builder: (context, snapshot) {
                    if (snapshot.hasData){
                      return MemeCard(meme: snapshot.data!);
                    }
                    return const CircularProgressIndicator();
                  })),
        ));
  }
}
