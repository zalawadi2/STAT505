> big=2
> while (big < 10000) big=big^2
> big
[1] 65536
> big=2
> repeat {
+   big=big^2
+   if (big > 10000) break
+ }
> big
[1] 65536
> testmat=1:10
> fib=c(0,1)
> for (i in testmat) {
+   fib[i]=fib[i-2]+fib[i-1]
+ }
Error in fib[i] <- fib[i - 2] + fib[i - 1] : replacement has length zero
> fib
[1] 0 1
> testmat=1:10
> 
> fib=c(0,1)
> for (i in testmat) {
+   fib=c(fib,
+         fib[length(fib)]+fib[length(fib)-1])
+ }
> fib
 [1]  0  1  1  2  3  5  8 13 21 34 55 89
> testmat=3:100
> 
> fib=c(0,1)
> for (i in testmat) {
+   fib[i]=fib[i-2]+fib[i-1]
+ }
> fib
  [1] 0.000000e+00 1.000000e+00 1.000000e+00 2.000000e+00 3.000000e+00 5.000000e+00 8.000000e+00
  [8] 1.300000e+01 2.100000e+01 3.400000e+01 5.500000e+01 8.900000e+01 1.440000e+02 2.330000e+02
 [15] 3.770000e+02 6.100000e+02 9.870000e+02 1.597000e+03 2.584000e+03 4.181000e+03 6.765000e+03
 [22] 1.094600e+04 1.771100e+04 2.865700e+04 4.636800e+04 7.502500e+04 1.213930e+05 1.964180e+05
 [29] 3.178110e+05 5.142290e+05 8.320400e+05 1.346269e+06 2.178309e+06 3.524578e+06 5.702887e+06
 [36] 9.227465e+06 1.493035e+07 2.415782e+07 3.908817e+07 6.324599e+07 1.023342e+08 1.655801e+08
 [43] 2.679143e+08 4.334944e+08 7.014087e+08 1.134903e+09 1.836312e+09 2.971215e+09 4.807527e+09
 [50] 7.778742e+09 1.258627e+10 2.036501e+10 3.295128e+10 5.331629e+10 8.626757e+10 1.395839e+11
 [57] 2.258514e+11 3.654353e+11 5.912867e+11 9.567220e+11 1.548009e+12 2.504731e+12 4.052740e+12
 [64] 6.557470e+12 1.061021e+13 1.716768e+13 2.777789e+13 4.494557e+13 7.272346e+13 1.176690e+14
 [71] 1.903925e+14 3.080615e+14 4.984540e+14 8.065155e+14 1.304970e+15 2.111485e+15 3.416455e+15
 [78] 5.527940e+15 8.944394e+15 1.447233e+16 2.341673e+16 3.788906e+16 6.130579e+16 9.919485e+16
 [85] 1.605006e+17 2.596955e+17 4.201961e+17 6.798916e+17 1.100088e+18 1.779979e+18 2.880067e+18
 [92] 4.660047e+18 7.540114e+18 1.220016e+19 1.974027e+19 3.194043e+19 5.168071e+19 8.362114e+19
 [99] 1.353019e+20 2.189230e+20
> testmat=matrix(3:14,nrow=3)    # for loops can cycle through matrices as well (try it above)
> testmat
     [,1] [,2] [,3] [,4]
