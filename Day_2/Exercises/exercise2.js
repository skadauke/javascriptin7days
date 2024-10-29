// Exercise 2: Use destructuring to extract values.
// Instructions:
// - Destructure the "person" object to extract "name" and "age" into separate variables.
// - Destructure the "fruits" array to extract the first two fruits into separate variables.

let fruits = ['apples', 'oranges', 'pears'];
const person = {
    name: 'Stephan',
    age: 44,
    isStudent: false
}

const {name, age} = person;
const [fruit1, fruit2] = fruits;