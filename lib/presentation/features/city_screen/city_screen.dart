import 'package:flutter/material.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/common/city.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    List<City> cities =
        City.citiesList.where((city) => city.isDefault == false).toList();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading:
              true, //make bool param for choise city in starter page

          backgroundColor: AppColors.lightBlue,
          title: const Text(
            "SELECT CITY",
            style: TextStyle(
                fontSize: 18,
                color: AppColors.white,
                fontWeight: FontWeight.w600),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.lightBlue,
          splashColor: Colors.transparent,
          child: const Icon(
            Icons.location_pin,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  cities[index].isSelected = !cities[index].isSelected;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 60,
                decoration: BoxDecoration(
                    border: cities[index].isSelected == true
                        ? Border.all(color: AppColors.lightBlue, width: 1)
                        : Border.all(color: AppColors.white, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.lightBlue.withOpacity(.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 4))
                    ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Icon(
                        cities[index].isSelected == true //fix it
                            ? Icons.check
                            : Icons.radio_button_unchecked,
                        color: AppColors.lightBlue,
                      ),
                    ),
                    Text(cities[index].cityName,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.textColor,
                            fontSize: 15))
                  ],
                ),
              ),
            );
          },
        ));
  }
}
