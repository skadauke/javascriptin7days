// Exercise 4: Write asynchronous code using Promises and async/await.
// Instructions:
// - Create a Promise that resolves after 2 seconds with the message "Promise Resolved!".
// - Write an async function named "asyncGreet" that awaits the above Promise and logs the resolved message.
// - Handle any potential errors using try-catch within the async function.

const p = new Promise((resolve) => {
    setTimeout(() => resolve("Promise resolved!"), 2000);
})

async function asyncGreet() {
    try {
        const pResult = await p;
        console.log(pResult);
    } catch(error) {
        console.warn(error);
    }
}

asyncGreet();