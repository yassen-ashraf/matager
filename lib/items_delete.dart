import 'package:flutter/material.dart';
import 'package:matgar/item_detal.dart';
import 'package:matgar/items.dart';

class ItemsDelete extends StatelessWidget {
  const ItemsDelete({super.key});

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
              _buildNavItem(Icons.add_box, 'Product', Colors.white),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Items();
                      },
                    ));
                  },
                  child: _buildNavItem(Icons.storage, 'State', Colors.black)),
              _buildNavItem(Icons.chat, 'Chat Box', Colors.white),
              const SizedBox(width: 2),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
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
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 224, 224),
                  borderRadius: BorderRadius.circular(200)),
              child: IconButton(
                  alignment: Alignment.center,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ItemDetals();
                  },
                ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/WhatsApp Image 2025-02-23 at 16.41.57_007e3ab1.jpg",
                    width: 130,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          size: 40,
                          Icons.delete_outlined,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Delete",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Graphic card GIGABYTE GeForce RTX 3050",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildNavItem(
  IconData icon,
  String label,
  Color color,
) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: color),
      Text(
        label,
        style: TextStyle(color: color, fontSize: 12),
      ),
    ],
  );
}

Widget _buildNav(IconData icon, String label) {
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
