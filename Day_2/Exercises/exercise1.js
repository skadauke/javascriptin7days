// Exercise 1: Convert regular functions to arrow functions.
// Instructions:
// - Convert the "add" function from Day 1 to an arrow function named "addArrow".
// - Convert the "isEven" function to an arrow function named "isEvenArrow".
// - Convert the "greet" function to an arrow function named "greetArrow".

function add(num1, num2) {
    return num1 + num2
}

function isEven(num) {
    return (num % 2 === 0)
}

function greet(name) {
    return `Hello ${name}!`
}

const addArrow = (num1, num2) => num1 + num2;

const isEvenArrow = num => (num % 2 === 0);

const greetArrow = name => `Hello ${name}!`;