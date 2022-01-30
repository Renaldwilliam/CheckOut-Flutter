import 'package:creckout/pages/page_checkout.dart';
import 'package:flutter/material.dart';

class PageItem extends StatefulWidget {
  const PageItem({Key? key}) : super(key: key);

  @override
  _PageItemState createState() => _PageItemState();
}

class _PageItemState extends State<PageItem> {
  bool tamanho1 = false;
  bool tamanho2 = false;
  bool tamanho3 = false;
  bool tamanho4 = false;
  bool curtir = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff8176E0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff8176E0),
        leading: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              size: 35,
              color: Colors.white,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 23.0, top: 0),
            child: GestureDetector(
              onTap: null,
              child: Image.asset(
                'images/cart.png',
                fit: BoxFit.contain,
                height: 35,
                width: 35,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/tenis1.png',
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70))),
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'Nike Lebron Witness V Off White',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'R\$500',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffF28E18),
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'R\$ 350',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    "Tamanhos disponíveis",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (tamanho1 == false) {
                                tamanho1 = true;
                                tamanho2 = false;
                                tamanho3 = false;
                                tamanho4 = false;
                              } else {
                                tamanho4 = false;
                              }
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color:
                                        tamanho1 ? Colors.green : Colors.grey,
                                    width: tamanho1 ? 3 : 1)),
                            child: Text('39',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color:
                                        tamanho2 ? Colors.green : Colors.grey,
                                    width: tamanho2 ? 3 : 1)),
                            child: Text('40',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                          onTap: () {
                            setState(() {
                              if (tamanho2 == false) {
                                tamanho1 = false;
                                tamanho2 = true;
                                tamanho3 = false;
                                tamanho4 = false;
                              } else {
                                tamanho4 = false;
                              }
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (tamanho3 == false) {
                                tamanho1 = false;
                                tamanho2 = false;
                                tamanho3 = true;
                                tamanho4 = false;
                              } else {
                                tamanho4 = false;
                              }
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color:
                                        tamanho3 ? Colors.green : Colors.grey,
                                    width: tamanho3 ? 3 : 1)),
                            child: Text('41',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color:
                                        tamanho4 ? Colors.green : Colors.grey,
                                    width: tamanho4 ? 3 : 1)),
                            child: Text('42',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                          onTap: () {
                            setState(() {
                              if (tamanho4 == false) {
                                tamanho1 = false;
                                tamanho2 = false;
                                tamanho3 = false;
                                tamanho4 = true;
                              } else {
                                tamanho4 = false;
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Descrição',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 18),
                  Text(
                    "Inspire-se no astro Lebron James e entre em quadra para vencer com o Tênis Nike Witness V ....",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.favorite,
                            color: curtir ? Colors.green : Colors.grey,
                          ),
                        ),
                        onTap: () {
                          if (curtir == true) {
                            setState(() {
                              curtir = false;
                            });
                          } else {
                            setState(() {
                              curtir = true;
                            });
                          }
                        },
                      ),
                      SizedBox(width: 14),
                      Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff27E03A),
                                  padding: EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PageCheckOut()),
                                );
                              },
                              child: Text(
                                "Comprar",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )))
                    ],
                  ),
                  SizedBox(height: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
