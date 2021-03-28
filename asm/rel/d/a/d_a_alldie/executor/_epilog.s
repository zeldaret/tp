lbl_804D57CC:
/* 804D57CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D57D0  7C 08 02 A6 */	mflr r0
/* 804D57D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D57D8  4B D8 D8 B4 */	b ModuleEpilog
/* 804D57DC  3C 60 80 4D */	lis r3, data_804D5D20@ha
/* 804D57E0  38 63 5D 20 */	addi r3, r3, data_804D5D20@l
/* 804D57E4  4B D8 D9 AC */	b ModuleDestructorsX
/* 804D57E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D57EC  7C 08 03 A6 */	mtlr r0
/* 804D57F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D57F4  4E 80 00 20 */	blr 
