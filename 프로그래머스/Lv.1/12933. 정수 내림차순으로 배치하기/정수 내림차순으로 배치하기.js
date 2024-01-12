function solution(n) {
    // 문자열 > 공백 제거 > 숫자
    const str = String(n).split('').map(Number);
    // join > 내림차순 > 정수
    return parseInt(str.sort((a,b) => b - a).join(''));
}