--m3 type-safe BMI calculator

data BMILevel = Underweight
              | Normal
              | Overweight
              | Obese
        deriving (Show, Eq)

evaluateBMI :: Float -> Float -> (Float, BMILevel)
evaluateBMI w h
                | bmi >= 30   = (bmi, Obese)
                | bmi >= 25.0 = (bmi, Overweight)
                | bmi >= 18.5 = (bmi, Normal)
                | otherwise  = (bmi, Underweight)
        where
            bmi = w / (h * h)