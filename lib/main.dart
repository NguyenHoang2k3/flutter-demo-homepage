import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: const MyHomePage(title: 'Flutterss Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (index) {},
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/Vector.png'),
                    Image.asset('assets/images/Frame.png'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: Row(
                  children: [
                    Text(
                      'Latest',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: SizedBox(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    children: [
                      categoryTab('All', isSelected: true),
                      categoryTab('Sports'),
                      categoryTab('Politics'),
                      categoryTab('Business'),
                      categoryTab('Health'),
                      categoryTab('Travel'),
                      categoryTab('Science'),
                      categoryTab('Fashion'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(padding: EdgeInsets.only(top: 16),
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      children: [
                        _buildItem  (
                          'Europe',
                          'Ukraine\'s President Zelensky to BBC: Blood money being paid...',
                          'BBC News',
                          '14m ago',
                          'assets/images/C.png',
                            'assets/images/Ellipse.png'
                        ),
                        const SizedBox(height: 16),
                        _buildItem  (
                            'Europe',
                            'Ukraine\'s President Zelensky to BBC: Blood money being paid...',
                            'BBC News',
                            '14m ago',
                            'assets/images/C.png',
                            'assets/images/Ellipse.png'
                        ),
                        const SizedBox(height: 16),
                        _buildItem  (
                            'Europe',
                            'Ukraine\'s President Zelensky to BBC: Blood money being paid...',
                            'BBC News',
                            '14m ago',
                            'assets/images/C.png',
                            'assets/images/Ellipse.png'
                        ),
                        const SizedBox(height: 16),
                        _buildItem  (
                            'Europe',
                            'Ukraine\'s President Zelensky to BBC: Blood money being paid...',
                            'BBC News',
                            '14m ago',
                            'assets/images/C.png',
                            'assets/images/Ellipse.png'
                        ),
                        const SizedBox(height: 16),
                        _buildItem  (
                            'Europe',
                            'Ukraine\'s President Zelensky to BBC: Blood money being paid...',
                            'BBC News',
                            '14m ago',
                            'assets/images/C.png',
                            'assets/images/Ellipse.png'
                        ),
                        const SizedBox(height: 16),
                        _buildItem  (
                            'Europe',
                            'Ukraine\'s President Zelensky to BBC: Blood money being paid...',
                            'BBC News',
                            '14m ago',
                            'assets/images/C.png',
                            'assets/images/Ellipse.png'
                        ),
                        const SizedBox(height: 16),
                        _buildItem  (
                            'Europe',
                            'Ukraine\'s President Zelensky to BBC: Blood money being paid...',
                            'BBC News',
                            '14m ago',
                            'assets/images/C.png',
                            'assets/images/Ellipse.png'
                        ),
                        const SizedBox(height: 16),




                      ],
                    ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget categoryTab(String title, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              // fontStyle: Regular,
              fontSize: 16,
              color: isSelected ? Colors.black : Colors.grey.shade600,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          if (isSelected)
            Container(
              height: 3,
              width: 34,
              color: Colors.blue,
            ),
        ],
      ),
    );
  }

    Widget _buildItem(String category, String title, String source,
      String time, String imageUrl,String srcImage) {
    return Padding(padding: EdgeInsets.fromLTRB(8, 8, 0,0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              width: 96,
              height: 96,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 6),

          // News Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: TextStyle(
                    color: Color(int.parse('FF4E4B66',radix: 16)),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                 const SizedBox(height: 2),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        srcImage,
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      source,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Icon(
                      Icons.access_time,
                      size: 12,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
