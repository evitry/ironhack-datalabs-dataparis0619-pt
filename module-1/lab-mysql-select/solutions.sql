use publications;

/*challenge 1*/

/*select a.au_id, a.au_lname, a.au_fname, t.title, p.pub_name
from authors a, titles t, publishers p, titleauthor ta
where a.au_id = ta.au_id and ta.title_id = t.title_id and p.pub_id = t.pub_id*/

select count(*)
from titleauthor;

select a.au_id as "Author ID", a.au_lname as "Last Name", a.au_fname as "First Name", t.title as "Title", p.pub_name as "Publisher"
from authors a
inner join titleauthor ta on a.au_id = ta.au_id
inner join titles t on ta.title_id = t.title_id
inner join publishers p on p.pub_id = t.pub_id;

/*challenge 2*/

select count(t.title) as "Title Count",a.au_lname as "Last Name", a.au_fname as "First Name",p.pub_name as "Publisher"
from authors a
inner join titleauthor ta on a.au_id = ta.au_id
inner join titles t on ta.title_id = t.title_id
inner join publishers p on p.pub_id = t.pub_id
group by a.au_id
order by a.au_lname;

/*challenge 3*/

select a.au_id as "Author ID",a.au_lname as "Last Name",a.au_fname as "First Name", sum(s.qty) as "Total"
from authors a
inner join titleauthor ta on a.au_id = ta.au_id
inner join titles t on ta.title_id = t.title_id
inner join sales s on t.title_id = s.title_id
group by a.au_id
order by total desc
limit 3;

/*challenge 4*/

select a.au_id as "Author ID",a.au_lname as "Last Name",a.au_fname as "First Name", sum(ifnull(s.qty,0)) as "Total"
from authors a 
left outer join titleauthor ta on a.au_id = ta.au_id
left outer join titles t on ta.title_id = t.title_id
left outer join sales s on t.title_id = s.title_id
group by a.au_id
order by total desc;

/*Bonus challenge*/

/*faux car on prend un advance sans prendre la somme des advance de chaque titre d'un auteur. On ne peut pas sommer car on ajouterais plusieurs fois le même titre*/

select a.au_id,a.au_lname,a.au_fname, title,
-- sum(t.royalty/100*t.price*s.qty*ta.royaltyper/100) + 
Advance as Profit -- , Advance + Royalties as Profit
from authors a
inner join titleauthor ta on a.au_id = ta.au_id
inner join titles t on ta.title_id = t.title_id
inner join sales s on t.title_id = s.title_id
group by a.au_id
order by Profit desc;
-- Limit 3;