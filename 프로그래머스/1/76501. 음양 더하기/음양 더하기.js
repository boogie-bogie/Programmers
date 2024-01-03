function solution(absolutes, signs) {
       // 1. return해야하는 answer 생성
    var answer = 0;

    // 2. 두 배열을 비교해 가면서 값을 더하거나 빼주기
    // 2-1. 두 배열은 크기가 같다.
    for (var i = 0; i < absolutes.length; i++) {
        // 부호에 따른 처리
        if (signs[i] === true) {
            // true는 양수
            answer = answer + absolutes[i];
        } else if (signs[i] === false) {
            // false는 음수
            answer = answer - absolutes[i];
        }
    }
    // 3. 출력
    return answer;
}