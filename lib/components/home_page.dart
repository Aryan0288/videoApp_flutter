import 'package:flutter/material.dart';
import 'package:videoappdo/components/current_user.dart';
import 'package:videoappdo/components/routes.dart';
import 'package:videoappdo/components/text_field_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final callID=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        title:const Text('Call App', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white
        ),),
      ),
      body:WillPopScope(
        onWillPop: ()async{
          return false;
        },
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Your Phone Number: ${currentUser.id}'),
              const SizedBox(height: 20,),
              Text('Enter Phone Number', style: TextStyle(
                fontSize: 18,color: Colors.grey[700] ),), // TextStyle, Text
                const SizedBox (height: 10,),
              joinCallContainer()
        ],
      ),
      )
    );
  }
  Widget joinCallContainer() {
    return Center(
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            children: [
            TextFieldWidgets(
            controller: callID,
            hintText: 'join call by id',
            icon:const SizedBox()
        ),
// TextFieldWidget
        const SizedBox(height: 20,),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: (){
              if(callID.text.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please input Unique ID'),
                  duration: Duration(seconds: 1),
                  )
                );
                print('please input unique id');
              }else{
                Navigator.pushNamed(context, PageRouteNames.call,
                    arguments:<String,String>{
                    PageParam.coll_id:callID.text.trim()
                    }
                );
              }
            },
             style: ElevatedButton.styleFrom(
                  padding:const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
             ),
            child:const Text('Call Now', style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),)
          ),
        )// ElevatedButton
          ],
        ), // Column
      ), // Padding
    ); // Center
  }
}
