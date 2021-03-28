lbl_808605EC:
/* 808605EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808605F0  7C 08 02 A6 */	mflr r0
/* 808605F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808605F8  4B A0 2A 94 */	b ModuleEpilog
/* 808605FC  3C 60 80 86 */	lis r3, data_80860B3C@ha
/* 80860600  38 63 0B 3C */	addi r3, r3, data_80860B3C@l
/* 80860604  4B A0 2B 8C */	b ModuleDestructorsX
/* 80860608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086060C  7C 08 03 A6 */	mtlr r0
/* 80860610  38 21 00 10 */	addi r1, r1, 0x10
/* 80860614  4E 80 00 20 */	blr 
