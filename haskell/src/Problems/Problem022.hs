module Problems.Problem022 where
  range :: Int -> Int -> [Int]
  range begin end 
    | begin == end = [begin]
    | begin > end = reverse (range end begin)
    | begin < end = begin : range (begin + 1) end
