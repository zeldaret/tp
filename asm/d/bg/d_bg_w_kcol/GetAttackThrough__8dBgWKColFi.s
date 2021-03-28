lbl_80082E40:
/* 80082E40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082E44  7C 08 02 A6 */	mflr r0
/* 80082E48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082E4C  38 A1 00 08 */	addi r5, r1, 8
/* 80082E50  4B FF BD 21 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082E54  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80082E58  54 03 01 8C */	rlwinm r3, r0, 0, 6, 6
/* 80082E5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082E60  7C 08 03 A6 */	mtlr r0
/* 80082E64  38 21 00 20 */	addi r1, r1, 0x20
/* 80082E68  4E 80 00 20 */	blr 
