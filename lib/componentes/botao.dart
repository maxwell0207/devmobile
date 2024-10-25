import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final bool duplo;
  final Color cor;  // Cor do fundo do botão
  final void Function(String) callback;

  const Botao({
    super.key,
    required this.texto,
    this.duplo = false,
    required this.cor,
    required this.callback,
  });

  const Botao.operacao({
    super.key,
    required this.texto,
    this.duplo = false,
    required this.cor,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    // Definindo a cor do texto: preto para números, branco para operações
    final Color corTexto = (texto == '0' || texto == '00' || 
                            texto == '1' || texto == '2' || 
                            texto == '3' || texto == '4' || 
                            texto == '5' || texto == '6' || 
                            texto == '7' || texto == '8' || 
                            texto == '9' || texto == '.') 
                            ? Colors.black : const Color.fromARGB(151, 255, 255, 255);
    return Expanded(
      flex: duplo ? 2 : 1,
      child: CupertinoButton(
        color: cor,  // Cor do fundo do botão
        onPressed: () => callback(texto),
        child: Text(
          texto,
          style: TextStyle(
            color: corTexto,  // Cor do texto (preto para números, branco para operações)
            fontSize: 32,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }
}