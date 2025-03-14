main = do
  putStrLn $ show $ sinal $ x
  la <- getLine
  let a = read la
  lb <- getLine
  let b = read lb
  lc <- getLine
  let c = read lc
  putStrLn $ show $ la
  putStrLn $ show $ lb
  putStrLn $ show $ lc
  putStrLn $ show $ baskara a b c

x = -5

-- Guardas
sinal(x)
  | x<0 = -1
  | x == 0 = 0
  | otherwise = 1

resultado(nota)
  | nota > 5 = "Passou"
  | nota > 3 = "REC"
  | otherwise = "Reprovou"

absoluto(x)
  | x < 0 = -x
  | otherwise = x

soma [] = 0
soma (x:xs) = x + soma xs

somaPositivos [] = 0
somaPositivos (x:xs)
  | x > 0 = x + somaPositivos xs
  | otherwise = somaPositivos xs

baskara a b c
  | delta < 0 = []
  | delta == 0 = [x]
  | otherwise = [x', x'']
    where
      delta = b^2 - 4*a*c
      x = (-b)/(2*a)
      x' = ((-b) + sqrt delta) / (2*a)
      x'' = ((-b) - sqrt delta) / (2*a)
