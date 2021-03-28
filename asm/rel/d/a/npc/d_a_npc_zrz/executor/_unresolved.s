lbl_80B93D38:
/* 80B93D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93D3C  7C 08 02 A6 */	mflr r0
/* 80B93D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B93D44  4B 6C F3 4C */	b ModuleUnresolved
/* 80B93D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B93D4C  7C 08 03 A6 */	mtlr r0
/* 80B93D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80B93D54  4E 80 00 20 */	blr 
