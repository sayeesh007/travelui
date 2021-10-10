import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0)),
                        child: Image.asset(
                          'assets/3.jpg',
                          width: double.infinity,
                          height: 300.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(bottom: -30, right: 40, child: heart)
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 40.0,
                      ),
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '5-7 days',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '20km',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                        ),
                      ),
                      const SizedBox(
                        width: 40.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'The Golden Circle,Iceland',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20.0, left: 40.0),
                    child: Text(
                      'Arctic Adventures offers glacier explorations of various length and difficulty',
                      // maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 20, bottom: 10),
                    child: Text(
                      'Traveler\'s Gallery',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    width: size.width,
                    height: 200,
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/1.jpg',
                          width: (size.width - 60) / 2,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/2.jpg',
                              width: (size.width - 60) / 2,
                              fit: BoxFit.cover,
                              height: 90,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/3.jpg',
                                  width: (size.width - 60) / 2,
                                  height: 90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '+80 more',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 120.0,
                  )
                ],
              ),
            ),
          ),
          Positioned(child: downbox)
        ],
      ),
    );
  }
}

Container heart = Container(
  width: 60,
  height: 60,
  decoration: BoxDecoration(
      color: Colors.pink.shade50, borderRadius: BorderRadius.circular(15.0)),
  child: Icon(
    Icons.favorite,
    color: Colors.red,
    size: 30.0,
  ),
);

Container downbox = Container(
  width: double.infinity,
  height: 100,
  padding: EdgeInsets.symmetric(horizontal: 40.0),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0), color: Colors.red),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Average Cost', style: TextStyle(color: Colors.white)),
          Text(
            '350\$',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Text(
          'Book a Tour',
          style: TextStyle(fontSize: 20.0, color: Colors.red),
        ),
      )
    ],
  ),
);
