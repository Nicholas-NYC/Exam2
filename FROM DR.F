---
title: "exam 2"
output: html_document
---
  
### Econ B2000, Statistics and Introduction to Econometrics
### Kevin R Foster, Colin Powell School, the City College of New York, CUNY
### Nov 18 2021
  
  *The questions are worth 120 points.  You have 120 minutes to do the exam, one point per minute.*
  *All answers should submitted electronically. Please submit all relevant computer files as a Slack message to me. I prefer .Rmd files __along with knit output,__ md or html is fine. Please no "pages" files, save output and code as pdf or rtf if you must.*
  *You may refer to your books, notes, calculator, computer, or astrology table.  The exam is "open book."*
  *However, you must not refer to anyone else, either in person or electronically, during the exam time. For instance, since these exam questions are newly created, posting questions or copying answers on Discord or WhatsApp groups or online homework helping sites or forums (such as Chegg, Yahoo answers or others) is a violation. Don't upload to public GitHub site until end of exam.*
*You must do all work on your own.  Cheating is harshly penalized.*
*Good luck.  Stay cool.*

For this exam we will use a new (to you) dataset, an update of NHIS. We'll look at estimates of whether people worked for an employer that offered health insurance, EMPHI. The data is available on Slack. (Note that in data, NIU is "Not in Universe" so for instance if people are asked if their employer offers health insurance then somebody not working would be NIU.)

The first questions do not require any work in R (although you might find it convenient, I'm not stopping you) -- I will provide some summary data and you can construct hypothesis tests on your own. Subsequent questions require R coding.

1. (20 points) I've run crosstabs on a subset of the data (so you cannot replicate, just use this info provided). These give verbose summary of whether employer offers health insurance by educational qualification and whether person is full or part time worker. Form a hypothesis test of the form, "people with *various* educational qualifications who are *full or parttime* have different fraction offered health insurance." I expect that you will choose different ways to operationalize educational qualification (compare above some level with below that level, but what level?). You can choose how to deal with NA and similar responses. I expect that different people may choose different levels of significance. Please provide estimate, standard error, t-stat and a p-value for the hypothesis test and a confidence interval. __Write a short paragraph__ explaining the test (carefully noting what is the null hypothesis) and explaining the results of that test.

```{r eval=FALSE}
, , d3$EMPFT = parttime

                          d3$EMPHI
d3$EDUC                     NIU no did not yes did refused   NA dont know
  NIU                         0          0       0       0    0         0
  no school                   0          1       1       0    0         0
  less than hs                2        116      26       0    1         0
  12th grade no diploma       0         25       7       0    0         0
  HS diploma                  0        386     141       0    1         4
  GED                         0         33      19       0    0         1
  some college                0        349     132       0    1         3
  assoc deg in tech or occ    0         63      27       0    0         0
  assoc deg academic          0        153      77       0    1         2
  bachelors                   0        381     153       0    0         3
  masters                     0        179      78       0    1         0
  professional degree         0         27      16       0    0         0
  doctoral                    0         39      25       0    0         1
  refused                     0          1       0       0    0         0
  dont know                   0          5       4       0    0         0

, , d3$EMPFT = fulltime

                          d3$EMPHI
d3$EDUC                     NIU no did not yes did refused   NA dont know
  NIU                         0          0       0       0    0         0
  no school                   0          6       7       0    0         0
  less than hs                1        187     222       1    2         9
  12th grade no diploma       1         56      75       0    0         0
  HS diploma                  4        591    1751       2    2        11
  GED                         0         56     146       0    0         0
  some college                1        410    1340       0    1         2
  assoc deg in tech or occ    0        117     369       0    1         0
  assoc deg academic          3        212    1017       0    1         0
  bachelors                   5        545    3178       4    7         5
  masters                     3        208    1700       1    1         1
  professional degree         0         54     227       0    0         0
  doctoral                    0         44     350       0    0         1
  refused                     0          3      11       0    0         0
  dont know                   0         17      21       0    0         0


```

2. (20 points) Using a subset of the data (so you can do this question without R), the following coefficients are estimated in a logit model where employer offering health insurance depends on $Age$, $Age^2$, $Female$, and interaction of $Female$ with the age terms.

Variable       | Coeff    | Std Error
-------------- | -------  | ----------
$Age$          | -0.019   | 0.0018
$Age^2$        | 0.00002  | 0.000002
$Female$       | -0.470   | 0.1206
$Age*Female$   | 0.0082   | 0.0026
$Age^2*Female$ | -0.00001 | 0.000003
$Constant$     | 1.84     | 0.09

  a. What is the predicted probability that a 30-year-old person (not a female) will have a job with benefits?
  b. What is the predicted probability that a 30-year-old female person will have a job with benefits?
  c. Describe and explain the impact of the squared age terms in the model, for male and female.

3. (80 points) Now do your own analysis using "NHIS2020_data.RData". Explore likelihood of people working at a job that offers health insurance, or choose a different topic if you'd like. The data includes information on region, whether urban or rural area, usual hours of work, fulltime or parttime, health status, height, weight and BMI, along with demographics like age, race/ethnicity, gender, sexual orientation, family size, marital status, whether served in armed forces, citizenship with years in US, and household income.  
+ Choose a subgroup of the sample to consider and provide summary statistics of that subgroup. Explain why this subgroup is interesting.
+ Form a hypothesis test about an interesting variable, explore whether your chosen subgroup differs from the rest of sample. Please provide both a p-value for the hypothesis test and a confidence interval. Write a short paragraph explaining the test (carefully noting what is the null hypothesis) and explaining the results of that test.
+ With a linear probability model (OLS), can you find relevant information to predict an interesting outcome? How good is the model? Discuss. Include hypothesis tests about individual or joint coefficient values. Include some predicted values.
+ Now how does a logit model perform? What additional information can you learn from that? Discuss. Include hypothesis tests about individual or joint coefficient values. Include some predicted values.
+ Can you estimate some other models? What is the marginal value of those? Impress me.

Please sign this.    
_All of the work on this exam is my own, answered honestly as rules state._  
Name:Nicholas Esposito    
Date:11/18/2021
