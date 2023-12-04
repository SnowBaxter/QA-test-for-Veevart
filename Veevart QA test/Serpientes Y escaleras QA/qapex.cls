public class Snakesnladders{
    constructor(){      //Construccion inicializando una variable posicion en 1
        this.position = 1;
    }

    @isTest
     movePlayer(){
        let destiny = Math.floor(Math.random() * (6 - 1 + 1) + 1); //Generacion de numero random entre 1 y 6.
         if(destiny >= 1 && destiny <=25){  //Rango del recorrido completo desde 1 a 25
            
            console.log(`El resultado del dado es: ${destiny}`)
            this.position = this.position + destiny;                      
            
            console.log(`El jugador se mueve hacia la casilla ${this.position}.`);

            if(this.position >= 25){
                console.log("Felicidades! Has llegado al final del juego.");  //Condicion de Victoria del juego.
                
            }
            

            switch (this.position){                 //Reglas de Escaleras Y Serpientes
                case 3: 
                    console.log("Has tomado una escalera, avanzas hasta la casilla 11.")
                    this.position = 11;
                    break;
                case 6:
                    console.log("Has tomado una escalera, avanzas hasta la casilla 17.")
                    this.position = 17;
                    break;
                case 9:
                    console.log("Has tomado una escalera, avanzas hasta la casilla 18.")
                    this.position = 18;
                    break;
                case 10:
                    console.log("Has tomado una escalera, avanzas hasta la casilla 12.")
                    this.position = 12;
                    break;
                case 14:
                    console.log("Te has encontrado una serpiente, desciendes hasta la casilla 4.")
                    this.position = 4;
                    break;
                case 19:
                    console.log("Te has encontrado una serpiente, desciendes hasta la casilla 8.")
                    this.position = 8;
                    break;
                case 22:
                    console.log("Te has encontrado una serpiente, desciendes hasta la casilla 20.")
                    this.position = 20;
                    break;
                case 24:
                    console.log("Te has encontrado una serpiente, desciendes hasta la casilla 16.")
                    this.position = 16;
                    break;
                case 25:
                    console.log("Felicidades! Has llegado al final del juego.")
                    return;
                default:
                console.log(`Tu posicion actual es ${this.position}`);
    
             }        

         } else {
            console.log("Ha ocurrido un error, tira de nuevo.")
         }

         
     }

     showActualPosition(){     //Forma de Recibir posicion actual por consola.
        console.log(`Actualmente te encuentras en la casilla ${this.position}.`);
     }
    
      
}

function simulation() {       //Funcion principal 
    const labrynth = new Snakesnladders();
        console.log(`Bienvenido a Serpientes y Escaleras.`);

        while(true){
            console.log(`\n Selecciona una opcion: `);
            console.log(`1. Tira el dado para avanzar.`);
            console.log(`2. Revisa tu posicion actual.`);
            console.log(`3. Cierra el juego.`);

            const option = readlineSync.questionInt(`Ingrese el numero de la opcion: `);

            switch (option){
                case 1:
                    labrynth.movePlayer();
                    labrynth.showActualPosition();
                    break;
                case 2:
                    labrynth.showActualPosition();
                    break;
                case 3:
                    console.log(`Fin del Juego.`);
                    return;
                default:
                    console.log(`Opcion no valida, digite de nuevo.`);
            }

        }
    }

//Lanzamiento de Funcion principal.
simulation();
