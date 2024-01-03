// callback function is a function that is passed as an argument to another function
// recursion is when a function calls itself, callback is when you call one function as an argument to another function

function returningSum(num1, num2, fnToCall) {
  let result = num1 + num2;
  fnToCall(result);
}

function displayResult(data) {
    console.log("Result:", data);
}

function displayResultPassive(data) {
    console.log("Result:", data);
}

const answer = returningSum(1, 2, displayResult);
// displayResult(answer);


function greet() {
    console.log("Hello World");
}

// setTimeout defines after how many milliseconds the function should be called
setTimeout(greet, 2 * 1000, answer);
