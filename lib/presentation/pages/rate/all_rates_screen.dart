import 'package:beeline_assistant/presentation/widgets/carousel_button.dart';
import 'package:beeline_assistant/presentation/widgets/carousel_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllRatesScreen extends StatefulWidget {
  const AllRatesScreen({ Key? key }) : super(key: key);

  @override
  _AllRatesScreenState createState() => _AllRatesScreenState();
}

class _AllRatesScreenState extends State<AllRatesScreen> {

  final PageController parentPageController = PageController(initialPage: 0, viewportFraction: 1, keepPage: true);

  int currentPage = 0;
  int currentChildPage = 0;

  final Map<String, PageController> pageControllers = {
    for (int index = 0; index < 4; index++)
      "controller_$index": PageController(initialPage: 0, viewportFraction: 1, keepPage: true),
  };

  @override
  void initState() {
    super.initState();
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(35, 35, 37, 1),
                Color.fromRGBO(45, 45, 45, 1)
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Scrollbar(
            child: SingleChildScrollView(
              primary: true,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Center(
                      child: CarouselCard(title: 'title'),
                    ),

                    const SizedBox(height: 22),

                    Center(
                      child: Container(
                        constraints: const BoxConstraints(
                            maxWidth: 785
                        ),
                        child: Row(
                          children: [

                            Expanded(
                              child: CarouselButton(
                                title: 'На месяц',
                                disabled: currentPage != 0,
                                onPressed: () => changeParentPage(page: 0),
                              ),
                            ),

                            const SizedBox(width: 22),

                            Expanded(
                              child: CarouselButton(
                                 title: 'На неделю',
                                 disabled: currentPage != 1,
                                 onPressed: () => changeParentPage(page: 1)
                              ),
                            ),

                            const SizedBox(width: 22),

                            Expanded(
                              flex: 2,
                              child: CarouselButton(
                                title: 'Для умных устройств',
                                disabled: currentPage != 2,
                                onPressed: () => changeParentPage(page: 2)
                              ),
                            ),

                            const SizedBox(width: 22),

                            Expanded(
                              child: CarouselButton(
                                title: 'Пакеты',
                                disabled: currentPage != 3,
                                onPressed: () => changeParentPage(page: 3)
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 22),

                    Center(
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 920
                        ),
                        child: Row(
                          children: [

                            Container(
                              margin: const EdgeInsets.only(right: 32),
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                  color: currentChildPage > 0 ? const Color.fromRGBO(226, 51, 56, 1) : const Color.fromRGBO(229, 70, 74, 0.5),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: InkWell(
                                onTap: () => changeChildPage(direction: 'back'),
                                child: Center(
                                  child: RotatedBox(
                                    quarterTurns: 2,
                                    child: SvgPicture.asset(
                                      'assets/images/icons/arrow_right.svg',
                                      semanticsLabel: 'A red up arrow',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: ExpandablePageView(
                                controller: parentPageController,
                                animationDuration: const Duration(milliseconds: 600),
                                // physics: const NeverScrollableScrollPhysics(),
                                children: [

                                  ExpandablePageView(
                                    controller: pageControllers['controller_0'],
                                    animationDuration: const Duration(milliseconds: 300),
                                    // physics: const NeverScrollableScrollPhysics(),
                                    children: [

                                      Container(
                                        height: 300,
                                        width: 300,
                                        color: Colors.green,
                                      ),

                                      Container(
                                        height: 300,
                                        width: 300,
                                        color: Colors.redAccent,
                                      )

                                    ],
                                  ),

                                  ExpandablePageView(
                                    controller: pageControllers['controller_1'],
                                    animationDuration: const Duration(milliseconds: 300),
                                    // physics: const NeverScrollableScrollPhysics(),
                                    children: [

                                      Container(
                                        height: 300,
                                        width: 300,
                                        color: Colors.cyan,
                                      ),

                                      Container(
                                        height: 300,
                                        width: 300,
                                        color: Colors.white30,
                                      )

                                    ],
                                  ),

                                  ExpandablePageView(
                                    controller: pageControllers['controller_2'],
                                    animationDuration: const Duration(milliseconds: 300),
                                    // physics: const NeverScrollableScrollPhysics(),
                                    children: [

                                      Container(
                                        height: 300,
                                        width: 300,
                                        color: Colors.green,
                                      ),

                                      Container(
                                        height: 300,
                                        width: 300,
                                        color: Colors.redAccent,
                                      )

                                    ],
                                  ),

                                  ExpandablePageView(
                                    controller: pageControllers['controller_3'],
                                    animationDuration: const Duration(milliseconds: 300),
                                    // physics: const NeverScrollableScrollPhysics(),
                                    children: [

                                      Container(
                                        height: 300,
                                        width: 300,
                                        color: Colors.amber,
                                      ),

                                      Container(
                                        height: 300,
                                        width: 300,
                                        color: Colors.black38,
                                      )

                                    ],
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.only(left: 32),
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                color: currentChildPage < 1 ? const Color.fromRGBO(226, 51, 56, 1) : const Color.fromRGBO(229, 70, 74, 0.5),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: InkWell(
                                onTap: () => changeChildPage(direction: 'next'),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/images/icons/arrow_right.svg',
                                    semanticsLabel: 'A red up arrow',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getExpandedCard({ required String title, String? body }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 26),
      child: ExpansionTileCard(
        borderRadius: BorderRadius.circular(16),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600
          ),
        ),
        children: <Widget>[
           SingleChildScrollView(
             child: Align(
               alignment: Alignment.centerLeft,
               child: Padding(
                 padding: const EdgeInsets.symmetric(
                   horizontal: 16.0,
                   vertical: 13.0,
                 ),
                 child: Text(
                   body ?? "Пока тут пусто",
                   style: const TextStyle(
                       color: Colors.black,
                       fontSize: 16,
                       fontWeight: FontWeight.w600
                   ),
                 ),
               ),
             ),
           )
        ],
      ),
    );

  }

  void changeParentPage({ required int page }) async {

    parentPageController.jumpToPage(page);
    currentPage = page;
    currentChildPage = 0;

    if (mounted) {
      setState(() { });
    }

  }

  void changeChildPage({ String direction = 'next' }) async {

    final canCancel = currentChildPage > 0;
    final canContinue = currentChildPage < 4;

    if (direction.toLowerCase() == 'next' && canContinue) {
      pageControllers['controller_$currentPage']?.nextPage(duration: const Duration(milliseconds: 320), curve: Curves.fastOutSlowIn);
      ++currentChildPage;
    }
    else if (direction.toLowerCase() == 'back' && canCancel) {
      pageControllers['controller_$currentPage']?.previousPage(duration: const Duration(milliseconds: 320), curve: Curves.fastOutSlowIn);
      --currentChildPage;
    }

    if (mounted) {
      setState(() { });
    }

  }

}
