use publications;

/* challenge 1 */

/* step 1 */

select ta.title_id, ta.au_id, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Royalty
from authors a
inner join titleauthor ta on a.au_id = ta.au_id
inner join titles t on ta.title_id = t.title_id
inner join sales s on t.title_id = s.title_id
order by ta.title_id;

/* step 2 */

CREATE TEMPORARY TABLE publications.royalties_sum
select royalties.title_id, royalties.au_id, sum(Royalty) as Agg_Royalty
from (
select ta.title_id, ta.au_id, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Royalty, ta.royaltyper*t.advance/100 as Advance
from authors a
inner join titleauthor ta on a.au_id = ta.au_id
inner join titles t on ta.title_id = t.title_id
inner join sales s on t.title_id = s.title_id
) royalties
group by title_id, au_id;

/* step 3 */

select rs.au_id, rs.Agg_Royalty + t.advance as Total_Profit
from royalties_sum rs
-- faire jointure pour obtenir advance
inner join titleauthor ta on rs.au_id = ta.au_id
inner join titles t on ta.title_id = t.title_id
order by Total_Profit desc 
limit 3;

/* Challenge 2 */

-- Make table queries
create table most_profiting_authors(
au_id varchar(11),
profits float
);
