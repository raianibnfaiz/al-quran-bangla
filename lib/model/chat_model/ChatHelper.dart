
import 'ChatItemModel.dart';

class ChatHelper {

  static var chatList = [
    ChatItemModel("Al-Fatihah", "MECCAN | 7 VERSES", "10:28 PM" , "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg"),
    ChatItemModel("Al-Baqarah", "MADINAN | 286 VERSES", " 10:28 AM", "https://cdn.pixabay.com/photo/2021/03/02/16/34/woman-6063087_960_720.jpg"),
    ChatItemModel("Ali'Imran", "MADINAN | 200 VERSES", "Yesterday" , "https://cdn.pixabay.com/photo/2017/04/05/10/45/girl-2204622_960_720.jpg" ),
    ChatItemModel("An-Nisa'", "MADINAN | 176 VERSES", "Wednesday" , "https://cdn.pixabay.com/photo/2017/12/01/08/02/paint-2990357_960_720.jpg" ),
    ChatItemModel("Al-Ma'idah", "MECCAN | 120 VERSES", "16/01/2022", "https://cdn.pixabay.com/photo/2021/05/01/09/59/city-6220689_960_720.jpg"),
    ChatItemModel("Al-Fatihah", "MECCAN | 7 VERSES", "10:28 PM" , "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg"),
    ChatItemModel("Al-Baqarah", "MADINAN | 286 VERSES", " 10:28 AM", "https://cdn.pixabay.com/photo/2021/03/02/16/34/woman-6063087_960_720.jpg"),
    ChatItemModel("Ali'Imran", "MADINAN | 200 VERSES", "Yesterday" , "https://cdn.pixabay.com/photo/2017/04/05/10/45/girl-2204622_960_720.jpg" ),
    ChatItemModel("An-Nisa'", "MADINAN | 176 VERSES", "Wednesday" , "https://cdn.pixabay.com/photo/2017/12/01/08/02/paint-2990357_960_720.jpg" ),
    ChatItemModel("Al-Ma'idah", "MECCAN | 120 VERSES", "16/01/2022", "https://cdn.pixabay.com/photo/2021/05/01/09/59/city-6220689_960_720.jpg")];

  static ChatItemModel getChatItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;

}