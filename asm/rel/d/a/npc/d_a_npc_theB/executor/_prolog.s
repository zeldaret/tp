lbl_80AFC680:
/* 80AFC680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFC684  7C 08 02 A6 */	mflr r0
/* 80AFC688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFC68C  3C 60 80 B0 */	lis r3, data_80B00D58@ha
/* 80AFC690  38 63 0D 58 */	addi r3, r3, data_80B00D58@l
/* 80AFC694  4B 76 6A B8 */	b ModuleConstructorsX
/* 80AFC698  4B 76 69 F0 */	b ModuleProlog
/* 80AFC69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFC6A0  7C 08 03 A6 */	mtlr r0
/* 80AFC6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFC6A8  4E 80 00 20 */	blr 
