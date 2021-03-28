lbl_80082A50:
/* 80082A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082A54  7C 08 02 A6 */	mflr r0
/* 80082A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082A5C  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082A60  38 A1 00 08 */	addi r5, r1, 8
/* 80082A64  4B FF C1 0D */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082A68  80 01 00 08 */	lwz r0, 8(r1)
/* 80082A6C  54 03 D6 3E */	rlwinm r3, r0, 0x1a, 0x18, 0x1f
/* 80082A70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082A74  7C 08 03 A6 */	mtlr r0
/* 80082A78  38 21 00 20 */	addi r1, r1, 0x20
/* 80082A7C  4E 80 00 20 */	blr 
