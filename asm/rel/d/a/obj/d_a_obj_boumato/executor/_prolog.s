lbl_80BBAF00:
/* 80BBAF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBAF04  7C 08 02 A6 */	mflr r0
/* 80BBAF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBAF0C  3C 60 80 BC */	lis r3, data_80BBC45C@ha
/* 80BBAF10  38 63 C4 5C */	addi r3, r3, data_80BBC45C@l
/* 80BBAF14  4B 6A 82 38 */	b ModuleConstructorsX
/* 80BBAF18  4B 6A 81 70 */	b ModuleProlog
/* 80BBAF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBAF20  7C 08 03 A6 */	mtlr r0
/* 80BBAF24  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBAF28  4E 80 00 20 */	blr 
