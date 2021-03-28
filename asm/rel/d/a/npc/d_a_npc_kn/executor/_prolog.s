lbl_80A2A920:
/* 80A2A920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2A924  7C 08 02 A6 */	mflr r0
/* 80A2A928  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2A92C  3C 60 80 A4 */	lis r3, data_80A408B4@ha
/* 80A2A930  38 63 08 B4 */	addi r3, r3, data_80A408B4@l
/* 80A2A934  4B 83 88 18 */	b ModuleConstructorsX
/* 80A2A938  4B 83 87 50 */	b ModuleProlog
/* 80A2A93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2A940  7C 08 03 A6 */	mtlr r0
/* 80A2A944  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2A948  4E 80 00 20 */	blr 
