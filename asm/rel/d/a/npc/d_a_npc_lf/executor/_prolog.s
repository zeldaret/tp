lbl_80A69A80:
/* 80A69A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A69A84  7C 08 02 A6 */	mflr r0
/* 80A69A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A69A8C  3C 60 80 A7 */	lis r3, data_80A6A968@ha
/* 80A69A90  38 63 A9 68 */	addi r3, r3, data_80A6A968@l
/* 80A69A94  4B 7F 96 B8 */	b ModuleConstructorsX
/* 80A69A98  4B 7F 95 F0 */	b ModuleProlog
/* 80A69A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A69AA0  7C 08 03 A6 */	mtlr r0
/* 80A69AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A69AA8  4E 80 00 20 */	blr 
