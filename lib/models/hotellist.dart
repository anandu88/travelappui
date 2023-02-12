class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

   Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });

  }
  final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'http://cdn.cnn.com/cnnnext/dam/assets/170811132803-hotel-danieli-venice.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),
  Hotel(
    imageUrl: 'https://media.cntraveler.com/photos/614b49b28accb5d458a6ab29/master/pass/The%20St.%20Regis%20Venice_strVCEXRst.1021696.jpg',

    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
  ),
  Hotel(
    imageUrl: 'https://www.italymammamia.com/images/foscari-palace-hotel-venice-13.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),
];