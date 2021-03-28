lbl_80BD3318:
/* 80BD3318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD331C  7C 08 02 A6 */	mflr r0
/* 80BD3320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD3324  4B 68 FD 6C */	b ModuleUnresolved
/* 80BD3328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD332C  7C 08 03 A6 */	mtlr r0
/* 80BD3330  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD3334  4E 80 00 20 */	blr 
