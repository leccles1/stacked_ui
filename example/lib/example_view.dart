import 'package:flutter/material.dart';
import 'package:stacked_ui/stacked_ui.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Stacked UI Playground"),
      // ),
      backgroundColor: kcBackgroundColour,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Create',
        child: Container(
          child: const Icon(
            Icons.add,
            size: 32,
          ),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: kcPrimaryColour.withOpacity(0.3),
                spreadRadius: 21,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
        backgroundColor: kcPrimaryColour,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color(0xFFFFFFFF),
        child: Row(
          children: [
            horizontalSpaceMedium,
            IconButton(
              tooltip: 'Home',
              icon: const Icon(
                Icons.home_outlined,
                color: kcSecondaryColour,
              ),
              iconSize: 36.0,
              onPressed: () {},
            ),
            horizontalSpaceMedium,
            IconButton(
              tooltip: 'Logbook',
              icon: const Icon(
                Icons.menu_book_outlined,
                color: kcSecondaryColour,
              ),
              iconSize: 36.0,
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              tooltip: 'Analytics',
              icon: const Icon(
                Icons.insights,
                color: kcSecondaryColour,
              ),
              iconSize: 36.0,
              onPressed: () {},
            ),
            horizontalSpaceMedium,
            IconButton(
              tooltip: 'Settings',
              icon: const Icon(
                Icons.settings_outlined,
                color: kcSecondaryColour,
              ),
              iconSize: 36.0,
              onPressed: () {},
            ),
            horizontalSpaceMedium,
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        children: [
          verticalSpaceLarge,
          const StackedText.headingOne("H1 - Title"),
          verticalSpaceSmall,
          const StackedText.headingTwo("H2 - Title"),
          verticalSpaceSmall,
          const StackedText.headingThree("H3 - Title"),
          verticalSpaceSmall,
          const StackedText.headline("Headline Text"),
          verticalSpaceSmall,
          const StackedText.subheading("Subheading"),
          verticalSpaceSmall,
          StackedText.body("Body Text"),
          verticalSpaceSmall,
          const StackedText.caption("Caption Text"),
          verticalSpaceSmall,
          StackedButton(
            title: "Test",
            onTap: () => print('enabled'),
          ),
          verticalSpaceSmall,
          StackedButton.outline(
            title: "Outline",
            onTap: () {
              print("outline");
            },
          ),
          verticalSpaceSmall,
          StackedButton(
            title: "Disabled",
            onTap: () => print("disabled"),
            disabled: true,
          ),
          verticalSpaceSmall,
          StackedButton(
            title: "Busy",
            busy: true,
            onTap: () => print("Busy"),
          ),
          verticalSpaceLarge,
          StackedText.body("Leading & trailing Icons"),
          verticalSpaceTiny,
          StackedInput(
            controller: TextEditingController(),
            leading: const Icon(Icons.access_alarm),
            placeholder: "With Icon leading & trailing",
            trailing: const Icon(Icons.ac_unit_sharp),
          )
        ],
      ),
    );
  }
}
