import 'package:event_club_app/res/components/create_card_button.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class GreetingsView extends StatefulWidget {
  const GreetingsView({super.key});

  @override
  State<GreetingsView> createState() => _GreetingsViewState();
}

class _GreetingsViewState extends State<GreetingsView> {
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
              Text("Greetings",
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
                      print('holi');
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => QuotesView()));
                    },
                    title: 'Holi',
                    icon: "assets/icons/holi.png",
                    color: Color(0xfffbe8c7),
                  ),
                  CreateCardButton(
                    onPressed: () {
                      print('party');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => GreetingsView()));
                    },
                    title: 'Party',
                    icon: "assets/icons/party.png",
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
                      print('aniversary');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => InvitationsView()));
                    },
                    title: 'Aniversary',
                    icon: "assets/icons/wine.png",
                    color: Color(0xfffbe8c7),
                  ),
                  CreateCardButton(
                    onPressed: () {
                      print('wedding');
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => GifView()));
                    },
                    title: 'Weddings',
                    icon: "assets/icons/arch.png",
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
                      print('Birthday');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => InvitationsView()));
                    },
                    title: 'Birthday',
                    icon: "assets/icons/birthday-cake.png",
                    color: Color(0xfffbe8c7),
                  ),
                  CreateCardButton(
                    onPressed: () {
                      print('rakhi');
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => GifView()));
                    },
                    title: 'Rakhi',
                    icon: "assets/icons/rakhi-band.png",
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
