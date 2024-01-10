function solution(numbers) {
    result = numbers.reduce((acc, curr, idx) => acc + curr)
    return result / numbers.length
}