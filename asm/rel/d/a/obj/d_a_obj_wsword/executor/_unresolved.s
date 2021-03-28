lbl_80D3B958:
/* 80D3B958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B95C  7C 08 02 A6 */	mflr r0
/* 80D3B960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B964  4B 52 77 2C */	b ModuleUnresolved
/* 80D3B968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B96C  7C 08 03 A6 */	mtlr r0
/* 80D3B970  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B974  4E 80 00 20 */	blr 
