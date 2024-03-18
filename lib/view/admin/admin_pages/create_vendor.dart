import 'package:event_club_app/res/components/round_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateVendor extends StatefulWidget {
  const CreateVendor({super.key});

  @override
  State<CreateVendor> createState() => _CreateVendorState();
}

class _CreateVendorState extends State<CreateVendor> {
  TextEditingController _vendorNameController = TextEditingController();
  TextEditingController _vendorEmailController = TextEditingController();
  TextEditingController _vendorPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffbe8c7),
        appBar: AppBar(
          title: const Text('Create Vendor'),
          centerTitle: true,
          backgroundColor: const Color(0xfffbe8c7),
        ),
        body:SingleChildScrollView(
          child:Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              child:Column(
                  children: [
                    Container(
                        height: 450,
                        child: Card(
                          color: Color(0xfffF8F0E1),
                          child:Padding(padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff5F5F5),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: _vendorNameController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter Vendor Name',
                                      // helperText: 'Enter email eg: xyz@gmail.com',
                                      prefixIcon: Icon(Icons.person,size: 30,color: Colors.black,),
                                    ),
                                    style: GoogleFonts.inter
                                      (textStyle: Theme.of(context).textTheme.displayLarge,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter Vendor Name';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff5F5F5),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: _vendorEmailController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter Vendor Email',
                                      // helperText: 'Enter email eg: xyz@gmail.com',
                                      prefixIcon: Icon(Icons.email,size: 30,color: Colors.black,),

                                    ),
                                    style: GoogleFonts.inter
                                      (textStyle: Theme.of(context).textTheme.displayLarge,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter Vendor Email';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff5F5F5),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: _vendorPhoneController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter Vendor Contact Number',
                                      // helperText: 'Enter email eg: xyz@gmail.com',
                                      prefixIcon: Icon(Icons.call,size: 30,color: Colors.black,),
                                    ),
                                    style: GoogleFonts.inter
                                      (textStyle: Theme.of(context).textTheme.displayLarge,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter Vendor Phone Number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RoundButton(
                                    title: 'Generate Vendor',
                                    onPress: () {},
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child:Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xffF8F6F4),
                                              borderRadius: BorderRadius.circular(5.0),
                                              border: Border.all(width: 1),
                                            ),
                                            child: Center(child: Text('Active'))),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xffF8F6F4),
                                              borderRadius: BorderRadius.circular(5.0),
                                              border: Border.all(width: 1),
                                            ),
                                            child: Center(child: Text('Block'))),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xffF8F6F4),
                                              borderRadius: BorderRadius.circular(5.0),
                                              border: Border.all(width: 1),
                                            ),
                                            child: Center(child: Text('Unblock'))),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                    )
                  ]
              )
          ),
        )
    );
  }
}
