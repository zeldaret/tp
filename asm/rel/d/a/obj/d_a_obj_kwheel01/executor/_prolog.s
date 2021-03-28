lbl_80C4EA00:
/* 80C4EA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4EA04  7C 08 02 A6 */	mflr r0
/* 80C4EA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4EA0C  3C 60 80 C5 */	lis r3, data_80C4F6B0@ha
/* 80C4EA10  38 63 F6 B0 */	addi r3, r3, data_80C4F6B0@l
/* 80C4EA14  4B 61 47 38 */	b ModuleConstructorsX
/* 80C4EA18  4B 61 46 70 */	b ModuleProlog
/* 80C4EA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4EA20  7C 08 03 A6 */	mtlr r0
/* 80C4EA24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4EA28  4E 80 00 20 */	blr 
