lbl_807B02F8:
/* 807B02F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B02FC  7C 08 02 A6 */	mflr r0
/* 807B0300  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B0304  4B AB 2D 8C */	b ModuleUnresolved
/* 807B0308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B030C  7C 08 03 A6 */	mtlr r0
/* 807B0310  38 21 00 10 */	addi r1, r1, 0x10
/* 807B0314  4E 80 00 20 */	blr 
