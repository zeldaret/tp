lbl_80D65C24:
/* 80D65C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D65C28  7C 08 02 A6 */	mflr r0
/* 80D65C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D65C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D65C34  7C 7F 1B 78 */	mr r31, r3
/* 80D65C38  48 00 00 D1 */	bl col_set__11daTagYami_cFv
/* 80D65C3C  7F E3 FB 78 */	mr r3, r31
/* 80D65C40  48 00 00 CD */	bl chk_CoHit__11daTagYami_cFv
/* 80D65C44  90 7F 07 00 */	stw r3, 0x700(r31)
/* 80D65C48  38 60 00 01 */	li r3, 1
/* 80D65C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D65C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D65C54  7C 08 03 A6 */	mtlr r0
/* 80D65C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80D65C5C  4E 80 00 20 */	blr 
