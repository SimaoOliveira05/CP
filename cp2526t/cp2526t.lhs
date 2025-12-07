\documentclass[11pt, a4paper, fleqn]{article}
\usepackage{cp2526t}
\usepackage{graphicx}
\usepackage{tikz}
\usepackage{array}
\usetikzlibrary{positioning}
\makeindex

%================= lhs2tex=====================================================%
%include polycode.fmt
%%format (bin (n) (k)) = "\Big(\vcenter{\xymatrix@R=1pt{" n "\\" k "}}\Big)"
%format -|- = "+"
%format . = "\comp "
%format .* = "\star " 
%format .&&&. = "\wedge"
%format .<=. = "\leq"
%format .<==>. = "\Leftrightarrow"
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format .==. = "\equiv"
%format .==>. = "\Rightarrow"
%format (ana (g)) = "\ana{" g "}"
%format (ana' (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket"
%format (anaForest (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny F}}"
%format (anaList (g)) = "\anaList{" g "}"
%format (anaLTree (g)) = "\lanabracket\," g "\,\ranabracket"
%format (anaStream (g)) = "\lanabracket\," g "\,\ranabracket"
%format (anaRose (g)) = "\lanabracket\," g "\,\ranabracket_\textit{\tiny R}"
%format (anaTree (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny T}}"
%format (cata (f)) = "\llparenthesis\, " f "\,\rrparenthesis"
%format (cata' (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis"
%format (cataBTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataForest (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny F}}"
%format (cataFTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataList (g)) = "\llparenthesis\, " g "\,\rrparenthesis"
%format (cataNat (g)) = "\cataNat{" g "}"
%format (cataRose (x)) = "\llparenthesis\, " x "\,\rrparenthesis_\textit{\tiny R}"
%format (cataTree (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny T}}"
%format (const (f)) = "\underline{" f "}"
%format (Cp.cond (p) (f) (g)) = "\mcond{" p "}{" f "}{" g "}"
%format (curry (f)) = "\overline{" f "}"
%format (div (x)(y)) = x "\div " y
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (fac (n)) = "{" n "!}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (hylo (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket"
%format (hylo' (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket"
%format (hyloForest (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny F}}"
%format (hyloRose (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket_\textit{\tiny R}"
%format (hyloTree (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny T}}"
%format (kcomp (f)(g)) = f "\kcomp " g
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (lcbr3 (x)(y)(z)) = "\begin{lcbr}" x "\\" y "\\" z "\end{lcbr}"
%format (plus (f)(g)) = "{" f "}\plus{" g "}"
%format (Prod (a) (b)) = a >< b
%format (Seq (a)) = "{" a "}^{*}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (square (x)) = x "^2"
%format (uncurry f) = "\uncurry{" f "}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format % = "\mathbin{/}"
%format `minusNat`= "\mathbin{-}"
%format `ominus` = "\mathbin{\ominus}"
%format ++ = "\mathbin{+\!\!+}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format ==> = "\Longrightarrow "
%format ==> = "\Rightarrow"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format B_tree = "\mathsf{B}\mbox{-}\mathsf{tree} "
%format cdots = "\cdots "
%format conc = "\mathsf{conc}"
%format delta = "\Delta "
%format Dist = "\fun{Dist}"
%format Either a b = a "+" b
%format fF = "\fun F "
%format fmap = "\mathsf{fmap}"
%format fromRational = " from_\Q "
%format fst = "\p1"
%format FTree = "{\FTree}"
%format i1 = "i_1"
%format i2 = "i_2"
%format inForest = "\mathsf{in}_{Forest}"
%format inFTree = "\mathsf{in}"
%format inBTree = "\mathsf{in}"
%format inLTree = "\mathsf{in}"
%format inNat = "\mathsf{in}"
%format inT = "\mathsf{in}"
%format Integer  = "\mathbb{Z}"
%format inTree = "\mathsf{in}_{Tree}"
%format IO = "\fun{IO}"
%format l2 = "l_2 "
%format Left = "i_1"
%format length = "\length "
%format LTree = "{\LTree}"
%format map = "\map "
%format matrix = "matrix"
%format muB = "\mu "
%format NA   = "\textsc{na}"
%format Nat0 = "\N_0"
%format NB   = "\textbf{NB}"
%format Null = "1"
%format outForest = "\mathsf{out}_{Forest}"
%format outFTree = "\mathsf{out}"
%format outBTree = "\mathsf{out}"
%format outLTree = "\mathsf{out}"
%format inList = "\mathsf{in}_{List}"
%format outStream = "\mathsf{out}"
%format outT = "\mathsf{out}"
%format outTree = "\mathsf{out}_{Tree}"
%format p1  = "\p1"
%format p2  = "\p2"
%format pi = "\pi "
%format Rational = "\Q "
%format Right = "i_2"
%format snd = "\p2"
%format succ = "\succ "
%format summation = "{\sum}"
%format TLTree = "\mathsf{TLTree}"
%format toRational = " to_\Q "
%format t1 = "t_1 "
%format t2 = "t_2 "
%format t3 = "t_3 "
%format t4 = "t_4 "
%format t5 = "t_5 "
%------------------------------------------------------------------------------%


%====== DEFINIR GRUPO E ELEMENTOS =============================================%

\group{G31}
\studentA{107291}{Gabriel Pinto Dantas}
\studentB{106937}{José Lourenço Ferreira Fernandes}
\studentC{107322}{Simão Azevedo Oliveira}

%==============================================================================%

\begin{document}
\sffamily
\setlength{\parindent}{0em}
\emergencystretch 3em
\renewcommand{\baselinestretch}{1.25} 
\input{Cover}
\pagestyle{pagestyle}

\newgeometry{left=25mm,right=20mm,top=25mm,bottom=25mm}
\setlength{\parindent}{1em}

\section*{Preâmbulo}

Em \CP\ pretende-se ensinar a progra\-mação de computadores
como uma disciplina científica. Para isso parte-se de um repertório de \emph{combinadores}
que formam uma álgebra da programação % (conjunto de leis universais e seus corolários)
e usam-se esses combinadores para construir programas \emph{composicionalmente},
isto é, agregando programas já existentes.

Na sequência pedagógica dos planos de estudo dos cursos que têm
esta disciplina, opta-se pela aplicação deste método à programação
em \Haskell\ (sem prejuízo da sua aplicação a outras linguagens
funcionais). Assim, o presente trabalho prático coloca os
alunos perante problemas concretos que deverão ser implementados em
\Haskell. Há ainda um outro objectivo: o de ensinar a documentar
programas, a validá-los e a produzir textos técnico-científicos de
qualidade.

Antes de abordarem os problemas propostos no trabalho, os grupos devem ler
com atenção o anexo \ref{sec:documentacao} onde encontrarão as instruções
relativas ao \emph{software} a instalar, etc.

Valoriza-se a escrita de \emph{pouco} código que corresponda a soluções
simples e elegantes que utilizem os combinadores de ordem superior estudados
na disciplina.

\noindent \textbf{Avaliação}. Faz parte da avaliação do trabalho a sua defesa
por parte dos elementos de cada grupo. Estes devem estar preparados para
responder a perguntas sobre \emph{qualquer} dos problemas deste enunciado.
A prestação \emph{individual} de cada aluno nessa defesa oral será uma componente
importante e diferenciadora da avaliação.

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
import Cp
import List hiding (fac)
import Nat hiding (aux)
import LTree hiding (merge)
import BTree
-- import Exp
import Probability
-- import Svg hiding (for,dup,fdiv)
import Data.Char
import Data.Ratio
import Data.List hiding (find)
import Control.Monad
-- import Control.Monad.State
import Control.Applicative hiding ((<|>),empty)
import System.Process
import Control.Concurrent

main = undefined
\end{code}
%endif

\Problema

Uma serialização (ou travessia) de uma árvore é uma sua representação sob a forma de uma lista. 
Na biblioteca |BTree| encontram-se as funções de serialização |inordt|, |preordt| e |postordt|,
que fazem as travessias \emph{in-order}, \emph{ pre-order} e \emph{post-order}, respectivamente.
Todas essas travessias são catamorfismos que percorrem a árvore argumento em regime \emph{depth-first}.

Pretende-se agora uma função |bforder| que faça a travessia em regime \emph{breadth-first},
isto é, por níveis.
Por exemplo, para a árvore |t1| dada em anexo e mostrada na figura a seguir,

\begin{center}
	\figura
\end{center}

\noindent a função deverá dar a lista

\begin{spec}
	[5,3,7,1,4,6,8]
\end{spec}

\noindent em que se vê como os níveis |5|, depois |3,7| e finalmente |1,4,6,8| foram percorridos.

Pretendemos propor duas versões dessa função:

\begin{enumerate}
\item	Uma delas envolve um catamorfismo de |BTree|s:
\begin{code}
bfsLevels :: BTree a -> [a]
bfsLevels = concat . levels
\end{code}
Complete a definição desse catamorfismo:
\begin{code}
levels :: BTree a -> [[a]]
levels = cataBTree glevels
\end{code}
\item A segunda proposta,
\begin{code}
bft :: BTree a -> [a] 
\end{code}
deverá basear-se num anamorfismo de listas.
\end{enumerate}
\textbf{Sugestão}: estudar o artigo \cite{Ok00} cujo PDF está incluído no material deste trabalho. 
Quando fizer testes ao seu código pode, se desejar, usar funções disponíveis na biblioteca
|Exp| para visualizar as árvores em GraphViz (formato .dot).

Justifique devidamente a sua resolução, que deverá vir acompanhada de diagramas explicativos.
Como já se disse, valoriza-se a escrita de \emph{pouco} código que corresponda a soluções
simples e elegantes que utilizem os combinadores de ordem superior estudados
na disciplina.



\Problema

Considere a seguinte função em Haskell:
\begin{quote}
\begin{code}
f x = wrapper . worker where
         wrapper = head
         worker 0 = start x
         worker(n+1) = loop x (worker n)

loop x    [s,         h,       k,     j,     m     ] =
          [h / k + s, x^2 * h, k * j, j + m, m + 8 ]

start x = [x,         x^3,     6,     20,    22    ]
\end{code}
\end{quote}
Pode-se provar pela lei de recursividade mútua que |f x n| calcula o seno hiperbólico de |x|,
|sinh x|, para |n| aproximações da sua série de Taylor. 
Faça a derivação da função dada a partir da referida série de Taylor, apresentando todos os cálculos justificativos, tal como se faz para outras funções no capítulo respectivo do texto base desta UC \cite{Ol98-24}.

\Problema

Quem em Braga observar, ao fim da tarde, o tráfego onde a Avenida Clairmont
Fernand se junta à N101, aproximadamente na coordenada \href{https://maps.app.goo.gl/uCbXLsdibYoochr36}{41°33'46.8"N
8°24'32.4"W} --- ver as setas da figura que se segue --- reparará nas sequências
imparáveis (infinitas!) de veículos provenientes dessas vias de circulação.

Mas também irá observar um comportamento interessante por parte dos condutores desses
veículos: por regra, \emph{cada carro numa via deixa passar, à sua frente, exactamente outro carro da outra via}. 

\begin{center}
	\mapa
\end{center}

Este comportamento \emph{civilizado} chama-se \emph{fair-merge} (ou \emph{fair-interleaving})
de duas sequências infinitas, também designadas \emph{streams} em ciência
da computação. Seja dado o tipo dessas sequências em Haskell,
\begin{code}
data Stream a = Cons (a, Stream a) deriving Show  
\end{code}
para o qual se define também:
\begin{code}
outStream (Cons (x,xs)) = (x,xs)
\end{code}
\noindent O referido comportamento civilizado pode definir-se, em Haskell,
da forma seguinte:\footnote{O facto das sequências serem infinitas não nos
deve preocupar, pois em Haskell isso é lidado de forma transparente por \lazy{lazy
evaluation}.}
\begin{code}
fair_merge :: Either (Stream a, Stream a) (Stream a, Stream a) -> Stream a
fair_merge = either h k where
   h (Cons(x,xs), y) = Cons(x , k(xs,y))
   k (x, Cons(y,ys)) = Cons(y , h(x,ys))
\end{code}

Defina |fair_merge| como um \textbf{anamorfismo} de |Stream|s, usando o combinador
\begin{code}
anaStream g = Cons . (id >< (anaStream g)) . g
\end{code}
e a seguinte estratégia:
\begin{itemize}
\item	Derivar a lei \textbf{dual} da recursividade mútua,
\begin{eqnarray}
	|either f g = ana(either h k)| & \equiv & |lcbr (out . f = fF (either f g) . h)(out . g = fF (either f g) . k)|
	\label{eq:fokkinga_dual}
\end{eqnarray}
	tal como se fez, nas aulas, para a que está no formulário.
\item
	Usar (\ref{eq:fokkinga_dual}) na resolução do problema proposto. 
\end{itemize}
Justificar devidamente a resolução, que deverá vir acompanhada de diagramas explicativos.

\Problema

Como se sabe, é possível pensarmos em catamorfismos, anamorfismos etc \emph{probabilísticos},
quer dizer, programas recursivos que dão distribuições como resultados. Por
exemplo, podemos pensar num combinador
\begin{code}
pcataList :: (Either () (a, b) -> Dist b) -> [a] -> Dist b
\end{code}
que é muito parecido com
\begin{spec}
cataList :: (Either () (a, b) -> b) -> [a] -> b
\end{spec}
da biblioteca \List. A principal diferença é que o gene de |pcataList| é uma função probabilística.

Como exemplo de utilização, recorde-se que |cataList (either zero add)| soma todos
os elementos da lista argumento, por exemplo:
\begin{quote}
|cataList (either zero add) [20,10,5] = 35|.
\end{quote}
Considere-se agora a função |padd| (adição probabilística) que,
com probabilidade $90\%$ soma dois números e com probabilidade $10\%$ os subtrai:
\begin{code}
padd(a,b) = D [(a+b,0.9),(a-b,0.1)]
\end{code}
Se se correr
\begin{code}
d4 = pcataList (either pzero padd) [20,10,5] where pzero = return . zero
\end{code}
obter-se-á:
\begin{Verbatim}[fontsize=\small]
35  81.0%
25   9.0%
 5   9.0%
15   1.0%
\end{Verbatim}

Com base neste exemplo, resolva o seguinte
\begin{quote}\em
\textbf{Problema}: Uma unidade militar pretende enviar uma mensagem urgente
a outra, mas tem o aparelho de telegrafia meio avariado. Por experiência,
o telegrafista sabe que a probabilidade de uma palavra se perder (não ser
transmitida) é $5\%$; e que, no final de cada mensagem, o aparelho envia o código
|"stop"|, mas (por estar meio avariado), falha $10\%$ das vezes.

Qual a probabilidade de a palavra |"atacar"| da mensagem 
\begin{quote}
|words "Vamos atacar hoje"|
\end{quote}
se perder, isto é, o resultado da transmissão ser |["Vamos","hoje","stop"]|?
E a de seguirem todas as palavras, mas faltar o |"stop"| no fim? E a da transmissão
ser perfeita?
\end{quote}

Responda a estas perguntas encontrando |gene| tal que
\begin{code}
transmitir = pcataList gene
\end{code}
descreve o comportamento do aparelho.
Justificar devidamente a resolução, que deverá vir acompanhada de diagramas explicativos.
%

\part*{Anexos}

\appendix

\section{Natureza do trabalho a realizar}
\label{sec:documentacao}
Este trabalho teórico-prático deve ser realizado por grupos de 3 alunos.
Os detalhes da avaliação (datas para submissão do relatório e sua defesa
oral) são os que forem publicados na \cp{página da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo em \textbf{todos}
os exercícios do trabalho, para assim poderem responder a qualquer questão
colocada na \emph{defesa oral} do relatório.

Para cumprir de forma integrada os objectivos do trabalho vamos recorrer
a uma técnica de programa\-ção dita ``\litp{literária}'' \cite{Kn92}, cujo
princípio base é o seguinte:
%
\begin{quote}\em
        Um programa e a sua documentação devem coincidir.
\end{quote}
%
Por outras palavras, o \textbf{código fonte} e a \textbf{documentação} de um
programa deverão estar no mesmo ficheiro.

O ficheiro \texttt{cp2526t.pdf} que está a ler é já um exemplo de
\litp{programação literária}: foi gerado a partir do texto fonte
\texttt{cp2526t.lhs}\footnote{O sufixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrará no \MaterialPedagogico\
desta disciplina des\-com\-pactando o ficheiro \texttt{cp2526t.zip}.

Como se mostra no esquema abaixo, de um único ficheiro (|lhs|)
gera-se um PDF ou faz-se a interpretação do código \Haskell\ que ele inclui:

        \esquema

Vê-se assim que, para além do \GHCi, serão necessários os executáveis \PdfLatex\ e
\LhsToTeX. Para facilitar a instalação e evitar problemas de versões e
conflitos com sistemas operativos, é recomendado o uso do \Docker\ tal como
a seguir se descreve.

\section{Docker} \label{sec:docker}

Recomenda-se o uso do \container\ cuja imagem é gerada pelo \Docker\ a partir do ficheiro
\texttt{Dockerfile} que se encontra na diretoria que resulta de descompactar
\texttt{cp2526t.zip}. Este \container\ deverá ser usado na execução
do \GHCi\ e dos comandos relativos ao \Latex. (Ver também a \texttt{Makefile}
que é disponibilizada.)

Após \href{https://docs.docker.com/engine/install/}{instalar o Docker} e
descarregar o referido zip com o código fonte do trabalho,
basta executar os seguintes comandos:
\begin{Verbatim}[fontsize=\small]
    $ docker build -t cp2526t .
    $ docker run -v ${PWD}:/cp2526t -it cp2526t
\end{Verbatim}
\textbf{NB}: O objetivo é que o container\ seja usado \emph{apenas} 
para executar o \GHCi\ e os comandos relativos ao \Latex.
Deste modo, é criado um \textit{volume} (cf.\ a opção \texttt{-v \$\{PWD\}:/cp2526t}) 
que permite que a diretoria em que se encontra na sua máquina local 
e a diretoria \texttt{/cp2526t} no \container\ sejam partilhadas.

Pretende-se então que visualize/edite os ficheiros na sua máquina local e que
os compile no \container, executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2526t.lhs > cp2526t.tex
    $ pdflatex cp2526t
\end{Verbatim}
\LhsToTeX\ é o pre-processador que faz ``pretty printing'' de código Haskell
em \Latex\ e que faz parte já do \container. Alternativamente, basta executar
\begin{Verbatim}[fontsize=\small]
    $ make
\end{Verbatim}
para obter o mesmo efeito que acima.

Por outro lado, o mesmo ficheiro \texttt{cp2526t.lhs} é executável e contém
o ``kit'' básico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2526t.lhs
\end{Verbatim}

\noindent Abra o ficheiro \texttt{cp2526t.lhs} no seu editor de texto preferido
e verifique que assim é: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
é seleccionado pelo \GHCi\ para ser executado.

\section{Em que consiste o TP}

Em que consiste, então, o \emph{relatório} a que se referiu acima?
É a edição do texto que está a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relatório deverá conter ainda a identificação dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relatório deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o índice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2526t.aux
    $ makeindex cp2526t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou. (Como já se disse, pode fazê-lo
correndo simplesmente \texttt{make} no \container.)

No anexo \ref{sec:codigo} disponibiliza-se algum código \Haskell\ relativo
aos problemas que são colocados. Esse anexo deverá ser consultado e analisado
à medida que isso for necessário.

Deve ser feito uso da \litp{programação literária} para documentar bem o código que se
desenvolver, em particular fazendo diagramas explicativos do que foi feito e
tal como se explica no anexo \ref{sec:diagramas} que se segue.

\section{Como exprimir cálculos e diagramas em LaTeX/lhs2TeX} \label{sec:diagramas}

Como primeiro exemplo, estudar o texto fonte (\lhstotex{lhs}) do que está a ler\footnote{
Procure e.g.\ por \texttt{"sec:diagramas"}.} onde se obtém o efeito seguinte:\footnote{Exemplos
tirados de \cite{Ol98-24}.}
\begin{eqnarray*}
\start
|
        id = split f g
|
\just\equiv{ universal property }
|
     lcbr(
          p1 . id = f
     )(
          p2 . id = g
     )
|
\just\equiv{ identity }
|
     lcbr(
          p1 = f
     )(
          p2 = g
     )
|
\qed
\end{eqnarray*}

Os diagramas podem ser produzidos recorrendo à \emph{package} \Xymatrix, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

\section{O mónade das distribuições probabilísticas} \label{sec:probabilities}
%format B = "\mathit B"
%format C = "\mathit C"
Mónades são functores com propriedades adicionais que nos permitem obter
efeitos especiais em progra\-mação. Por exemplo, a biblioteca \Probability\
oferece um mónade para abordar problemas de probabilidades. Nesta biblioteca,
o conceito de distribuição estatística é captado pelo tipo
\begin{eqnarray}
     |newtype Dist a = D {unD :: [(a, ProbRep)]}|
     \label{eq:Dist}
\end{eqnarray}
em que |ProbRep| é um real de |0| a |1|, equivalente a uma escala de $0$ a
$100 \%$.

Cada par |(a,p)| numa distribuição |d::Dist a| indica que a probabilidade
de |a| é |p|, devendo ser garantida a propriedade de  que todas as probabilidades
de |d| somam $100\%$.
Por exemplo, a seguinte distribuição de classificações por escalões de $A$ a $E$,
\[
\begin{array}{ll}
A & \rule{2mm}{3pt}\ 2\%\\
B & \rule{12mm}{3pt}\ 12\%\\
C & \rule{29mm}{3pt}\ 29\%\\
D & \rule{35mm}{3pt}\ 35\%\\
E & \rule{22mm}{3pt}\ 22\%\\
\end{array}
\]
será representada pela distribuição
\begin{code}
d1 :: Dist Char
d1 = D [('A',0.02),('B',0.12),('C',0.29),('D',0.35),('E',0.22)]
\end{code}
que o \GHCi\ mostrará assim:
\begin{Verbatim}[fontsize=\small]
'D'  35.0%
'C'  29.0%
'E'  22.0%
'B'  12.0%
'A'   2.0%
\end{Verbatim}
É possível definir geradores de distribuições, por exemplo distribuições \emph{uniformes},
\begin{code}
d2 = uniform (words "Uma frase de cinco palavras")
\end{code}
isto é
\begin{Verbatim}[fontsize=\small]
     "Uma"  20.0%
   "cinco"  20.0%
      "de"  20.0%
   "frase"  20.0%
"palavras"  20.0%
\end{Verbatim}
distribuição \emph{normais}, eg.\
\begin{code}
d3 = normal [10..20]
\end{code}
etc.\footnote{Para mais detalhes ver o código fonte de \Probability, que é uma adaptação da
biblioteca \PFP\ (``Probabilistic Functional Programming''). Para quem quiser saber mais
recomenda-se a leitura do artigo \cite{EK06}.}
|Dist| forma um \textbf{mónade} cuja unidade é |return a = D [(a,1)]| e cuja composição de Kleisli
é (simplificando a notação)
\begin{spec}
  ((kcomp f g)) a = [(y,q*p) | (x,p) <- g a, (y,q) <- f x]
\end{spec}
em que |g: A -> Dist B| e |f: B -> Dist C| são funções \textbf{monádicas} que representam
\emph{computações probabilísticas}.

Este mónade é adequado à resolução de problemas de \emph{probabilidades e estatística} usando programação funcional, de forma elegante e como caso particular da programação monádica.

\section{Código fornecido}\label{sec:codigo}

\subsection*{Problema 1}

Árvores exemplo:
\begin{code}
t1 :: BTree Int
t1 = Node (5,(Node (3,(Node (1,(Empty,Empty)),Node (4,(Empty,Empty)))),
           Node (7,(Node (6,(Empty,Empty)),Node (8,(Empty,Empty))))))

t2 :: BTree Int
t2 =
  node 1
    (node 2 (node 4 Empty Empty) (node 5 Empty Empty))
    (node 3 (node 6 Empty Empty) (node 7 Empty Empty))

t3 :: BTree Char
t3 =
  node 'A'
    (node 'B' (node 'C' (node 'D' Empty Empty) Empty) Empty)
    (node 'E' Empty Empty)

t4 :: BTree Char
t4 =
  node 'A'
    (node 'B' (node 'C' (node 'D' Empty Empty) Empty) Empty)
    Empty 

t5 :: BTree Int
t5 =
  node 1
   (node 2 (node 4 Empty Empty) Empty)
   (node 3 Empty (node 5 (node 6 Empty Empty) Empty))

node a b c = Node (a,(b,c))
\end{code}

%----------------- Soluções dos alunos -----------------------------------------%

\section{Soluções dos alunos}\label{sec:resolucao}
Os alunos devem colocar neste anexo as suas soluções para os exercícios
propostos, de acordo com o ``layout'' que se fornece.
Não podem ser alterados os nomes ou tipos das funções dadas, mas pode ser
adicionado texto ao anexo, bem como diagramas e/ou outras funções auxiliares
que sejam necessárias.

\noindent
\textbf{Importante}: Não pode ser alterado o texto deste ficheiro fora deste anexo.

\subsection*{Problema 1}

\subsubsection*{Solução 1: catamorfismo}

\subsubsection*{Análise intuitiva do problema}

Como primeira proposta é desejado que a travessia se baseie num catamorfismo de árvores binárias.

Intuitivamente, dado que desejamos uma travessia por níveis (\emph{breadth-first}), precisamos de uma
recursão que percorra a árvore e devolva os elementos ordenados por níveis. Ora, uma recursão implicitamente
faz uma travessia em profundidade (\emph{depth-first}), pelo que teremos de manipular o resultado dessa recursão para obter o
resultado desejado.

Inicie-se o processo por analisar ambas as funções dadas, |bfsLevels| e |bft|,
de modo a a perceber o que cada uma delas deve fazer.

A função |bfsLevels|, dado uma árvore binária de elementos de tipo |A|, deve devolver uma lista de elementos de |A|,
ordenados por níveis, ou seja, primeiro os elementos do nível 0 (a raiz), depois os do nível 1 (os filhos da raiz), depois os do nível 2 (os netos da raiz), e assim sucessivamente.
Esta função é definida à custa de um |concat| após um catamorfismo |levels|.

O catamorfismo |levels|, por sua vez, deve devolver uma lista de listas de elementos de |A|,
onde cada lista interna corresponde a um nível da árvore.

Exemplifique-se o funcionamento deste algoritmo para um entendimento claro do que se pretende alcançar. Dada a árvore |t1|, o catamorfismo |levels t1| deve devolver a lista de listas |[[5],[3,7],[1,4,
6,8]]|. A função |bfsLevels t1|, por sua vez, deve devolver a lista resultante da concatenação das listas internas, ou seja, |[5,3,7,1,4,6,8]|.

\subsubsection*{Definição do catamorfismo}

O objetivo é definir o gene |glevels| de |levels|, de modo a que este catamorfismo devolva a lista de listas de elementos de |A| ordenados por níveis.

Represente-se esquematicamente este catamorfismo:

\begin{eqnarray*}
\xymatrix@@C=2cm{
    |BTree A|
           \ar[d]_-{|cataBTree glevels|}
           \ar[r]^-{|outBTree|}
&
    |1 + A >< (BTree A >< BTree A)|
           \ar[d]^{|id + id >< (cataBTree glevels >< cataBTree glevels)|}
\\
     |[[A]]|
&
     |1 + A >< ([[A]] >< [[A]])|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

Devido à existência do coproduto, sabe-se que o gene do catamorfismo será uma função definida por:
\begin{eqnarray}
     |g = [g1, g2]|
\label{eq:glevels}
\end{eqnarray}

Para definir o gene, considere-se o que deve acontecer nos dois casos possíveis
da árvore dada como argumento:
\begin{itemize}
\item No caso base, em que a árvore é vazia (|Empty|), a lista de níveis deve ser a lista vazia (|[]|).
\item No caso recursivo, em que a árvore é um nó |Node (a,(l,r))|, com raiz |a| e subárvores |l| e |r|,
devem ser combinadas as listas de níveis das subárvores |l| e |r|, adicionando-se o elemento |a| a 
essa combinação de forma pertinente.
\end{itemize}

O caso base é simples de definir:
\begin{eqnarray}
     |g1 = nil|
\label{eq:g1}
\end{eqnarray}

Para o caso recursivo, defina-se uma função auxiliar |concatPointWise|: 
\begin{code}
concatPointWise :: [[a]] -> [[a]] -> [[a]]
concatPointWise [] ys = ys
concatPointWise xs [] = xs
concatPointWise (x:xs) (y:ys) = (x ++ y) : concatPointWise xs ys
\end{code}

Esta função trata de concatenar duas listas de listas de elementos do tipo |A|.
Isto trata de juntar os níveis das duas listas, ponto a ponto. A primeira claúsula
trata do caso em que a primeira lista é vazia, retornando a segunda lista. A segunda claúsula trata do caso em que a segunda lista é vazia, retornando a
primeira lista. A terceira claúsula trata do caso em que ambas as listas são não vazias,
concatenando as cabeças das listas e chamando-se recursivamente para as caudas.
Por exemplo,
\begin{quote}
|concatPointWise [[3],[1,4]] [[7],[6,8]] = [[3,7],[1,4,6,8]]|
\end{quote}


Assim, o gene |g2| pode ser definido como:
\begin{eqnarray}
     |g2 (a,(ls,rs)) = singl a ++ concatPointWise ls rs|
\label{eq:g2}
\end{eqnarray}

Em que |ls| e |rs| são as listas de níveis das subárvores |l| e |r|, respetivamente.
O resultado é a lista de níveis das subárvores, combinadas ponto a ponto, com o elemento |a| adicionado
como novo nível no início da lista.

Que, transformando em uma versão pointfree, resulta em:
\begin{eqnarray}
     |g2 = cons . (singl >< (uncurry concatPointWise))|
\label{eq:g2_pointfree}
\end{eqnarray}

\subsubsection*{Definição de |glevels|}

Com base nas equações (\ref{eq:glevels}), (\ref{eq:g1}) e (\ref{eq:g2_pointfree}),
A definição final de |glevels| é:
\begin{code}
glevels = either (nil) (cons.(singl >< (uncurry concatPointWise)))
\end{code}

\subsubsection*{Definição pointfree da função auxiliar}

Com o intuito de embelezar a nossa solução, optámos por desafiar-nos a definir a função de concatenação ponto a ponto
|concatPointWise| de forma pointfree através de um anamorfismo de listas.

Recordemos que a função |concatPointWise| recebe duas listas de listas e combina-as ponto a ponto.
Podemos pensá-la como um processo iterativo que constrói progressivamente a lista resultado,
o que sugere o uso de um \textbf{anamorfismo}.

O anamorfismo de listas tem a forma:
\begin{spec}
anaList g = inList . (id + id >< anaList g) . g
\end{spec}

O gene |g| recebe um estado (neste caso, o par de listas |([[a]], [[a]])|) e decide:
\begin{itemize}
\item Se deve parar (devolvendo |i1 ()|)
\item Ou produzir o próximo elemento e o novo estado (devolvendo |i2 (elemento, novo_estado)|)
\end{itemize}

Definamos então |concatCondicional| como um anamorfismo:

\begin{code}
concatCondicional :: [[a]] -> [[a]] -> [[a]]
concatCondicional = curry (anaList gene)
    where
      gene = cond ambasVazias stop
             (cond listaEsquerdaVazia doListaDireita
             (cond listaDireitaVazia doListaEsquerda doAmbas))

      -- Predicados
      ambasVazias = uncurry (&&) . (null >< null)
      listaEsquerdaVazia = null . p1
      listaDireitaVazia = null . p2

      -- Ações
      stop = i1 . const ()
      doListaDireita = i2 . split (head . p2) (split nil (tail . p2))
      doListaEsquerda = i2 . split (head . p1) (split (tail . p1) nil)
      doAmbas = i2 . split (conc . (head >< head)) (tail >< tail)
\end{code}

\textbf{Explicação detalhada do gene:}

O gene implementa uma máquina de estados que analisa o par de listas e decide como proceder.
Usa uma cascata de condicionais (|cond p f g|) que funciona como |if p then f else g|:

\begin{enumerate}
\item \textbf{Caso base - ambas as listas vazias} |([], [])|: 
   
   Quando não há mais elementos em nenhuma das listas, o processo termina.
   O gene devolve |i1 ()| para sinalizar paragem ao anamorfismo.
   
   \begin{spec}
   stop = i1 . const ()
   \end{spec}
   
   Este é o critério de terminação que garante que a recursão não é infinita.

\item \textbf{Caso degenerado - só a lista esquerda está vazia} |([], y:ys)|: 
   
   Neste caso, não há mais elementos da lista esquerda para combinar, mas ainda
   existem elementos em |ys| que devem ser incluídos no resultado final.
   
   A ação |doListaDireita| constrói o próximo elemento da lista resultado e o novo estado:
   \begin{itemize}
   \item \textbf{Elemento emitido}: |head . p2| extrai |y| (a primeira sublista de |ys|)
   \item \textbf{Novo estado}: |([], tail . p2)| resulta em |([], ys')| onde |ys'| são as sublistas restantes
   \end{itemize}
   
   \begin{spec}
   doListaDireita = i2 . split (head . p2) (split nil (tail . p2))
   \end{spec}
   
   Em termos práticos: como não há nada à esquerda, simplesmente copiamos |y| para o resultado
   e continuamos com |([], ys')|.

\item \textbf{Caso simétrico - só a lista direita está vazia} |(x:xs, [])|:
   
   Situação simétrica ao caso anterior: esgotaram-se os elementos de |ys| mas
   ainda há elementos em |xs| para processar.
   
   A ação |doListaEsquerda| funciona analogamente:
   \begin{itemize}
   \item \textbf{Elemento emitido}: |head . p1| extrai |x| (a primeira sublista de |xs|)
   \item \textbf{Novo estado}: |(tail . p1, [])| resulta em |(xs', [])| onde |xs'| são as sublistas restantes
   \end{itemize}
   
   \begin{spec}
   doListaEsquerda = i2 . split (head . p1) (split (tail . p1) nil)
   \end{spec}
   
   Interpretação: copiamos |x| para o resultado e prosseguimos com |(xs', [])|.

\item \textbf{Caso geral - ambas as listas não-vazias} |(x:xs, y:ys)|:
   
   Este é o caso principal onde efetivamente combinamos elementos de ambas as listas.
   Queremos concatenar |x| com |y| (ambas são sublistas) e continuar o processo com
   os elementos restantes.
   
   A ação |doAmbas| realiza esta operação:
   \begin{itemize}
   \item \textbf{Elemento emitido}: |conc . (head >< head)| 
      \begin{itemize}
      \item |(head >< head)| extrai |(x, y)| — as primeiras sublistas de cada lado
      \item |conc| concatena-as, produzindo |x ++ y|
      \end{itemize}
   \item \textbf{Novo estado}: |(tail >< tail)| produz |(xs, ys)| — os restantes elementos de ambas as listas
   \end{itemize}
   
   \begin{spec}
   doAmbas = i2 . split (conc . (head >< head)) (tail >< tail)
   \end{spec}
   
   Esta é a operação central da concatenação ponto a ponto: combinar |x| e |y| em |x++y|
   e avançar para o próximo par de sublistas.
\end{enumerate}

\textbf{Fluxo de controlo:}

A cascata de condicionais funciona como uma árvore de decisão:
\begin{spec}
if ambasVazias then
   stop
else if listaEsquerdaVazia then
   doListaDireita
else if listaDireitaVazia then
   doListaEsquerda
else
   doAmbas
\end{spec}

Esta estrutura garante que tratamos todos os casos possíveis de forma exaustiva e mutuamente exclusiva.

\textbf{Exemplo de execução:}

Para |[[3],[1,4]]| e |[[7],[6,8]]|:
\begin{spec}
concatCondicional [[3],[1,4]] [[7],[6,8]]
= anaList gene ([[3],[1,4]], [[7],[6,8]])
= -- gene devolve i2 ([3,7], ([[1,4]], [[6,8]]))
= [3,7] : anaList gene ([[1,4]], [[6,8]])
= -- gene devolve i2 ([1,4,6,8], ([], []))
= [3,7] : [1,4,6,8] : anaList gene ([], [])
= -- gene devolve i1 ()
= [[3,7], [1,4,6,8]]
\end{spec}

E assim podemos definir a função glevels de forma mais elegante:

\begin{code}
glevels1 = either (nil) (cons . (singl >< uncurry concatCondicional))
\end{code}


\subsubsection*{Solução 2: anamorfismo}


\subsubsection*{Motivação: limitações da solução por catamorfismo}

A solução anterior baseada em |levels| funciona corretamente, mas tem uma ineficiência:
constrói toda a estrutura de níveis |[[A]]| para depois a concatenar. Para árvores grandes,
isto consome memória desnecessária.

Idealmente, gostaríamos de gerar diretamente a lista final |[A]| sem construir a estrutura
intermédia. Isto sugere o uso de um \textbf{anamorfismo}.

\subsubsection*{Intuição: processamento por níveis com uma fila}

Para fazer uma travessia \emph{breadth-first}, o algoritmo clássico usa uma fila (queue),
tal como sugerido no artigo \cite{Ok00}. Pensámos inicialmente num algoritmo iterativo
que funciona da seguinte forma:


\begin{enumerate}
\item Inicializamos a fila com a árvore argumento
\item Repetidamente:
   \begin{itemize}
   \item Retiramos uma árvore da frente da fila
   \item Se for |Empty|, ignoramos
   \item Se for |Node(a,(l,r))|, emitimos |a| e adicionamos |l| e |r| ao fim da fila
   \end{itemize}
\item Paramos quando a fila fica vazia
\end{enumerate}

\textbf{Exemplo ilustrativo}: Para a árvore |t1| o processamento da fila procede da seguinte forma:

\begin{center}
    \includegraphics[width=0.70\textwidth]{cp2526t_media/queue-example.png}
\end{center}

\emph{Nota}: Ocultam-se os |Empty|s para simplificar a ilustração.

\subsubsection*{Do algoritmo iterativo ao anamorfismo}

O algoritmo acima é iterativo e gera uma lista progressivamente, 
processando primeiro os nós de nível $n$ antes dos de nível $n+1$.
Esta estrutura corresponde precisamente a um anamorfismo de listas,
que constrói uma lista a partir de um estado através de um gene |g :: B -> 1 + A >< B|.

O gene recebe um estado |B| e devolve |i1()| quando não há mais elementos (terminação),
ou |i2(a,b')| onde |a| é o próximo elemento a emitir e |b'| é o novo estado.
No nosso caso, o estado será a fila |[BTree A]| que contém as árvores ainda por processar.

Representemos o anamorfismo através do seguinte diagrama:

\begin{eqnarray*}
\xymatrix@@C=2cm{
     |[BTree A]|
               \ar[d]_-{|anaList g|}
               \ar[r]^-{|g|}
&    |1 + A >< [BTree A]|
               \ar[d]^{|id + id >< anaList g|}
\\
     |[A]|
&     |1 + A >< [A]|
               \ar[l]^-{|inList|}
}
\end{eqnarray*}

O gene |g :: [BTree A] -> 1 + A >< [BTree A]| deve inspecionar a fila e decidir o que fazer.
Caso esta esteja vazia, termina devolvendo |i1()|; caso contrário, retira a primeira árvore,
emite a sua raiz e adiciona os filhos ao fim da fila. No entanto, se a árvore for |Empty|,
deve ser ignorada e o gene deve processar o restante da fila recursivamente.

Podemos expressar isto de forma simples:

\begin{code}
g :: [BTree a] -> Either () (a, [BTree a])
g [] = i1 ()
g (Empty : queue) = g queue
g (Node(a,(l,r)) : queue) = i2 (a, queue ++ [l,r])
\end{code}

A função |bft| inicia o processo com uma fila contendo apenas a árvore argumento,
aplicando depois o anamorfismo com o gene |g|:

\begin{code}   
bft = anaList g . singl
\end{code}



\subsection*{Problema 2}

Parta-se da definição matemática da série de Taylor do seno hiperbólico:
\[sinh \ x = \sum_{n=0}^{\infty} \frac{x^{2n+1}}{(2n+1)!} = x + \frac{x^3}{3!} + \frac{x^5}{5!} + \frac{x^7}{7!} + \ldots\]

A aproximação de |sinh x| com |n| termos da série será dada por:
\[sinh \ x \ n = \sum_{i=0}^{n-1} \frac{x^{2i+1}}{(2i+1)!}\]

\subsubsection*{Definição recursiva direta}

Podemos definir |sinh x n| recursivamente como:
\begin{equation}
sinh \ x \ n =
     \begin{cases}
          x & \text{se } n = 0\\
          \frac{x^{2(n-1)+1}}{(2(n-1)+1)!} + sinh \ x \ (n-1) & \text{se } n > 0
     \end{cases}
\end{equation}

No entanto, esta definição é ineficiente, pois cada termo envolve o cálculo de potências e fatoriais.

\subsubsection*{Descoberta de uma definição eficiente por recursividade mútua}

Podemos escrever a soma como uma recursão simples:

\begin{equation}
s \ x \ n =
     \begin{cases}
          x & \text{se } n = 0\\
          s \ x \ (n-1) + \frac{h \ x \ (n-1)}{k \ x \ (n-1)} & \text{se } n > 0
     \end{cases}
\end{equation}

onde |s x n| é a soma dos primeiros |n+1| termos, |h x n| é o numerador do termo |n| e |k x n| é o denominador do termo |n|.

\subsubsection*{Descoberta de |h| por recursividade mútua}

Observando que cada termo tem a forma $\frac{x^{2i+1}}{(2i+1)!}$, 
procuramos uma relação de recorrência para o numerador |h|.

Para o termo na posição |n|, o numerador é $x^{2n+1}$, e para o termo na posição |n+1|, 
o numerador é $x^{2(n+1)+1} = x^{2n+3}$.

A relação entre numeradores consecutivos é:
\[
h_{n+1} = x^{2n+3} = x^{2n+1} \cdot x^2 = h_n \cdot x^2
\]

Portanto, o numerador do próximo termo é $x^2$ vezes o numerador do termo atual.
Assim:

\begin{equation}
h \ x \ n =
     \begin{cases}
          x^3 & \text{se } n = 1\\
          x^2 \cdot h \ x \ (n-1) & \text{se } n > 1
     \end{cases}
\end{equation}

\subsubsection*{Descoberta de |k| por recursividade mútua (2ª iteração)}

Calculemos a relação de recorrência para o denominador |k|.
O denominador do termo na posição |n| considerando que este começa em |n = 1|
é $(2n+3)!$. Para o termo na posição |n+1|, o denominador é $(2(n+1)+3)! = (2n+5)!$.
A relação entre denominadores consecutivos é:

\[\frac{k_{n+1}}{k_n} = \frac{(2n+5)!}{(2n+3)!} = (2n+5)(2n+4)\]

Portanto, o denominador do próximo termo é $(2n+5)(2n+4)$ vezes o denominador do termo atual.

Para o caso base |n = 1|, temos |k x 1 = 3! = 6|.
Assim:

\begin{equation}
k \ x \ n =
     \begin{cases}
          6 & \text{se } n = 1\\
          k \ x \ n \cdot (2n+5)(2n+4) & \text{se } n > 1
     \end{cases}
\end{equation}

Aplicar-se-á a lei de recursividade mútua novamente para obter uma definição de |k| que não dependa de |n| diretamente.

\subsubsection*{Descoberta de |j| por recursividade mútua (3ª iteração)}

Introduzamos uma nova função |j x n = (2n+5)(2n+4)| para simplificar a expressão de |k|.

Teremos uma relação entre termos consecutivos de |j| de:

\[j_{n+1} - j_n = (2(n+1)+5)(2(n+1)+4) - (2n+5)(2n+4) = 4n^2 + 26n + 42 - 4n^2 - 18n - 20 = 8n + 22\]

No caso base |n = 0|, temos |j x 0 = (2*0+5)(2*0+4) = 20|.

Portanto, podemos definir |j| como:

\begin{equation}
j \ x \ n =
     \begin{cases}
          20 & \text{se } n = 0\\
          j \ x \ n + 8n + 22 & \text{se } n > 0
     \end{cases}
\end{equation}

\subsubsection*{Descoberta de |m| por recursividade mútua (4ª iteração)}

Para simplificar ainda mais, introduzimos |m x n = 8n + 22|.

Temos então a relação entre termos consecutivos de |m| de:

\[m_{n+1} - m_n = 8(n+1) + 22 - (8n + 22) = 8\]

No caso base |n = 0|, temos |m x 0 = 8*0 + 22 = 22|.

Portanto, podemos definir |m| como:

\begin{equation}
m \ x \ n =
     \begin{cases}
          22 & \text{se } n = 0\\
          m \ x \ n + 8 & \text{se } n > 0
     \end{cases}
\end{equation}

Tendo chegado a um ponto onde |m| é uma função linear simples, podemos agora expressar todas as funções
em termos de recursividade mútua.

\subsubsection*{Sistema final de recursividade mútua}

Reunindo todas as definições recursivas obtidas:

\begin{eqnarray*}
s \ x \ n &=& \begin{cases} 
          x & \text{se } n = 0\\
          s \ x \ (n-1) + \frac{h \ x \ (n-1)}{k \ x \ (n-1)} & \text{se } n > 0
     \end{cases}\\
h \ x \ n &=& \begin{cases}
          x^3 & \text{se } n = 1\\
          x^2 \cdot h \ x \ (n-1) & \text{se } n > 1
     \end{cases}\\
k \ x \ n &=& \begin{cases}
          6 & \text{se } n = 1\\
          k \ x \ (n-1) \cdot j \ x \ (n-1) & \text{se } n > 1
     \end{cases}\\
j \ x \ n &=& \begin{cases}
          20 & \text{se } n = 0\\
          j \ x \ (n-1) + m \ x \ (n-1) & \text{se } n > 0
     \end{cases}\\
m \ x \ n &=& \begin{cases}
          22 & \text{se } n = 0\\
          m \ x \ (n-1) + 8 & \text{se } n > 0
     \end{cases}
\end{eqnarray*}

Pela lei de recursividade mútua, este sistema pode ser expresso como:

\[
(s, h, k, j, m) = \text{for} \ (\text{loop} \ x) \ (\text{start} \ x)
\]

onde |start x| representa os valores iniciais e |loop x| representa a função de transição.

Para determinar |start x| e |loop x|, observemos que a função |for| itera |n| vezes,
começando do estado inicial e aplicando repetidamente a função |loop|.

Os valores iniciais correspondem a |n = 0|:
\begin{eqnarray*}
\text{start} \ x = (x, x^3, 6, 20, 22)
\end{eqnarray*}

A função |loop x| transforma o estado |(s, h, k, j, m)| no próximo estado,
incrementando implicitamente |n|:

\begin{eqnarray*}
\text{loop} \ x \ (s, h, k, j, m) = (s + \frac{h}{k}, x^2 \cdot h, k \cdot j, j + m, m + 8)
\end{eqnarray*}

Finalmente, a função |sinh x n| corresponde à primeira componente do estado após |n| iterações:

\begin{eqnarray*}
\text{sinh} \ x \ n = \p1 \cdot \text{for} \ (\text{loop} \ x) \ (\text{start} \ x) \ n
\end{eqnarray*}

ou, usando |head| para extrair a primeira componente:

\begin{eqnarray*}
\text{sinh} \ x \ n = \text{head} \cdot \text{for} \ (\text{loop} \ x) \ (\text{start} \ x) \ n
\end{eqnarray*}

Esta é precisamente a estrutura da função |f x n| fornecida no enunciado, provando que
|f x n| calcula o seno hiperbólico de |x| com |n| aproximações da série de Taylor.

Transpondo para o código Haskell obtemos:

\begin{quote}
\begin{verbatim}
sinh :: Floating a => a -> Int -> a
sinh x n = p1 . for (loop x) (start x) $ n
     where
          start x = (x, x^3, 6, 20, 22)
          loop x (s, h, k, j, m) =
               (s + h / k, x^2 * h, k * j, j + m, m + 8)
\end{verbatim}
\end{quote}

Com pequenos ajustes, modificando os tuplos para listas e usando funções auxiliares,
obtemos a definição final de |sinh| igual à fornecida no enunciado.

\begin{code}
s :: Floating a => a -> Int -> a
s x n = head . for (loop x) (start x) $ n
     where
          start x = [x, x^3, 6, 20, 22]
          loop x [s, h, k, j, m] = [s + h / k, x^2 * h, k * j, j + m, m + 8]
\end{code}


\subsection*{Problema 3}

\begin{code}
fair_merge' = anaStream undefined
\end{code}

\subsection*{Problema 4}

\begin{code}
pcataList = undefined
gene = undefined
\end{code}


%----------------- Índice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2526t}

%----------------- Fim do documento -------------------------------------------%
\end{document}
