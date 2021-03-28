lbl_8048A3AC:
/* 8048A3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048A3B0  7C 08 02 A6 */	mflr r0
/* 8048A3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048A3B8  28 03 00 00 */	cmplwi r3, 0
/* 8048A3BC  41 82 00 0C */	beq lbl_8048A3C8
/* 8048A3C0  38 80 00 00 */	li r4, 0
/* 8048A3C4  4B B8 E8 C8 */	b __dt__10fopAc_ac_cFv
lbl_8048A3C8:
/* 8048A3C8  38 60 00 01 */	li r3, 1
/* 8048A3CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048A3D0  7C 08 03 A6 */	mtlr r0
/* 8048A3D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048A3D8  4E 80 00 20 */	blr 
