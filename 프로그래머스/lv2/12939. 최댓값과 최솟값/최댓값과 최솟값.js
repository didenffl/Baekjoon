// - String.prototype.split()
// - Array.prototype.forEach()

function solution(s) {
    var answer = '';
    const numbers = s.split(" ");
    let min = numbers[0];
    let max = numbers[0];
    numbers.forEach(num => {
        if(Number(min) > Number(num)){
           min = num; 
        }
        if(Number(max) < Number(num)){
            max = num;
        }
    })
    answer = `${min} ${max}`;
    return answer;
}