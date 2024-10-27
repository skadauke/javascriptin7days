// Grab the elements
const myForm = document.querySelector('#my-form');
const nameInput = document.querySelector('#name');
const emailInput = document.querySelector('#email');
const msg = document.querySelector('.msg');
const userList = document.querySelector('#users');

// When the form is submitted, add an item to the list
myForm.addEventListener('submit', onSubmit);

function onSubmit(e) {
    e.preventDefault();

    // console.log(nameInput.value, emailInput.value);

    // Validate the input
    if(nameInput.value === '' || emailInput.value === '') {
        // Alert the user
        msg.innerHTML = 'Please enter all fields';
        msg.classList.add('error');
        setTimeout(() => msg.remove(), 3000); // Disappears after 3 seconds
    } else {
        // Create a new list item object
        const li = document.createElement('li'); 

        // Add text to the list item
        li.appendChild(
            document.createTextNode(`${nameInput.value}: ${emailInput.value}`)
        );

        // Append the list item to the user list
        userList.appendChild(li);

        // Clear the fields
        nameInput.value = '';
        emailInput.value = '';
    }
}