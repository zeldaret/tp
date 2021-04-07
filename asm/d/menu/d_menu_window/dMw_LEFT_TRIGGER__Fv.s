lbl_801F9FAC:
/* 801F9FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9FB0  7C 08 02 A6 */	mflr r0
/* 801F9FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9FB8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801F9FBC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801F9FC0  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801F9FC4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801F9FC8  41 82 00 18 */	beq lbl_801F9FE0
/* 801F9FCC  4B FF FF B9 */	bl dMw_UP_TRIGGER__Fv
/* 801F9FD0  2C 03 00 00 */	cmpwi r3, 0
/* 801F9FD4  40 82 00 0C */	bne lbl_801F9FE0
/* 801F9FD8  38 60 00 01 */	li r3, 1
/* 801F9FDC  48 00 00 08 */	b lbl_801F9FE4
lbl_801F9FE0:
/* 801F9FE0  38 60 00 00 */	li r3, 0
lbl_801F9FE4:
/* 801F9FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9FE8  7C 08 03 A6 */	mtlr r0
/* 801F9FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9FF0  4E 80 00 20 */	blr 
