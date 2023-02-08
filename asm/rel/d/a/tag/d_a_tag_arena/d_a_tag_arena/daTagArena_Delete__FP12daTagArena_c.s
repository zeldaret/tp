lbl_80D55D28:
/* 80D55D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55D2C  7C 08 02 A6 */	mflr r0
/* 80D55D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55D34  28 03 00 00 */	cmplwi r3, 0
/* 80D55D38  41 82 00 0C */	beq lbl_80D55D44
/* 80D55D3C  38 80 00 00 */	li r4, 0
/* 80D55D40  4B 2C 2F 4D */	bl __dt__10fopAc_ac_cFv
lbl_80D55D44:
/* 80D55D44  38 60 00 01 */	li r3, 1
/* 80D55D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55D4C  7C 08 03 A6 */	mtlr r0
/* 80D55D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55D54  4E 80 00 20 */	blr 
