lbl_80CB85E0:
/* 80CB85E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB85E4  7C 08 02 A6 */	mflr r0
/* 80CB85E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB85EC  3C 60 80 CC */	lis r3, data_80CB8CF8@ha
/* 80CB85F0  38 63 8C F8 */	addi r3, r3, data_80CB8CF8@l
/* 80CB85F4  4B 5A AB 58 */	b ModuleConstructorsX
/* 80CB85F8  4B 5A AA 90 */	b ModuleProlog
/* 80CB85FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8600  7C 08 03 A6 */	mtlr r0
/* 80CB8604  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8608  4E 80 00 20 */	blr 
