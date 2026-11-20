extends CharacterBody2D

#Constantes
const SPEED = 400.0
const JUMP_VELOCITY = -400.0

#Enuns 
enum Estados {PARADO, PULANDO, CORRENDO}

#Variaveis --> armazenam informações pra guardar do jogo kkkk
#    variavel global
var gaveta_preta = "mistério"
#   usando operador walrus para especificar o tipo da variável (não especifica ?????????)
var idade := 13


#esquizofrenias p testar IF/ELIF/ELSE n sei se é assim q pega os nomes associados aos enums, vou pesquisar hehehehe
func movimentos(estado):
	if estado == Estados.PARADO:
		print("O boneco tá parado")
	elif estado == Estados.PULANDO:
		print("O boneco ta pulando")
	else: 
		print("O boneco ta correndo")
		

#Funcoes --> partes do código reutilizáveis 

#função _ready é p rodar as funções criadas dentro do nó (é do nó mesmo aaaa)
#OBS: não sei se tem diferença de nó pra cena, se a cena é o nó, uma árvore ou q danado é kkkkk
func _ready():
#variável dentro da função e especificando o tipo dela:
	var nome : String = "Clara lindona"
	ola(nome) #identação dentro do bloco da função tem q ter né bb? hehehe

func ola(x):
	#comentario hehehe
	print("olá ", x)

#função _process cuida das movimentações do jogo que não estão envolvidas com colisões. exc: nuvens, moedas
#implementando a movimentação do jogador 
func _process(delta):
	if Input.is_action_pressed("ui_left"): #esse input 
		global_position.x += 3 
	elif Input.is_action_pressed("ui_right"):
		global_position.x -=3
	
	if Input.is_action_pressed("ui_up"): #qlqr coisa olhar os mapas de entrada Projeto > Configurações do Projeto > Mapa de Entrada 
		global_position.y += 3
	elif Input.is_action_pressed("ui_down"): # as teclas de seta, ok? 
		global_position.y -= 3
		
	
#Vetores --> geralmente armazenam coordenadas do jogo
var vetor := Vector2(1,4)
#acessando as propriedades do eixo x --> print(vetor.x)
#acessando as propriedades do eixo y --> print(vetor.y)


#event só faz alguma coisa quando tem entrada do usuário, contrário do _process q fica captando frames p processar o estado do jogo 
# q peste é frame? n sei PESQUISAR O Q É FRAME KKKKKK
func _input(event): 
	if event.is_action_pressed("gritar"):
		print("TO JOGANDOOOOOOO")

#estruturas de repetição 
func repeticao():
	var i : int = 0
	for ia in 9:
		print("repetindo com for")
	while i < 9:
		print("a")
		i+=1

	print("repetindo com while")
