import 'faixa_irrf.dart';

class TabelaIRRF {
  final List<FaixaIRRF> faixas = [
    FaixaIRRF(
      minimo: 0,
      maximo: 2428.80,
      aliquota: 0.0,
      deducao: 0.0,
    ),
    FaixaIRRF(
      minimo: 2428.81,
      maximo: 2826.65,
      aliquota: 0.075,
      deducao: 182.16,
    ),
    FaixaIRRF(
      minimo: 2826.66,
      maximo: 3751.05,
      aliquota: 0.15,
      deducao: 394.16,
    ),
    FaixaIRRF(
      minimo: 3751.06,
      maximo: 4664.68,
      aliquota: 0.225,
      deducao: 675.49,
    ),
    FaixaIRRF(
      minimo: 4664.69,
      maximo: double.infinity,
      aliquota: 0.275,
      deducao: 908.73,
    ),
  ];

  FaixaIRRF obterFaixa(double salarioBase) {
    return faixas.firstWhere(
      (faixa) => faixa.dentroDaFaixa(salarioBase),
      orElse: () => faixas.last,
    );
  }
}