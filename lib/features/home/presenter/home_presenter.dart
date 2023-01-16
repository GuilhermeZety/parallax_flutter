// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:teste_parallax/core/utils/media_query_util.dart';
import 'package:teste_parallax/features/home/presenter/cave/home_cave.dart';
import 'package:teste_parallax/features/home/presenter/components/home_scroll_view.dart';

import 'package:teste_parallax/features/home/presenter/outside/home_outside.dart';


class HomePresenter extends StatefulWidget {
  const HomePresenter({super.key});

  @override
  State<HomePresenter> createState() => _HomePresenterState();
}

class _HomePresenterState extends State<HomePresenter> {
  late ScrollController _scrollController;
  double scrollOffset = 0;
  @override
  void initState() {
    _scrollController = ScrollController()..addListener(() => onScroll());
    super.initState();
  }

  onScroll(){
    scrollOffset = _scrollController.offset;
    setState(() {});
  }

  
  double get outsideLocation => MediaQueryUtils.height(context) / 3;

  List<Widget> o(){
    return [];
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQueryUtils.width(context); 
    double screenHeight = MediaQueryUtils.height(context); 
    
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF52f2d7),
              Color(0xFFf5f5c8),
              Color(0xFFf5f5c8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,            
          )
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [

              ...o(),
              Visibility(
                visible: (scrollOffset * 0.5) < (screenHeight - outsideLocation),
                child: HomeOutside(
                  scrollOffset: scrollOffset, 
                  location: outsideLocation
                )
              ),
              Positioned(
                top: (MediaQueryUtils.height(context) - (MediaQueryUtils.height(context) / 3)) - (scrollOffset * 0.5) - 2,
                left: 0,
                right: 0,
                child: Container(
                  height: 1400,
                  color: Colors.black,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 20),
                              child: Text("It's Time to Adventure", style: TextStyle(color: Color(0xFFBCFBFF), fontSize: 44, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
                              child: Text('Take an unprecedented journey through mountains and caves exploring new horizons with breathtaking views!', style: TextStyle(color: Colors.grey.shade500, fontSize: 20,), textAlign: TextAlign.center,),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 100, bottom: 20),
                              child: Text('Caves', style: TextStyle(color: Color(0xFF1DA1A9), fontSize: 36, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: HomeCave(location: 0, scrollOffset: scrollOffset,)
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 400,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
                              child: Text('Discover and explore all the caves in the region with great attractions such as canyons and large hot springs inside them, with breathtaking views!', style: TextStyle(color: Colors.grey.shade500, fontSize: 20,), textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),

                      Text('created with ❤ by Guilherme Martins', style: TextStyle(color: Colors.grey.shade800, fontSize: 16,))
                    ],
                  ),
                )            
              ),

              HomeScrollView(controller: _scrollController),
            ],
          ),
        ),
      ),
    );
  }
}