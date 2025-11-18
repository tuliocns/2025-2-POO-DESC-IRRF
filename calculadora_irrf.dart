import '../tabela_irrf.dart';

class CalculadoraIRRF {
  final TabelaIRRF tabela;

  CalculadoraIRRF(this.tabela);

  double calcular(double salarioBase) {
    final faixa = tabela.obterFaixa(salarioBase);

    double imposto = (salarioBase * faixa.aliquota) - faixa.deducao;

    return imposto < 0 ? 0 : double.parse(imposto.toStringAsFixed(2));
  }
}