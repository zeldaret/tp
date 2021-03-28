lbl_80082C1C:
/* 80082C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082C20  7C 08 02 A6 */	mflr r0
/* 80082C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082C28  38 A1 00 08 */	addi r5, r1, 8
/* 80082C2C  4B FF BF 45 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082C30  80 01 00 08 */	lwz r0, 8(r1)
/* 80082C34  54 03 03 5A */	rlwinm r3, r0, 0, 0xd, 0xd
/* 80082C38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082C3C  7C 08 03 A6 */	mtlr r0
/* 80082C40  38 21 00 20 */	addi r1, r1, 0x20
/* 80082C44  4E 80 00 20 */	blr 
