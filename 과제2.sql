/* ��ġ���̸� ��û�� ���� �� a ���������� 2019�� 12���� 1���� �̻� ������ ������ ������� �����带 �����Ϸ��� �մϴ�. ������ ���� ����� user_id�� �����ϴ� SQL ������ �ۼ����ּ���.
- 2019�� 12�� ������ �� ��Ҹ� �ݿ��� �������ݾ� 1���� �̻��� �������� ������� ��
- ��� �ݿ��Ⱓ�� 2020�� 2�������� ��
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