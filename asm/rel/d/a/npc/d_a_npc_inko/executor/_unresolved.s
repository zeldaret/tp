lbl_80A0C978:
/* 80A0C978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0C97C  7C 08 02 A6 */	mflr r0
/* 80A0C980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0C984  4B 85 67 0C */	b ModuleUnresolved
/* 80A0C988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0C98C  7C 08 03 A6 */	mtlr r0
/* 80A0C990  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0C994  4E 80 00 20 */	blr 
