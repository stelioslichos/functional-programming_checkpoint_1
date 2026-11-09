--s3 take the second element froma pair tuple
select_second :: (a, b) -> b
select_second (_, x) = x