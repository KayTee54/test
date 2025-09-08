//excercise 1
//tạo TestUser type với các property
type TestUser = {
    id:string;
    username:string;
    email:string;
    password:string;
    firstname:string;
    lastname:string;
    isActive:boolean;
}
//tạo 2 object đại diện cho 2 user
let user1: TestUser = {
  id: "001",
  username: "testerA",
  email: "a@example.com",
  password: "pass123",
  firstname: "Alice",
  lastname: "Nguyen",
  isActive: true,
};

let user2: TestUser = {
  id: "002",
  username: "testerB",
  email: "b@example.com",
  password: "pass456",
  firstname: "Bob",
  lastname: "Tran",
  isActive: false,
};
//viết hàm nhận TestUser type làm tham số và in ra console thông tin user
function printUser(user: TestUser): void{ //khai báo hàm printUser, nhận tham số user với kiểu dữ liệu TesetUser đã được khai báo ở trên
    //in ra console thông tin user
    console.log("Information user: ", user);
}
//excercise 2
type Testconfig = {
    evn: string;
    timeout?: number; //optional property
    readonly retries: number; //readonly property
}
//config cho env staging với 5 retries
let configStaging: Testconfig = {
    evn: "staging",
    timeout: 500,
    retries: 5
};
//in thông tin configStaging ra console
console.log("configStaging: ", configStaging);
//thử thay đổi retries
//configStaging.retries = 10; //❌ lỗi, không thể gán lại giá trị cho property readonly
//excercise 3
//tạo index signature
type ApiRespone = {
    [key:string]:string|number|boolean;
};
let respone1: ApiRespone = {
    status: "success",
    code: 200,
    authen: true;
    token: "token123"
};
console.log("respone1: ", respone1);
//excercise 4
//nested object types, tạo locator gồm selector:string và action:click | type | select
type Locator = {
    selector: string;
    action: "click" | "type" | "select";
};
//tạo type pageobj
type pageobj={
    name: string;
    url: string;
    locators: Locator[]; //mảng các locator, đã được định nghĩa phía trên
};
//tạo object đại diện cho trang login với username, password và button login
let page: pageobj = {
    name: "LoginPage",
    url: "/login",
    locators: [
        {selector: "#username", action: "type"},
        {selector: "#password", action: "type"},
        {selector: "#login-btn", action: "click"},
    ],
};
//nhận pageobj và in ra locators
function printLocators(page: pageobj): void{
    console.log("Locators: ", page.locators);
}
//excercise 5
//Kết hợp tất cả kiến thức: user, config, response, page object.
//tạo function chạy test với các tham số: user, config, page và in ra thông tin kịch bản test
// Hàm sẽ:

// Validate sơ bộ dữ liệu đầu vào (ví dụ: email có “@”, url bắt đầu bằng http).

// In kịch bản test: môi trường, retries, timeout (nếu có), URL trang, danh sách locators và hành động.

// Mô phỏng các bước thao tác theo locators (không cần Playwright, chỉ log thứ tự thao tác).

// (Tuỳ chọn) Duyệt qua response (index signature) để in toàn bộ key–value.

// Không được chỉnh sửa readonly fields (ví dụ: retries).

