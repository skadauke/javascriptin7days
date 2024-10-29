// Exercise 3: Utilize spread and rest operators.
// Instructions:
// - Use the spread operator to combine two arrays: ["apple", "banana"] and ["cherry", "date"].
// - Write a function named "sumAll" that takes any number of arguments and returns their sum using the rest operator.

const fruits1 = ["apple", "banana"];
const fruits2 = ["cherry", "date"];

const fruitsCombined = [...fruits1, ...fruits2];

console.log(fruitsCombined)

const sumAll = (...nums) => {
    let sum = 0;
    for (number of nums) {
        sum += number;
    }
    return sum;
}

console.log(sumAll(1, 2, 3, 4, 5))