lbl_80D588EC:
/* 80D588EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D588F0  7C 08 02 A6 */	mflr r0
/* 80D588F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D588F8  4B 50 A7 94 */	b ModuleEpilog
/* 80D588FC  3C 60 80 D6 */	lis r3, data_80D594D8@ha
/* 80D58900  38 63 94 D8 */	addi r3, r3, data_80D594D8@l
/* 80D58904  4B 50 A8 8C */	b ModuleDestructorsX
/* 80D58908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5890C  7C 08 03 A6 */	mtlr r0
/* 80D58910  38 21 00 10 */	addi r1, r1, 0x10
/* 80D58914  4E 80 00 20 */	blr 
