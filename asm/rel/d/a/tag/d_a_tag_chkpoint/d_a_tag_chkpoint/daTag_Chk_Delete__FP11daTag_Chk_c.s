lbl_8048AA20:
/* 8048AA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048AA24  7C 08 02 A6 */	mflr r0
/* 8048AA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048AA2C  28 03 00 00 */	cmplwi r3, 0
/* 8048AA30  41 82 00 0C */	beq lbl_8048AA3C
/* 8048AA34  38 80 00 00 */	li r4, 0
/* 8048AA38  4B B8 E2 54 */	b __dt__10fopAc_ac_cFv
lbl_8048AA3C:
/* 8048AA3C  38 60 00 01 */	li r3, 1
/* 8048AA40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048AA44  7C 08 03 A6 */	mtlr r0
/* 8048AA48  38 21 00 10 */	addi r1, r1, 0x10
/* 8048AA4C  4E 80 00 20 */	blr 
