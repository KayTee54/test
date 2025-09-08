//Exercise 1
let testId: string = "Dev";
let maxwait: number = 30;
let headless: boolean = true;
let targerbrowser: string[] = ["chrome","edge"];
let httpstatus: number[] = [200, 204];
let testresult: boolean[] = [true, false];
let maxretry: number= 3;
let captruescreenshot: boolean = true;
//in ra console
console.log("Test ID: ", testId);
console.log("maxwait: ", maxwait);
console.log("headless: ", headless);
console.log("targerbrowser: ", targerbrowser);
console.log("httpstatus: ", httpstatus);
console.log("testresult: ", testresult);
console.log("maxretry: ", maxretry);
console.log("captruescreenshot: ", captruescreenshot);
//Exercise 2
type testIdType = string | number;
type resultType = boolean | "pass" | "fail";

let testId2: testIdType = "Dev2";
let result2: resultType = false;

function printresult(id: testIdType, result: resultType): void{
    console.log(`testID: ${id}, result: ${result}`);
}

printresult(testId2, result2);
//Exercise 3
 let retrycount = 3;
//retrycount = "notebook"; // Lỗi: không thể gán giá trị kiểu string cho biến kiểu number
// console.log("retrycount: ", retrycount);
const conf={
    env:"dev",
    headless:true,
    retrycount:3,
};
console.log("conf: ", conf);
const browser1=["chrome","edge"];
const name1=["admin","user"];
name1.map(n => {
    n.toUpperCase();
    return n;
});
function buildtitle(title:string) {
    return `test report - ${title}`; // Sử dụng template string
}

const flag = Math.random() > 0.5 ? "test" : 123; // Kiểu của flag là string | number
if (typeof flag === "string") {
    console.log(flag.toUpperCase()); // Chuyển đổi chuỗi thành chữ hoa
}
else {
    console.log(flag.toFixed(2)); // Định dạng số với 2 chữ số thập phân
}
//Exercise 4
//khai báo biến có thể null
let aboutnull: string | null = null;
//gán giá trị cho chuỗi
aboutnull = "This is a test";
//in ra console độ dài chuỗi
console.log("aboutnull length: ", aboutnull.length);
//viết hàm trả về string | undefined dựa trên tham số đầu vào
function checkvalue(value:string|null): string | undefined {
    if(value === "logintest"){
        return "Found";
    }
    else{
        return undefined;
    }
}
//gọi hàm với nhiều case khác nhau
const result1 = checkvalue("logintest");
const result2 = checkvalue("othertest");
const result3 = checkvalue(null);
//in kết quả ra console
console.log("result1:", result1);
console.log("result2:", result2);
console.log("result3:", result3);