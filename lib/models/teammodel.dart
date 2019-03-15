class ChatModel
{
  final String name;
  String message;
  final String time;
  final String imageUrl;

  ChatModel({this.name, this.message, this.time, this.imageUrl});
}

List<ChatModel> messageData = [
   new ChatModel(
     name: "Ñaña Sports",
     message: "Hola como estas?",
      time: "15:30",
      imageUrl:
          "https://images-na.ssl-images-amazon.com/images/I/71rZRAKpczL._SX466_.jpg"),
  new ChatModel(
      name: "Tia Oti Boys",
      message: "Me encanta flutter!",
      time: "17:30",
      imageUrl:  
          "https://i.pinimg.com/originals/f6/5c/4d/f65c4d2223276318c21cd2048d3ef2bb.jpg"),
  new ChatModel(
      name: "Real Gluten",
      message: "Wassup !",
      time: "5:00",
      imageUrl:
          "https://img2.freepng.es/20180326/dtq/kisspng-fc-barcelona-uefa-champions-league-logo-fcb-5ab883fb7a0c15.9572095415220418514999.jpg"),
  new ChatModel(
      name: "FC Gariteros",
      message: "bye!",
      time: "10:30",
      imageUrl:
          "https://images.vexels.com/media/users/3/152348/isolated/preview/e292f8cec7eae5f8f4f25bcc36cfe5f5-brazil-football-team-logo-by-vexels.png"),
  new ChatModel(
      name: "Gluten United",
      message: "Nos vemos más tarde",
      time: "12:30",
      imageUrl:
          "https://cms-assets.tutsplus.com/uploads/users/151/posts/32220/image/FB11.jpg"
          ),
  new ChatModel(
      name: "FC Unión",
      message: "buenos días",
      time: "15:30",
      imageUrl:
          "https://cms-assets.tutsplus.com/uploads/users/151/posts/32220/image/FB11.jpg"
          ),
];