lbl_80D59BE0:
/* 80D59BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59BE4  7C 08 02 A6 */	mflr r0
/* 80D59BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59BEC  3C 60 80 D6 */	lis r3, data_80D5A6E4@ha
/* 80D59BF0  38 63 A6 E4 */	addi r3, r3, data_80D5A6E4@l
/* 80D59BF4  4B 50 95 58 */	b ModuleConstructorsX
/* 80D59BF8  4B 50 94 90 */	b ModuleProlog
/* 80D59BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59C00  7C 08 03 A6 */	mtlr r0
/* 80D59C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59C08  4E 80 00 20 */	blr 
