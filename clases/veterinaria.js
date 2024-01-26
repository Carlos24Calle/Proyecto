class Veterinaria {
    nombre;
    direccion;
    telefono;
  
    constructor(nombre, direccion, telefono) {
      this.nombre = nombre;
      this.direccion = direccion;
      this.telefono = telefono;
    }
    mostrarveterinaria() {
      return `Mi veterinaria se llama ${this.nombre}, mi direccion es ${this.direccion}mi numero de telefono es ${this.telefono}`;
    }
  }
  let veterinari = new Veterinaria("Mascotas Felices", "cll 23 av 1", "3455535");
  console.log(veterinari.mostrarveterinaria());
function lookvet(){
let container = document.querySelector(".cont2");
container.innerHTML= veterinari.mostrarveterinaria();
}  
lookvet();