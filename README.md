# Torneamento no CNC Simulator – Código G

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Programa CNC desenvolvido para a disciplina de **Processos de Fabricação**, com o objetivo de simular o torneamento de uma peça com geometria complexa (vela) no software **CNC Simulator Pro**.

## 📋 Descrição

Este código G realiza o torneamento de uma peça com:

- Faceamento inicial
- Desbaste e acabamento de raio (R10)
- Usinagem de 3 conjuntos de ranhuras (vales e cristas)
- Chanfro em Z-75
- Acabamento final e faceamento

**Dimensões principais:**
- Comprimento total: 100 mm
- Diâmetro máximo: 30 mm (entrada)
- Diâmetro mínimo: 5 mm (centro do raio)
- Raio: R10
- Profundidade das ranhuras: 3 mm (de X23 para X17)
- Avanços: 450 mm/min (desbaste) e 200 mm/min (acabamento)

## 🛠️ Tecnologias Utilizadas

- **CNC Simulator Pro** – ambiente de simulação
- **Linguagem G** – programação CNC (código ISO)
- **Controle FANUC** – sintaxe compatível

## ⚙️ Como Executar

1. Abra o **CNC Simulator Pro**.
2. Carregue o arquivo `cnc/Torneamento-Vela.nc`.
3. Configure a máquina para torneamento (eixo ZX).
4. Execute a simulação passo a passo ou contínua.

## 📷 Resultados

### Peça final (renderização)

![Peça pronta](imagens/peca-pronta.jpg)

### Simulação no CNC Simulator

![Simulação CNC](imagens/simulacao-cnc.jpg)

## 📂 Estrutura do Projeto

Torneamento-no-CNC-Simulator---C-digo-G/
├── cnc/
│   └── Torneamento-Vela.nc # Código G
├── imagens/
│   ├── peca-pronta.jpg # Foto da peça final
│   └── simulacao-cnc.jpg # Print da simulação
├── .gitignore
├── LICENSE
└── README.md

## 👨‍💻 Autor

**Artur Ferreira Gonçalves** – [GitHub](https://github.com/ArtEst777)

Trabalho desenvolvido para a disciplina de **Processos de Fabricação** sob orientação do professor [nome do professor].

## 📄 Licença

Este projeto está sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.