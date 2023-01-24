import 'package:flutter/material.dart';
import 'package:task3/common_widgets/common_widgets.dart';
import 'package:task3/styles/styles.dart';
import 'package:task3/models/setting_detials/setting_detials_models.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<SettingDetials> aboutSetting = [
    SettingDetials(
        name: 'Language',
        special: 'Personal Info',
        icon1: Icons.public,
        color1: BackGroundColor.color2,
        color2: IconColor.color2,
        color3: ContainerColor.color1),
    SettingDetials(
        name: 'Notifications',
        special: '',
        icon1: Icons.notifications,
        color1: BackGroundColor.color3,
        color2: IconColor.color3,
        color3: ContainerColor.color1),
    SettingDetials(
        name: 'Dark Mode',
        special: '',
        icon1: Icons.dark_mode,
        color1: BackGroundColor.color3,
        color2: IconColor.color3,
        color3: ContainerColor.color1),
    SettingDetials(
        name: 'Help',
        special: '',
        icon1: Icons.support,
        color1: BackGroundColor.color4,
        color2: IconColor.color4,
        color3: ContainerColor.color1)
  ];
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              const Text(
                'Setting',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account',
                    style: HeadingFonts.secondaryText,
                  ),
                  CommonContainer(
                    trailing: SizedBox(
                      //height: 40,
                      width: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => AccountPage())),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: BackGroundColor.color1),
                        child: const Icon(Icons.chevron_right,
                            color: Colors.black),
                      ),
                    ),
                    text: 'David Clerisseaujg',
                    text1: 'Personal Info',
                    icon: Icons.person,
                    color: BackGroundColor.color1,
                    color1: IconColor.color1,
                    color2: ContainerColor.color1,
                  ),
                ],
              ),
              Text(
                'Setting',
                style: HeadingFonts.primaryText,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: aboutSetting.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CommonContainer(
                        trailing: index != 2
                            ? Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BoxBorders.primaryBoxBorder,
                                  color: BackGroundColor.color1,
                                ),
                                child: const Icon(Icons.chevron_right,
                                    color: Colors.black))
                            : Switch(
                                value: _light,
                                onChanged: (value) {
                                  setState(() {
                                    _light = value;
                                  });
                                }),
                        text: aboutSetting[index].name,
                        text1: aboutSetting[index].special,
                        icon: aboutSetting[index].icon1,
                        color: aboutSetting[index].color1,
                        color1: aboutSetting[index].color2,
                        color2: aboutSetting[index].color3);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountPage extends StatefulWidget {
  AccountPage({super.key});

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(30, 40),
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 252, 250, 250),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => MyHomePage())),
                    );
                  },
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Acount',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Photo',
                      style: TextStyle(
                        color: Color.fromARGB(115, 171, 158, 189),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 90),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Color.fromARGB(115, 171, 158, 189),
                            child: Icon(
                              Icons.person,
                              size: 40,
                            ),
                          ),
                          Text(
                            'Uplode Photo',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Expanded(
            //child:
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Color.fromARGB(115, 171, 158, 189),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 80),
                    child: Text(
                      'David Clerisseau',
                      // style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            // ),
            Divider(
              color: Color.fromARGB(255, 180, 174, 174),
              // thickness: 0,
              // height: ,
              indent: 100,
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gender',
                      style: TextStyle(
                        color: Color.fromARGB(115, 171, 158, 189),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 112, 10, 162),
                        child: Icon(
                          Icons.male,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 110),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(115, 208, 204, 214),
                          child: Icon(Icons.female),
                        ))
                  ],
                ),
              ),
            ),
            // Expanded(
            // child:
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Age',
                    style: TextStyle(
                      color: Color.fromARGB(115, 171, 158, 189),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 180),
                    child: Text(
                      '23',
                      //style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
            // ),
            Divider(
              color: Color.fromARGB(255, 180, 174, 174),
              indent: 100,
            ),
            // Expanded(
            // child:
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      color: Color.fromARGB(115, 171, 158, 189),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        'Clerisseau@gmail.com',
                        // style:
                        // TextStyle(decoration: TextDecoration.underline),
                      ))
                ],
              ),
            ),
            // ),
            Divider(
              color: Color.fromARGB(255, 180, 174, 174),
              indent: 100,
            ),
          ],
        )),
      ),
    );
  }
}
