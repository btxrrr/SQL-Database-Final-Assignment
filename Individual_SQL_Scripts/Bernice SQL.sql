/*===================================================== Bernice ==================================================================*/
/* 1)	What are the names, ages and cities of customers who complete offers and which subcategories and categories do they buy from?*/
SELECT MemberName, City, DATEDIFF(YEAR, MemberDOB, GETDATE()) AS 'Age', SubCatDesc, CatDesc
FROM Member m
INNER JOIN Offer o
ON m.MemberID = o.BuyerID
INNER JOIN Listing l 
ON o.ListingID = l.ListingID
INNER JOIN Subcategory sc
ON l.SubCatID = sc.SubCatID
INNER JOIN Category c 
ON sc.CatID = c.CatID
GROUP BY MemberName, City, DATEDIFF(YEAR, MemberDOB, GETDATE()), sc.SubCatDesc, c.CatDesc
ORDER BY 'Age' ASC;

/* 2)	Based on the completed offers in 2020, which categories and subcategories were those listings from and how much were they sold for? */
SELECT sc.CatID,c.CatDesc AS 'Category Description',sc.SubCatID,sc.SubCatDesc AS 'Sub-Category Description', ListDesc AS 'Listing Description', ListPrice, OfferStatus, OfferDate  

FROM Listing l 
INNER JOIN Offer o 
ON l.ListingID = o.ListingID 
INNER JOIN Subcategory sc  
ON l.SubcatID = sc.SubcatID 
INNER JOIN Category c 
ON sc.CatID = c.CatID 
WHERE OfferDate BETWEEN '2020-01-01' AND '2020-12-31' AND OfferStatus = 'Completed' 
ORDER BY CatID ASC; 

/* 3)	What are the names of the leaders from the top 3 teams (in alphabetical order)? */
 SELECT StaffID, StaffName
FROM Staff
WHERE StaffID IN
(SELECT TeamLeaderId
From Team
WHERE TeamID IN
(SELECT TeamID 
FROM Win 
WHERE AwardID IN 
(SELECT AwardID 
FROM Award 
WHERE AwardAmt  > 30)))
ORDER BY StaffName ASC;

