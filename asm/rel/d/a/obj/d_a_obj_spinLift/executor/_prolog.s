lbl_80CE3CC0:
/* 80CE3CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE3CC4  7C 08 02 A6 */	mflr r0
/* 80CE3CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE3CCC  3C 60 80 CE */	lis r3, data_80CE4CA8@ha
/* 80CE3CD0  38 63 4C A8 */	addi r3, r3, data_80CE4CA8@l
/* 80CE3CD4  4B 57 F4 78 */	b ModuleConstructorsX
/* 80CE3CD8  4B 57 F3 B0 */	b ModuleProlog
/* 80CE3CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE3CE0  7C 08 03 A6 */	mtlr r0
/* 80CE3CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE3CE8  4E 80 00 20 */	blr 
