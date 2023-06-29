import 'package:creckout/widgets/cartao_modelo.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PageCheckOut extends StatefulWidget {
  const PageCheckOut({Key? key}) : super(key: key);

  @override
  _PageCheckOutState createState() => _PageCheckOutState();
}

class _PageCheckOutState extends State<PageCheckOut> {
  List<Widget> cartoes = [
    CartaoModelo(
      nome: 'Renald William',
      cor1: 0xff9C2CF3,
      cor2: 0xff3A49F9,
      numeroCartao: '5282 3456 7890 1289',
    ),
    CartaoModelo(
      nome: 'Renald William 2',
      cor1: 0xffED713C,
      cor2: 0xffEB001B,
      numeroCartao: '5282 3456 7890 1289',
    ),
    CartaoModelo(
      nome: 'Renald William 3',
      cor1: 0xff485563,
      cor2: 0xff29323c,
      numeroCartao: '5282 3456 7890 1289',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                size: 35,
                color: Colors.black,
              )),
          title: Text(
            'Voltar para o  Carrinho',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xff8176E0),
                          borderRadius: BorderRadius.circular(18)),
                      child: Image.asset(
                        'images/tenis1.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text('Nike Lebron Witness V\nOff White',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text('R\$ 350',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18),
                child: Container(
                  color: Color(0xffEAE8FD),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Subtotal:',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                            Text('R\$ 350',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Desconto:',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                            Text('R\$ 0.00',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Total:',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('R\$ 350',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'Selecione o método de pagamento',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 180.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [0, 1, 2].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return cartoes[i];
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'Outras formas de pagamento',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 20, right: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Image.asset('images/googlePay.png'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Image.asset('images/International.png'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Image.asset('images/paypal.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 18.0, left: 20, right: 20, bottom: 25),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        backgroundColor: Color(0xff27E03A),
                        padding: EdgeInsets.all(15)),
                    child: Text(
                      'Confirmar Pagamento',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
