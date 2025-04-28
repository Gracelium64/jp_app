List<MenuItem> itemsData = [

MenuItem(
  "Mogli's Cup",
  'Strawberry ice cream',
  'Our best seller!',
  8.99,
  5.99,
  2.99,
  4,
  200,
  'Sweet',
  'assets/graphics/cupkake_cat.png',
  ),

MenuItem(
  "Balu's Cip", 
  'Pistachio ice cream', 
  'Dubai ice cream',
  8.99, 
  5.99, 
  2.99, 
  4, 
  310, 
  'Sweet',
  'assets/graphics/icecream.png'),

MenuItem(
  'Smiling David', 
  'Coffee ice cream', 
  'Wake and shake',
  3.99, 
  2.99, 
  1.99, 
  4, 
  310, 
  'Sweet',
  'assets/graphics/icecream_stick.png'),

MenuItem(
  'Kai in a Cone', 
  'Vanilla ice cream', 
  'Might be vailla, but with a twist',
  3.99, 
  2.99, 
  1.99, 
  4, 
  290, 
  'Sweet',
  'assets/graphics/icecream_cone.png'),

MenuItem(
  "Angi's Yummy Burger", 
  'Vegan Burger', 
  'Delish vegan burger that tastes like heaven', 
  13.99, 
  9.99, 
  5.99, 
  4.8, 
  666, 
  'Salty',
  'assets/graphics/burger.png'),

];


class MenuItem {
  final String itemTitle;
  final String itemSubTitle;
  final String itemDescription;
  final double itemPriceL;
  final double itemPriceM;
  final double itemPriceS;
  final double itemStars;
  final int itemLikes;
  final String itemCatagory;
  final String imgPath;

  MenuItem(this.itemTitle, this.itemSubTitle, this.itemDescription, this.itemPriceL, this.itemPriceM, this.itemPriceS, this.itemStars, this.itemLikes, this.itemCatagory, this.imgPath);
}