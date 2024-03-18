import 'package:event_club_app/res/components/create_card_button.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class GifView extends StatefulWidget {
  const GifView({super.key});

  @override
  State<GifView> createState() => _GifViewState();
}

class _GifViewState extends State<GifView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBE8C7),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Gif",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  )),
              Container(
                width: double.infinity,
                height: 40,
                child: SearchField(
                  suggestionItemDecoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  hint: 'Search Quotes',
                  suggestions: [
                    'Life',
                    'Jokes',
                    'Success',
                    'Love',
                    'Travel',
                    'Educational'
                  ].map(SearchFieldListItem<String>.new).toList(),
                  suggestionState: Suggestion.expand,
                ),
              ),
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
      ),
    );
  }
}
