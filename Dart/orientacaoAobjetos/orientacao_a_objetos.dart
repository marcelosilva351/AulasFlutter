/*
Programação orientada a objetos é um paradigma de programação baseado no conceito de "objetos", que podem conter dados na forma de campos, também conhecidos como atributos, e códigos, na forma de procedimentos, também conhecidos como métodos.



Classe - Molde pra um objeto, pegar algo do mundo real e abstrair pro codigo, com seus atributos e ações

CLASSE{
  ATRIBUTOS

  AÇÕES(metodos)
}

Objeto é a intancia de uma classe na memoria

classe -> memoria 

classe Pessoa =>  Joao, Marcelo, Marcos



*/

class Pessoa{
  String nome;
  int idade;

  Pessoa(this.nome,this.idade);

  andar(){
    print('$nome Andou');
  }

}



void main(){
  var Marcelo = Pessoa('Marcelo', 22);
  var Mathuca = Pessoa('Matchuca', 23);


  Aluno filho1 = Aluno('joaozinho');
  Aluno filho2 = Aluno('maria');
  List<Aluno> alunosFilhosDoRicardo = [filho1, filho2];

  Pai ricardo = Pai('Ricardao', alunosFilhosDoRicardo);

  //quem são os filhos do ricardo

  for(var filho in ricardo.filhos){
    print(filho.nome);
  }
  
  

}



class Aluno{
  String nome;
  Aluno(this.nome);
}


class Pai{
  String nome;
  List<Aluno> filhos;

  Pai(this.nome, this.filhos);
}