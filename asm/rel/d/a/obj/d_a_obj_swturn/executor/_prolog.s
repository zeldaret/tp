lbl_80D00B60:
/* 80D00B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00B64  7C 08 02 A6 */	mflr r0
/* 80D00B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00B6C  3C 60 80 D0 */	lis r3, data_80D02064@ha
/* 80D00B70  38 63 20 64 */	addi r3, r3, data_80D02064@l
/* 80D00B74  4B 56 25 D8 */	b ModuleConstructorsX
/* 80D00B78  4B 56 25 10 */	b ModuleProlog
/* 80D00B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00B80  7C 08 03 A6 */	mtlr r0
/* 80D00B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00B88  4E 80 00 20 */	blr 
