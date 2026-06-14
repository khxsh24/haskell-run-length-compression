-- Name: Khalid Yousef Shaker
-- Student ID: 20806377

import Data.Char (digitToInt)

chomp :: String -> String
chomp [] = []
chomp (x:xs) = x : takeWhile (== x) xs

munch :: String -> String
munch = take 9 . chomp

runs :: String -> [String]
runs [] = []
runs xs = ys : runs (drop (length ys) xs)
  where ys = munch xs

encode :: String -> [(Char,Int)]
encode xs = [(head ys, length ys) | ys <- runs xs]

flatten :: [(Char,Int)] -> String
flatten [] = []
flatten ((c,n):xs) = c : show n ++ flatten xs

compress :: String -> String
compress = flatten . encode

decode :: [(Char,Int)] -> String
decode [] = []
decode ((c,n):xs) = replicate n c ++ decode xs

expand :: String -> [(Char,Int)]
expand [] = []
expand (c:n:xs) = (c, digitToInt n) : expand xs

decompress :: String -> String
decompress = decode . expand