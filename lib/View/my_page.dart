import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: Center(
          child: Text(
            '유찬홍',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.black,
              ),
              Column(
                children: [
                  Text('0'),
                  const Text('게시물'),
                ],
              ),
              Column(
                children: [
                  Text('433'),
                  const Text('팔로워'),
                ],
              ),
              Column(
                children: [
                  Text('432'),
                  const Text('팔로잉'),
                ],
              ),
            ],
          ),
          TabBar(
            controller: tabController,
            tabs: [
              Tab(icon: Icon(Icons.grid_on_sharp)),
              Tab(icon: Icon(Icons.movie_creation)),
              Tab(icon: Icon(Icons.account_box)),
            ],
            labelColor: Colors.black,
          ),
          Container(
            height: MediaQuery.of(context).size.width,
            child: TabBarView(
              controller: tabController,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
