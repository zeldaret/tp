lbl_804D50CC:
/* 804D50CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D50D0  7C 08 02 A6 */	mflr r0
/* 804D50D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D50D8  4B D8 DF B4 */	b ModuleEpilog
/* 804D50DC  3C 60 80 4D */	lis r3, data_804D5238@ha
/* 804D50E0  38 63 52 38 */	addi r3, r3, data_804D5238@l
/* 804D50E4  4B D8 E0 AC */	b ModuleDestructorsX
/* 804D50E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D50EC  7C 08 03 A6 */	mtlr r0
/* 804D50F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D50F4  4E 80 00 20 */	blr 
