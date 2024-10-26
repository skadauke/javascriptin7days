#!/opt/homebrew/bin/bash

# Make sure we're using bash version 4 or higher for associative arrays
if ((BASH_VERSINFO[0] < 4)); then
    echo "This script requires bash version 4 or higher"
    exit 1
fi

# Day titles and objectives arrays
DAY_TITLES=(
    "Day 1: JavaScript Fundamentals"
    "Day 2: Modern JavaScript (ES6+) and Asynchronous Programming"
    "Day 3: Introduction to React"
    "Day 4: Getting Started with Next.js"
    "Day 5: Building the Chat App Interface"
    "Day 6: Integrating OpenAI API"
    "Day 7: Testing, Deployment, and Review"
)

DAY_OBJECTIVES=(
    "- Understand basic JavaScript syntax and concepts.\n- Get comfortable with variables, data types, functions, control structures, arrays, and objects."
    "- Learn ES6 features like arrow functions, classes, and modules.\n- Understand promises and async/await for asynchronous operations."
    "- Learn the basics of React, including components, props, state, and hooks.\n- Understand how React works with JSX and the virtual DOM."
    "- Understand the basics of Next.js, including pages, routing, and data fetching.\n- Learn about server-side rendering and static site generation."
    "- Start building your chat application interface.\n- Implement user input handling and display messages."
    "- Connect your chat app to the OpenAI API.\n- Implement the backend logic to handle API requests."
    "- Test the complete application thoroughly.\n- Deploy your app to Vercel.\n- Reflect on your learning and plan next steps."
)

# Define exercises for each day
declare -A DAY_EXERCISES

# Day 1 Exercises
DAY_EXERCISES["1,1"]='// Exercise 1: Create variables of different data types.
// Instructions:
// - Create a string variable named "greeting" with the value "Hello, World!".
// - Create a number variable named "age" with your age.
// - Create a boolean variable named "isStudent" indicating your student status.
// - Create an array named "fruits" containing at least three different fruit names.
// - Create an object named "person" with properties: name (string), age (number), and isStudent (boolean).
'

DAY_EXERCISES["1,2"]='// Exercise 2: Write basic functions.
// Instructions:
// - Write a function named "add" that takes two numbers as arguments and returns their sum.
// - Write a function named "isEven" that takes a number and returns true if its even, false otherwise.
// - Write a function named "greet" that takes a name as an argument and returns a greeting message.
'

DAY_EXERCISES["1,3"]='// Exercise 3: Implement loops and conditionals.
// Instructions:
// - Write a loop that prints numbers from 1 to 10.
// - Write a loop that iterates over the "fruits" array and prints each fruit.
// - Write an if-else statement that checks if a number is positive, negative, or zero.
'

DAY_EXERCISES["1,4"]='// Exercise 4: Manipulate arrays and objects.
// Instructions:
// - Add a new fruit to the "fruits" array.
// - Remove the last fruit from the "fruits" array.
// - Update the "age" property in the "person" object.
// - Add a new property "hobby" to the "person" object.
'

# Day 2 Exercises
DAY_EXERCISES["2,1"]='// Exercise 1: Convert regular functions to arrow functions.
// Instructions:
// - Convert the "add" function from Day 1 to an arrow function named "addArrow".
// - Convert the "isEven" function to an arrow function named "isEvenArrow".
// - Convert the "greet" function to an arrow function named "greetArrow".
'

DAY_EXERCISES["2,2"]='// Exercise 2: Use destructuring to extract values.
// Instructions:
// - Destructure the "person" object to extract "name" and "age" into separate variables.
// - Destructure the "fruits" array to extract the first two fruits into separate variables.
'

DAY_EXERCISES["2,3"]='// Exercise 3: Utilize spread and rest operators.
// Instructions:
// - Use the spread operator to combine two arrays: ["apple", "banana"] and ["cherry", "date"].
// - Write a function named "sumAll" that takes any number of arguments and returns their sum using the rest operator.
'

