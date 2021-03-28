lbl_804969CC:
/* 804969CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804969D0  7C 08 02 A6 */	mflr r0
/* 804969D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804969D8  4B DC C6 B4 */	b ModuleEpilog
/* 804969DC  3C 60 80 4A */	lis r3, data_8049815C@ha
/* 804969E0  38 63 81 5C */	addi r3, r3, data_8049815C@l
/* 804969E4  4B DC C7 AC */	b ModuleDestructorsX
/* 804969E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804969EC  7C 08 03 A6 */	mtlr r0
/* 804969F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804969F4  4E 80 00 20 */	blr 
