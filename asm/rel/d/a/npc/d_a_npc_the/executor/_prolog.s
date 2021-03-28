lbl_80AF75E0:
/* 80AF75E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF75E4  7C 08 02 A6 */	mflr r0
/* 80AF75E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF75EC  3C 60 80 B0 */	lis r3, data_80AFBDF8@ha
/* 80AF75F0  38 63 BD F8 */	addi r3, r3, data_80AFBDF8@l
/* 80AF75F4  4B 76 BB 58 */	b ModuleConstructorsX
/* 80AF75F8  4B 76 BA 90 */	b ModuleProlog
/* 80AF75FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF7600  7C 08 03 A6 */	mtlr r0
/* 80AF7604  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF7608  4E 80 00 20 */	blr 
