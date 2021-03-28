lbl_80CC3CC0:
/* 80CC3CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3CC4  7C 08 02 A6 */	mflr r0
/* 80CC3CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3CCC  3C 60 80 CC */	lis r3, data_80CC4510@ha
/* 80CC3CD0  38 63 45 10 */	addi r3, r3, data_80CC4510@l
/* 80CC3CD4  4B 59 F4 78 */	b ModuleConstructorsX
/* 80CC3CD8  4B 59 F3 B0 */	b ModuleProlog
/* 80CC3CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3CE0  7C 08 03 A6 */	mtlr r0
/* 80CC3CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3CE8  4E 80 00 20 */	blr 