DAY_EXERCISES["2,4"]='// Exercise 4: Write asynchronous code using Promises and async/await.
// Instructions:
// - Create a Promise that resolves after 2 seconds with the message "Promise Resolved!".
// - Write an async function named "asyncGreet" that awaits the above Promise and logs the resolved message.
// - Handle any potential errors using try-catch within the async function.
'

# Day 3 Exercises
DAY_EXERCISES["3,1"]='// Exercise 1: Create a functional React component that displays a title.
// Instructions:
// - Create a component named "Header" that returns an <h1> element with the text "Welcome to My App".
'

DAY_EXERCISES["3,2"]='// Exercise 2: Build a button component that changes its label when clicked.
// Instructions:
// - Create a component named "ToggleButton".
// - Initialize state to track the button label (e.g., "ON" / "OFF").
// - When the button is clicked, toggle the label between "ON" and "OFF".
'

DAY_EXERCISES["3,3"]='// Exercise 3: Develop a counter app using the useState hook.
// Instructions:
// - Create a component named "Counter".
// - Initialize a state variable "count" starting at 0.
// - Display the current count.
// - Add two buttons: "Increment" and "Decrement" to modify the count accordingly.
'

DAY_EXERCISES["3,4"]='// Exercise 4: Implement a todo list where you can add and remove items using state.
// Instructions:
// - Create a component named "TodoList".
// - Initialize a state variable "todos" as an empty array.
// - Add an input field and a button to add new todo items.
// - Display the list of todos with a "Remove" button next to each item to delete it from the list.
'

# Day 4 Exercises
DAY_EXERCISES["4,1"]='// Exercise 1: Create a multi-page Next.js application with Home, About, and Contact pages.
// Instructions:
// - In the "pages" directory, create "index.js" for Home, "about.js" for About, and "contact.js" for Contact.
// - Add navigation links between the pages using the <Link> component from "next/link".
'

DAY_EXERCISES["4,2"]='// Exercise 2: Implement dynamic routing by creating a blog post page using [id].js.
// Instructions:
// - Create a file named "[id].js" inside the "pages/blog" directory.
// - Fetch and display the blog post based on the "id" parameter from the URL.
'

DAY_EXERCISES["4,3"]='// Exercise 3: Fetch and display data from a public API on a Next.js page using getStaticProps.
// Instructions:
// - Choose a public API (e.g., JSONPlaceholder).
// - In "pages/posts.js", use getStaticProps to fetch a list of posts.
// - Display the fetched posts in a list format on the page.
'

DAY_EXERCISES["4,4"]='// Exercise 4: Set up an API route in Next.js to handle form submissions.
// Instructions:
// - Create a file named "submit.js" inside the "pages/api" directory.
// - Implement a POST handler that receives form data and logs it to the console.
// - Create a form on a Next.js page that submits data to this API route.
'

# Day 5 Exercises
DAY_EXERCISES["5,1"]='// Exercise 1: Design and implement the chat layout with a header, message area, and input field.
// Instructions:
// - Create a main Chat component.
// - Add a header section with the title "Chat App".
// - Design a message display area.
// - Add an input field and a send button at the bottom.
'

DAY_EXERCISES["5,2"]='// Exercise 2: Create a Message component to display individual messages with props for text, sender, and timestamp.
// Instructions:
// - Create a component named "Message" that accepts props: "text", "sender", and "timestamp".
// - Display the message text, sender name, and formatted timestamp within the component.
'

DAY_EXERCISES["5,3"]='// Exercise 3: Build a MessageList component to display a list of messages using the Message component.
// Instructions:
// - Create a component named "MessageList".
// - Accept an array of message objects as props.
// - Iterate over the messages and render a Message component for each one.
'

DAY_EXERCISES["5,4"]='// Exercise 4: Develop an InputField component that handles user input and sends messages on form submission.
// Instructions:
// - Create a component named "InputField".
// - Manage the input state using useState.
// - Handle form submission to send the message and clear the input field.
'

