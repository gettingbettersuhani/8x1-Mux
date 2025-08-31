8x1 MUX
An 8x1 MUX selects one of eight inputs.

Inputs: 8 data inputs (I 
0
​
  to I 
7
​
 ).

Select Lines: 3 select lines (S 
2
​
 ,S 
1
​
 ,S 
0
​
 ).

Output: 1 output (Y).

Boolean Expression: Y=(¬S 
2
​
 ¬S 
1
​
 ¬S 
0
​
 ⋅I 
0
​
 )+⋯+(S 
2
​
 S 
1
​
 S 
0
​
 ⋅I 
7
​
 )

Truth Table:
| S 
2
​
  | S 
1
​
  | S 
0
​
  | Y |
|:---:|:---:|:---:|:---:|
| 0 | 0 | 0 | I 
0
​
  |
| 0 | 0 | 1 | I 
1
​
  |
| 0 | 1 | 0 | I 
2
​
  |
| 0 | 1 | 1 | I 
3
​
  |
| 1 | 0 | 0 | I 
4
​
  |
| 1 | 0 | 1 | I 
5
​
  |
| 1 | 1 | 0 | I 
6
​
  |
| 1 | 1 | 1 | I 
7
​
  |
