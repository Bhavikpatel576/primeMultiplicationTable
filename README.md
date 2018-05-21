# Prime Multiplication Table
The primeMultiplicationtable is a command line program that creates a multiplication table of prime numbers

# Objective
- The program must run from the command line and print one table to STDOUT
- The first row and column of the table should have the 10 primes, with each cell containing
the product of the primes for the cooresponding row and column

## Program Preview
```zch
===========================================================================
                Prime Number Multiplication Table
===========================================================================
              2    3    5    7   11   13   17   19   23   29
         2    4    6   10   14   22   26   34   38   46   58
         3    6    9   15   21   33   39   51   57   69   87
         5   10   15   25   35   55   65   85   95  115  145
         7   14   21   35   49   77   91  119  133  161  203
        11   22   33   55   77  121  143  187  209  253  319
        13   26   39   65   91  143  169  221  247  299  377
        17   34   51   85  119  187  221  289  323  391  493
        19   38   57   95  133  209  247  323  361  437  551
        23   46   69  115  161  253  299  391  437  529  667
        29   58   87  145  203  319  377  493  551  667  841
 ````

## Installation and Usage
Once the repo has been cloned, cd into the directory and run `bundle install`. This will install the 'rspec' gem.

### Executable
The program contains an executable file titled 'render.' Executing the file without any arguments will yield a usage prompt

```zch
./render
A prime number multiplication table generator

Commands:
./render [SIZE] - will output a table based off a positive integer
./render -s     - will output default table
````

### Benchmarking

- running the benchmark report yields the following results 

```zch
ruby benchmark.rb
                                    user     system      total        real
1_000                           0.020000   0.000000   0.020000 (  0.012659)
10_000                          0.300000   0.000000   0.300000 (  0.305682)
100_000                         9.730000   0.040000   9.770000 ( 10.005158)
1_000_000                     324.740000   1.240000 325.980000 (332.784429)
stdlib function w/ 1_000_000    1.490000   0.060000   1.550000 (  1.570442)
````

- you can run the report with the following command

```zch
$ ruby bin/benchmark.rb
```

## Details and Code
### Description
The program is broken up into 3 main files. First, the primeGenerator file which has a class that is responsible for determining if a value is prime and producing a list of prime number. Then, the multiplicationTable file which holds the logic for creating a 2d array to hold the values and populating the calculated values. Last, is the renderHelper which contains couple classes and modules to render the table.


## Todo- Optimization tasks
- Looking at the benchmark report we can see that the standard library function `Prime.first` is about 217 times faster than the function I wrote. We can get a better result by implementing a dynamic version of the alogrithm Sieve of Eratosthenes.
- The calculation of the multiplication table currently has a time complexity of O(n^2). Since we are building a multiplicaiton table where the column values are the same as the row values, half the values on the table do not need to be calculated. We can optimization the performance of rendering the table by memoizing the unique calculations and doing a lookup for the duplicate calculations

## Author
Bhavik Patel

## Acknowledgement 
This was a coding exercise from Funding Circle
