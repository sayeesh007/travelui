import 'package:flutter/material.dart';
import 'package:flutter_travel_design/details.dart';

import 'models.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              appBar(),
              const SizedBox(
                height: 15.0,
              ),
              Padding(padding: EdgeInsets.only(left: 20.0), child: title()),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  width: double.infinity, height: 100.0, child: categories()),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Experiences',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 25.0),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                width: 400,
                height: 350,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Details()));
                          },
                          child: tile()),
                      const SizedBox(
                        width: 10.0,
                      ),
                      tile()
                    ]),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

Container appBar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.sort_rounded,
          size: 30.0,
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              'assets/profile.png',
              height: 60.0,
              width: 50.0,
            )),
      ],
    ),
  );
}

Container title() {
  return Container(
    child: RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'Hello',
          style: TextStyle(
              color: Colors.pinkAccent.shade100,
              fontWeight: FontWeight.w600,
              fontSize: 33.0)),
      TextSpan(
          text: ',what are you  ',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 33.0)),
      TextSpan(
          text: 'looking for?',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 33.0))
    ])),
  );
}

Container categories() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          // width: double.infinity,
          margin: EdgeInsets.only(left: 10.0),
          width: 80.0,
          height: 75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.pink.shade50),
                child: Icon(
                  list[index].icon,
                  size: 30.0,
                  color: Colors.pinkAccent.shade100,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                list[index].name,
                style: TextStyle(fontSize: 12.0),
              )
            ],
          ),
        );
      },
    ),
  );
}

Container tile() {
  return Container(
    width: 250,
    height: 300,
    child: Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset(
              'assets/3.jpg',
              width: 250,
              height: 300,
              fit: BoxFit.cover,
            )),
        Container(
          width: 250,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black87],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Positioned(
          bottom: 70.0,
          left: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The Golden Circle,Iceland',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    '5-7 days',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  Text(
                    '20km',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
