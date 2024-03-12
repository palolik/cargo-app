import 'package:flutter/material.dart';

class Car {
  String carId, carPicture, carManfacturer, carModel, carMakeYear, carLocation;
  double carRentPrice;
  Car(
      {required this.carId,
      required this.carPicture,
      required this.carManfacturer,
      required this.carModel,
      required this.carMakeYear,
      required this.carLocation,
      required this.carRentPrice});
}

var car1 = Car(
  carId: '123',
  carPicture: 'teslaCar.png',
  carManfacturer: 'Tesla',
  carModel: 'Model X',
  carMakeYear: '2018',
  carLocation: 'Oxford Street',
  carRentPrice: 20,
);
var car2 = Car(
  carId: '124',
  carPicture: 'prado.png',
  carManfacturer: 'Toyota',
  carModel: 'Prado',
  carMakeYear: '2015',
  carLocation: 'Jabra Street',
  carRentPrice: 50,
);

class HistoryPage extends StatelessWidget {
  @override
  final List _cars = [
    CarCardSample(car: car1),
    CarCardSample(car: car2),
    CarCardSample(car: car1),
    CarCardSample(car: car2),
  ];
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
          ),
          Text(
            "Your Rent's History",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: _cars.length,
            itemBuilder: (context, index) {
              return _cars[index];
            },
          ))
        ],
      ),
    ));
  }
}

class CarCardSample extends StatefulWidget {
  const CarCardSample({super.key, required this.car});
  final Car car;
  @override
  State<CarCardSample> createState() => _CarCardSampleState();
}

class _CarCardSampleState extends State<CarCardSample> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => BookCarDetails(
        //               carId: widget.car.carId,
        //             )));
      },
      splashColor: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Container(
          width: double.infinity,
          height: 300.0,
          decoration: BoxDecoration(
            color: Color.fromARGB(233, 248, 248, 251),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 5),
                              blurRadius: 8.0),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/${widget.car.carPicture}'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Text(
                            '${widget.car.carManfacturer} ${widget.car.carModel} ${widget.car.carMakeYear}',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 60),
                          Text(
                            '${widget.car.carRentPrice.round()} RM/hr',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                        // ignore: prefer_const_literals_to_create_immutables
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            widget.car.carLocation,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
