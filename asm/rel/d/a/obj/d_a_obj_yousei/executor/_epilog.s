lbl_804CE6EC:
/* 804CE6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE6F0  7C 08 02 A6 */	mflr r0
/* 804CE6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE6F8  4B D9 49 94 */	b ModuleEpilog
/* 804CE6FC  3C 60 80 4D */	lis r3, data_804D15EC@ha
/* 804CE700  38 63 15 EC */	addi r3, r3, data_804D15EC@l
/* 804CE704  4B D9 4A 8C */	b ModuleDestructorsX
/* 804CE708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE70C  7C 08 03 A6 */	mtlr r0
/* 804CE710  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE714  4E 80 00 20 */	blr 
