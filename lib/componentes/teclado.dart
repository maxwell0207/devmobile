import 'package:flutter/material.dart';
import 'linha_botoes.dart';
import 'botao.dart';

const Color fundoTecladoEVisor = Color.fromRGBO(48, 48, 48, 1);

class Teclado extends StatelessWidget {
  final void Function(String) callback;

  const Teclado(this.callback, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: fundoTecladoEVisor,  // Cor de fundo do teclado
      child: SizedBox(
        height: 500,
        child: Column(
          children: <Widget>[
            // Primeira linha: C, ^, !, /
            LinhaBotoes([
              Botao.operacao(texto: 'C', cor: Colors.black, callback: callback),
              Botao.operacao(texto: '^', cor: Colors.black, callback: callback),
              Botao.operacao(texto: '!', cor: Colors.black, callback: callback),
              Botao.operacao(texto: '/', cor: Colors.black, callback: callback),
            ]),
            const SizedBox(height: 2),
            // Segunda linha: 7, 8, 9, *
            LinhaBotoes([
              Botao(texto: '7', cor: Colors.white, callback: callback),
              Botao(texto: '8', cor: Colors.white, callback: callback),
              Botao(texto: '9', cor: Colors.white, callback: callback),
              Botao.operacao(texto: '*', cor: Colors.black, callback: callback),
            ]),
            const SizedBox(height: 2),
            // Terceira linha: 4, 5, 6, -
            LinhaBotoes([
              Botao(texto: '4', cor: Colors.white, callback: callback),
              Botao(texto: '5', cor: Colors.white, callback: callback),
              Botao(texto: '6', cor: Colors.white, callback: callback),
              Botao.operacao(texto: '-', cor: Colors.black, callback: callback),
            ]),
            const SizedBox(height: 2),
            // Quarta linha: 1, 2, 3, +
            LinhaBotoes([
              Botao(texto: '1', cor: Colors.white, callback: callback),
              Botao(texto: '2', cor: Colors.white, callback: callback),
              Botao(texto: '3', cor: Colors.white, callback: callback),
              Botao.operacao(texto: '+', cor: Colors.black, callback: callback),
            ]),
            const SizedBox(height: 2),
            // Quinta linha: 0, 00, ., =
            LinhaBotoes([
              Botao(texto: '0', cor: Colors.white, callback: callback),
              Botao(texto: '00', cor: Colors.white, callback: callback),  // Cor branca no fundo
              Botao(texto: '.', cor: Colors.white, callback: callback),
              Botao.operacao(texto: '=', cor: Colors.black, callback: callback),
            ]),
          ],
        ),
      ),
    );
  }
}
