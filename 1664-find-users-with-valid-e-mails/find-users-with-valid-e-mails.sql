SELECT user_id, name, mail
FROM Users
WHERE 
   REGEXP_LIKE(mail, '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$','c');

# REGEXP_LIKE() - Oracle's function for regular expression matching
# First parameter: mail - the column to test
# Second parameter: '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$' - the regex pattern
# Third parameter: 'c' - the match parameter for case-sensitive matching