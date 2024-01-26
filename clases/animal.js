class Animales {
    nombre;
    tipo;
    genero;
    raza;
  
    constructor(nombre, tipo, genero, raza) {
      this.nombre = nombre;
      this.tipo = tipo;
      this.genero = genero;
      this.raza = raza;
    }
    monstraranimales() {
      return `Mi mascota se llama ${this.nombre} es un ${this.tipo} ,  es ${this.genero} y  su raza es ${this.raza}`;
    }
  }
  let ani = new Animales("Malboro", "gato", "macho", "persa");
  console.log(ani.monstraranimales());

  function lookAnimal () {
  let container= document.querySelector(".cont");
  container.innerHTML = ani.monstraranimales();
  
  }
  lookAnimal();