# Day 6 Exercises
DAY_EXERCISES["6,1"]='// Exercise 1: Set up environment variables to securely store the OpenAI API key.
// Instructions:
// - Create a file named ".env.local" in the root directory.
// - Add your OpenAI API key as `OPENAI_API_KEY=your_api_key_here`.
// - Ensure that ".env.local" is included in ".gitignore" to prevent it from being committed.
'

DAY_EXERCISES["6,2"]='// Exercise 2: Create an API route in Next.js (/api/chat) to handle POST requests and communicate with the OpenAI API.
// Instructions:
// - Create a file named "chat.js" inside the "pages/api" directory.
// - Implement a handler that accepts POST requests with a user message.
// - Use the OpenAI API to generate a response based on the user message.
// - Return the AI-generated response as JSON.
'

DAY_EXERCISES["6,3"]='// Exercise 3: Implement frontend logic to send user messages to the /api/chat endpoint and display responses.
// Instructions:
// - In your Chat component, handle sending messages by making a POST request to "/api/chat" with the user input.
// - Upon receiving the response, display it in the MessageList.
'

DAY_EXERCISES["6,4"]='// Exercise 4: Add error handling and loading states to enhance user experience during API calls.
// Instructions:
// - Implement error handling to catch and display errors if the API call fails.
// - Add a loading indicator (e.g., spinner) that appears while waiting for the API response.
'

# Day 7 Exercises
DAY_EXERCISES["7,1"]='// Exercise 1: Perform functional testing by sending and receiving messages in the chat app.
// Instructions:
// - Test sending various messages and ensure the AI responds appropriately.
// - Check that messages appear correctly in the MessageList.
'

DAY_EXERCISES["7,2"]='// Exercise 2: Conduct cross-browser testing to ensure compatibility with Chrome, Firefox, and Edge.
// Instructions:
// - Open the deployed app in different browsers and verify that all functionalities work as expected.
// - Note any discrepancies and fix them.
'

DAY_EXERCISES["7,3"]='// Exercise 3: Ensure the application is responsive and works well on mobile devices.
// Instructions:
// - Use browser developer tools to simulate mobile devices.
// - Check the layout and functionality on different screen sizes.
// - Make necessary adjustments to CSS to improve responsiveness.
'

DAY_EXERCISES["7,4"]='// Exercise 4: Deploy the Next.js application to Vercel and verify the live version.
// Instructions:
// - Push your code to a GitHub repository.
// - Log in to Vercel and import the repository for deployment.
// - Set up environment variables in Vercel settings.
// - Deploy the app and navigate to the live URL to ensure everything works correctly.
'

# Function to create exercise files
create_exercise_files() {
    local DAY="$1"
    local EX_NUM="$2"
    local CONTENT="$3"
    local FILENAME="exercise${EX_NUM}.js"
    echo -e "$CONTENT" > "Day_${DAY}/Exercises/${FILENAME}"
}

