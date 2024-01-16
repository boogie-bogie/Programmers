function solution(x) {
    var answer = true;
    const arr = String(x).split('');
    const sum = arr.reduce((a,b) => Number(a) + Number(b));
    if (x % sum !== 0) {
        answer = false;
    }
    return answer;
}