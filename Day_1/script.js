const userName = 'John';
const age = 30;

// Concatenation
console.log(userName + ' is ' + age + ' years old');

// Template Literals
console.log(`${userName} is ${age} years old`);

// String Methods
const s = "Hello World";
console.log(s.length);
console.log(s.toUpperCase());
console.log(s.toLowerCase());
console.log(s.charAt(0));
console.log(s.indexOf('o'));
console.log(s.substring(0, 5));
console.log(s.substring(0, 5).toUpperCase());
console.log(s.slice(0, 5));
console.log(s.slice(-5));
console.log(s.split(' '));
console.log(s.replace('World', 'Universe'));

// Arrays
const numbers = [1, 2, 3, 4, 5];
const numbers2 = new Array(1, 2, 3, 4, 5);
console.log(numbers);
console.log(numbers2);

const fruits = ['apple', 'banana', 'cherry'];

fruits[3] = 'pear';
fruits.push('orange');
console.log(fruits);
console.log(fruits.length);
console.log(Array.isArray(fruits));
console.log(fruits instanceof Array);

// Object Literals
const person = {
    firstName: 'John',
    lastName: 'Doe',
    age: 30,
    hobbies: ['coding', 'reading', 'traveling'],
    address: {
        street: '123 Main St',
        city: 'Anytown',
        state: 'USA',
    },
};
console.log(person);
console.log(person.firstName, person.lastName);
console.log(person.hobbies[1]);
console.log(person.address.city);
console.log(person['firstName']);

// Destructuring
const { firstName, lastName, address: { city } } = person;
console.log(firstName, lastName, city);

// Adding new properties
person.email = 'john@doe.com';
console.log(person);

// Arrays of Objects ~ Tables
const todos = [
    { id: 1, title: 'Take out trash', completed: true },
    { id: 2, title: 'Meeting with boss', completed: true },
    { id: 3, title: 'Dentist appt', completed: false },
];
console.log(todos);
console.log(todos[1].title);

// Serialization
const todoJSON = JSON.stringify(todos);
console.log(todoJSON);

// Loops
for (let i = 0; i < 10; i++) {
    console.log(i);
}

for (let todo of todos) {
    console.log(todo.title);
}

// forEach, map, filter
todos.forEach(function (todo) {
    console.log(todo.title);
});

const todoTitles = todos.map(function (todo) {
    return todo.title;
});
console.log(todoTitles);

const todoCompleted = todos.filter(function (todo) {
    return todo.completed === true;
});
console.log(todoCompleted);

// Conditional Statements
const x = 10;
if (x > 5) {
    console.log('x is greater than 5');
} else if (x < 5) {
    console.log('x is less than 5');
} else {
    console.log('x is equal to 5');
}

// Functions
function addNums(num1, num2) {
    return num1 + num2;
}
console.log(addNums(5, 10));

const addNums2 = function(num1, num2) {
    return num1 + num2;
}
console.log(addNums2(5, 10));

const addNums3 = (num1, num2) => num1 + num2;
console.log(addNums3(5, 10));

// Using arrow functions in callbacks
todos.forEach((todo) => console.log(todo.title));

// Object Oriented Programming ~ Constructor Functions
function Person(firstName, lastName, dob) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.dob = new Date(dob);
    this.getBirthYear = function() { return this.dob.getFullYear(); }
    this.getFullName = () => `${this.firstName} ${this.lastName}`; 
}

const person1 = new Person('John', 'Doe', '4-3-1980');
console.log(person1);
console.log(person1.getBirthYear());
console.log(person1.getFullName());

// Prototypes
Person.prototype.getAge = function() {
    const diff = Date.now() - this.dob.getTime();
    const ageDate = new Date(diff);
    return Math.abs(ageDate.getUTCFullYear() - 1970);
}
console.log(person1.getAge());

// Classes
class Person2 {
    constructor(firstName, lastName, dob) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = new Date(dob);
    }
    getBirthYear() { return this.dob.getFullYear(); }
    getFullName() { return `${this.firstName} ${this.lastName}`; }
}