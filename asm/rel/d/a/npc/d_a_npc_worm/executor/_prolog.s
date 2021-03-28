lbl_80B2DE00:
/* 80B2DE00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2DE04  7C 08 02 A6 */	mflr r0
/* 80B2DE08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2DE0C  3C 60 80 B3 */	lis r3, data_80B2F078@ha
/* 80B2DE10  38 63 F0 78 */	addi r3, r3, data_80B2F078@l
/* 80B2DE14  4B 73 53 38 */	b ModuleConstructorsX
/* 80B2DE18  4B 73 52 70 */	b ModuleProlog
/* 80B2DE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2DE20  7C 08 03 A6 */	mtlr r0
/* 80B2DE24  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2DE28  4E 80 00 20 */	blr 
