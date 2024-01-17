function solution(a, b) {
  if (a === b) return a;

  const start = a < b ? a : b;
  const stop = a < b ? b : a;

  var answer = 0;
  for (let i = start; i <= stop; i++) {
    answer += i;
  }
  return answer;
}