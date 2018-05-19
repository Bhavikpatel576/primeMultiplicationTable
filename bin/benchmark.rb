require 'benchmark'
require '../lib/primeGenerator.rb'
require 'prime'

SIZE = 1_000_00

Benchmark.bm(10) do |x|
  x.report('v1') { PrimeGenerator.first(SIZE) }
  x.report('original') { Prime.first(SIZE) }
end
