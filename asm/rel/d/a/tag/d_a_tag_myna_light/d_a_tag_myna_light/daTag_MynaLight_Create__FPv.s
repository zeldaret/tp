lbl_80D5D210:
/* 80D5D210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D214  7C 08 02 A6 */	mflr r0
/* 80D5D218  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D21C  4B FF F9 1D */	bl create__17daTag_MynaLight_cFv
/* 80D5D220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D224  7C 08 03 A6 */	mtlr r0
/* 80D5D228  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D22C  4E 80 00 20 */	blr 
