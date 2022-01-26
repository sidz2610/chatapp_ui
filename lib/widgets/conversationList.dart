import 'package:chatapp_ui/screens/chatDetailPage.dart';
import 'package:flutter/material.dart';

class ConversationList extends StatefulWidget {
  String name;
  String messageText;
  String imageURL;
  String time;
  bool isMessageRead;
  ConversationList({required this.name,required this.messageText,required this.imageURL,required this.time,required this.isMessageRead});
  // const ConversationList({Key? key}) : super(key: key);
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ChatDetailsPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.imageURL),
                  maxRadius: 30,
                ),
                SizedBox(width: 16,),
                Expanded(child: Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.name,style: TextStyle(fontSize: 16),),
                      SizedBox(height: 6,),
                      Text(widget.messageText,style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
                    ],
                  ),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
