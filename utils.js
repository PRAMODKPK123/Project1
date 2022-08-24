
  //const pi = 3.14

// export function add(a,b){
//     console.log(a+b)
// }

 // OR we can write above by reducing export key word multiple times
 
//  export {pi,add} 

//   const pi = 3.14

//   function add(a,b){
//     console.log(a+b)
// }

//
 const PI_DATA = 3.14

function add(a,b){
    console.log(a+b)
}

export {PI_DATA as pi,add}

export function minus(old,newone){
    console.log(newone-old)
} 