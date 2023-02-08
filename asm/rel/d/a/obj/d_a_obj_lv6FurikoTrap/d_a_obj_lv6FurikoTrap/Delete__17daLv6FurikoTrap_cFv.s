lbl_80C72F94:
/* 80C72F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C72F98  7C 08 02 A6 */	mflr r0
/* 80C72F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C72FA0  3C 80 80 C7 */	lis r4, d_a_obj_lv6FurikoTrap__stringBase0@ha /* 0x80C73198@ha */
/* 80C72FA4  38 84 31 98 */	addi r4, r4, d_a_obj_lv6FurikoTrap__stringBase0@l /* 0x80C73198@l */
/* 80C72FA8  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C72FAC  4B 3B A0 5D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C72FB0  38 60 00 01 */	li r3, 1
/* 80C72FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C72FB8  7C 08 03 A6 */	mtlr r0
/* 80C72FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C72FC0  4E 80 00 20 */	blr 
