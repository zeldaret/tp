lbl_80D5D250:
/* 80D5D250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D254  7C 08 02 A6 */	mflr r0
/* 80D5D258  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D25C  4B FF F9 99 */	bl Execute__17daTag_MynaLight_cFv
/* 80D5D260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D264  7C 08 03 A6 */	mtlr r0
/* 80D5D268  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D26C  4E 80 00 20 */	blr 
