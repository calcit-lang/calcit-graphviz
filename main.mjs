
import demo from "./output/demo.svg";

console.log("loaded", demo);
document.querySelector("#demo").src = demo;

let counter = 0;

setInterval(()=> {
   document.querySelector("#demo").src = `/output/demo${counter}.svg`;
   counter += 1;
}, 2000)

// if (import.meta.hot) {
//  import.meta.hot.accept(["./output/demo.svg"], (newModule) => {
//     console.log("write", newModule)
//     document.querySelector("#demo").src = demo + "?" + Date.now();
//   })
// }

window.addEventListener("keydown", (event) => {
  if (event.key === "Enter") {
    document.body.requestFullscreen()
  } else if (event.key === "0") {
    counter = 0
  }
})
