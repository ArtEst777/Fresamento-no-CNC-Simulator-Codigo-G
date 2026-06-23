# Torneamento no CNC Simulator – Código G

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Programa CNC desenvolvido para a disciplina de **Processos de Fabricação**, com o objetivo de simular o torneamento de uma peça com geometria complexa (vela) no software **CNC Simulator Pro**.

## 📋 Descrição

Este código G realiza o torneamento completo de uma peça com as seguintes operações:

- **Faceamento inicial** (N35–N70)
- **Desbaste do raio R10** (N75–N150) – com avanço radial progressivo
- **Usinagem de 3 conjuntos de ranhuras** (vales e cristas) em Z = -20 a -70, com profundidade de 3 mm (de X23 para X17)
- **Desbaste do chanfro** em Z = -75 (N520–N545)
- **Acabamento do raio R10** (N550–N565)
- **Acabamento das ranhuras** (3 conjuntos) com profundidade de 3 mm (de X22 para X16)
- **Acabamento do chanfro** em Z = -75 (N935–N960)
- **Faceamento final** (N965–N980)

**Dimensões principais:**

| Parâmetro | Valor |
| :--- | :--- |
| Comprimento total da peça | 100 mm |
| Diâmetro máximo (entrada) | 30 mm |
| Diâmetro mínimo (centro do raio) | 5 mm |
| Raio | R10 |
| Profundidade das ranhuras | 3 mm (desbaste: X23→X17; acabamento: X22→X16) |
| Posição das ranhuras | 3 conjuntos em Z = -20, -40 e -60 (cada conjunto com 5 ranhuras espaçadas de 2 mm) |
| Chanfro | em Z = -75 (desbaste: X18→X21; acabamento: X17→X20) |
| Avanço de desbaste | 450 mm/min |
| Avanço de acabamento | 200 mm/min |
| Velocidade de corte constante | 200 m/min |
| Sentido de rotação | Horário (M04) |

## 🛠️ Tecnologias Utilizadas

- **CNC Simulator Pro** – ambiente de simulação
- **Linguagem G** – programação CNC (código ISO)
- **Controle FANUC** – sintaxe compatível (G18, G40, G95, G90, G54)

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

Fresamento-no-CNC-Simulator-Codigo-G/
├── cnc/ # Código G  
│   └── (arquivo .nc)
├── imagens/ # Imagens da peça e simulação
│   ├── peca-pronta.jpg
│   └── simulacao-cnc.jpg
├── .gitignore
├── LICENSE
└── README.md

## 👨‍💻 Autor

**Artur Ferreira Gonçalves** – [GitHub](https://github.com/ArtEst777)

Trabalho desenvolvido para a disciplina de **Processos de Fabricação** sob orientação do professor [nome do professor].

## 📄 Licença

Este projeto está sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.
