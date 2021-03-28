lbl_80082CCC:
/* 80082CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082CD0  7C 08 02 A6 */	mflr r0
/* 80082CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082CD8  38 A1 00 08 */	addi r5, r1, 8
/* 80082CDC  4B FF BE 95 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082CE0  80 01 00 08 */	lwz r0, 8(r1)
/* 80082CE4  54 03 00 42 */	rlwinm r3, r0, 0, 1, 1
/* 80082CE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082CEC  7C 08 03 A6 */	mtlr r0
/* 80082CF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80082CF4  4E 80 00 20 */	blr 
