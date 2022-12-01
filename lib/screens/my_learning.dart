import 'package:flutter/material.dart';
import 'package:msbm/screens/widgets/my_course_list.dart';

import '../data/app_data.dart';

class MyLearning extends StatefulWidget {
  const MyLearning({super.key});

  @override
  State<MyLearning> createState() => _MyLearning();
}

class _MyLearning extends State<MyLearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: const Text('My Courses'),
        toolbarHeight: 50,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ),
        ],
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 50,
              child: MySelectedWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            const MycourseList(
              icon: SizedBox(),
              headerText: 'React Tutorial and Projects Course (2022)',
              name: 'John Smilga',
              percentageRate: '20% complete',
              progressValue: 0.2,
            ),
            const SizedBox(
              height: 20,
            ),
            const MycourseList(
              headerText: 'React Tutorial and Projects Course (2022)',
              icon: Icon(
                Icons.download_for_offline_outlined,
                color: Colors.grey,
              ),
              name: '6 lectures download',
              percentageRate: '90% complete',
              progressValue: 0.9,
            ),
            const SizedBox(
              height: 20,
            ),
            const MycourseList(
              icon: SizedBox(),
              headerText: 'React Tutorial and Projects Course (2022)',
              name: 'The NetNinja',
              percentageRate: '80% complete',
              progressValue: 0.8,
            ),
            const SizedBox(
              height: 20,
            ),
            const MycourseList(
              icon: SizedBox(),
              headerText: 'React Tutorial and Projects Course (2022)',
              name: 'Academind by Maxmilian',
              percentageRate: '40% complete',
              progressValue: 0.4,
            ),
            const SizedBox(
              height: 20,
            ),
            const MycourseList(
              icon: SizedBox(),
              headerText: 'React Tutorial and Projects Course (2022)',
              name: 'Jeff Batt',
              percentageRate: '10% complete',
              progressValue: 0.1,
            ),
            const SizedBox(
              height: 20,
            ),
            const MycourseList(
              icon: SizedBox(),
              headerText: 'React Tutorial and Projects Course (2022)',
              name: 'Andrew Patch',
              percentageRate: '70% complete',
              progressValue: 0.7,
            ),
            const SizedBox(
              height: 20,
            ),
            const MycourseList(
              icon: SizedBox(),
              headerText: 'React Tutorial and Projects Course (2022)',
              name: 'John Smilga',
              percentageRate: '80% complete',
              progressValue: 0.8,
            ),
            const SizedBox(
              height: 20,
            ),
            const MycourseList(
              icon: SizedBox(),
              headerText: 'React Tutorial and Projects Course (2022)',
              name: 'John Smilga',
              percentageRate: '60% complete',
              progressValue: 0.6,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class MySelectedWidget extends StatelessWidget {
  const MySelectedWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final items = AppData.myCourses;
    return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final chipItem = items[index];
          return ChipWidget(
            text: chipItem,
          );
        });
  }
}

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterChip(
          label: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          shape: const StadiumBorder(side: BorderSide(color: Colors.white)),
          backgroundColor: Colors.black,
          labelPadding: const EdgeInsets.symmetric(horizontal: 20),
          onSelected: (bool value) {},
        ),
        SizedBox(
          width: 6,
        )
      ],
    );
  }
}
