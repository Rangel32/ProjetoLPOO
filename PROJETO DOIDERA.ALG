Algoritmo "Projeto doidera"
//Aluno: Vinicius Rangel               CPD:042096
//Professo: ALdo
//Disciplina: LPOO

Var
   opcao,soma,sub,n1, n2, nP, id, idade, contM, contF,numP,pr,i,primo,somaP,d1,d2: inteiro
   numdecimal,b1,b2,b3,b4,b5,b6,b7,b8: inteiro
   divisao,mediaM,mediaF,mediaTM,mediaTF,mediaTT,Total: real
   sexo,base,numbinario: caractere


Inicio
   Limpatela
   Escreval("Escolha uma op��o de 1 a 7:")           // Menu com op��es de 1 a 7
   Escreval("1.soma")
   Escreval("2.subtra��o")
   Escreval("3.Divis�o")
   Escreval("4.Faixa et�ria")
   Escreval("5.N�meros Primos")
   Escreval("6.Troca de Base")
   Escreval("7.sair")
   leia(opcao)                                       //Ler op��o digitada pelo usuario
   Limpatela
   enquanto (opcao>7) faca                           //Enquanto a op��o digitada for maior que 7 o programa n�o a aceita pois s� as op��es de 1 a 7 s�o validas
      Escreval("Informe um numero de 1 a 7:")
      Escreval("Informe a op��o")
      leia(opcao)
   fimenquanto
   enquanto (opcao<7) faca                           //Se a op��o for de 1 a 7 ela � valida e faz as opera��es
      se (opcao=1) entao
         escreval("Informe o primeiro numero")
         leia (n1)
         escreval("Informe o segundo numero")
         leia (n2)
         soma<-n1+n2                                 //Opera��o de soma onde o usuario digita dois numeros que s�o somados e o resultado � mostrado em tela
         Escreval("A soma �=", soma)
      senao
         se(opcao=2) entao
            escreval("Informe o primeiro numero")
            leia (n1)
            escreval("Informe o segundo numero")
            leia (n2)
            sub<-n1-n2                               //Opera��o de subtra��o onde o usuario digita dois numeros que s�o subtraidos e o resultado � imprimido em tela
            Escreval("A subtra��o �=", sub)

         senao
            se(opcao=3) entao                       //Se op��o digitada for igual a 3. Programa roda opera��o de divis�o
               escreval("Informe o primeiro numero")
               leia (n1)
               Repita                                //Para que n2 que � o divisor seja diferente de 0 pois seria impossivel calcular. O programa pede o valor de n2 at� que seja diferente de 0
                  escreval("Informe o segundo numero")
                  leia (n2)
               ate (n2<>0)
               divisao<-n1/n2                         //Opera��o de divis�o onde o resultado � imprimido na tela
               Escreval("A divis�o �=", divisao)
            senao
               se (opcao=4) entao                    //Se op��o digitada for igual a 4. Programa faz opera��o de faixa et�ria
                  escreval ("Informe quantidade de pessoas")
                  leia (nP)
                  para id de 1 ate nP passo 1 faca
                     escreval("Informe idade")
                     leia (idade)
                     Repita                          //Para que o programa n�o leia qualquer caractere, ele repete at� o usuario digitar um valido
                        escreval("Informe o sexo (m)masculino e (f)feminino")
                        leia (sexo)
                     ate (sexo="m") ou (sexo="f")
                     se (sexo="m") entao            //Opera��o de media de idade de pessoas do sexo masculino
                        contM<-contM + 1
                        mediaM<-(mediaM+idade)
                        mediaTM<-mediaM/contM
                     senao
                        se (sexo="f") entao        //Oper��o de media de idade de pessoas do sexo feminino
                           contF<-contF +1
                           mediaF<-(mediaF+idade)
                           mediaTF<- mediaF/contF
                        fimse
                     fimse
                     mediaTT<-mediaF+mediaM       //Opera��o de media de idade de todas as pessoas independente do sexo
                     Total<-mediaTT/nP
                  fimpara
                  escreval("Media masculina=",mediaTM)
                  escreval("Media feminina=",mediaTF)
                  escreval("Media total de pessoas= ",Total)
                  mediaF<-0                       //Para que o programa n�o acumule idade das pessoas caso a op��o seja executada 2 ou mais vezes, o Programa zera o valor das variaveis
                  mediaM<-0
                  contM<-0
                  contF<-0
                  mediaTF<-0
                  mediaTM<-0
                  mediaTT<-0
               senao
                  se (opcao=5) entao             //Se op��o digitada for igual a 5. O programa roda a opera��o de numeros primos.
                     Escreval("Digite um valor")
                     leia(numP)
                     escreval("Esses s�o os n�meros primos de 1 at�",numP)
                     para primo de 1 ate numP faca          //Valida��o de se o numero � primo ou n�o
                        pr<- 0
                        para i de 1 ate primo faca
                           se(primo mod i=0) entao
                              pr<-pr+1
                           fimse
                        fimpara
                        se (pr=2) entao
                           somaP<-somaP+primo               //Soma de todos os primos de 1 at� o numero informado pelo usuario
                           escreval(primo)
                        fimse
                     fimpara
                     escreval("A soma de todos os primos �=",somaP)
                     somaP<-0                              //Para que o programa n�o acumule valor
                  senao
                     se(opcao=6) entao                     //Se op��o digitada for igual a 6. O programa roda a opera��o de troca de base.
                        Repita                             //Programa vai repetir at� que seja digitado b para binario e d para decimal
                           Escreval("Escolha (b)binario ou (d)decimal")
                           leia(base)
                        ate (base="b") ou (base="d")
                        se (base="b")  entao
                           Escreval("Digite o seu numero binario de 8 digitos(um digito por linha)")
                           leia (b1)
                           leia (b2)
                           leia (b3)
                           leia (b4)
                           leia (b5)
                           leia (b6)
                           leia (b7)
                           leia (b8)
                           numdecimal<-(b8*1)+(b7*2)+(b6*4)+(b5*8)+(b4*16)+(b3*32)+(b2*64)+(b1*128)        //Opera��o de troca de base de binario pra decimal
                           Escreval("Seu numero em decimal seria: ",numdecimal)
                        senao
                           se (base="d") entao
                              numbinario<- ""              //Para que seja zerado a variavel de caractere
                              Escreval("Digite o seu numero decimal")
                              leia (d1)
                              d2<-d1
                              enquanto d1> 0 faca
                                 se (d1 mod 2)=0 entao      //Opera��o de troca de base de decimal para binario. O numero � dividido e se o resto for 0 � atribuido a caractere 0 mais a variavel senao � atribuido 1 mais a variavel, at� que o numero seja formado.
                                    numbinario<- "0"+ numbinario
                                 senao
                                    numbinario<- "1"+ numbinario
                                 fimse
                                 d1<-d1 div 2               //Divis�o nescessaria na opera��o de troca de base. Foi usado o comando div pois esta sendo dividido para ter resto
                              fimenquanto
                              Escreval("O numero",d2 ," em binario �:",numbinario)
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      Escreval("Escolha outra op��o:")                   //Menu novamente para que ele se repita apos toda opera��o at� que o usuario digite 7 para sair
      Escreval("1.soma")
      Escreval("2.subtra��o")
      Escreval("3.Divis�o")
      Escreval("4.Faixa et�ria")
      Escreval("5.N�meros Primos")
      Escreval("6.Troca de Base")
      Escreval("7.sair")
      leia(opcao)
      enquanto (opcao>7) faca
         Escreval("Informe um numero de 1 a 7:")
         Escreval("Informe a op��o")
         leia(opcao)
      fimenquanto
   fimenquanto

Fimalgoritmo