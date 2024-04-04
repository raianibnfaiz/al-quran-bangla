
import 'package:flutter/material.dart';
import '../model/chat_model/ChatHelper.dart';
import '../model/chat_model/ChatItemModel.dart';
import '../screens/chat_screen.dart';


class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        ChatItemModel chatItem = ChatHelper.getChatItem(position);
        return Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    ChatScreen(
                      image: chatItem.image, name: chatItem.name,
                    )));
              },
              child: ListTile(
                leading:  Icon(Icons.stars, size: 30),
                title:  Text(
                  chatItem.name,
                  selectionColor: Color.fromRGBO(166, 131, 8, 1.0),
                ),
                subtitle: Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      chatItem.mostRecentMessage,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontFamily: 'Regular',color: Color.fromRGBO(162, 121, 2, 1.0))
                    ),
                  ],
                ) ,
                trailing:Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Icon(Icons.file_download, size: 30,color: Colors.green,)

                ),),
            ),
            Divider(),
          ],
        );
      },
      itemCount: ChatHelper.itemCount,
    );
  }
}
