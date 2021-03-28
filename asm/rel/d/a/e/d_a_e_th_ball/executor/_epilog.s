lbl_807B48CC:
/* 807B48CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B48D0  7C 08 02 A6 */	mflr r0
/* 807B48D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B48D8  4B AA E7 B4 */	b ModuleEpilog
/* 807B48DC  3C 60 80 7B */	lis r3, data_807B7EB4@ha
/* 807B48E0  38 63 7E B4 */	addi r3, r3, data_807B7EB4@l
/* 807B48E4  4B AA E8 AC */	b ModuleDestructorsX
/* 807B48E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B48EC  7C 08 03 A6 */	mtlr r0
/* 807B48F0  38 21 00 10 */	addi r1, r1, 0x10
/* 807B48F4  4E 80 00 20 */	blr 
