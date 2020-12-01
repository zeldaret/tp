.include "macros.inc"

.section .text, "ax" # 802CED84

.global JKRHeap_state_register
JKRHeap_state_register:
/* 802CED84 002CBCC4  4E 80 00 20 */	blr 

.global JKRHeap_state_compare
JKRHeap_state_compare:
/* 802CED88 002CBCC8  80 64 00 04 */	lwz r3, 4(r4)
/* 802CED8C 002CBCCC  80 05 00 04 */	lwz r0, 4(r5)
/* 802CED90 002CBCD0  7C 03 00 50 */	subf r0, r3, r0
/* 802CED94 002CBCD4  7C 00 00 34 */	cntlzw r0, r0
/* 802CED98 002CBCD8  54 03 D9 7E */	srwi r3, r0, 5
/* 802CED9C 002CBCDC  4E 80 00 20 */	blr 

.global JKRHeap_state_dump
JKRHeap_state_dump:
/* 802CEDA0 002CBCE0  4E 80 00 20 */	blr 

.global JKRHeap_do_changeGroupID
JKRHeap_do_changeGroupID:
/* 802CEDA4 002CBCE4  38 60 00 00 */	li r3, 0
/* 802CEDA8 002CBCE8  4E 80 00 20 */	blr 

.global JKRHeap_do_getCurrentGroupId
JKRHeap_do_getCurrentGroupId:
/* 802CEDAC 002CBCEC  38 60 00 00 */	li r3, 0
/* 802CEDB0 002CBCF0  4E 80 00 20 */	blr 