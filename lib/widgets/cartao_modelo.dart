import 'package:flutter/material.dart';

class CartaoModelo extends StatelessWidget {
  const CartaoModelo(
      {Key? key,
      required this.nome,
      required this.numeroCartao,
      required this.cor1,
      required this.cor2})
      : super(key: key);

  final nome;
  final cor1;
  final cor2;
  final numeroCartao;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(cor1),
              Color(cor2),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1],
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                nome,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Image.asset(
                'images/mastercard_logo.png',
                width: 70,
                height: 70,
                fit: BoxFit.contain,
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                numeroCartao,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "09/25",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
