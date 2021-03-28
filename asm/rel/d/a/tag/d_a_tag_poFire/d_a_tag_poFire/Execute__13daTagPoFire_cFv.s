lbl_80D5DBF0:
/* 80D5DBF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DBF4  7C 08 02 A6 */	mflr r0
/* 80D5DBF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DBFC  88 03 05 69 */	lbz r0, 0x569(r3)
/* 80D5DC00  28 00 00 00 */	cmplwi r0, 0
/* 80D5DC04  41 82 00 08 */	beq lbl_80D5DC0C
/* 80D5DC08  4B 2B C0 74 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80D5DC0C:
/* 80D5DC0C  38 60 00 01 */	li r3, 1
/* 80D5DC10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DC14  7C 08 03 A6 */	mtlr r0
/* 80D5DC18  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DC1C  4E 80 00 20 */	blr 
