lbl_80082C74:
/* 80082C74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082C78  7C 08 02 A6 */	mflr r0
/* 80082C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082C80  38 A1 00 08 */	addi r5, r1, 8
/* 80082C84  4B FF BE ED */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082C88  80 01 00 08 */	lwz r0, 8(r1)
/* 80082C8C  54 03 02 D6 */	rlwinm r3, r0, 0, 0xb, 0xb
/* 80082C90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082C94  7C 08 03 A6 */	mtlr r0
/* 80082C98  38 21 00 20 */	addi r1, r1, 0x20
/* 80082C9C  4E 80 00 20 */	blr 
