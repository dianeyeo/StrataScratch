/*
User Email Labels
https://platform.stratascratch.com/coding/10068-user-email-labels?python=

Difficulty: Medium

-- Find the number of emails received by each user under each built-in email label. 
-- The email labels are: 'Promotion', 'Social', and 'Shopping'. 
-- Output the user along with the number of promotion, social, and shopping mails count,.

Tables:
google_gmail_emails:
    id          int
    from_user   varchar
    to_user     varchar
    day         int
google_gmail_labels:
    email_id    int
    label       varchar
*/

SELECT to_user, 
    COUNT(*) FILTER (WHERE label = 'Promotion') AS promo_count,
    COUNT(*) FILTER (WHERE label = 'Social') AS social_count,
    COUNT(*) FILTER (WHERE label = 'Shopping') AS shopping_count
FROM google_gmail_emails AS e
INNER JOIN google_gmail_labels AS l
ON e.id = l.email_id
GROUP BY to_user;