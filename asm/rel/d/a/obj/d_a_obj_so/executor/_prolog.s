lbl_80CE02E0:
/* 80CE02E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE02E4  7C 08 02 A6 */	mflr r0
/* 80CE02E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE02EC  3C 60 80 CE */	lis r3, data_80CE39D4@ha
/* 80CE02F0  38 63 39 D4 */	addi r3, r3, data_80CE39D4@l
/* 80CE02F4  4B 58 2E 58 */	b ModuleConstructorsX
/* 80CE02F8  4B 58 2D 90 */	b ModuleProlog
/* 80CE02FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE0300  7C 08 03 A6 */	mtlr r0
/* 80CE0304  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE0308  4E 80 00 20 */	blr 
