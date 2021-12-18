
import demo from "./output/demo.svg";

console.log("loaded", demo);
document.querySelector("#demo").src = demo;

if (import.meta.hot) {
 import.meta.hot.accept(["./output/demo.svg"], (newModule) => {
    console.log("write", newModule)
    document.querySelector("#demo").src = demo;
  })
}
