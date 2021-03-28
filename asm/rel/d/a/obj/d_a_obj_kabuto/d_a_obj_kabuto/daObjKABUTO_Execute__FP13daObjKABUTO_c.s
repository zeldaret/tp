lbl_80C2D558:
/* 80C2D558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2D55C  7C 08 02 A6 */	mflr r0
/* 80C2D560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2D564  4B FF F6 B5 */	bl Execute__13daObjKABUTO_cFv
/* 80C2D568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2D56C  7C 08 03 A6 */	mtlr r0
/* 80C2D570  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2D574  4E 80 00 20 */	blr 
