lbl_80D56A8C:
/* 80D56A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56A90  7C 08 02 A6 */	mflr r0
/* 80D56A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56A98  4B FF FE 21 */	bl execute__17daTagChgRestart_cFv
/* 80D56A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56AA0  7C 08 03 A6 */	mtlr r0
/* 80D56AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56AA8  4E 80 00 20 */	blr 
