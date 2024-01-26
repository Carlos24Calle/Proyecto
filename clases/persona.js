
class Persona {
  nombre;
  apellido;
  edad;
  cedula;

  constructor(nombre, apellido, edad, cedula) {
    this.nombre = nombre;
    this.apellido = apellido;
    this.edad = edad;
    this.cedula = cedula;
  }

  mostrarpersona() {
    return `Hola a todos mi nombre es ${this.nombre} ${this.apellido}, tengo ${this.edad} años  y mi numero de identificacion es ${this.cedula} `;
  }
}

let persona = new Persona("Carlos", "Calle", 30, 108626263838);
console.log(persona.mostrarpersona());
function lookpeson(){
  let container= document.querySelector(".cont1");
  container.innerHTML = persona.mostrarpersona();
}
lookpeson();


