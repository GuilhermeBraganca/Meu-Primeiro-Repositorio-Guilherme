//
//  File.swift
//
//
//  Created by MacBook on 23/06/24.
//

import Foundation

//1. Funções e Arrays
//Crie uma função que receba um array de inteiros e retorne a soma dos elementos do array. Teste a função com um array de exemplo.
let arrayDeNumeros = [1, 2, 3, 4, 5]
func somaDosElementos(arrayDeNumeros : [Int])-> Int{
    var soma : Int = 0
    for numerosNoArray in arrayDeNumeros{
        soma += numerosNoArray
    }
    return soma
}
let resultado = somaDosElementos(arrayDeNumeros: arrayDeNumeros)

print("A soma dos elementos do array é: \(resultado)")


//2. Dicionário, Opcionais e Interpolação
//Crie um dicionário com nomes de alunos e suas notas. Crie uma função que receba o nome de um aluno e retorne a nota dele, utilizando opcionais e interpolação para imprimir a mensagem apropriada.

func obterNotaDoAluno(nome: String, aluno:[String:Double]) -> String {
    
    return "A nota do aluno \(nome) é \(aluno[nome] ?? 0.0)"
    
}
let notasDosAlunos = ["João": 8.5, "Maria": 9.0, "Pedro": 7.5]
let resultadoNota = obterNotaDoAluno(nome: "Maria".uppercased(), aluno: notasDosAlunos)
print(resultadoNota)

//3. Estruturas Condicionais, Arrays e Funções
//Crie uma função que receba um array de inteiros e retorne o maior número. Use uma estrutura condicional para verificar se o array está vazio e, caso esteja, retorne nil.

func encontrarMaiorNumero(numeros: [Int])-> Int?{
    return numeros.isEmpty ? nil :  numeros.max()
}
var numeros = [3, 7, 2, 8, 4]
numeros = []

if let maiorNumero = encontrarMaiorNumero(numeros: numeros) {
  print("O maior número é: \(maiorNumero)")
} else {
  print("O array está vazio.")
}


//4. Loops e Dicionários
//Crie um dicionário com nomes de produtos e seus preços. Use um loop para aumentar o preço de cada produto em 10% e imprima o novo dicionário.
var produtos = ["Camiseta": 50.0, "Calça": 100.0, "Tênis": 150.0]
for novoPreco in produtos{
    produtos[novoPreco.key] = round(novoPreco.value * 1.1)
}
print("Novos preços dos produtos: \(produtos)")


//5. Funções, Arrays e Estruturas Condicionais
//Crie uma função que receba um array de strings e retorne um array contendo apenas as strings que começam com uma determinada letra. Utilize estruturas condicionais dentro do loop para filtrar as strings.

func filtrarPorLetra(_ palavras:[String], letra: String)->[String]{
    var resultado :[String] = []
    for procuraLetra in palavras{
        if (procuraLetra.firstIndex(of: "m") != nil){
            resultado.append(procuraLetra)
        }
    }
    return resultado
}

let palavras = ["maçã", "banana", "manga", "melancia", "uva"]
let palavrasFiltradas = filtrarPorLetra(palavras, letra: "m")
print("Palavras que começam com 'm': \(palavrasFiltradas)")


//6. Opcionais, Tipagem e Funções
//Crie uma função que converta uma string em um inteiro opcional e verifique se a conversão foi bem-sucedida. Se for bem-sucedida, retorne o dobro do número; caso contrário, retorne nil.

func dobrarNumero(_ numeroString: String )->Int?{
    
    if let numeroOpcnal = Int(numeroString) {
        return numeroOpcnal * 2
    }else{
        return nil
    }
}

if let resultado = dobrarNumero("a") {
  print("O dobro do número é: \(resultado)")
} else {
  print("Conversão falhou.")
}

//7. Arrays, Loops e Estruturas Condicionais
//Crie um array de inteiros e use um loop while para encontrar o primeiro número par. Imprima o número encontrado.
let numeros1 = [1, 4, 7, 9, 5, 9]

func numeroParEncontrado(numeros1:[Int]) -> Int?{
  
  var posicao:Int = 0
    
    while posicao < numeros1.count {
        if (numeros1[posicao] % 2 == 0){
            return numeros1[posicao]
        }
        posicao += 1
    }
    return nil
}

if let numeroPar = numeroParEncontrado(numeros1: numeros1) {
  print("Primeiro número par encontrado: \(numeroPar)")
} else {
  print("Nenhum número par encontrado.")
}


//8. Funções, Arrays e Concatenção
//Crie uma função que receba um array de strings e retorne uma única string com todas as palavras concatenadas, separadas por espaços.
func concatenarPalavras(_ palavrasParaConcatenar: [String])->String{
    var somaPalavras : String = ""
    
    for arrayPalavraas in palavrasParaConcatenar{
        somaPalavras = somaPalavras.appending(arrayPalavraas).appending(" ")
    }
    return somaPalavras
}
let palavrasParaConcatenar = ["Olá", "mundo", "Swift", "é", "incrível"]
let fraseConcatenada = concatenarPalavras(palavrasParaConcatenar)
print("Frase concatenada: \(fraseConcatenada)")

//9. Dicionário, Funções e Estruturas Condicionais
//Crie um dicionário com nomes de países e suas populações. Crie uma função que receba o nome de um país e retorne a população, verificando se o país está no dicionário.

func obterPopulacao(pais: String)->String{
    let populacoes = ["Brasil": 211_000_000, "Estados Unidos": 331_000_000, "Índia": 1_366_000_000]
    var resposta: String = ""
    for quantidadePessoas in populacoes{
        if ((populacoes[pais]) != nil){
            resposta = "O Pais \(quantidadePessoas.key) possui população \(quantidadePessoas.value)"
        }else{
            resposta = "Pais não encontrado"
        }
    }
    return resposta
}

let resultadoPopulacao = obterPopulacao(pais: "Brsasil")
print(resultadoPopulacao)



//10. Arrays, Funções e Loops
//Crie uma função que receba dois arrays de inteiros e retorne um novo array contendo apenas os elementos que estão presentes em ambos os arrays (interseção).

let array1 = [1, 2, 0, 8, 8]
let array2 = [3, 4, 5, 6, 7]
let resultadoIntersecao = intersecaoArrays(array1: array1, array2 : array2)

func intersecaoArrays (array1 : [Int], array2: [Int]) ->[Int]{
    var resultado : [Int] = []
    for arrayTestado1 in array1{
        
        for arrayTestado2 in array2{
            if (arrayTestado2 == arrayTestado1){
                resultado.append(arrayTestado2)
            }
        }
        
    }
    return resultado
    
}

print("Interseção dos arrays: \(resultadoIntersecao)")


