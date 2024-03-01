import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 30,
        centerTitle: false,
        title: const Text(
          'Booster',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        actions: [
          Image.asset(
            'assets/images/Group89.png',
            width: 28,
            height: 28,
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'ИНФОРМАЦИЯ ОБ АРТИКУЛE',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Номер  артикула *',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Описание артикула',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              'МАТЕРИАЛ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 300,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'МАТЕРИАЛ, CVET',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 190,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Кол-во на ед. прод.*',
                    hintStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 190,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'ed izmerenia*',
                    hintStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 100,
            child: ElevatedButton(
              onPressed: null,
              style: ButtonStyle(),
              child: Text('+ материал'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'ФУРНИТУРА',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 300,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Фурнитура *',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 190,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Кол-во на единицу *',
                    hintStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 190,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Ед. измерения *',
                    hintStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 200,
            child: ElevatedButton(onPressed: null, child: Text('+ Фурнитура')),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 200,
            child: ElevatedButton(onPressed: null, child: Text('+ Сохранить')),
          ),
        ],
      ),
    );
  }
}
