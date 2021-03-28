lbl_80CEF2C0:
/* 80CEF2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF2C4  7C 08 02 A6 */	mflr r0
/* 80CEF2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF2CC  3C 60 80 CF */	lis r3, data_80CEFE88@ha
/* 80CEF2D0  38 63 FE 88 */	addi r3, r3, data_80CEFE88@l
/* 80CEF2D4  4B 57 3E 78 */	b ModuleConstructorsX
/* 80CEF2D8  4B 57 3D B0 */	b ModuleProlog
/* 80CEF2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF2E0  7C 08 03 A6 */	mtlr r0
/* 80CEF2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF2E8  4E 80 00 20 */	blr 
