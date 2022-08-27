import 'package:flutter/material.dart';
import 'package:weather_app/presentation/common/app_colors.dart';

class DaysList extends StatelessWidget {
  const DaysList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 40),
      child: Column(
        children: [
          SizedBox(
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Today",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "7 days",
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: AppColors.lightBlue,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 500,
            height: 35,
            child: ListView(
              padding: const EdgeInsets.only(
                left: 25,
              ),
              scrollDirection: Axis.horizontal,
              children: const [
                ListButton(),
                ListButton(),
                ListButton(),
                ListButton(),
                ListButton(),
                ListButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ListButton extends StatelessWidget {
  const ListButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: OutlinedButton(
          style: ButtonStyle(
              side: MaterialStateProperty.all(
                  const BorderSide(color: AppColors.oceanBlue))),
          onPressed: () {},
          child: const Text(
            "Test 10 Test",
            style: TextStyle(color: Colors.black87),
          )),
    );
  }
}
