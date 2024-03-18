import 'package:event_club_app/res/components/create_card_button.dart';
import 'package:event_club_app/view/cards/gif_view.dart';
import 'package:event_club_app/view/cards/greetings_view.dart';
import 'package:event_club_app/view/cards/invitations_view.dart';
import 'package:event_club_app/view/cards/quotes_view.dart';
import 'package:flutter/material.dart';

class CreateCardView extends StatefulWidget {
  const CreateCardView({super.key});

  @override
  State<CreateCardView> createState() => _CreateCardViewState();
}

class _CreateCardViewState extends State<CreateCardView> {
  List cardArray = [
    {
      "title": "Quotes",
      "image": "assets/icons/quotes.png",
    },
    {
      "title": "Greetings",
      "image": "assets/icons/quotes.png",
    },
    {
      "title": "Invitations",
      "image": "assets/icons/quotes.png",
    },
    {
      "title": "Gif",
      "image": "assets/icons/quotes.png",
    },
  ];
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
            Text("Create Card",
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
                    print('Quotes');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuotesView()));
                  },
                  title: 'Quotes',
                  icon: "assets/icons/quotes.png",
                  color: Color(0xfffbe8c7),
                ),
                CreateCardButton(
                  onPressed: () {
                    print('Greetings');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GreetingsView()));
                  },
                  title: 'Greeting',
                  icon: "assets/icons/etiquette.png",
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
                    print('Invitations');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InvitationsView()));
                  },
                  title: 'Invitations',
                  icon: "assets/icons/add-group.png",
                  color: Color(0xfffbe8c7),
                ),
                CreateCardButton(
                  onPressed: () {
                    print('GIF');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GifView()));
                  },
                  title: 'GIF',
                  icon: "assets/icons/loading.png",
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
