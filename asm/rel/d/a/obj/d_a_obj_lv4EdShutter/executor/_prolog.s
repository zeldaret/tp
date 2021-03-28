lbl_80C5DCC0:
/* 80C5DCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5DCC4  7C 08 02 A6 */	mflr r0
/* 80C5DCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5DCCC  3C 60 80 C6 */	lis r3, data_80C5E8C8@ha
/* 80C5DCD0  38 63 E8 C8 */	addi r3, r3, data_80C5E8C8@l
/* 80C5DCD4  4B 60 54 78 */	b ModuleConstructorsX
/* 80C5DCD8  4B 60 53 B0 */	b ModuleProlog
/* 80C5DCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5DCE0  7C 08 03 A6 */	mtlr r0
/* 80C5DCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5DCE8  4E 80 00 20 */	blr 
