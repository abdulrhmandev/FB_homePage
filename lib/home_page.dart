import 'package:flutter/material.dart';
import 'Widgets/smallButtons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _item = 0;

  void _onItemTapped(int index) {
    setState(() {
      _item = index;
    });
  }

  List<BottomNavigationBarItem> navBarItem = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/home.svg',
        color: Colors.white,
      ),
      activeIcon: SvgPicture.asset(
        'assets/home.svg',
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Stack(
        children: [
          SvgPicture.asset(
            'assets/youtube.svg',
            color: Colors.white,
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 12,
              height: 12,
              decoration:
                  const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration:
                      const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              ),
            ),
          ),
        ],
      ),
      activeIcon: SvgPicture.asset('assets/youtube.svg'),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Stack(
        children: [
          SvgPicture.asset(
            'assets/trolley.svg',
            color: Colors.white,
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 12,
              height: 12,
              decoration:
                  const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration:
                      const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              ),
            ),
          ),
        ],
      ),
      activeIcon: SvgPicture.asset('assets/trolley.svg'),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/users.svg',
        color: Colors.white,
      ),
      activeIcon: SvgPicture.asset('assets/users.svg'),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/app.svg',
        color: Colors.white,
      ),
      activeIcon: SvgPicture.asset('assets/app.svg'),
      label: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff0E1424),
      appBar: AppBar(
        backgroundColor: const Color(0xff232935),
        elevation: 0,
        leading: Image.asset('assets/images/facebook_logo.png'),
        actions: [
          Image.asset('assets/images/search.png'),
          Image.asset('assets/images/note.png'),
          Image.asset('assets/images/messanger.png'),
          Image.asset('assets/images/pic.png'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: size.width,
                decoration: const BoxDecoration(
                    color: Color(0xff232935),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                      child: Divider(
                        color: Color(0xff4f4f4f),
                        thickness: 0.4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset('assets/images/pic.png'),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              '¿Qué estas pensando, Mao?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/images/smile.png',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SmallButton(
                            size: size * 1.1,
                            title: 'Fotos',
                            image: 'assets/images/camera.png'),
                        SmallButton(
                            size: size * 1.1,
                            title: 'En vivo',
                            image: 'assets/images/vid.png'),
                        SmallButton(
                            size: size * 1.1,
                            title: 'Video corto',
                            image: 'assets/images/view.png'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: size.width,
                height: size.height,
                decoration: const BoxDecoration(
                    color: Color(0xff232935),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Text(
                            'Menú',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Image.asset(
                            'assets/images/moon.png',
                            scale: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SmallButton(
                            size: size * 1.1,
                            title: 'Ayuda y soporte',
                            image: 'assets/images/help.png'),
                        SmallButton(
                            size: size * 1.7,
                            title: 'Configuración y privacidad',
                            image: 'assets/images/sitting.png'),
                        SmallButton(
                            size: size * 1.1,
                            title: 'Ayuda y soporte',
                            image: 'assets/images/help.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/slidepic.png'),
                        Image.asset('assets/images/slidepic2.png'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pic11.png',
                          scale: .6,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: navBarItem,
        currentIndex: _item,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
