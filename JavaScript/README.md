# JavaScript

## Content
- [Historic :clock7:](#historic-clock7)
- [Sources :link:](#sources-link)

## Historic :clock7:
[Go to content](#content)
|Date _YYYY-MM-DD_|Description|
|:-|:-|
|2023-06-26|Init|

## Sources :link:
[Go to content](#content)

## Basic
## Strict mode
Use strict `use strict` at the beginning of the code to avoid bugs
- forbid some things
- create visible errors

### Variable declaration
The variable declaration does not contain the type but the value does.
```JavaScript
var a; // CREATE VARIABLE (OLD CALL)
let b; // CREATE VARIABLE
const c; // CREATE CONSTANTE VARIABLE
```
> _:pencil2: Example: _<br>
> ```JavaScript
> const a; // UNDEFINED TYPE
> a = "a"; // STRING TYPE
> a = 'a'; // STRING TYPE
> a = 1; // INTEGER TYPE
> ```

---

#### comparison operator `===` vs `==`
`===` strict mode: Variable must have the same type and value to get `true`
`==` coersion mode: Variable are converted to the same type and value must be the same to get `true`

> _:pencil2: Example:_<br>
> ```JavaScript
> const a = "1";
> const b = "1";
> const c = 1;
> 
> /* STRICT MODE */
> a === b; // RETURN true
> a === c; // RETURN true
> 
> /* COERSION MODE */
> a == b;
> a == c;
> ```

### Functions
```JavaScript
// FUNCTION DECLARATION
function funcName(a1, a2) { // parameters a1 et a2
    // FUNCTION PROCESS
    return something;
}
funcName(); // CALLING FUNCTION

// FUNCTION EXPRESSION
const value = function (a1) {
    return something;
}
const a = value('test'); // CALLING FUNCTION

// ARROW FUNCTIONS
// ONLY ONE ARGUMENT AND ONE RETURN
const a = value => something;

// ONLY ONE ARGUMENT AND BLOCK CODE
const a = value => {
    const b = 'something';
    const c = 'something';
    return c;
}
console.log(value(42));

// SEVERAL ARGUMENTS AND BLOCK CODE
const a = (value1, value2) => {
    const b = 'something';
    const c = 'something';
    return c;
}
console.log(value(42));
```
:warning: It is not possible to call a function expression before its declaration<br>

## Array
```JavaScript
const myArray = [1, 2, 3];
console.log(myArray);
console.log(myArray[0]);

const myArray2 = new Array(1, 2, 3);

myArray.length(); // GET AMOUNT OF ARRAY

myArray[0] = 4; // CHANGE THE VALUE AT THE INDEX 0

const newLen = myArray.push(4); // ADD A NEW ELEMENT TO THE ARRAY AND RETURN NEW LENGTH OF THE ARRAY

const newLen = myArray.unshift(4); // ADD A NEW ELEMENT AT LEFT TO THE ARRAY AND RETURN NEW LENGTH OF THE ARRAY

const poped = myArray.pop(); // REMOVE THE LAST ELEMENT IN THE ARRAY AND RETURN THE REMOVED ELEMENT

const poped = myArray.shift(4); // REMOVE THE FIRST ELEMENT IN THE ARRAY AND RETURN THE REMOVED ELEMENT

myArray.indexOf(1); // RETURN INDEX POSITION OF THE SEARCHED ELEMENT, OTHERWISE -1 IS RETURNED IF NO FOUND ELEMENT

myArray.includes(1); // RETURN TRUE IF FOUND ELEMENT, OTHERWISE FALSE IS RETURNED IF NO FOUND ELEMENT
```

### Objects
Structure data
```JavaScript
const myObject = {
    firstName: 'a',
    lastName: 'b',
    age: 1,
    friends: ['in', 'out']
};
console.log(myObject); // DISPLAY EVERY DATA FROM THE OBJECT
console.log(myObject.lastName); // DISPLAY THE LAST NAME
console.log(myObject['lastName']) // DISPLAY THE LAST NAME BUT CAN HANDLE EXPRESSION

const nameKey = 'Name';
console.log(myObject['first' + nameKey]);
console.log(myObject['last' + nameKey]);

const a = prompt("What do you want to know about the object ?");
if (myObject[a]) {
    console.log(myObject[a]);
} else {
    console.log("Wrong reauest");
}

myObject.location = "France"; // ADD NEW FIELD
```

## Misc
Possible to write conditional ternary in `console.log`
