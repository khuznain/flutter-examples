class AppMedia {
  static const String _imagePath = 'lib/assets/images';

  // Logo
  static const String logo = '$_imagePath/logo.png';

  static const String cityView = '$_imagePath/city_view.png';
  static const String cityView1 = '$_imagePath/city_view_1.png';
  static const String cityView2 = '$_imagePath/city_view_2.png';
  static const String cityView3 = '$_imagePath/city_view_3.png';

  static const String hotelRoom = '$_imagePath/hotel_room.png';
  static const String hotelRoom1 = '$_imagePath/hotel_room_1.png';
  static const String hotelRoomView1 = '$_imagePath/hotel_room_view_1.png';
  static const String hotelRoomView2 = '$_imagePath/hotel_room_view_2.png';
  static const String hotelRoomView3 = '$_imagePath/hotel_room_view_3.png';

  static const String poolView = '$_imagePath/pool_view.png';
  static const String poolView1 = '$_imagePath/pool_view_1.png';
  static const String poolView2 = '$_imagePath/pool_view_2.png';
  static const String poolView3 = '$_imagePath/pool_view_3.png';

  static const String planeSit = '$_imagePath/plane_sit.jpg';
  static const String flutterCarApp = '$_imagePath/flutter car app.jpg';

  static const String visaCard = '$_imagePath/visa_card.png';

  static List<String> get cityViews => [
    cityView,
    cityView1,
    cityView2,
    cityView3,
  ];
  static List<String> get hotelRoomViews => [
    hotelRoom,
    hotelRoom1,
    hotelRoomView1,
    hotelRoomView2,
    hotelRoomView3,
  ];
  static List<String> get poolViews => [
    poolView,
    poolView1,
    poolView2,
    poolView3,
  ];
  static List<String> get transportationImages => [planeSit, flutterCarApp];
}
