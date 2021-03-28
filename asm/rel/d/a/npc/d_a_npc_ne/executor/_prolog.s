lbl_80A88BE0:
/* 80A88BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A88BE4  7C 08 02 A6 */	mflr r0
/* 80A88BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A88BEC  3C 60 80 A9 */	lis r3, data_80A92408@ha
/* 80A88BF0  38 63 24 08 */	addi r3, r3, data_80A92408@l
/* 80A88BF4  4B 7D A5 58 */	b ModuleConstructorsX
/* 80A88BF8  4B 7D A4 90 */	b ModuleProlog
/* 80A88BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A88C00  7C 08 03 A6 */	mtlr r0
/* 80A88C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80A88C08  4E 80 00 20 */	blr 
