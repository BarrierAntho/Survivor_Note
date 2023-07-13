# React

## Content

- [Historic :clock7:](#historic-clock7)
- [Cheat Section :trollface:](#cheat-section-trollface)
- [Lexic :books:](#lexic-books)
- [Sources :link:](#sources-link)

## Historic :clock7:

[Go to content](#content)
|Date _YYYY-MM-DD_|Description|
|:-|:-|
|20xx-xx-xx|Init|

## Import

[Go to content](#content)

- Only one `default` export is possible then it will possible to use `import something from somewhere`<br>
- Use the bracket when the object/function/variable must be exported.

```JavaScript
/*** File a.js ***/
export default function drive() {
	console.log("vrooom");
}
export const color = "Blue";
export const cat = "Mustang";

/*** File b.js ***/
import drive, { car, color } from "./a"

drive();
console.log(car, color);
```

## Component

[Go to content](#content)
Component is a function which represents a bundle of data

- Must be declared as a `function`<br> by using AppleCase norme
- Must return something
- Can not return `Object`<br>
- Can only return one parent
- Can return a fragment instead of a div
- Is called as CDN

```JavaScript
/*** File Greetings.jsx ***/
export function Greetings() {
  return "Hello World";
}

/*** File App.js ***/
export function App() {
  return (
    <div>
      <Greetings />
    </div>
  );
}

OR

export function App() {
  return (
    <>
      <Greetings />
    </>
  );
}
```

### Props

[Go to content](#content)

- Can be
  - Primitive variable
  - Number
  - Object
  - Image
- If object are declared into the tag = are considered as individual object
- If object are declared between the tag = are considered as children
- Props are in `ReadOnly` but `useState` can be used to change the value

```JavaScript
<Greetings
        //   These are individual properties
        firstName={"Rachel"}
        lastName={"Green"}
        age={30}
        car={{ brand: "Visper", color: "Red", speed: "200" }}
        doSomething={function () {
          console.log("Blabla");
        }}
      >
        {/* This is a chlidren*/}
        <img src="https://picsum.photos/200/300" title="Image" />
</Greetings>
```

### useState

[Go to content](#content)
`useState` must be used to mutate a variable

- Is composed of
  - The variable which will read from
  - The Function to update the variable aka `setState`
  - The intial value of the variable
- Can be whatever as initial value

> :warning: IMPORTANT :warning:
> `setState` does not refresh immediatly the updated variable. To be able to log it, you must log it into the component body or by using `useEffect`.
> Never place the `setStatus` in the component body to avoid triggering render the whole component body

```JavaScript
import { useState } from "react";

export function AgeCounter(props) {
  const [age, setAge] = useState(30);

  function increaseAge() {
    setAge(age + 1);
  }

  return (
    <div>
      <button onClick={increaseAge}>Increase age</button>
      <p>You are {age} years old</p>
    </div>
  );
}
```

## Styling

### Inline CSS aka JSS

```html
<div style={{backgroundColor:"red", border:"solid 1px blue"}} />
```

### CSS module

`CSS module` allow to import style as a `Class` and prevent naming conflict between class names.

```css
/*** File style.module.css ***/
.box {
  height: 100px;
  width: 100px;
  border: solid 3px blue;
}
```

```JavaScript
/*** File Greetings.jsx ***/
import s from "./style.module.css";

export function Greetings(props) {
  return <p className={s.box}>Hello you</p>;
}
```

## Cheat Section :trollface:

[Go to content](#content)

## Lexic :books:

[Go to content](#content)
|Name|Description|
|-|-|
|CDN|Content Delivery Network|
|Component|HTML + CSS + JS|
|DOM|Document Object Model|
|framework front-end|

## Sources :link:

[Go to content](#content)
