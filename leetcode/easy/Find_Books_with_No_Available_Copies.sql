/*
Problem: Find Books with No Available Copies
Platform: LeetCode
Problem ID: 3570
Difficulty: Easy
Link: https://leetcode.com/problems/find-books-with-no-available-copies/
*/

-- Find books where all copies are currently borrowed (available copies = 0)
-- LEFT JOIN to get all borrowing records per book
-- r.record_id IS NOT NULL excludes books with no borrowing records at all
-- COUNT only active borrows where return_date IS NULL
-- HAVING filters books where active borrows = total copies

SELECT 
    b.book_id, 
    b.title, 
    b.author, 
    b.genre, 
    b.publication_year,
    COUNT(CASE WHEN r.record_id IS NOT NULL 
          AND r.return_date IS NULL THEN 1 END) AS current_borrowers
FROM library_books b
LEFT JOIN borrowing_records r
    ON b.book_id = r.book_id
GROUP BY b.book_id, 
    b.title, 
    b.author, 
    b.genre, 
    b.publication_year,
    b.total_copies
HAVING b.total_copies = COUNT(CASE WHEN r.record_id IS NOT NULL 
                                  AND r.return_date IS NULL THEN 1 END)
ORDER BY current_borrowers DESC, b.title;
