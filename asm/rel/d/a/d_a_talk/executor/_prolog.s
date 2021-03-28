lbl_80D66300:
/* 80D66300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66304  7C 08 02 A6 */	mflr r0
/* 80D66308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6630C  3C 60 80 D6 */	lis r3, data_80D6676C@ha
/* 80D66310  38 63 67 6C */	addi r3, r3, data_80D6676C@l
/* 80D66314  4B 4F CE 38 */	b ModuleConstructorsX
/* 80D66318  4B 4F CD 70 */	b ModuleProlog
/* 80D6631C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D66320  7C 08 03 A6 */	mtlr r0
/* 80D66324  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66328  4E 80 00 20 */	blr 
