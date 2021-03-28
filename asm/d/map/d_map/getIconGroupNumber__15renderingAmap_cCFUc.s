lbl_80029058:
/* 80029058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002905C  7C 08 02 A6 */	mflr r0
/* 80029060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80029064  48 01 7A 81 */	bl getIconGroupNumber__16renderingDAmap_cCFUc
/* 80029068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002906C  7C 08 03 A6 */	mtlr r0
/* 80029070  38 21 00 10 */	addi r1, r1, 0x10
/* 80029074  4E 80 00 20 */	blr 
