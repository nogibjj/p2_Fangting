# Project 1 - Fangting Ma

## INTRODUCTION

It is my 706 Project 2. I used a dataset about Top 100 Richest People in the World from [Kaggle](https://www.kaggle.com/datasets/ayessa/top-100-richest-people-in-the-world), which contains some information about those rich people, including their name, net worth of their wealth, age, birthdate and nationality.

## IMPLEMENTATION

I created this new repo on github for my project 2. Then I wrote a bash script called operate.sh to performs some data operations on this dataset. It will check if the input file exits or not first. If the file exits, it will print out how many rows the input has. Then it will sort the dataset by the age column in an ascending order, then by the rank column. Then it will extract out the name and wealth of the rich people who is older than 50 and younger than 60 years old to an output file.

## HOW TO USE

```
chmod +x ./operate.sh
./operate.sh top_100_richest.csv 
```
Then the output will be stored in the output.txt file.