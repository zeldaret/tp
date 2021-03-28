lbl_80D5B8CC:
/* 80D5B8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B8D0  7C 08 02 A6 */	mflr r0
/* 80D5B8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B8D8  4B 50 77 B4 */	b ModuleEpilog
/* 80D5B8DC  3C 60 80 D6 */	lis r3, data_80D5BD34@ha
/* 80D5B8E0  38 63 BD 34 */	addi r3, r3, data_80D5BD34@l
/* 80D5B8E4  4B 50 78 AC */	b ModuleDestructorsX
/* 80D5B8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B8EC  7C 08 03 A6 */	mtlr r0
/* 80D5B8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B8F4  4E 80 00 20 */	blr 
