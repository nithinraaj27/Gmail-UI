import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: new ThemeData(
      primaryColor: const Color(0xffB23121),
      accentColor: const Color(0xffD44638),
    ),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Primary"),
        actions: [
          Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search,color: Colors.white,size: 25,))
        ],
      ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height:200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/bk.jfif"),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: ExactAssetImage("assets/one.jfif"),
                      ),
                      SizedBox(height: 5,),
                      Text("Mark Browne",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 15.0),),
                      SizedBox(height: 2,),
                      Text("marksbrowne@gmail.com",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 10.0),)
                    ],
                  ),
                ),
              ),
              drawlist(idata:Icons.inbox,titile: "All Inboxes",count: '',cls: Colors.white),
              Divider(height: 0.2,),
              drawlist(idata:Icons.people,titile: "Primary",count: "99+",cls: Colors.blue),
              Divider(height: 0.2,),
              drawlist(idata:Icons.more,titile: "Social",count: "2 New",cls: Colors.redAccent),
              Divider(height: 0.2,),
              drawlist(idata:Icons.star,titile: "Promotions",count: "",cls: Colors.white),
              Divider(height: 0.2,),
              drawlist(idata:Icons.alarm,titile: "Starred",count: "2",cls: Colors.white),
              Divider(height: 0.2,),
              drawlist(idata:Icons.play_arrow,titile: "Snoozed",count: "",cls: Colors.white),
              Divider(height: 0.2,),
              drawlist(idata:Icons.mail_outline,titile: "Important",count: "",cls: Colors.white),
              Divider(height: 0.2,),
              drawlist(idata:Icons.bookmark,titile: "Sent",count: "99+",cls: Colors.blue),
              Divider(height: 0.2,),
              drawlist(idata:Icons.insert_drive_file,titile: "Outbox",count: "",cls: Colors.white),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: (){},
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopTail(title: 'Social',desc: 'Google+',idata: Icons.people,Icolor: Colors.blue,msg: "1 New"),
              Divider(height: 0.2 ),
              TopTail(title: 'Promotions',desc:'Swiggy,Google Offers',idata: Icons.more, Icolor: Colors.green,msg: "2 New"),
              Divider(height: 0.2 ,),
              TopTail(title: 'Social',desc: 'Google play',idata: Icons.info, Icolor: Colors.orange,msg: "3 New"),
              Divider(height: 0.2 ,),
              msgTile(title: "Andy Browne",desc: "Baby where are u",tym: "1.42 pm",Url: 'assets/one.jfif',isUnread: true),
              Divider(height: 0.2,),
              msgTile(title: "Emma Watson",desc: 'I love u',tym: "2.50 am",Url: 'assets/two.jfif',isUnread: false),
              Divider(height: 0.2,),
              msgTile(title: "Casentra",desc: "Miss U",tym: "3.50 pm",Url: 'assets/three.jfif',isUnread: true),
              Divider(height: 0.2,),
              msgTile(title: "Hollope",desc: "Come to home <3",tym: "11.11 pm",Url: 'assets/four.jfif',isUnread: true),
              Divider(height: 0.2,),
              msgTile(title: "Alexandra",desc: "Baby..",tym: "11.14pm",Url: 'assets/five.jfif',isUnread: false),
              Divider(height: 0.2,),
              msgTile(title: "Dardaria",desc: "darling..",tym: "12.12pm",Url: 'assets/six.jfif',isUnread: true),
              Divider(height: 0.2,),
              msgTile(title: "Samanta",desc: "Hey Sexy..",tym: "11.11pm",Url: 'assets/7.jfif',isUnread: false),
              Divider(height: 0.2,),
              msgTile(title: "Amy",desc: "hotiee",tym: "11.11pm",Url: 'assets/8.jfif',isUnread: true),
              Divider(height: 0.2,),
            ],
          ),
        ),
        ),
      );
  }

  ListTile drawlist({String titile,IconData idata,String count,Color cls}) {
    return ListTile(
              leading: Icon(idata),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(titile,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Container(
                    color: cls,
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                    child: Text(count,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                  )
                ],
              ),

            );
  }

  ListTile msgTile({String title,String desc,String tym,String Url,bool isUnread}) {
    return ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: ExactAssetImage(Url),
            ),
            title:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,style: TextStyle(fontWeight: isUnread ?FontWeight.bold:FontWeight.normal),),
                Text(tym)
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(desc,style: TextStyle(fontWeight: isUnread ?FontWeight.bold:FontWeight.normal),),
                Icon(Icons.star_border,size: 20.0,)
              ],
            ),

          );
  }

  ListTile TopTail({String title,String desc,IconData idata,Color Icolor,String msg}) {
    return ListTile(
            leading: Container(
                margin: EdgeInsets.only(left: 15),
                child: Icon(idata,color: Icolor,)),
            title:  Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(desc),
            trailing: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
              color: Icolor,
              child: Text(msg,style: TextStyle(color: Colors.white),),
            ),
          );
  }
}

