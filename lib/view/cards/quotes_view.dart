import 'package:event_club_app/res/components/create_card_button.dart';
import 'package:event_club_app/view/cards/display_image_screen.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class QuotesView extends StatefulWidget {
  const QuotesView({super.key});

  @override
  State<QuotesView> createState() => _QuotesViewState();
}

class _QuotesViewState extends State<QuotesView> {
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
              Text("Quotes",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  )),
              Container(
                width: double.infinity,
                height: 40,
                child: SearchField(
                  suggestionItemDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
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
                      print('Life');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DisplayImageView()));
                    },
                    title: 'Life',
                    icon: "assets/icons/needs.png",
                    color: Color(0xfffbe8c7),
                  ),
                  CreateCardButton(
                    onPressed: () {
                      print('Jokes');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => GreetingsView()));
                    },
                    title: 'Jokes',
                    icon: "assets/icons/happy.png",
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
                      print('Success');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => InvitationsView()));
                    },
                    title: 'Success',
                    icon: "assets/icons/success.png",
                    color: Color(0xfffbe8c7),
                  ),
                  CreateCardButton(
                    onPressed: () {
                      print('Love');
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => GifView()));
                    },
                    title: 'Love',
                    icon: "assets/icons/love (1).png",
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
                      print('Travel');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => InvitationsView()));
                    },
                    title: 'Travel',
                    icon: "assets/icons/flight-route.png",
                    color: Color(0xfffbe8c7),
                  ),
                  CreateCardButton(
                    onPressed: () {
                      print('educational');
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => GifView()));
                    },
                    title: 'Educational',
                    icon: "assets/icons/mortarboard.png",
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
