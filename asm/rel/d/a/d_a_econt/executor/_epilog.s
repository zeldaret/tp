lbl_805194CC:
/* 805194CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805194D0  7C 08 02 A6 */	mflr r0
/* 805194D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805194D8  4B D4 9B B4 */	b ModuleEpilog
/* 805194DC  3C 60 80 52 */	lis r3, data_80519778@ha
/* 805194E0  38 63 97 78 */	addi r3, r3, data_80519778@l
/* 805194E4  4B D4 9C AC */	b ModuleDestructorsX
/* 805194E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805194EC  7C 08 03 A6 */	mtlr r0
/* 805194F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805194F4  4E 80 00 20 */	blr 
