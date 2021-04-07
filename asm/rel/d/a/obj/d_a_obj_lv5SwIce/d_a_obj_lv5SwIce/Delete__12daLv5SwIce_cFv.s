lbl_80C6D314:
/* 80C6D314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D318  7C 08 02 A6 */	mflr r0
/* 80C6D31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D320  3C 80 80 C7 */	lis r4, d_a_obj_lv5SwIce__stringBase0@ha /* 0x80C6D558@ha */
/* 80C6D324  38 84 D5 58 */	addi r4, r4, d_a_obj_lv5SwIce__stringBase0@l /* 0x80C6D558@l */
/* 80C6D328  38 63 07 18 */	addi r3, r3, 0x718
/* 80C6D32C  4B 3B FC DD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C6D330  38 60 00 01 */	li r3, 1
/* 80C6D334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D338  7C 08 03 A6 */	mtlr r0
/* 80C6D33C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D340  4E 80 00 20 */	blr 