# Loop through Days 1 to 7
for DAY_NUMBER in {1..7}
do
    INDEX=$((DAY_NUMBER - 1))
    DAY_DIR="Day_${DAY_NUMBER}"
    mkdir -p "${DAY_DIR}/Exercises"
    
    MD_FILE="${DAY_DIR}/Day_${DAY_NUMBER}.md"
    
    # Write the markdown content to the file
    echo -e "# ${DAY_TITLES[$INDEX]}\n" > "${MD_FILE}"
    echo -e "**Objectives:**\n\n${DAY_OBJECTIVES[$INDEX]}\n" >> "${MD_FILE}"
    echo -e "## Checklist:\n" >> "${MD_FILE}"
    
    # Add the checklist items for each day
    case $DAY_NUMBER in
        1)
            echo -e "1. **Set Up Your Development Environment:**
   - [ ] Install Node.js and npm.
   - [ ] Choose and set up a code editor (e.g., Visual Studio Code).
   - [ ] Configure Cursor for JavaScript development.\n" >> "${MD_FILE}"

            echo -e "2. **Learn JavaScript Basics:**
   - [ ] Variables and Data Types.
   - [ ] Operators.
   - [ ] Functions.
   - [ ] Control Structures.
   - [ ] Arrays and Objects.\n" >> "${MD_FILE}"

            echo -e "3. **Practice Exercises:**
   - [ ] Create variables of different data types.
   - [ ] Write basic functions.
   - [ ] Implement loops and conditionals.
   - [ ] Manipulate arrays and objects.\n" >> "${MD_FILE}"

            echo -e "4. **Resources:**
   - [ ] [JavaScript Guide on MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide).
   - [ ] [JavaScript Crash Course For Beginners](https://www.youtube.com/watch?v=hdI2bqOjy3c).\n" >> "${MD_FILE}"
            ;;
        2)
            echo -e "1. **Study ES6 Features:**
   - [ ] Arrow Functions.
   - [ ] Template Literals.
   - [ ] Destructuring.
   - [ ] Spread and Rest Operators.
   - [ ] Classes.
   - [ ] Modules.\n" >> "${MD_FILE}"

            echo -e "2. **Learn Asynchronous JavaScript:**
   - [ ] Callbacks.
   - [ ] Promises.
   - [ ] async/await.\n" >> "${MD_FILE}"

            echo -e "3. **Practice Exercises:**
   - [ ] Convert regular functions to arrow functions.
   - [ ] Use destructuring to extract values from objects and arrays.
   - [ ] Utilize the spread and rest operators in functions and arrays.\n" >> "${MD_FILE}"

            echo -e "4. **Resources:**
   - [ ] [ES6 Features on W3Schools](https://www.w3schools.com/js/js_es6.asp).
   - [ ] [Async/Await on JavaScript.info](https://javascript.info/async-await).\n" >> "${MD_FILE}"
            ;;
        3)
            echo -e "1. **Set Up a React App:**
   - [ ] Install Create React App.
   - [ ] Explore the project structure.\n" >> "${MD_FILE}"

            echo -e "2. **Learn React Fundamentals:**
   - [ ] JSX.
   - [ ] Components.
   - [ ] Props.
   - [ ] State and Hooks.
   - [ ] Event Handling.\n" >> "${MD_FILE}"

            echo -e "3. **Practice Exercises:**
   - [ ] Create a functional React component that displays a title.
   - [ ] Build a button component that changes its label when clicked.
   - [ ] Develop a counter app using the useState hook.
   - [ ] Implement a todo list where you can add and remove items using state.\n" >> "${MD_FILE}"

            echo -e "4. **Resources:**
   - [ ] [React Official Tutorial](https://reactjs.org/tutorial/tutorial.html).
   - [ ] [React JS Crash Course](https://www.youtube.com/watch?v=sBws8MSXN7A).\n" >> "${MD_FILE}"
            ;;
        4)
            echo -e "1. **Set Up a Next.js Project:**
   - [ ] Create a new Next.js app.
   - [ ] Explore the project structure.\n" >> "${MD_FILE}"

            echo -e "2. **Learn Next.js Fundamentals:**
   - [ ] Pages and Routing.
   - [ ] Data Fetching Methods.
   - [ ] API Routes.\n" >> "${MD_FILE}"

            echo -e "3. **Practice Exercises:**
   - [ ] Create a multi-page Next.js application with Home, About, and Contact pages.
   - [ ] Implement dynamic routing by creating a blog post page using [id].js.
   - [ ] Fetch and display data from a public API on a Next.js page using getStaticProps.
   - [ ] Set up an API route in Next.js to handle form submissions.\n" >> "${MD_FILE}"

            echo -e "4. **Resources:**
   - [ ] [Next.js Official Documentation](https://nextjs.org/docs).
   - [ ] [Next.js Crash Course](https://www.youtube.com/watch?v=mTz0GXj8NN0).\n" >> "${MD_FILE}"
            ;;
        5)
            echo -e "1. **Design the Chat Interface:**
   - [ ] Design and implement the chat layout with a header, message area, and input field.\n" >> "${MD_FILE}"

            echo -e "2. **Build Components:**
   - [ ] Create a Message component to display individual messages with props for text, sender, and timestamp.
   - [ ] Build a MessageList component to display a list of messages using the Message component.
   - [ ] Develop an InputField component that handles user input and sends messages on form submission.\n" >> "${MD_FILE}"

            echo -e "3. **Manage State:**
   - [ ] Use the useState Hook to manage the list of messages.
   - [ ] Handle user input and update the state accordingly.\n" >> "${MD_FILE}"

            echo -e "4. **Practice Exercises:**
   - [ ] Design and implement the chat layout with a header, message area, and input field.
   - [ ] Create a Message component to display individual messages with props for text, sender, and timestamp.
   - [ ] Build a MessageList component to display a list of messages using the Message component.
   - [ ] Develop an InputField component that handles user input and sends messages on form submission.\n" >> "${MD_FILE}"

            echo -e "5. **Resources:**
   - [ ] [Material-UI](https://material-ui.com/) or [Chakra UI](https://chakra-ui.com/).
   - [ ] Styling with CSS-in-JS.\n" >> "${MD_FILE}"
            ;;
        6)
            echo -e "1. **Set Up Environment Variables:**
   - [ ] Set up environment variables to securely store the OpenAI API key.\n" >> "${MD_FILE}"

            echo -e "2. **Create API Route:**
   - [ ] Create an API route in Next.js (/api/chat) to handle POST requests and communicate with the OpenAI API.\n" >> "${MD_FILE}"

            echo -e "3. **Update Frontend to Call API:**
   - [ ] Implement frontend logic to send user messages to the /api/chat endpoint and display responses.\n" >> "${MD_FILE}"

            echo -e "4. **Error Handling and Loading States:**
   - [ ] Add error handling and loading states to enhance user experience during API calls.\n" >> "${MD_FILE}"

            echo -e "5. **Resources:**
   - [ ] [OpenAI API Documentation](https://beta.openai.com/docs/).
   - [ ] [Next.js API Routes](https://nextjs.org/docs/api-routes/introduction).\n" >> "${MD_FILE}"
            ;;
        7)
            echo -e "1. **Testing the Application:**
   - [ ] Perform functional testing by sending and receiving messages in the chat app.\n" >> "${MD_FILE}"

            echo -e "2. **Deployment to Vercel:**
   - [ ] Conduct cross-browser testing to ensure compatibility with Chrome, Firefox, and Edge.\n" >> "${MD_FILE}"

            echo -e "3. **Security Review:**
   - [ ] Ensure the application is responsive and works well on mobile devices.\n" >> "${MD_FILE}"

            echo -e "4. **Reflect and Plan Ahead:**
   - [ ] Deploy the Next.js application to Vercel and verify the live version.\n" >> "${MD_FILE}"

            echo -e "5. **Resources:**
   - [ ] [Vercel Documentation](https://vercel.com/docs).
   - [ ] [Next.js Best Practices](https://nextjs.org/docs#manual-setup).\n" >> "${MD_FILE}"
            ;;
    esac

    # Create a README in Exercises folder
    echo "# Exercises for ${DAY_TITLES[$INDEX]}" > "${DAY_DIR}/Exercises/README.md"

    # Create and populate exercise files using the function
    for EX_NUM in {1..4}
    do
        KEY="${DAY_NUMBER},${EX_NUM}"
        create_exercise_files "${DAY_NUMBER}" "${EX_NUM}" "${DAY_EXERCISES[$KEY]}"
    done

done

echo "Directory structure, markdown files, and exercise files have been created successfully!"
