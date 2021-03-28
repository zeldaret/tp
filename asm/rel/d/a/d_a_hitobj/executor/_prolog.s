lbl_8046B2E0:
/* 8046B2E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046B2E4  7C 08 02 A6 */	mflr r0
/* 8046B2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046B2EC  3C 60 80 47 */	lis r3, data_8046B5CC@ha
/* 8046B2F0  38 63 B5 CC */	addi r3, r3, data_8046B5CC@l
/* 8046B2F4  4B DF 7E 58 */	b ModuleConstructorsX
/* 8046B2F8  4B DF 7D 90 */	b ModuleProlog
/* 8046B2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046B300  7C 08 03 A6 */	mtlr r0
/* 8046B304  38 21 00 10 */	addi r1, r1, 0x10
/* 8046B308  4E 80 00 20 */	blr 
