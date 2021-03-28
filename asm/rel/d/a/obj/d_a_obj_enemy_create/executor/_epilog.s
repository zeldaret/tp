lbl_80BE312C:
/* 80BE312C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE3130  7C 08 02 A6 */	mflr r0
/* 80BE3134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE3138  4B 67 FF 54 */	b ModuleEpilog
/* 80BE313C  3C 60 80 BE */	lis r3, data_80BE3884@ha
/* 80BE3140  38 63 38 84 */	addi r3, r3, data_80BE3884@l
/* 80BE3144  4B 68 00 4C */	b ModuleDestructorsX
/* 80BE3148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE314C  7C 08 03 A6 */	mtlr r0
/* 80BE3150  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3154  4E 80 00 20 */	blr 
