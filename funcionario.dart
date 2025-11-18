class Funcionario {
  final double salarioBruto;
  final double inss;

  Funcionario({
    required this.salarioBruto,
    required this.inss,
  });

  double get salarioBase => salarioBruto - inss;
}