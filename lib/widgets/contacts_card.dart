import 'package:flutter/material.dart';

import '../common/hexcolor.dart';

class ContactsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints.tightFor(height: 100),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: HexColor('9FB8D3'),
      ),

      child: SizedBox(
        child: CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: HexColor('ECF684'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            onPressed: () {},
                            child: Center(
                                child: Text(
                              'MO',
                              style: TextStyle(
                                color: HexColor('AED1F4'),
                                fontSize: 35,
                              ),
                            )),
                          ),
                        ),
                      ),
                      //           SettingButton(
                      //             mapKey: args[index].toString(),
                      //             press: () {},
                      //           ),
                    ],
                  );
                },
                //     childCount: args.length,
                childCount: 3,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: HexColor('ECF684'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          onPressed: () {},
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
