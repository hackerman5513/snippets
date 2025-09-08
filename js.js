f = (s) =>{
  let nth = Math.floor(s/3);
  let sum = (3+nth*3)*nth*0.5;
  return sum;
} // sum of all 3 6 9 .. 3n | 3n < s
  // Algo: find max n of 3n < S --> S//3
  // Find max n of 3n --> S//3 * 3
  // sum in gauss example (n0+nth)*n/2
  // pride

f = (s,x) =>{
  let nth = Math.floor(s/x);
  let sum = (x+nth*x)*nth*0.5;
  return sum;
}

let k = 999;
let sum = f(k,3)+f(k,5)-f(k,15);

g = () =>{
 let sum = 0;
  for(let i = 0; i < 1000; i++)
   sum+= ((i%3)==0 || (i%5)==0) ? i : 0;

 return sum;
} // project euler 1st problem O(n) = 5 vs 2000n solution

//euler 2nd problem
let a = 1, b = 2;
let total = 0;

while (a <= 4000000) 
  total += !(a&1) ? a : 0,  [a, b] = [b, a + b]; 

//find sum of even fib numbers < 4mil, loop and check last bit for 0.

