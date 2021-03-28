lbl_80082F5C:
/* 80082F5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082F60  7C 08 02 A6 */	mflr r0
/* 80082F64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082F68  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082F6C  38 A1 00 08 */	addi r5, r1, 8
/* 80082F70  4B FF BC 01 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082F74  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80082F78  54 03 AE 3E */	rlwinm r3, r0, 0x15, 0x18, 0x1f
/* 80082F7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082F80  7C 08 03 A6 */	mtlr r0
/* 80082F84  38 21 00 20 */	addi r1, r1, 0x20
/* 80082F88  4E 80 00 20 */	blr 
