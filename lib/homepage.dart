import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
//import 'package:untitled/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body:Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
             // padding: const EdgeInsets.all(8.0),
              child: SafeArea(
                child: Column(
                  children:<Widget>[
 Center(child:             Text(
                      'Competetions',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 44,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),)
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              padding: EdgeInsets.only(left: 32.0),
              child: Swiper(
            itemCount: 3,
                  itemWidth: MediaQuery.of(context).size.width-2*64,
                layout: SwiperLayout.STACK,
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    activeSize: 20,
                    space: 8,
                  ),
                ),
                itemBuilder: (context,width){
              return Stack(

               //alignment: Alignment.,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: 300,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.white,
                        margin: EdgeInsets.all(
                          16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Container(
                            //
                            //   width: 2,
                            //   height: 2,
                            //   decoration: ShapeDecoration(
                            //     shape: CircleBorder(),
                            //     color: Colors.transparent,
                            //   ),
                            // ),
                        ConstrainedBox(
                            constraints: BoxConstraints.expand(height: 200, width: 300),
                          child: Container(
                            decoration:BoxDecoration(
                              border: BorderRadius.all(20),
                            ),
                            child: Image.network("https://cdn.wallpapersafari.com/44/51/3BGWLh.png",
                                height: 200.1, fit: BoxFit.fitWidth),
                          ))
                            // ClipRRect(
                            //   borderRadius: BorderRadius.circular(25.0),
                            //   child: Container(
                            //
                            //     child: Image.network(
                            //         'https://images.unsplash.com/photo-1473992243898-fa7525e652a5'),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),



                 Positioned(
                   left:100,
                  top:200,
                  //alignment:Alignment.bottomCenter,
                  child:Container(

                    width: 100,
                    height:40,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(),
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(1),
                      child: DecoratedBox(
                        child: Center(
                          child: Text(
                            'Technical',
                            style:TextStyle(color: Colors.white,),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )
                 )
                ],
              );

                },
              ),
            ),
          ],

      )
      )
    );
  }
}
