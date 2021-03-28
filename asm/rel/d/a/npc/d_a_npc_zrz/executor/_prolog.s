lbl_80B93CE0:
/* 80B93CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93CE4  7C 08 02 A6 */	mflr r0
/* 80B93CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B93CEC  3C 60 80 BA */	lis r3, data_80B9AFD8@ha
/* 80B93CF0  38 63 AF D8 */	addi r3, r3, data_80B9AFD8@l
/* 80B93CF4  4B 6C F4 58 */	b ModuleConstructorsX
/* 80B93CF8  4B 6C F3 90 */	b ModuleProlog
/* 80B93CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B93D00  7C 08 03 A6 */	mtlr r0
/* 80B93D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80B93D08  4E 80 00 20 */	blr 
