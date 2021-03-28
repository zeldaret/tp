lbl_8046B30C:
/* 8046B30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046B310  7C 08 02 A6 */	mflr r0
/* 8046B314  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046B318  4B DF 7D 74 */	b ModuleEpilog
/* 8046B31C  3C 60 80 47 */	lis r3, data_8046B5D0@ha
/* 8046B320  38 63 B5 D0 */	addi r3, r3, data_8046B5D0@l
/* 8046B324  4B DF 7E 6C */	b ModuleDestructorsX
/* 8046B328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046B32C  7C 08 03 A6 */	mtlr r0
/* 8046B330  38 21 00 10 */	addi r1, r1, 0x10
/* 8046B334  4E 80 00 20 */	blr 
