lbl_80581680:
/* 80581680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80581684  7C 08 02 A6 */	mflr r0
/* 80581688  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058168C  3C 60 80 58 */	lis r3, data_8058560C@ha
/* 80581690  38 63 56 0C */	addi r3, r3, data_8058560C@l
/* 80581694  4B CE 1A B8 */	b ModuleConstructorsX
/* 80581698  4B CE 19 F0 */	b ModuleProlog
/* 8058169C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805816A0  7C 08 03 A6 */	mtlr r0
/* 805816A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805816A8  4E 80 00 20 */	blr 
