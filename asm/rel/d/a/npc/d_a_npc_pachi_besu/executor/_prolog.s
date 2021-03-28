lbl_80A92C80:
/* 80A92C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A92C84  7C 08 02 A6 */	mflr r0
/* 80A92C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A92C8C  3C 60 80 A9 */	lis r3, data_80A96A58@ha
/* 80A92C90  38 63 6A 58 */	addi r3, r3, data_80A96A58@l
/* 80A92C94  4B 7D 04 B8 */	b ModuleConstructorsX
/* 80A92C98  4B 7D 03 F0 */	b ModuleProlog
/* 80A92C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A92CA0  7C 08 03 A6 */	mtlr r0
/* 80A92CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A92CA8  4E 80 00 20 */	blr 
