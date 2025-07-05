import 'package:flutter/material.dart';

class ItemDetals extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController availabilityController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  ItemDetals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 13,
            ),
            Image.asset(
              "assets/hhh (1).jpeg",
              scale: 14,
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
            const Text("Fill in the basic information",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("Title",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: "Graphic card GIGABYTE GeForce RTX 3050",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))),
                filled: true,
                fillColor: Color.fromARGB(255, 231, 230, 230),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              controller: descriptionController,
              maxLines: 4,
              decoration: const InputDecoration(
                hintText:
                    "The NVIDIA RTX 3050 graphics card is a design equipped with 8GB of GDDR6 memory, supports PCI-E 4.0 and offers a number of unique technologies from NVIDIA to enhance the smoothness and high quality of generated graphics. At the same time, it provides support for Ray Tracing, allowing you to enjoy photorealistic graphics.",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))),
                filled: true,
                fillColor: Color.fromARGB(255, 231, 230, 230),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Number of units available",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              controller: availabilityController,
              decoration: const InputDecoration(
                hintText: "Availability",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))),
                filled: true,
                fillColor: Color.fromARGB(255, 231, 230, 230),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Price",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                hintText: "Product price",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))),
                filled: true,
                fillColor: Color.fromARGB(255, 231, 230, 230),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Update",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
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
              _buildNavItem(Icons.storage, 'State', Colors.black),
              _buildNavItem(Icons.chat, 'Chat Box', Colors.white),
              const SizedBox(width: 2),
            ],
          ),
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
