f = (s) =>{
  let nth = Math.floor(s/3);
  let sum = (3+nth*3)*nth*0.5;
  return sum;
} // sum of all 3 6 9 .. 3n | 3n < s
  // Algo: find max n of 3n < S --> S//3
  // Find max n of 3n --> S//3 * 3
  // sum in gauss example (n0+nth)*n/2
  // pride
