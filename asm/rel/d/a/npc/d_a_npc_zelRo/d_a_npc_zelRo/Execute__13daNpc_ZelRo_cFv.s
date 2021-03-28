lbl_80B72818:
/* 80B72818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7281C  7C 08 02 A6 */	mflr r0
/* 80B72820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B72824  4B 5D 5D 08 */	b execute__8daNpcT_cFv
/* 80B72828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7282C  7C 08 03 A6 */	mtlr r0
/* 80B72830  38 21 00 10 */	addi r1, r1, 0x10
/* 80B72834  4E 80 00 20 */	blr 
