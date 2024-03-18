import 'package:event_club_app/res/components/create_card_button.dart';
import 'package:flutter/material.dart';

class FestivalsView extends StatefulWidget {
  const FestivalsView({super.key});

  @override
  State<FestivalsView> createState() => _FestivalsViewState();
}

class _FestivalsViewState extends State<FestivalsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBE8C7),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Festival",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                )),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CreateCardButton(
                  onPressed: () {
                    print('smile');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => QuotesView()));
                  },
                  title: 'Smile',
                  icon: "assets/icons/smile.png",
                  color: Color(0xfffbe8c7),
                ),
                CreateCardButton(
                  onPressed: () {
                    print('funny');
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => GreetingsView()));
                  },
                  title: 'Funny',
                  icon: "assets/icons/laughing.png",
                  color: Color(0xfffbe8c7),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CreateCardButton(
                  onPressed: () {
                    print('food');
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => InvitationsView()));
                  },
                  title: 'Food',
                  icon: "assets/icons/dish.png",
                  color: Color(0xfffbe8c7),
                ),
                CreateCardButton(
                  onPressed: () {
                    print('meme');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => GifView()));
                  },
                  title: 'Meme',
                  icon: "assets/icons/social.png",
                  color: Color(0xfffbe8c7),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CreateCardButton(
                  onPressed: () {
                    print('happy');
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => InvitationsView()));
                  },
                  title: 'Happy',
                  icon: "assets/icons/smiley.png",
                  color: Color(0xfffbe8c7),
                ),
                CreateCardButton(
                  onPressed: () {
                    print('movie');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => GifView()));
                  },
                  title: 'Movie',
                  icon: "assets/icons/video.png",
                  color: Color(0xfffbe8c7),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
