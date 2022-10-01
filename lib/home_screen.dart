import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: AppBar(title: Text("Hello"), actions: []),
        body: Container(
            // color: Colors.blue,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                width: 360,
                height: 60,
                // color: Colors.blue,
                child: Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.person_pin)),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 300,
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.greenAccent, width: 5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 0.5),
                              ),
                              hintText: 'Write something here...',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [Icon(Icons.image)],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 48,
                        width: 400,
                        decoration: BoxDecoration(),
                        child: TabBar(
                          unselectedLabelColor: Colors.black45,
                          indicatorColor: Colors.black,
                          indicatorWeight: 10,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Colors.blue,
                          indicator: BoxDecoration(
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          tabs: [
                            Tab(
                              text: "Stories",
                            ),
                            Tab(text: "Reels")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 160,
                        width: 410,
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  MyStory(myStory: 'p1.jpg'),
                                  // Container(
                                  //   height: 200,
                                  //   width: 120,
                                  //   color: Colors.red,
                                  // ),
                                  FriendStory(
                                      friendStory: 'p2.jpg',
                                      proName: 'A',
                                      proPic: 'p2.jpg'),
                                  FriendStory(
                                      friendStory: 'p3.jpg',
                                      proName: 'B',
                                      proPic: 'p3.jpg'),
                                  FriendStory(
                                      friendStory: 'p4.jpg',
                                      proName: 'C',
                                      proPic: 'p4.jpg'),
                                  Container(
                                    height: 200,
                                    width: 120,
                                    color: Colors.blue,
                                  ),
                                  Container(
                                    height: 200,
                                    width: 120,
                                    color: Colors.green,
                                  ),
                                  Container(
                                    height: 200,
                                    width: 120,
                                    color: Colors.red,
                                  ),
                                  Container(
                                    height: 200,
                                    width: 120,
                                    color: Colors.blue,
                                  ),
                                  Container(
                                    height: 200,
                                    width: 120,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text("2ns"),
                              color: Colors.blue,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 410,
                            height: 10,
                            color: Colors.black26,
                          )
                        ],
                      ),
                      FriendPost(
                          proName: 'Rebika Devi',
                          proPic: 'p1.jpg',
                          dateAndLocation: 'Yesterday at 12:30 AM. India',
                          desc: 'Hello',
                          // like: '8k',
                          post: 'p2.jpg'),
                      FriendPost(
                          proName: 'Santosh ',
                          proPic: 'p3.jpg',
                          dateAndLocation: 'Yesterday at 4:30 AM. India',
                          desc: 'Hello Everyone',
                          // like: '6k',
                          post: 'p4.jpg'),
                      FriendPost(
                          proName: 'Shan Verma',
                          proPic: 'p4.jpg',
                          dateAndLocation: 'Yesterday at 1:30 PM. India',
                          desc: 'Hello',
                          // like: '4k',
                          post: 'p3.jpg'),
                    ],
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

Widget MyStory({myStory}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
    child: Container(
        width: 120,
        height: double.infinity,
        color: Colors.pink,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              myStory,
              fit: BoxFit.cover,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle,
                    size: 40,
                  ),
                  color: Colors.white,
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add to Story",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        )),
  );
}

Widget FriendStory({
  friendStory,
  proName,
  proPic,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
    child: Container(
        width: 120,
        height: double.infinity,
        color: Colors.pink,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              friendStory,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                        color: Colors.blue,
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            proPic,
                          ),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  proName,
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        )),
  );
}

Widget FriendPost({proName, dateAndLocation, proPic, desc, post}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
    child: Row(
      children: [
        Container(
          width: 410,
          height: 520,
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 410,
                height: 50,
                // color: Colors.red,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            // color: Colors.yellow,
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(
                                        color: Colors.brown,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage(proPic),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 240,
                              height: 20,
                              // color: Colors.pink,
                              child: Text(
                                proName,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 240,
                              height: 30,
                              // color: Colors.green,
                              child: Text(
                                dateAndLocation,
                                // "Yesterday at 12:30 AM. India",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          // color: Colors.brown,
                          child: IconButton(
                            icon: Icon(Icons.more_horiz),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            // color: Colors.green,
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 410,
                height: 400,
                // color: Colors.brown,
                child: Column(children: [
                  Container(
                    height: 20,
                    width: 410,
                    // color: Colors.blue,
                    child: Text(desc),
                  ),
                  Container(
                    width: 410,
                    height: 380,
                    // color: Colors.pink,
                    child: Image(
                      image: AssetImage(post),
                      fit: BoxFit.cover,
                    ),
                  )
                ]),
              ),
              Container(
                width: 410,
                height: 20,
                // color: Colors.pink,
                child: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 30,
                          // color: Colors.blue,
                          child: Row(
                            children: [
                              Icon(
                                Icons.thumb_up,
                                size: 17.0,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.favorite,
                                size: 17.0,
                                color: Colors.red,
                              ),
                              Text('2k')
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 230.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 120,
                            height: 30,
                            // color: Colors.blue,
                            child: Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [Text('Comments '), Text('800')],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 410,
                height: 30,
                // color: Colors.green,
                child: Row(children: [
                  Container(
                    width: 130,
                    height: 30,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.thumb_up,
                            size: 20,
                            color: Colors.blue,
                          ),
                        ),
                        Text("Like")
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 30,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.comment,
                            size: 20,
                          ),
                        ),
                        Text("Comment")
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 30,
                    // color: Colors.blue,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            size: 20,
                          ),
                        ),
                        Text("Share")
                      ],
                    ),
                  )
                ]),
              ),
              // Container(
              //   width: 410,
              //   height: 30,
              //   color: Colors.pink,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Container(
                  width: 410,
                  height: 5,
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
