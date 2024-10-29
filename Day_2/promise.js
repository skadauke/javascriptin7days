
const ride = new Promise(async (resolve, reject) => {
    const arrived = Math.random() < 0.5
    if (arrived) {
        resolve('Driver arrived!')
    } else {
        reject('Driver bailed!')
    }
});

ride
    .then(value => console.log(value))
    .catch(error => console.warn(error))
    .finally(() => console.log('All settled!'))


// Equivalent async function
const sleep = ms => new Promise(resolve => setTimeout(resolve, ms))

async function callRide() {
    await sleep(1500);
    return Math.random() < 0.5
}

async function ride2() {
    try {
        const arrived = await callRide();
        if (!arrived) throw new Error("Driver bailed!")
        console.log('Driver arrived!')
    } catch(error) {
        console.warn(error)
    } finally {
        console.log('All settled!')        
    }
}

ride2();