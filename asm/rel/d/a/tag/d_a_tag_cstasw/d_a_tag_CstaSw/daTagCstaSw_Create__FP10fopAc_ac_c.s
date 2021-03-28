lbl_805A2460:
/* 805A2460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2464  7C 08 02 A6 */	mflr r0
/* 805A2468  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A246C  4B FF FC 85 */	bl create__13daTagCstaSw_cFv
/* 805A2470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2474  7C 08 03 A6 */	mtlr r0
/* 805A2478  38 21 00 10 */	addi r1, r1, 0x10
/* 805A247C  4E 80 00 20 */	blr 
