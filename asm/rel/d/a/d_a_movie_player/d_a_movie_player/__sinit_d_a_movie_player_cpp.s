lbl_80878FB0:
/* 80878FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878FB4  7C 08 02 A6 */	mflr r0
/* 80878FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878FBC  3C 60 80 94 */	lis r3, daMP_c_Dlst_base@ha /* 0x80945B0C@ha */
/* 80878FC0  38 63 5B 0C */	addi r3, r3, daMP_c_Dlst_base@l /* 0x80945B0C@l */
/* 80878FC4  48 00 00 15 */	bl __ct__16daMP_Dlst_base_cFv
/* 80878FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878FCC  7C 08 03 A6 */	mtlr r0
/* 80878FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80878FD4  4E 80 00 20 */	blr 
