-- Once upon a time... Haskell example
data Vampire = Vampire { location :: String, birth :: Int, death :: Int } deriving Show

age :: Vampire -> Int
age v = death v - birth v

main :: IO ()
main = do
  let d = Vampire "Transylvania" 1428 1476
  putStrLn $ location d ++ " age: " ++ show (age d)
