lbl_80082D54:
/* 80082D54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082D58  7C 08 02 A6 */	mflr r0
/* 80082D5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082D60  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082D64  38 A1 00 08 */	addi r5, r1, 8
/* 80082D68  4B FF BE 09 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082D6C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80082D70  54 03 C7 3E */	rlwinm r3, r0, 0x18, 0x1c, 0x1f
/* 80082D74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082D78  7C 08 03 A6 */	mtlr r0
/* 80082D7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80082D80  4E 80 00 20 */	blr 
