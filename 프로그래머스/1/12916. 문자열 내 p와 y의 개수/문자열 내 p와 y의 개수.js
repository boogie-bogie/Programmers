function solution(s){
    var answer = true;
    var answer = true;
    // 1. 대문자를 통일
    s = s.toUpperCase(); // toUpperCase() 메소드는 문자열을 대문자로 변환한다 <> toLowerCase()

     // 2. for문을 통해서 문자열의 요소 하나하나씩을 비교
     var num = 0; // 비교하기 위해 num라는 변수를 넣어준다.
     for (let i = 0; i < s.length; i++) {
     // 2-1. p, y와 비교
        if(s[i] === "P") {
            num++;
        } else if(s[i] ==="Y") {
            num--;
        }
     }
     // 3. 개수 체크 (p와 y의 개수가 같은지를 체크)
     if (num === 0) {
        answer = true;
     } else {
        answer = false;
     }
    return answer;
}