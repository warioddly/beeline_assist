import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class MyRateScreen extends StatefulWidget {
  const MyRateScreen({Key? key}) : super(key: key);

  @override
  _MyRateScreenState createState() => _MyRateScreenState();
}

class _MyRateScreenState extends State<MyRateScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: "Безлимит +",
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
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 920),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Смотрите бесплатно",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 148, 255, 1),
                    ),
                  ),
                  const Text(
                    "Безлимит+",
                    style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    "980 cом / 4 недели",
                    style: TextStyle(color: Color.fromRGBO(148, 152, 179, 1), fontSize: 14, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.wifi,
                            color: Colors.black,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Интернет",
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Безлимитный",
                              style: TextStyle(
                                  color: Color.fromRGBO(148, 152, 179, 1), fontSize: 18, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.video_camera_back_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "ИВИ",
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Подписка на онлайн-кинотеатр",
                              style: TextStyle(
                                  color: Color.fromRGBO(148, 152, 179, 1), fontSize: 18, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: const Icon(
                            Icons.wifi,
                            color: Colors.black,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Интернет",
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Безлимитный",
                              style: TextStyle(
                                  color: Color.fromRGBO(148, 152, 179, 1), fontSize: 18, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: const Icon(
                            Icons.wifi,
                            color: Colors.black,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Интернет",
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Безлимитный",
                              style: TextStyle(
                                  color: Color.fromRGBO(148, 152, 179, 1), fontSize: 18, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 45),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        const Text(
                          "Подробности",
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                        ),

                        const SizedBox(height: 12),

                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(35, 35, 37, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                          child: ExpandableTheme(
                            data: const ExpandableThemeData(
                              iconColor: Color.fromRGBO(137, 135, 135, 1),
                              collapseIcon: Icons.keyboard_arrow_up,
                              expandIcon: Icons.keyboard_arrow_down,
                              hasIcon: true,
                            ),
                            child: Column(
                              children: [


                                ExpandableNotifier(
                                    child: ExpandablePanel(
                                      header: const Padding(
                                        padding:  EdgeInsets.only(top: 12),
                                        child: Text(
                                          "Управляйте тарифом в любое время",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      collapsed: const Text(
                                        "",
                                        style: TextStyle(
                                            color: Colors.white,
                                            height: 0
                                        ),
                                      ),
                                      expanded: const Text(
                                        "Управляйте тарифом в любое время awdaw "
                                            "dawdawdawdinawdpiuahwiudhawiudhiaowhda"
                                            "awdkjlnlkjsnlkjznclkjnzlkcnzkxjnklznxc "
                                            "zx,cnzx,mnc.mzxnc,zxmnc,zmxnc.,znx.c,nz.xc",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                ),

                                const SizedBox(height: 12),

                                ExpandableNotifier(
                                  child: ExpandablePanel(
                                    header: const Padding(
                                      padding:  EdgeInsets.only(top: 12),
                                      child: Text(
                                        "Управляйте тарифом в любое время",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    collapsed: const Text(
                                      "",
                                      style: TextStyle(
                                          color: Colors.white,
                                          height: 0
                                      ),
                                    ),
                                    expanded: const Text(
                                      "Управляйте тарифом в любое время awdaw "
                                          "dawdawdawdinawdpiuahwiudhawiudhiaowhda"
                                          "awdkjlnlkjsnlkjznclkjnzlkcnzkxjnklznxc "
                                          "zx,cnzx,mnc.mzxnc,zxmnc,zmxnc.,znx.c,nz.xc",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 12),

                                ExpandableNotifier(
                                  child: ExpandablePanel(
                                    header: const Padding(
                                      padding:  EdgeInsets.only(top: 12),
                                      child: Text(
                                        "Управляйте тарифом в любое время",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    collapsed: const Text(
                                      "",
                                      style: TextStyle(
                                          color: Colors.white,
                                          height: 0
                                      ),
                                    ),
                                    expanded: const Text(
                                      "Управляйте тарифом в любое время awdaw "
                                          "dawdawdawdinawdpiuahwiudhawiudhiaowhda"
                                          "awdkjlnlkjsnlkjznclkjnzlkcnzkxjnklznxc "
                                          "zx,cnzx,mnc.mzxnc,zxmnc,zmxnc.,znx.c,nz.xc",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
