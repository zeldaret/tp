lbl_80075F14:
/* 80075F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80075F18  7C 08 02 A6 */	mflr r0
/* 80075F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80075F20  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80075F24  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80075F28  90 03 00 10 */	stw r0, 0x10(r3)
/* 80075F2C  48 1F 21 F5 */	bl ClearPi__13cBgS_PolyInfoFv
/* 80075F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80075F34  7C 08 03 A6 */	mtlr r0
/* 80075F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80075F3C  4E 80 00 20 */	blr 
