lbl_8025EECC:
/* 8025EECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025EED0  7C 08 02 A6 */	mflr r0
/* 8025EED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025EED8  7C 83 23 78 */	mr r3, r4
/* 8025EEDC  4B FB F3 ED */	bl dMeter2Info_getNumberTextureName__Fi
/* 8025EEE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025EEE4  7C 08 03 A6 */	mtlr r0
/* 8025EEE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8025EEEC  4E 80 00 20 */	blr 
