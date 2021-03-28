lbl_80D2C5E0:
/* 80D2C5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C5E4  7C 08 02 A6 */	mflr r0
/* 80D2C5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C5EC  3C 60 80 D3 */	lis r3, data_80D2E75C@ha
/* 80D2C5F0  38 63 E7 5C */	addi r3, r3, data_80D2E75C@l
/* 80D2C5F4  4B 53 6B 58 */	b ModuleConstructorsX
/* 80D2C5F8  4B 53 6A 90 */	b ModuleProlog
/* 80D2C5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C600  7C 08 03 A6 */	mtlr r0
/* 80D2C604  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C608  4E 80 00 20 */	blr 
