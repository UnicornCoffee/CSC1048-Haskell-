--Lab 2--

--Area of Triangle--

isTriangle :: Float -> Float -> Float -> Bool
isTriangle a b c = (a + b > c) && (a + c > b) && (b + c > a)

triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c
  | a <= 0 || b <= 0 || c <= 0 = error "Sides must be positive"
  | not (isTriangle a b c)     = error "Not a triangle!"
  | otherwise                  = sqrt (s * (s - a) * (s - b) * (s - c))
  where
    s = (a + b + c) / 2


-- Is one the sum of the others--
isSum :: Int -> Int -> Int -> Bool

isSum a b c = (a + b == c ) || (a + c == b) || (b + c == a)


