// Exercise 2: Write basic functions.
// Instructions:
// - Write a function named "add" that takes two numbers as arguments and returns their sum.
// - Write a function named "isEven" that takes a number and returns true if its even, false otherwise.
// - Write a function named "greet" that takes a name as an argument and returns a greeting message.

function add(num1, num2) {
    return num1 + num2
}

function isEven(num) {
    return (num % 2 === 0) ? true : false
}

function greet(name) {
    return `Hello ${name}!`
}