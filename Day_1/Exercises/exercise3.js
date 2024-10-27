// Exercise 3: Implement loops and conditionals.
// Instructions:
// - Write a loop that prints numbers from 1 to 10.
// - Write a loop that iterates over the "fruits" array and prints each fruit.
// - Write an if-else statement that checks if a number is positive, negative, or zero.

for (let i = 1; i <= 10; i++) {
    console.log(i)
}

const fruits = ['apples', 'oranges', 'pears'];

for (let fruit of fruits) {
    console.log(fruit)
}

const num = 42;

if (num > 0) {
    console.log('positive')
} else if (num < 0) {
    console.log('negative')
} else {
    console.log('zero')
}