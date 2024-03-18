import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DownloadsView extends StatefulWidget {
  const DownloadsView({super.key});

  @override
  State<DownloadsView> createState() => _DownloadsViewState();
}

class _DownloadsViewState extends State<DownloadsView> {
  List<String> dropdownvalue = [
    'PNG',
    'JPEG',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBE8C7),
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color(0xffFBE8C7),
      ),
      body: SafeArea(
        child: Card(
          margin: EdgeInsets.fromLTRB(0.1, 40, 0.1, 0),
          color: Color(0xffF8F0E1),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text(
                    "Download",
                    style: GoogleFonts.inter(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    "File Type",
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffFEF8EE),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    itemHeight: 50,
                    value: dropdownvalue[0],
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 45,
                    isExpanded: true,
                    items: dropdownvalue.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        dropdownvalue = newValue as List<String>;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Size",
                      style: GoogleFonts.inter(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Color(0xffF000000),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1),
                  color: Color(0xffFBE8C7),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Download",
                    style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
