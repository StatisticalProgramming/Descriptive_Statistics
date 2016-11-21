* Encoding: UTF-8.
****************************************************************************
* Title: Bin Test Scores
* Author: William Murrah
***************************************************************************.

* Recode score into score_range.
DATASET ACTIVATE DataSet4.
STRING score_range (A8).
RECODE scores (90 thru 100='90-100') (80 thru 89='80-89') 
              (70 thru 79='70-79') (60 thru 69='60-69') 
    (50 thru 59='50-59') INTO score_range.
EXECUTE.