[1,]    3    6    9   12
[2,]    4    7   10   13
[3,]    5    8   11   14
> for (day in c('M','T','W','R','F')) {
+   print(day)
+ }
[1] "M"
[1] "T"
[1] "W"
[1] "R"
[1] "F"
> count=0
> for (i in fib) {
+   count=count+1
+   if (i %% 2 == 0) {
+     string=cat(count,': Fibonacci number',i,'is Even\n')
+   } else {
+     string=cat(count,': Fibonacci number',i,'is Odd\n')
+   }
+   string
+ }
1 : Fibonacci number 0 is Even
2 : Fibonacci number 1 is Odd
3 : Fibonacci number 1 is Odd
4 : Fibonacci number 2 is Even
5 : Fibonacci number 3 is Odd
6 : Fibonacci number 5 is Odd
7 : Fibonacci number 8 is Even
8 : Fibonacci number 13 is Odd
9 : Fibonacci number 21 is Odd
10 : Fibonacci number 34 is Even
11 : Fibonacci number 55 is Odd
12 : Fibonacci number 89 is Odd
13 : Fibonacci number 144 is Even
14 : Fibonacci number 233 is Odd
15 : Fibonacci number 377 is Odd
16 : Fibonacci number 610 is Even
17 : Fibonacci number 987 is Odd
18 : Fibonacci number 1597 is Odd
19 : Fibonacci number 2584 is Even
20 : Fibonacci number 4181 is Odd
21 : Fibonacci number 6765 is Odd
22 : Fibonacci number 10946 is Even
23 : Fibonacci number 17711 is Odd
24 : Fibonacci number 28657 is Odd
25 : Fibonacci number 46368 is Even
26 : Fibonacci number 75025 is Odd
27 : Fibonacci number 121393 is Odd
28 : Fibonacci number 196418 is Even
29 : Fibonacci number 317811 is Odd
30 : Fibonacci number 514229 is Odd
31 : Fibonacci number 832040 is Even
32 : Fibonacci number 1346269 is Odd
33 : Fibonacci number 2178309 is Odd
34 : Fibonacci number 3524578 is Even
35 : Fibonacci number 5702887 is Odd
36 : Fibonacci number 9227465 is Odd
37 : Fibonacci number 14930352 is Even
38 : Fibonacci number 24157817 is Odd
39 : Fibonacci number 39088169 is Odd
40 : Fibonacci number 63245986 is Even
41 : Fibonacci number 102334155 is Odd
42 : Fibonacci number 165580141 is Odd
43 : Fibonacci number 267914296 is Even
44 : Fibonacci number 433494437 is Odd
45 : Fibonacci number 701408733 is Odd
46 : Fibonacci number 1134903170 is Even
47 : Fibonacci number 1836311903 is Odd
48 : Fibonacci number 2971215073 is Odd
49 : Fibonacci number 4807526976 is Even
50 : Fibonacci number 7778742049 is Odd
51 : Fibonacci number 12586269025 is Odd
52 : Fibonacci number 20365011074 is Even
53 : Fibonacci number 32951280099 is Odd
54 : Fibonacci number 53316291173 is Odd
55 : Fibonacci number 86267571272 is Even
56 : Fibonacci number 139583862445 is Odd
57 : Fibonacci number 225851433717 is Odd
58 : Fibonacci number 365435296162 is Even
59 : Fibonacci number 591286729879 is Odd
60 : Fibonacci number 9.56722e+11 is Odd
61 : Fibonacci number 1.548009e+12 is Even
62 : Fibonacci number 2.504731e+12 is Odd
63 : Fibonacci number 4.05274e+12 is Odd
64 : Fibonacci number 6.55747e+12 is Even
65 : Fibonacci number 1.061021e+13 is Odd
66 : Fibonacci number 1.716768e+13 is Odd
67 : Fibonacci number 2.777789e+13 is Even
68 : Fibonacci number 4.494557e+13 is Odd
69 : Fibonacci number 7.272346e+13 is Odd
70 : Fibonacci number 1.17669e+14 is Even
71 : Fibonacci number 1.903925e+14 is Odd
72 : Fibonacci number 3.080615e+14 is Odd
73 : Fibonacci number 4.98454e+14 is Even
74 : Fibonacci number 8.065155e+14 is Odd
75 : Fibonacci number 1.30497e+15 is Odd
76 : Fibonacci number 2.111485e+15 is Even
77 : Fibonacci number 3.416455e+15 is Odd
78 : Fibonacci number 5.52794e+15 is Odd
79 : Fibonacci number 8.944394e+15 is Even
80 : Fibonacci number 1.447233e+16 is Even
81 : Fibonacci number 2.341673e+16 is Even
82 : Fibonacci number 3.788906e+16 is Even
83 : Fibonacci number 6.130579e+16 is Even
84 : Fibonacci number 9.919485e+16 is Even
85 : Fibonacci number 1.605006e+17 is Even
86 : Fibonacci number 2.596955e+17 is Even
87 : Fibonacci number 4.201961e+17 is Even
88 : Fibonacci number 6.798916e+17 is Even
89 : Fibonacci number 1.100088e+18 is Even
90 : Fibonacci number 1.779979e+18 is Even
91 : Fibonacci number 2.880067e+18 is Even
92 : Fibonacci number 4.660047e+18 is Even
93 : Fibonacci number 7.540114e+18 is Even
94 : Fibonacci number 1.220016e+19 is Even
95 : Fibonacci number 1.974027e+19 is Even
96 : Fibonacci number 3.194043e+19 is Even
97 : Fibonacci number 5.168071e+19 is Even
98 : Fibonacci number 8.362114e+19 is Even
99 : Fibonacci number 1.353019e+20 is Even
100 : Fibonacci number 2.18923e+20 is Even
There were 21 warnings (use warnings() to see them)
> for (i in 1:5) {
+   print(i)
+   for (j in 6:7) {
+     print(j)
+   }
+ }
[1] 1
[1] 6
[1] 7
[1] 2
[1] 6
[1] 7
[1] 3
[1] 6
[1] 7
[1] 4
[1] 6
[1] 7
[1] 5
[1] 6
[1] 7
> save(fib,F=file\\\\STAT505)
Error: unexpected '\\' in "save(fib,F=file\"
> 