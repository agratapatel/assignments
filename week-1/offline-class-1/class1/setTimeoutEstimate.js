// timing it takes between running the setTimeout call and the inner function actually running using performance.now() API

const startTime = performance.now();

setTimeout(() => {
    const endTime = performance.now();
    const timeDifference = endTime - startTime;
    console.log(`Time difference: ${timeDifference} milliseconds`);
}, 1000);


// Alternatively, using Date object
const startDate = new Date();

setTimeout(() => {
  const endDate = new Date();
  const elapsedTime = endDate - startDate;
  console.log(`Inner function took ${elapsedTime} milliseconds to run`);
}, 1000); // 1000 milliseconds (1 second) timeout


// perforance api could be more accurate than Date object based on the results of the following test