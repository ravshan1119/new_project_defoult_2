import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_colors.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';
import 'package:new_project_defoult_2/widgets/air_lines_time.dart';
import 'package:new_project_defoult_2/widgets/air_plan.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: [
              Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [AppColors.C_6860D4, AppColors.C_F9C0BF],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AppImages.back),
                    const Text(
                      "SEARCH RESULT",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white),
                    ),
                    SvgPicture.asset(AppImages.contact),
                  ],
                ),
              ),
              const AirPlane(),
              Padding(
                padding: EdgeInsets.only(
                    top: height * (168 / 812), left: 20, right: 20),
                child: ListView(
                  children: const [
                    AirLinesTime(
                        days: "+1 Days",
                        info: "FLIGHT INFO",
                        stop: "1 stop",
                        icon: AppImages.image,
                        companyName: "Turkish Airlines",
                        time: "17hrs 15mins",
                        price: "\$1070",
                        county1: "NYC",
                        county1time: "09:45",
                        county2: "DXB",
                        county2time: "19:00"),
                    AirLinesTime(
                        days: "+1 Days",
                        info: "FLIGHT INFO",
                        stop: "1 stop",
                        icon: AppImages.image2,
                        companyName: "Ethiopian Airlines",
                        time: "17hrs 15mins",
                        price: "\$1140",
                        county1: "NYC",
                        county1time: "11:00",
                        county2: "DXB",
                        county2time: "20:00"),
                    AirLinesTime(
                        days: "+1 Days",
                        info: "FLIGHT INFO",
                        stop: "1 stop",
                        icon: AppImages.image3,
                        companyName: "Etihad Airways",
                        time: "17hrs 15mins",
                        price: "\$1210",
                        county1: "NYC",
                        county1time: "09:45",
                        county2: "DXB",
                        county2time: "19:00"),
                    AirLinesTime(
                        days: "+1 Days",
                        info: "FLIGHT INFO",
                        stop: "Non Stop",
                        icon: AppImages.image4,
                        companyName: "Turkish Airlines",
                        time: "17hrs 15mins",
                        price: "\$1430",
                        county1: "NYC",
                        county1time: "11:20",
                        county2: "DXB",
                        county2time: "07:20"),
                    AirLinesTime(
                        days: "+1 Days",
                        info: "FLIGHT INFO",
                        stop: "1 stop",
                        icon: AppImages.image,
                        companyName: "Turkish Airlines",
                        time: "17hrs 15mins",
                        price: "\$1070",
                        county1: "NYC",
                        county1time: "09:45",
                        county2: "DXB",
                        county2time: "19:00"),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: height * (748 / 812)),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          gradient: LinearGradient(colors: [
                            AppColors.C_6760D4,
                            AppColors.C_A435FC,
                          ])),
                      height: height * (40 / 812),
                      width: width * (151 / 375),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            primary: Colors.transparent),
                        onPressed: () {},
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          SvgPicture.asset(AppImages.funner),
                          SizedBox(width: 4,),
                          Text("Filter")
                        ]),
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
