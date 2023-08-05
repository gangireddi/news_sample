import 'package:flutter/material.dart';
import 'package:news_sample/constants/app_colors.dart';
import 'package:news_sample/model/location.dart';
import 'package:news_sample/utils/navigation_util.dart';
import 'package:news_sample/view/screens/home_page.dart';
// import 'package:palamur_news_app/pages/home_page.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocationsList extends StatefulWidget {
  const LocationsList({Key? key}) : super(key: key);

  @override
  _LocationsListState createState() => _LocationsListState();
}

class _LocationsListState extends State<LocationsList> {

  List<String> array = ["ఆదిలాబాద్","భద్రాద్రి కొత్తగూడెం","హనుమకొండ","హైదరాబాద్","జగిత్యాల","జాంగోవన్","జయశంకర్ భూపాలపల్లి","జోగులాంబ గద్వాల్","కామారెడ్డి","కరీంనగర్","ఖమ్మం","కొమరం భీమ్ ఆసిఫాబాద్","మహబూబాబాద్","మహబూబ్ నగర్","మంచేరియల్","మెదక్","మేడ్చల్-మల్కాజ్‌గిరి","ములుగు","నాగర్‌కర్నూల్","నల్గొండ","నారాయణపేట","నిర్మల్","నిజామాబాద్","పెద్దపల్లి","రాజన్న సిరిసిల్ల","రంగారెడ్డి","సంగారెడ్డి","సిద్దిపేట","సూర్యాపేట","వికారాబాద్","వనపర్తి","వరంగల్","యాదాద్రి భువనగిరి"];
  List<LocationModel> locations = [];
  bool isToShowContinueButton = false;
  @override
  void initState() {
    super.initState();
    for(String x in array) {
      locations.add(LocationModel(locationId: 0,locName: x,isSelected: false));
    }
    _requestLocationPermission();
  }

  void _requestLocationPermission() async {
    var status = await Permission.location.request();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,color: AppColors.appBackGroundColor,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SafeArea(child: SizedBox(height: 40,child: Center(child: Text('స్థానాన్ని ఎంచుకోండి',style: TextStyle(fontSize: 25,color: AppColors.white,fontWeight: FontWeight.bold),)))),
                Expanded(
                  child: ListView.builder(
                      itemCount: locations.length,
                      itemBuilder: (BuildContext context, int index) {
                        Color customColor = Colors.primaries[(index+3) % Colors.primaries.length];
                        return Container(
                          height: 60,
                          color: customColor,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: customColor, width: 2.0),
                                  borderRadius: const BorderRadius.all(Radius.circular(5))
                              ),
                              child: TextButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(locations[index].locName,style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: AppColors.white),textAlign: TextAlign.left,),
                                    Icon(
                                      locations[index].isSelected ?  Icons.check_box : Icons.check_box_outline_blank_sharp,
                                      size: 25.0,
                                      color: AppColors.white,
                                    )
                                  ],
                                ),
                                onPressed: () async {
                                  setState(() {
                                    locations[index].isSelected = !locations[index].isSelected;
                                    isToShowContinueButton = false;
                                    for(LocationModel loc in locations) {
                                      if(loc.isSelected == true) {
                                        isToShowContinueButton = true;
                                        break;
                                      }
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
                Visibility(visible: isToShowContinueButton, child: Row(
                  children: [
                    Expanded(
                      child: Container(height: 60,color: AppColors.appBackGroundColor ,child: TextButton(
                        child: const Text('కొనసాగించు',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.left,),
                        onPressed: () async {
                          List<LocationModel> selectedLoc= [];
                          for(LocationModel loc in locations) {
                            if(loc.isSelected == true) {
                              selectedLoc.add(loc);
                            }
                          }
                          final String encodedData = LocationModel.encode(selectedLoc);
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setString('selectedLocations', encodedData);
                          NavigationUtil.navigateTo(HomePage());
                        },
                      ),),
                    ),
                  ],
                ))
              ],
            ),
          ],
        )
    );
  }
}

