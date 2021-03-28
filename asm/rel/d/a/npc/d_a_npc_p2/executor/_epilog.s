lbl_80A92BAC:
/* 80A92BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A92BB0  7C 08 02 A6 */	mflr r0
/* 80A92BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A92BB8  4B 7D 04 D4 */	b ModuleEpilog
/* 80A92BBC  3C 60 80 A9 */	lis r3, data_80A92C24@ha
/* 80A92BC0  38 63 2C 24 */	addi r3, r3, data_80A92C24@l
/* 80A92BC4  4B 7D 05 CC */	b ModuleDestructorsX
/* 80A92BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A92BCC  7C 08 03 A6 */	mtlr r0
/* 80A92BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A92BD4  4E 80 00 20 */	blr 
