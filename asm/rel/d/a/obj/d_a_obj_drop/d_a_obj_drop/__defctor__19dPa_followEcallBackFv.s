lbl_80BE02B0:
/* 80BE02B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE02B4  7C 08 02 A6 */	mflr r0
/* 80BE02B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE02BC  38 80 00 00 */	li r4, 0
/* 80BE02C0  38 A0 00 00 */	li r5, 0
/* 80BE02C4  4B 46 92 BD */	bl __ct__19dPa_followEcallBackFUcUc
/* 80BE02C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE02CC  7C 08 03 A6 */	mtlr r0
/* 80BE02D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE02D4  4E 80 00 20 */	blr 
