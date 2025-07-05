import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  // bilder هنا عملنا متغير عشان ناخد في كل المعلوما بتاعت الصور و الالاسماء و الاسعار عن طريق ال
  final data;
  const ItemDetails({super.key, this.data});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.red, // لون الخلفية
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 2),
              _buildNav(Icons.home_outlined, 'Home'),
              _buildNavItem(Icons.category_outlined, 'Categories'),
              _buildNavItem(Icons.chat_bubble_outline, 'Chat Box'),
              _buildNavItem(Icons.shopping_cart_outlined, 'Cart'),
              const SizedBox(width: 2),
            ],
          ),
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[200],
      //   elevation: 0,
      //   title: const Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Icon(Icons.replay_outlined),
      //       Text(
      //         " Ecomerce ",
      //         style: TextStyle(color: Colors.black, fontSize: 20),
      //       ),
      //       Text(
      //         "Yassen",
      //         style: TextStyle(color: Colors.orange, fontSize: 20),
      //       )
      //     ],
      //   ),
      // ),
      // endDrawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/hhh.jpeg",
                    width: 70,
                    height: 70,
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Badge(
                        label: Text(''),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          // size: 20,
                        ),
                      )),
                  // const SizedBox(width: 5),
                  IconButton(
                      onPressed: () {},
                      icon: const Badge(
                        label: Text('5'),
                        child: Icon(Icons.notifications_none_outlined),
                      )),
                  const SizedBox(width: 12),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 105, 155),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(child: Icon(Icons.person_3_outlined)),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search here",
                      fillColor: Colors.white,
                      // filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.filter_list_sharp),
                        iconSize: 38,
                      )),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Text("Back"),
                  const Spacer(),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 4),
                ],
              ),
              Image.asset(
                widget.data['image'],
                fit: BoxFit.cover,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    widget.data['title'],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Row(
                children: [
                  Container(
                      // margin: const EdgeInsets.only(top: 10, bottom: 25),
                      child: Text(
                    widget.data['price'],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                  const SizedBox(width: 6),
                  const Text(
                    "1822\$",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 18,
                        color: Colors.grey),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    "50%Off",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 19,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 19,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 19,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 19,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 19,
                  ),
                  const SizedBox(width: 5),
                  const Text("453")
                ],
              ),
              const SizedBox(height: 10),
              Row(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  const Text(
                    "Color : ",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.purple, width: 2)),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      // border: Border.all(color: Colors.orange, width: 2),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 138, 28, 255),
                      borderRadius: BorderRadius.circular(30),
                      // border: Border.all(color: Colors.orange, width: 2),
                    ),
                  ),
                  const Spacer(),
                  const Text("Size"),
                  const SizedBox(width: 14),
                  const Text("S"),
                  const SizedBox(width: 14),
                  const Text("M"),
                  const SizedBox(width: 14),
                  const Text("L"),
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 19),
              Row(
                children: [
                  const SizedBox(width: 22),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                        child: Text(
                      '-',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    "1",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                        child: Text(
                      '+',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )),
                  ),
                  const SizedBox(width: 17),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      // margin: const EdgeInsets.symmetric(horizontal: 40),
                      alignment: Alignment.center,
                      // margin: EdgeInsets.only(top: ),
                      height: 35,
                      width: 180,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      child: const Text(
                        "Add To Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Reviews",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Image.asset(
                    "assets/image copy 11.png",
                    width: 42,
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    "Hannah Johnson",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 18,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Больше всего понравилась окраска кружки, но,к сожалению,после первой стирки в посудомоечной машинке появились",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Image.asset(
                    "assets/image copy 12.png",
                    width: 42,
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    "David Henry",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Fits perfectly and very high material 👌🏻👌🏻 I totally recommend it!",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                    style: const ButtonStyle(),
                    onPressed: () {},
                    child: const Text(
                      'VIEW MORE',
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildNavItem(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: Colors.white),
      Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    ],
  );
}

Widget _buildNav(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: Colors.black),
      Text(
        label,
        style: const TextStyle(color: Colors.black, fontSize: 12),
      ),
    ],
  );
}
