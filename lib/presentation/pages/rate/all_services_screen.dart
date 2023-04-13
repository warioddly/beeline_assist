import 'package:beeline_assistant/presentation/pages/rate/components/carousel_card.dart';
import 'package:beeline_assistant/presentation/widgets/carousel_button.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/custom_appbar.dart';
import '../phone/phone_service_info_screen.dart';

class AllServicesScreen extends StatefulWidget {
  const AllServicesScreen({Key? key}) : super(key: key);

  @override
  _AllServicesScreenState createState() => _AllServicesScreenState();
}

class _AllServicesScreenState extends State<AllServicesScreen> with SingleTickerProviderStateMixin {

  final PageController parentPageController = PageController(initialPage: 0, viewportFraction: 1, keepPage: true);

  late final TabController tabController;
  int currentPage = 0;
  int currentChildPage = 0;

  final Map<String, PageController> pageControllers = {
    for (int index = 0; index < 4; index++)
      "controller_$index": PageController(initialPage: 0, viewportFraction: 1, keepPage: true),
  };

  final List<String> services = ["Интернет", "Звонки", "Развлечения", "Роуминг", "Другие", "Все"];

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: services.length, vsync: this)..addListener(() {
      if (tabController.indexIsChanging) {
        currentIndex = tabController.index;
        setState(() { });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: "Услуги",
        titleColor: Colors.white,
        leadingColor: Color.fromRGBO(255, 159, 0, 1),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.only(top: 44),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bibi.png'),
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomRight,
          ),
        ),
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 920),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TabBar(
                  indicatorWeight: 0.01,
                  controller: tabController,
                  indicatorPadding: EdgeInsets.zero,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [

                    for (int i = 0; i < services.length; i++)
                      Tab(
                        child: Container(
                          height: 38,
                          decoration: BoxDecoration(
                            color: currentIndex != i ? null : const Color.fromRGBO(57, 57, 59, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          child:  Text(
                            services[i],
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: currentIndex != i ? const Color.fromRGBO(141, 139, 140, 1) : Colors.white,
                            ),
                          ),
                        ),
                      ),

                  ],
                ),


                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [

                      for(int i = 0; i < services.length; i++)
                        SingleChildScrollView(
                          child: Column(
                            children: services.map((e) => CarouselCard(
                              title: "Instagram + WhatsApp",
                              subTitle: "80 Гб на Instagram и WhatsApp",
                            ),
                            ).toList(),
                          ),
                        )


                    ],
                  ),
                )



              ],
            ),
          ),
        )
      ),
    );
  }


  Widget getExpandedCard({required String title, String? body}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 26),
      child: ExpansionTileCard(
        borderRadius: BorderRadius.circular(16),
        title: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
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
                  style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


  void changeParentPage({required int page}) async {
    parentPageController.jumpToPage(page);
    currentPage = page;
    currentChildPage = 0;

    if (mounted) {
      setState(() {});
    }
  }


  void changeChildPage({String direction = 'next'}) async {
    final canCancel = currentChildPage > 0;
    final canContinue = currentChildPage < 4;

    if (direction.toLowerCase() == 'next' && canContinue) {
      pageControllers['controller_$currentPage']
          ?.nextPage(duration: const Duration(milliseconds: 320), curve: Curves.fastOutSlowIn);
      ++currentChildPage;
    } else if (direction.toLowerCase() == 'back' && canCancel) {
      pageControllers['controller_$currentPage']
          ?.previousPage(duration: const Duration(milliseconds: 320), curve: Curves.fastOutSlowIn);
      --currentChildPage;
    }

    if (mounted) {
      setState(() {});
    }
  }

}
