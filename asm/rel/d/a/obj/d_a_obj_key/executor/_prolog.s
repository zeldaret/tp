lbl_80C3F320:
/* 80C3F320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3F324  7C 08 02 A6 */	mflr r0
/* 80C3F328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3F32C  3C 60 80 C4 */	lis r3, data_80C40FD8@ha
/* 80C3F330  38 63 0F D8 */	addi r3, r3, data_80C40FD8@l
/* 80C3F334  4B 62 3E 18 */	b ModuleConstructorsX
/* 80C3F338  4B 62 3D 50 */	b ModuleProlog
/* 80C3F33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3F340  7C 08 03 A6 */	mtlr r0
/* 80C3F344  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3F348  4E 80 00 20 */	blr 
