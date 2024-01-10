// function solution(n)
// { // '' 공백을 제외한 배열로 만든 문자열을 reduce. *1로 숫자로 바꾸기
//   return String(n).split('').reduce((acc, curr) => acc + curr * 1, 0);
// }

function solution(n) {
    var answer = 0;
    var str = String(n); // 문자열로 바꾸기
    
    for (let i = 0; i < str.length; i++) { // 0자리부터 1씩 더하기
        answer += parseInt(str[i]); // 숫자로 바꾸기
    }
    return answer;
}