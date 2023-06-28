# JavaScript

## Content

- [Historic :clock7:](#historic-clock7)
- [Sources :link:](#sources-link)

## Historic :clock7:

[Go to content](#content)

| Date _YYYY-MM-DD_ | Description |
| :---------------- | :---------- |
| 2023-06-26        | Init        |

## Definition

[Go to content](#content)

<img src="./ressources/js_udemy_definition.png" title="JavaScript - Definition">

## Strict mode

[Go to content](#content)

Use strict `use strict` at the beginning of the code to avoid bugs

- forbidd some things
- create visible errors

## Variable

[Go to content](#content)

### Overview

<img src="ressources/js_udemy_data_types.png" title="JavaScript - Data Types" width="400"/><br>

Primitive data types:

- Number
- String
- Boolean
- Undefined (empty value)
- Null (empty value)
- Symbol (ES2015)
- BigInt (ES2020)

### Declaration

_:warning: The variable declaration does not contain the type but the value does. :warning:_

```JavaScript
var a; // CREATE VARIABLE. SCOPE CHAINE OUTSIDE OF BLOCK SCOPE. CREATE A PROPERTY IN THE GLOBAL 'window' OF THE WEB BROWSER
let b; // CREATE VARIABLE. SCOPE CHAINE EXCLUSIVELY INSIDE OF BLOCK SCOPE
const c; // CREATE CONSTANTE.  SCOPE CHAINE EXCLUSIVELY INSIDE OF BLOCK SCOPE
```

> _:pencil2: Example: _<br>
>
> ```JavaScript
> const a; // UNDEFINED TYPE
> a = "a"; // STRING TYPE
> a = 'a'; // STRING TYPE
> a = 1; // INTEGER TYPE
> ```

---

`type of ` returns the data type

## Type conversion and coercion

```JavaScript
// TYPE CONVERSION
const inputYear = '1991';
console.log(Number(inputYear), inputYear);
console.log(Number(inputYear) + 18);

console.log(Number('Jonas'));
console.log(typeof NaN);

console.log(String(23), 23);

// TYPE COERCION
console.log('I am ' + 23 + ' years old'); // RETURN STRING 'I am 23 years old'
console.log('23' - '10' - 3); // RETURN NUMBER 10
console.log('23' / '2'); // RETURN NUMBER 11.5

let n = '1' + 1; // RETURN STRING '11'
n = n - 1;
console.log(n);

```

## comparison operator `===` vs `==`

`===` strict mode: Variable must have the same type and value to get `true`
`==` coersion mode: Variable are converted to the same type and value must be the same to get `true`

> _:pencil2: Example:_<br>
>
> ```JavaScript
> const a = "1";
> const b = "1";
> const c = 1;
>
> // STRICT MODE
> a === b; // RETURN true
> a === c; // RETURN false
>
> // COERSION MODE
> a == b; // RETURN true
> a == c; // RETURN true
> ```

## Boolean operator && and ||

Use:

- Use any data type
- Return any data type
- Short-circuiting

```JavaScript
/* OR */
console.log(3 || 'Antho'); // RETURN 3
console.log('' || 'Antho'); // RETURN 'Antho'
console.log(true || 0); // RETURN true
console.log(undefined || null); // RETURN null
console.log(undefined || 0 || '' || 'Hello' || 23 || null); // RETURN 'Hello'

const guest1 = restaurant.numGuests ? restaurant.numGuests : 10;
console.log(guest1); // RETURN 10

const guest2 = restaurant.numGuests || 10;
console.log(guest2); // RETURN 10

/* AND */
console.log(0 && 'Antho'); // RETURN 0
console.log(7 && 'Antho'); // RETURN 7

console.log('Hello' && 23 && null && 'Antho'); // RETURN null

if (restaurant.orderPizza) {
  restaurant.orderPizza('toto');
}
restaurant.orderPizza && restaurant.orderPizza('toto');
```

## NULLISH COALESCING OPERATOR

```JavaScript
// NULLISH: null AND UNDEFINED (NOT 0 or '')
restaurant.numGuests = 0;
const guestCorrect = restaurant.numGuests ?? 10;
console.log(guestCorrect);
```

## Logical Assignment Operators

```JavaScript
const rest1 = {
  name: 'Capri',
  // numGuest: 20,
  numGuest: 0,
};

const rest2 = {
  name: 'La Pizzzza',
  owner: 'Antho',
};

// rest1.numGuest = rest1.numGuest || 10;
// rest2.numGuest = rest2.numGuest || 10;
// rest1.numGuest ||= 10;
// rest2.numGuest ||= 10;
rest1.numGuest ??= 10;
rest2.numGuest ??= 10;

// rest1.owner = rest1.owner && '<ANONYM>';
// rest2.owner = rest2.owner && '<ANONYM>';
rest1.owner &&= '<ANONYM>';
rest2.owner &&= '<ANONYM>';

console.log(rest1);
console.log(rest2);

```

## Functions

### Function declaration

```JavaScript
function funcName(a1, a2) { // parameters a1 et a2
    // FUNCTION PROCESS
    return something;
}
funcName(); // CALLING FUNCTION
```

### Function expression

_:warning: It is not possible to call a function expression before its declaration :warning:_

```JavaScript
const value = function (a1) {
    return something;
}
const a = value('test'); // CALLING FUNCTION
```

### Arrow expression

Arrow expression function inherits of `this` from its parent call.

```JavaScript
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

### Debugging

```JavaScript
console.log();
console.warn();
console.err();
console.tabe(object);

```

In Developper Tools WebBrowser, tab "Sources", it is possible to add breakpoint in the script.

## DOM

`Document Object Model`: Structured representation of html documents. Allows JavaScript to acess HTML elements and styles to manipulate them.
Connexion point between HTML document and JavaScript script.

It is part of WEB APIs (Application Programming Interface).

## Class

`contains`: check if the class value exists in the object.
`toggle`: set searched class value if not exists or unset searched class value if exists.

## Arguments keyword

:warning: Only available for function declaration and function expression :warning:

```JavaScript
// arguments keyword
const addExpr = function (a, b) {
  console.log(arguments);
  return a + b;
};
addExpr(2, 5);
addExpr(2, 5, 8, 12); // PRINT EVERY ARGUMENTS

var addArrow = (a, b) => {
  console.log(arguments);
  return a + b;
};
addArrow(2, 5, 8); // ERROR OF REFERENCE
```

## Array

Destrucring Array

```JavaScript
const restaurant = {
    name: 'Classico',
    location: 'Angelo, Firenze, Italy',
}
// BORING DECLARATION/INITIALISATION
const arr = [2, 3, 4];
const a = arr[0];
const b = arr[1];
const c = arr[2];

// DESTRUCRING ARRAY
const [x, y, z] = arr;
console.log(x, y, z); // RETURN 2, 3, 4
console.log(arr) // RETURN 2, 3, 4

const [first, , second] = restaurant.location; // WILL SKIP THE SECOND OBJECT OF location
console.log(first, second); //RETURN Angelo, Italy

// SWITCHING VARIABLES
let [main, , secondary] = restaurant.location;
// const temp = main;
// main = secondary;
// secondary = temp;
// console.log(main, secondary);
[main, secondary] = [secondary, main];
console.log(main, secondary);

//DEFAULT VALUE
const [p = 1, q = 2, r = 3] = [8];
console.log(p, q, r); // RETURN p=8, q=2, r=3

```

### Destruring Objects

```JavaScript
const restaurant = {
    name: 'Classico',
    location: 'Angelo, Firenze, Italy',
}
// CREATE VARIABLE
const {name, location} = restaurant;

// CREATE VARIABLE WITH NEW NAME
const {name: restaurantName, location: places} = restaurant;
console.log(restaurantName, places);

// MUTATING VARIABLES
let a = 111;
let b = 999;
const obj = {
    a: 23,
    b: 7,
    c: 14,
}
// {a, b} = obj; // ERROR
({a, b} = obj); // WORKAROUND
```

## SPREAD OPERATORS

Spread operators `...array` is used to unpack an array.
The rest pattern is placed on the `right` of the `=` operator.

```JavaScript
const arr = [7, 8, 9];
const badNewArr = [1, 2, arr[0], arr[1], arr[2]];
console.log(badNewArr);

const newArr = [1, 2, ...arr];
console.log(newArr);

console.log(..arr); // EQUAL TO arr[0], arr[1], arr[2]

const newMenu = [...restaurant.mainMenu, 'Knacki']; // EXTRACT EVERY OBJECT FROM THE ARRAY AND ADD A NEW ONE
console.log(newMenu);

const mainMenuCopy = [...restaurant.mainMenu]; // SHALLOW COPY

// JOIN 2 ARRAYS
const menu = [...restaurant.starterMenu, ...restaurant.mainMenu];

const str = 'Antho';
const letters = [...str, ' ', 'S.'];
console.log(letters); // ['A', 'n', 't', 'h', 'o', ' ', 'S.']

const ingredients = [
  prompt("Let's make pasta! Ingredient 1?"),
  prompt("Let's make pasta! Ingredient 2?"),
  prompt("Let's make pasta! Ingredient 3?"),
];
console.log(ingredients);

// restaurant.orderPata(ingredients[0], ingredients[1, ingredients[2]]); // OLD WAY
restaurant.orderPata(...ingredients);

// COPY
const restaurantCopy = { ...restaurant };
restaurantCopy.name = 'Test';
console.log(restaurant, restaurantCopy);
```

## REST PATTERN AND PARAMETTERS

Rest pattern `...elements` is to pack elements into an array
The rest pattern is placed on the `left` of the `=` operator.
The reset pattern must be the last element.

```JavaScript
const [a, b, ...others] = [1, 2, 3, 4, 5];
console.log(a, b, others);

const { sat, ...weekdays } = restaurant.openingHours;
console.log(sat, weekdays);

// REST PARAMETERS
const add = function (...numbers) {
  console.log(numbers);
  let sum = 0;
  for (let i = 0; i < numbers.length; i++) sum += numbers[i];
  console.log(sum);
};
add(2, 3);
add(5, 3, 7, 2);

const x = [23, 5, 7];
add(...x); // DESTRURING ARRAY BUT RESTRUCURING IN FUNCTION
```

## Miscellaneous

Possible to write conditional ternary in `console.log`

Install node js "live-server"
`sudo npm install live-server -g`

Use `self` variable name in an object to ensure the correct usage of internal properties/methods

```JavaScript
const antho = {
    firstName = 'Antho',
    year: 2023,
    calcAge: function () {
        console.log(9999 - this-year);

    // Solution 1
    const self = this; // self or that
    const isMillenial = function () {
        console.log(self);
        console.log(self.year >= 1981 && self.year <= 1996);
    };

    // Solution 2
    const isMillenial = () => {
        console.log(this);
        console.log(this.year >= 1981 && this.year <= 1996);
    };
    isMillenial();
    }
}
```

:warning: Primitive Type Vs Reference Type :warning:
`primitive type` are stored into `call stack`
`reference type` are stored into heap

Declaration of new object by copying existing one will create a new object but with the same address.

```JavaScript
let age = 30;
let oldAge = age;
age = 31;
console.log(age);
console.log(oldAge);

const me = {
  name: 'Jonas',
  age: 30,
};
const friend = me;
friend.age = 27;
console.log('Friend:', friend); // RETURN 27
console.log('Me', me); // RETURN 27
```

use `Object.assign({}, myOvject)` to do a `shallow copy` (copy properties on the first level).
:warning: It will not create a copy of object properties :warning:

```JavaScript
// Primitive types
let lastName = 'Williams';
let oldLastName = lastName;
lastName = 'Davis';
console.log(lastName, oldLastName);

// Reference types
const jessica = {
  firstName: 'Jessica',
  lastName: 'Williams',
  age: 27,
};
const marriedJessica = jessica;
marriedJessica.lastName = 'Davis';
console.log('Before marriage:', jessica);
console.log('After marriage: ', marriedJessica);
// marriedJessica = {};

// Copying objects
const jessica2 = {
  firstName: 'Jessica',
  lastName: 'Williams',
  age: 27,
  family: ['Alice', 'Bob'],
};

const jessicaCopy = Object.assign({}, jessica2);
jessicaCopy.lastName = 'Davis';

jessicaCopy.family.push('Mary');
jessicaCopy.family.push('John');

console.log('Before marriage:', jessica2);
console.log('After marriage: ', jessicaCopy);
*/
```

## Sources :link:

[Go to content](#content)

### Basics

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence
