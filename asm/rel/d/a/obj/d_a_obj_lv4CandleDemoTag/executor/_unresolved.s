lbl_80C5C958:
/* 80C5C958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C95C  7C 08 02 A6 */	mflr r0
/* 80C5C960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C964  4B 60 67 2C */	b ModuleUnresolved
/* 80C5C968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C96C  7C 08 03 A6 */	mtlr r0
/* 80C5C970  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C974  4E 80 00 20 */	blr 
