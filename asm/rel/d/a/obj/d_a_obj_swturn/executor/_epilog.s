lbl_80D00B8C:
/* 80D00B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00B90  7C 08 02 A6 */	mflr r0
/* 80D00B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00B98  4B 56 24 F4 */	b ModuleEpilog
/* 80D00B9C  3C 60 80 D0 */	lis r3, data_80D02068@ha
/* 80D00BA0  38 63 20 68 */	addi r3, r3, data_80D02068@l
/* 80D00BA4  4B 56 25 EC */	b ModuleDestructorsX
/* 80D00BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00BAC  7C 08 03 A6 */	mtlr r0
/* 80D00BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00BB4  4E 80 00 20 */	blr 
