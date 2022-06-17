# HTML
[來源](https://www.fooish.com/html/footer-tag.html)

## 文件宣告
!DOCTYPE html

## 標籤
head

### 網頁名稱
title

### CSS樣式
style

### JS程式碼
script

## 主體
body

### 段落
p

### 換行
br

### 圖片
img

### 超連結
a

### 標題文字
h1~h6

### 按鈕
button

### 說明文字
label

### 區塊
div

### 水平線
hr

## 結尾
footer



# Javascript
[來源](https://developer.mozilla.org/zh-TW/docs/Web/JavaScript/Guide/Grammar_and_types)

## 註解（Comments）
註解語法跟 C++ 和其他語言相同：雙斜線 

## 宣告（Declarations）
JavaScript有三種宣告方式

var
宣告一個可隨意更改其內容的變數
let
宣告一個可隨意更改其內容的區塊區域變數
const
宣告一個只可讀取的不可變常數



## 變數（Variables）
變數（variable）是對值（value）的引用，變數的名稱被稱為 identifiers 需要遵從一定的規則。

在 JavaScript 中，變數必須使用字母（letter）、下底線（ _）、錢號（$）作為開頭；後面的字員組成可以包含數字（0-9）。JavaScript 是區分大小寫（case secsitive）的，大寫字母（'A' ~ 'Z'）和小寫字母（'a' ~ 'z'）皆可使用且不相等。



## 變數取值
變數可以透過 var 或是 let 來定義，如果尚未指定數值給該變數，那麼該變數的值會是 undefined。如果嘗試去存取未定義的變數，會跳出 ReferenceError 的例外。

可以利用 undefined 來判斷該變數是否有值，在下面的程式碼的例子中，input 這個變數沒有賦值，if 判斷式會得到 true 的結果。
var input;
if (input === undefined) {
  doThis();
} else {
  doThat();
}



## 變數範圍
當我們在函式外宣告一個變數時，這個變數會是一個全域變數  (global variable), 因為在這份程式文件裡面的所有程式碼都可以使用到這個變數。但當我們只在函式內宣告變數時，這變數是區域變數 (local variable)，因為變數只會在函式內被使用到。

請注意!! 在 ECMAScript 2015 以前的 JavaScript 版本裡，並沒有定義區塊描述 (block statement) 的變數有效範圍。更精確的說，之前版本所定義的變數，其特性相當於全域變數；不只在宣告的區塊或函數裡面有效 ，其變數值還會超出宣告區塊而影響到全部的描述碼。

從下面例子來看，其輸出結果會是 5。雖然 x 是在 if { } 區塊裡面被宣告的，但卻因為有全域變數的特性，因此溢出大括號而成為後續描述碼的變數值。

if (true) {
  var x = 5;
}
console.log(x);  // x is 5
Copy to Clipboard
接著舉一個 ECMAScript 2015 之後的宣告範例。當使用了 let  這個區域變數宣告方式，變數 y 的有效範圍只有在 if { } 的範圍內，因此輸出結果是 ReferenceError。

if (true) {
  let y = 5;
}
console.log(y);  // ReferenceError: y is not defined (y沒有被定義)



## 全域變數 (Global variables)
全域變數事實上是全域物件的屬性值。在網頁中的全域物件是 window，因此你可使用 window.variable 的語法來設定及存取全域變數。

Consequently, 你可以指定 window 或 frame 物件的名稱來存取在另一個在 window 物件或 frame 物件所宣告的全域變數。例如，如果在一個文檔中已宣告一個稱為 phoneNumber 的變數，你可以在 iframe 中使用 parent.phoneNumber 來存取該變數

## 常數 (Constants)
你可用 const 關鍵字來建立一個唯讀、有名稱的常數。 常數識別子的命名語法與變數識別子的命名語法是一樣的: 必須由一個英文字母，底線或錢符號($)開始，之後可包含英文字母，數字及底線字元。

const PI = 3.14;
