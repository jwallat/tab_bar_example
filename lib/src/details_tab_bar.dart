import "package:flutter/material.dart";

class DetailsTabBar extends StatefulWidget {
  final Object data;

  const DetailsTabBar(this.data);

  @override
  State<StatefulWidget> createState() => DetailsTabBarState(data: data);
}

class DetailsTabBarState extends State<DetailsTabBar> {
  final Object data;
  TabController tabController;

  DetailsTabBarState({this.data});

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: DrawerControllerState());
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      shrinkWrap: true,
      children: <Widget>[
        Scaffold(
          // backgroundColor: Colors.amber,
          appBar: TabBar(
            tabs: const <Widget>[
              Tab(
                child: Text("Tab 1"),
              ),
              Tab(
                child: Text("Tab 2"),
              ),
            ],
            controller: tabController,
            labelColor: Colors.black,
          ),
          body: Container(
            // color: Colors.amber,
            child: TabBarView(
              children: <Widget>[
                Container(
                  child: const IconButton(
                    icon: Icon(Icons.ac_unit),
                    onPressed: null,
                  ),
                ),
                Container(
                  child: const IconButton(
                    icon: Icon(Icons.access_alarm),
                    onPressed: null,
                  ),
                ),
              ],
              controller: tabController,
            ),
          ),
        )
      ],
    );
  }
}
