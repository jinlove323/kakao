/* 더치페이를 요청한 유저 중 a 가맹점에서 2019년 12월에 1만원 이상 결제한 유저를 대상으로 리워드를 지급하려고 합니다. 리워드 지급 대상자 user_id를 추출하는 SQL 쿼리를 작성해주세요.
- 2019년 12월 결제분 중 취소를 반영한 순결제금액 1만원 이상인 유저만을 대상으로 함
- 취소 반영기간은 2020년 2월까지로 함
 */


--557,644
--255631
--47,490
select COUNT(*) from (
select distinct  C.user_id 
from dutchpay_claim A , dutchpay_claim_detail B, users C, payment D , (select distinct transaction_id 
																	  	 from payment 
																		where payment_action_type ='CANCEL' and transacted_at >='2019-12-01') E	
where A.claim_id =B.claim_id 
and A.claim_user_id =C.user_id
and C.user_id =D.user_id 
and D.transaction_id <>E.transaction_id
and B.status ='CLAIM'
and D.amount >=10000
and D.transacted_at between '2019-12-01' and '2019-12-31'
) AA 
;

select * 
from 


select  MAX(transacted_at ) 
--distinct transaction_id 
from payment D
where payment_action_type ='CANCEL'
and D.transacted_at >='2019-12-01'


select *
from payment p 

select  *
from payment p 
where transaction_id ='3874637'



select distinct status from dutchpay_claim_detail B;
select * from payment C; 
select * from users C ; 