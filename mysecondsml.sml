fun is_older (x1 : int*int*int, x2 : int * int * int) =
if #1 x1 > #1 x2
  then false
  else if #2 x1 > #2 x2
    then false
    else if #3 x1 > #3 x2
      then  false
        else true

fun number_in_month(dates: (int*int*int) list,months : int) =
if null dates
  then 0
else
  let
  in
  if(#2 (hd dates)) = months
    then  number_in_month(tl dates,months)+1
  else number_in_month(tl dates,months)
  end

  fun number_in_months(dates: (int*int*int) list,months : (int) list) =
  if null dates
    then 0
    else if null months
      then 0
    else number_in_month(dates, (hd months))+ number_in_months(dates,(tl months))


fun dates_in_month (dates: (int*int*int) list,month : int) =
  if null dates
  then []
      else
      let
      in
      if (#2 (hd dates)) = month
      then (hd dates)::dates_in_month((tl dates, month))
  else dates_in_month((tl dates),month)
  end

fun dates_in_months(dates: (int*int*int) list,month : (int)list) =
 if null dates
  then []
  else dates_in_months
