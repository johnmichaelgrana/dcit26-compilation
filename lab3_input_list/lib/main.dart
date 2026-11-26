import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ItemListPage(),
    );
  }
}

class ItemListPage extends StatefulWidget {
  const ItemListPage({super.key});

  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  final TextEditingController _controller = TextEditingController();

  final List<String> _items = [];

  void _addItem() {
    final String item = _controller.text.trim();

    if (item.isEmpty) {
      return;
    }

    setState(() {
      _items.add(item);
    });

    _controller.clear();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF206B4B),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter Item',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _addItem,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF206B4B),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('ADD'),
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE4F1E9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Color(0xFF206B4B),
                            size: 18,
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: Text(
                              _items[index],
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
