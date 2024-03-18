import 'package:event_club_app/res/components/create_card_button.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class InvitationsView extends StatefulWidget {
  const InvitationsView({super.key});

  @override
  State<InvitationsView> createState() => _InvitationsViewState();
}

class _InvitationsViewState extends State<InvitationsView> {
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
              Text("Invitations",
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
                      print('marrige');
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => QuotesView()));
                    },
                    title: 'Marrige',
                    icon: "assets/icons/wedding-couple.png",
                    color: Color(0xfffbe8c7),
                  ),
                  CreateCardButton(
                    onPressed: () {
                      print('birthday');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => GreetingsView()));
                    },
                    title: 'Birthday',
                    icon: "assets/icons/birthday-cake.png",
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
                      print('ceremony');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => InvitationsView()));
                    },
                    title: 'Ceremony',
                    icon: "assets/icons/opening-ceremony.png",
                    color: Color(0xfffbe8c7),
                  ),
                  CreateCardButton(
                    onPressed: () {
                      print('baby shower');
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => GifView()));
                    },
                    title: 'Baby-Shower',
                    icon: "assets/icons/baby-shower.png",
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
                      print('dinner-party');
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => GifView()));
                    },
                    title: 'Dinner-Party',
                    icon: "assets/icons/dish.png",
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
