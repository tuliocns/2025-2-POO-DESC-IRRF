class FaixaIRRF {
  final double minimo;
  final double maximo;
  final double aliquota;
  final double deducao;

  FaixaIRRF({
    required this.minimo,
    required this.maximo,
    required this.aliquota,
    required this.deducao,
  });

  bool dentroDaFaixa(double salarioBase) {
    return salarioBase >= minimo && salarioBase <= maximo;
  }
}