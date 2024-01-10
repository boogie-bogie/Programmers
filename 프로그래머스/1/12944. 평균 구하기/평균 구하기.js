function solution(arr) {
    result = arr.reduce((acc, curr, idx) => acc + curr)
    return result / arr.length
}