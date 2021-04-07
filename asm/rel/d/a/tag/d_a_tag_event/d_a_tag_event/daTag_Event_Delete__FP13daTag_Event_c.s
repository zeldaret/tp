lbl_8048B7D8:
/* 8048B7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B7DC  7C 08 02 A6 */	mflr r0
/* 8048B7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B7E4  28 03 00 00 */	cmplwi r3, 0
/* 8048B7E8  41 82 00 0C */	beq lbl_8048B7F4
/* 8048B7EC  38 80 00 00 */	li r4, 0
/* 8048B7F0  4B B8 D4 9D */	bl __dt__10fopAc_ac_cFv
lbl_8048B7F4:
/* 8048B7F4  38 60 00 01 */	li r3, 1
/* 8048B7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B7FC  7C 08 03 A6 */	mtlr r0
/* 8048B800  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B804  4E 80 00 20 */	blr 
