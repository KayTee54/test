// //Exercise 1
// let testId: string = "Dev";
// let maxwait: number = 30;
// let headless: boolean = true;
// let targerbrowser: string[] = ["chrome","edge"];
// let httpstatus: number[] = [200, 204];
// let testresult: boolean[] = [true, false];
// let maxretry: number= 3;
// let captruescreenshot: boolean = true;
// //in ra console
// console.log("Test ID: ", testId);
// console.log("maxwait: ", maxwait);
// console.log("headless: ", headless);
// console.log("targerbrowser: ", targerbrowser);
// console.log("httpstatus: ", httpstatus);
// console.log("testresult: ", testresult);
// console.log("maxretry: ", maxretry);
// console.log("captruescreenshot: ", captruescreenshot);
//Exercise 2
// type testIdType = string | number;
// type resultType = boolean | "pass" | "fail";
// let testId2: testIdType = "Dev2";
// let result2: resultType = false;
// function printresult(id: testIdType, result: resultType): void{
//     console.log(`testID: ${id}, result: ${result}`);
// }
// printresult(testId2, result2);
//Exercise 3
var retrycount = 3;
retrycount = "notebook"; // Lỗi: không thể gán giá trị kiểu string cho biến kiểu number
console.log("retrycount: ", retrycount);
