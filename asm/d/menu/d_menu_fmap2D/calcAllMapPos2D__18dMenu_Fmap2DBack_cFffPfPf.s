lbl_801D0D18:
/* 801D0D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D0D1C  7C 08 02 A6 */	mflr r0
/* 801D0D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D0D24  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801D0D28  54 00 10 3A */	slwi r0, r0, 2
/* 801D0D2C  7C C3 02 14 */	add r6, r3, r0
/* 801D0D30  C0 66 0F 0C */	lfs f3, 0xf0c(r6)
/* 801D0D34  C0 86 0F 2C */	lfs f4, 0xf2c(r6)
/* 801D0D38  C0 A3 0F 9C */	lfs f5, 0xf9c(r3)
/* 801D0D3C  48 00 00 C5 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPffff
/* 801D0D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D0D44  7C 08 03 A6 */	mtlr r0
/* 801D0D48  38 21 00 10 */	addi r1, r1, 0x10
/* 801D0D4C  4E 80 00 20 */	blr 
