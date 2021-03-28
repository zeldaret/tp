lbl_80855A40:
/* 80855A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80855A44  7C 08 02 A6 */	mflr r0
/* 80855A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80855A4C  3C 60 80 85 */	lis r3, data_80855DF4@ha
/* 80855A50  38 63 5D F4 */	addi r3, r3, data_80855DF4@l
/* 80855A54  4B A0 D6 F8 */	b ModuleConstructorsX
/* 80855A58  4B A0 D6 30 */	b ModuleProlog
/* 80855A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80855A60  7C 08 03 A6 */	mtlr r0
/* 80855A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80855A68  4E 80 00 20 */	blr 
