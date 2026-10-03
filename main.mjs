
import demo from "./output/demo.svg";
const frames = import.meta.glob("./output/demo[0-9].svg", {
  eager: true,
  query: "?url",
  import: "default",
});

console.log("loaded", demo);
document.querySelector("#demo").src = demo;

let counter = 0;

setInterval(()=> {
   const frame = frames[`./output/demo${counter}.svg`];
   if (frame) document.querySelector("#demo").src = frame;
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
