lbl_80D04318:
/* 80D04318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0431C  7C 08 02 A6 */	mflr r0
/* 80D04320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04324  4B 55 ED 6C */	b ModuleUnresolved
/* 80D04328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0432C  7C 08 03 A6 */	mtlr r0
/* 80D04330  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04334  4E 80 00 20 */	blr 
