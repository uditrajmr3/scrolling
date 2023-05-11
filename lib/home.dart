import 'package:flutter/material.dart';
import 'package:scrolling/child.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final ScrollController _scrollController1;
  late final ScrollController _scrollController2;
  late final ScrollController _scrollController3;
  late final ScrollController _scrollController4;
  late final ScrollController _scrollController5;

  final _valueKey = GlobalKey();

  @override
  void initState() {
    _scrollController1 = ScrollController();
    _scrollController2 = ScrollController();
    _scrollController3 = ScrollController();
    _scrollController4 = ScrollController();
    _scrollController5 = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController1.dispose();
    _scrollController2.dispose();
    _scrollController3.dispose();
    _scrollController4.dispose();
    _scrollController5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: TabBar(tabs: tabs),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Scrollable.ensureVisible(_valueKey.currentContext!, duration: const Duration(seconds: 2), curve: Curves.bounceIn);
          },
        ),
        body: TabBarView(
          children: <Widget>[
            applySingleChildScrollView(_scrollController1),
            applyNestedScrollView(_scrollController2),
            applyCustomScrollView(_scrollController3),
          ],
        ),
      ),
    );
  }

  final List<Widget> tabs = const <Widget>[
    Tab(
      icon: Icon(Icons.cloud_outlined),
    ),
    Tab(
      icon: Icon(Icons.beach_access_sharp),
    ),
    Tab(
      icon: Icon(Icons.brightness_5_sharp),
    ),
  ];

  Widget applySingleChildScrollView(ScrollController controller) => Center(
        child: SingleChildScrollView(
          controller: controller,
          child: Children(
            controller: controller,
            valueKey: _valueKey,
            text:
                "Single Child Scroll View: Used when there are contents which cannot be filled just on the visible screen",
          ),
        ),
      );

  Widget applyNestedScrollView(ScrollController controller) => Center(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              controller: controller,
              headerSliverBuilder: (context, isSelected) => [
                    const SliverAppBar(
                      expandedHeight: 200,
                      elevation: 5.0,
                      title: Text("Sliver App Bar"),
                      pinned: true,
                      bottom: TabBar(
                        tabs: [
                          Tab(text: 'Tab 1'),
                          Tab(text: 'Tab 2'),
                        ],
                      ),
                    ),
                  ],
              body: const TabBarView(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Children(
                      text:
                          "A scrolling view inside of which can be nested other scrolling views, with their scroll positions being intrinsically linked.",
                    ),
                  ),
                  SingleChildScrollView(
                    child: Children(
                      text:
                          "You should use NestedScrollView when you have nested scroll views that you want to link together so they behave like one consistent scrollable area.",
                    ),
                  ),
                ],
              )),
        ),
      );

  Widget applyCustomScrollView(ScrollController controller) => Center(
        child: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            controller: controller,
            slivers: const [
              SliverAppBar(
                expandedHeight: 200,
                elevation: 5.0,
                title: Text("Sliver App Bar"),
                pinned: true,
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Tab 3'),
                    Tab(text: 'Tab 4'),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                        physics: ClampingScrollPhysics(),
                        child: Children(
                          nested: true,
                        )),
                    SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        child: Children()),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
