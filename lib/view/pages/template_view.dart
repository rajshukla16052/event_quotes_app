import 'package:flutter/material.dart';
class TemplateView extends StatefulWidget {
  const TemplateView({super.key});

  @override
  State<TemplateView> createState() => _TemplateViewState();
}
class _TemplateViewState extends State<TemplateView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBE8C7),
        appBar: AppBar(title: const Text("Template",
          style: TextStyle(fontSize: 35,
              color: Colors.black),),
          backgroundColor: const Color(0xffFBE8C7),
          actions: [
            IconButton(
              icon: const Icon(Icons.search,size: 40,),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu,size: 40,),
            onPressed: () {},
          ),
          titleSpacing: 40,
        ),
        body:SingleChildScrollView(
            child:Container(
                padding: const EdgeInsets.all(15),
                child:Column(
                    children: [
                      SizedBox(height: 50),
                      Row(
                          children: [
                            Container(
                              height: 40,
                              width: 155,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1,
                                      color: Colors.black),
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                  onPressed: (){

                                  },
                                  child: Text("Invitation",style: TextStyle( fontSize: 18,
                                    fontWeight: FontWeight.w600,)

                                  )
                                  ),
                              ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 155,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1,
                                      color: Colors.black),
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text("Greetings",style: TextStyle( fontSize: 18,
                                    fontWeight: FontWeight.w600,)

                                  )
                              ),
                            ),
                          ]
                      ),
                      const SizedBox(height: 20,),
                      Row(children: [
                        Column(
                            children: [
                              Container(
                                height: 125,
                                width: 160,
                                decoration: BoxDecoration(color: Colors.white54,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: (){}, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/holi.png",
                                        height: 70,width: 70,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Invitation",style: TextStyle( fontSize: 18,
                                        fontWeight: FontWeight.w600,)

                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ]
                        ),
                        const SizedBox(width: 10,),
                        Column(
                            children: [
                              Container(
                                height: 125,
                                width: 160,
                                decoration: BoxDecoration(color: Colors.white54,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: (){}, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/diwali-lamp.png",
                                        height: 70,width: 70,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Diwali",style: TextStyle( fontSize: 18,
                                        fontWeight: FontWeight.w600,)

                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ]
                        ),
                      ]
                      ),
                      const SizedBox(height: 10,),
                      Row(children: [
                        Column(
                            children: [
                              Container(
                                height: 125,
                                width: 160,
                                decoration: BoxDecoration(color: Colors.white54,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: (){}, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/rakhi-band.png",
                                        height: 70,width: 70,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Rakhi",style: TextStyle( fontSize: 18,
                                        fontWeight: FontWeight.w600,)

                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ]
                        ),
                        const SizedBox(width: 10,),
                        Column(
                            children: [
                              Container(
                                height: 125,
                                width: 160,
                                decoration: BoxDecoration(color: Colors.white54,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: (){}, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/eid-al-fitr.png",
                                        height: 70,width: 70,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Eid",style: TextStyle( fontSize: 18,
                                        fontWeight: FontWeight.w600,)

                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ]
                        ),
                      ]
                      ),
                      const SizedBox(height: 10,),
                      Row(children: [
                        Column(
                            children: [
                              Container(
                                height: 125,
                                width: 160,
                                decoration: BoxDecoration(color: Colors.white54,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: (){}, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/mirror-ball.png",
                                        height: 70,width: 70,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Party",style: TextStyle( fontSize: 18,
                                        fontWeight: FontWeight.w600,)

                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ]
                        ),
                        const SizedBox(width: 10,),
                        Column(
                            children: [
                              Container(
                                height: 125,
                                width: 160,
                                decoration: BoxDecoration(color: Colors.white54,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: (){}, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/birthday-cake.png",
                                        height: 70,width: 70,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Birthday",style: TextStyle( fontSize: 18,
                                        fontWeight: FontWeight.w600,)

                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ]
                        ),
                      ]
                      ),
                      const SizedBox(height: 10,),
                      Row(children: [
                        Column(
                            children: [
                              Container(
                                height: 125,
                                width: 160,
                                decoration: BoxDecoration(color: Colors.white54,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: (){}, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/sun.png",
                                        height: 70,width: 70,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Navratri",style: TextStyle( fontSize: 18,
                                        fontWeight: FontWeight.w600,)

                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ]
                        ),
                        const SizedBox(width: 10,),
                        Column(
                            children: [
                              Container(
                                height: 125,
                                width: 160,
                                decoration: BoxDecoration(color: Colors.white54,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: (){}, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/lohri.png",
                                        height: 70,width: 70,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Lohri",style: TextStyle( fontSize: 18,
                                        fontWeight: FontWeight.w600,)

                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ]
                        ),
                      ]
                      ),
                    ]
                )
            )
        )
    );
  }
}
