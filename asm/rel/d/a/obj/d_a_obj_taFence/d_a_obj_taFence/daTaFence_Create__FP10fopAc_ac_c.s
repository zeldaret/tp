lbl_80D05F98:
/* 80D05F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05F9C  7C 08 02 A6 */	mflr r0
/* 80D05FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05FA4  4B FF F1 05 */	bl create__11daTaFence_cFv
/* 80D05FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05FAC  7C 08 03 A6 */	mtlr r0
/* 80D05FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D05FB4  4E 80 00 20 */	blr 
