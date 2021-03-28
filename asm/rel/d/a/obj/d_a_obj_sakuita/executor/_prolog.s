lbl_80CC4680:
/* 80CC4680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4684  7C 08 02 A6 */	mflr r0
/* 80CC4688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC468C  3C 60 80 CC */	lis r3, data_80CC50AC@ha
/* 80CC4690  38 63 50 AC */	addi r3, r3, data_80CC50AC@l
/* 80CC4694  4B 59 EA B8 */	b ModuleConstructorsX
/* 80CC4698  4B 59 E9 F0 */	b ModuleProlog
/* 80CC469C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC46A0  7C 08 03 A6 */	mtlr r0
/* 80CC46A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC46A8  4E 80 00 20 */	blr 
