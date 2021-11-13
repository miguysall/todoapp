import 'package:flutter/material.dart';
import 'package:todoapp/common/SliderItem.dart';
import 'package:todoapp/common/common.dart';
import 'package:todoapp/common/task_item.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/models/category.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double screenHeight = MediaQuery.of(context).size.height;

    Task myTask =
        Task("Meeting with dev team", DateTime.now(), false, Category.Business);

    Task myDoneTask = Task("Laundry", DateTime.now(), true, Category.Personnal);
    Task myOtherTask =
        Task("Chores", DateTime.now(), false, Category.Personnal);

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: businessIndicator,
        child: Icon(
          Icons.add,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(color: secondBackground),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu,
                            color: thirdFondColor.withOpacity(.5))),
                    Row(children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search,
                              color: thirdFondColor.withOpacity(.5))),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_outlined,
                            color: thirdFondColor.withOpacity(.5),
                          )),
                    ])
                  ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "What's up, Olivia!",
                style: TextStyle(
                    fontFamily: boldFont, fontSize: 40, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "CATEGORIES",
                style: TextStyle(
                  color: thirdFondColor.withOpacity(0.6),
                  fontFamily: regularFont,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  SliderItem(
                    category: Category.Business,
                    tasksCount: 40,
                    indicatorColor: businessIndicator,
                    screenWidth: screenWidth,
                    terminationPercentage: .6,
                  ),
                  SliderItem(
                    category: Category.Personnal,
                    tasksCount: 40,
                    indicatorColor: personalIndicator,
                    screenWidth: screenWidth,
                    terminationPercentage: .6,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "TASKS",
                style: TextStyle(
                  color: thirdFondColor.withOpacity(0.6),
                  fontFamily: regularFont,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: .38 * screenHeight,
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  TaskItem(
                    task: myTask,
                  ),
                  TaskItem(
                    task: myTask,
                  ),
                  TaskItem(
                    task: myDoneTask,
                  ),
                  TaskItem(
                    task: myTask,
                  ),
                  TaskItem(
                    task: myTask,
                  ),
                  TaskItem(
                    task: myOtherTask,
                  ),
                  TaskItem(
                    task: myTask,
                  ),
                  TaskItem(
                    task: myTask,
                  ),
                  TaskItem(
                    task: myTask,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
