import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solid/utils/app_constand.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              title: const Text("Kurs haqida malumot"),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.ellipsis_vertical),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 220,
                margin: const EdgeInsets.symmetric(
                  horizontal: AppSize.defaultPadding,
                ),
                padding: const EdgeInsets.all(AppSize.defaultPadding),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppSize.defaultPadding - 4),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.deepPurple.withOpacity(0.5),
                      Colors.deepPurple,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            AppSize.defaultPadding - 4,
                          ),
                          child: Image.network(
                            "https://avatars.mds.yandex.net/get-altay/5534173/2a0000018633eca0c8aee41be6634d67f753/XXL_height",
                            fit: BoxFit.cover,
                            width: 70,
                            height: 70,
                          ),
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Noldan boshlab Data Structuralari slgkhslj klsfbhklsa klb",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RowWidget(),
                        RowWidget(),
                        RowWidget(),
                        RowWidget(),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppSize.defaultPadding),
                        color: Colors.white,
                      ),
                      child: const Text("Kursga qo'shilish"),
                    )
                  ],
                ),
              ),
            ),
          ];
        },
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.cloud_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.beach_access_sharp),
                  ),
                  Tab(
                    icon: Icon(Icons.brightness_5_sharp),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    SingleChildScrollView(
                      child: Center(
                        child: Text(
                            "Qui sit aute ullamco occaecat pariatur sint esse laboris. Nulla culpa ut ipsum nostrud. Qui aliqua est ex dolore ut culpa. Irure ad voluptate consectetur nostrud sint esse proident consequat. Dolore magna sunt velit dolore anim minim Lorem ullamco esse cupidatat sit ipsum pariatur.Velit excepteur commodo anim ea veniam eu sit. Velit officia aute occaecat consequat adipisicing culpa qui eu labore eu mollit laboris cillum. Commodo quis ipsum consectetur consequat deserunt excepteur ex nostrud deserunt adipisicing dolor ex ex. Tempor tempor eiusmod enim et dolor duis occaecat enim sit. Mollit ad id aliquip consequat consequat quis esse ut Lorem nisi dolore mollit nisi cillum.Cillum sint do ut ad elit proident elit magna minim minim ullamco ad. Qui eu ex ex deserunt dolor. Culpa eu nulla do Lorem.Occaecat aute Lorem occaecat adipisicing id duis minim anim. Ut mollit ea tempor qui occaecat magna. Culpa eiusmod cillum mollit occaecat incididunt cupidatat sint nostrud deserunt. Anim exercitation cupidatat non deserunt tempor dolore Lorem minim excepteur eu pariatur in. Ex proident sit sunt esse proident consequat sunt do ad incididunt. Pariatur incididunt pariatur elit magna.Quis occaecat officia consequat anim aliqua do enim fugiat labore deserunt cillum. Est qui minim dolor laborum aute irure minim ea mollit. Amet laboris minim eiusmod pariatur quis commodo officia et irure sit anim. Qui cillum consectetur anim cillum do cupidatat. Irure incididunt Lorem laboris velit irure voluptate mollit nisi aliqua sit. Aute esse cillum enim enim occaecat cupidatat commodo incididunt. Ipsum deserunt aliqua reprehenderit consequat nulla nostrud id aliqua dolor duis.Est qui do voluptate amet officia et sit id cupidatat fugiat eiusmod. Pariatur irure elit cillum ut nisi nisi reprehenderit reprehenderit ea. Culpa adipisicing occaecat commodo irure veniam enim nulla minim fugiat consectetur. Aute proident enim proident aliqua amet cillum laborum. Et pariatur consequat aliquip irure minim sint nulla sint eu commodo incididunt. Aliquip laborum proident nostrud aute exercitation. Enim elit aliquip fugiat fugiat minim voluptate cillum ipsum nisi.Quis quis in Lorem sint aliqua ex fugiat. Et velit dolore ipsum laboris ad. Dolore nulla adipisicing cupidatat exercitation adipisicing aliqua Lorem reprehenderit sint quis veniam consectetur enim. Eiusmod duis nisi dolor non consectetur irure Lorem.Lorem proident adipisicing voluptate incididunt magna ut consectetur commodo adipisicing cillum. Duis sunt consequat magna culpa et. Eiusmod enim ipsum officia reprehenderit aliqua ex incididunt ipsum Lorem ea ipsum pariatur. Id pariatur occaecat eu mollit deserunt minim eu pariatur.Pariatur sit dolore do aliquip fugiat id magna sunt nisi deserunt amet nulla. Ullamco minim aliquip ad deserunt. Ipsum nisi enim dolor ad ut nostrud consectetur dolor quis in nisi pariatur nostrud. Occaecat enim aute sint reprehenderit aliquip. Magna minim nisi magna deserunt sunt nulla sit adipisicing cupidatat pariatur.Sit consequat ipsum cillum velit deserunt reprehenderit nisi. Cillum mollit est incididunt fugiat ad esse ea. Mollit velit veniam ad laborum ullamco mollit anim magna voluptate dolor ea velit nostrud do. Minim dolor nisi elit adipisicing ullamco non laboris tempor cupidatat dolore labore officia pariatur aute. Aute laboris adipisicing laboris nulla ullamco officia aute.Pariatur id ex sint laboris sit ut incididunt deserunt officia ea. Ea Lorem id velit enim sunt. Exercitation enim aliqua ullamco in anim aliquip officia dolore consectetur nostrud officia. Mollit aliquip dolore elit est adipisicing incididunt eiusmod anim. Sit aute excepteur laboris consectetur aliqua.Laborum id excepteur in do irure sint pariatur laborum minim et nisi incididunt velit. Tempor magna quis mollit ut aliqua tempor sunt et non aute sit sit. Commodo nulla nisi commodo voluptate et proident dolor. Duis eu nulla nulla eu ut deserunt consequat et cillum elit. Eu culpa aute consequat deserunt elit commodo labore veniam eiusmod cupidatat dolore culpa culpa sint. Ad eu proident qui eiusmod commodo ullamco. Nostrud aute veniam ea exercitation occaecat sunt et anim sint ipsum.Consequat dolor cillum adipisicing ex ex. Occaecat est irure cupidatat reprehenderit proident ea qui non elit enim. Excepteur minim do id duis. Ea nulla incididunt id aliquip in adipisicing anim reprehenderit qui. Dolor veniam nisi culpa id commodo incididunt minim minim nostrud cupidatat velit commodo aliquip nisi.Mollit voluptate officia do et nulla cupidatat enim anim commodo incididunt est cupidatat ullamco. Amet sunt incididunt ut ut anim. Tempor esse dolor deserunt occaecat aliqua ea ex officia in eu deserunt. Sunt velit id laboris exercitation anim anim ullamco.Elit veniam sit pariatur reprehenderit qui ipsum labore. Magna proident dolor esse ea aute magna non aliquip et mollit cillum ipsum mollit duis. Ut consequat incididunt tempor veniam irure pariatur id aliquip laborum voluptate aliqua. Tempor occaecat minim amet ex non est sit irure. Ex officia ipsum magna reprehenderit velit adipisicing irure ullamco veniam."),
                      ),
                    ),
                    Center(
                      child: Text("It's rainy here"),
                    ),
                    Center(
                      child: Text("It's sunny here"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
