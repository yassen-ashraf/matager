import 'package:flutter/material.dart';
import 'package:matgar/items.dart';
import 'bilder.dart';
import 'detalse.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
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
              _buildNav(
                Icons.dashboard,
                'Dashboard',
              ),
              _buildNavItem(
                Icons.add_box,
                'Product',
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Items();
                      },
                    ));
                  },
                  child: _buildNavItem(Icons.storage, 'State')),
              _buildNavItem(Icons.chat, 'Chat Box'),
              const SizedBox(width: 2),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
                    onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                const Text("Back"),
                const SizedBox(width: 58),
                const Text(
                  "My Favorets",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            GridView.builder(
              itemCount: items.length,
              // دي عشان اعطل الاسكرول في الجراد فيو
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 250),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ItemDetails(
                          // data انا عمال متغير اسمو
                          // items هايتخزن في تفاصيل المتنج اللي هي مكتوبه في
                          data: items[index],
                        );
                      },
                    ));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            // padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  items[index]['image'],
                                  fit: BoxFit.cover,
                                  width: 200,
                                ),
                                const Positioned(
                                    top: 10,
                                    left: 145,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            items[index]['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, bottom: 2),
                          child: Text(
                            items[index]['price'],
                            style: const TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Text(
                                "1822\$",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Text(
                                "50%Off",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            children: [
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
                              const SizedBox(width: 3),
                              const Text("453")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.arrow_back),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                        child: Text(
                      '1',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                        child: Text(
                      '2',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                        child: Text(
                      '3',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.arrow_forward),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildNavItem(
  IconData icon,
  String label,
) {
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
