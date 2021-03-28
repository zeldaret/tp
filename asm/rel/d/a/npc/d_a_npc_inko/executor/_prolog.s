lbl_80A0C920:
/* 80A0C920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0C924  7C 08 02 A6 */	mflr r0
/* 80A0C928  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0C92C  3C 60 80 A1 */	lis r3, data_80A0E00C@ha
/* 80A0C930  38 63 E0 0C */	addi r3, r3, data_80A0E00C@l
/* 80A0C934  4B 85 68 18 */	b ModuleConstructorsX
/* 80A0C938  4B 85 67 50 */	b ModuleProlog
/* 80A0C93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0C940  7C 08 03 A6 */	mtlr r0
/* 80A0C944  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0C948  4E 80 00 20 */	blr 
