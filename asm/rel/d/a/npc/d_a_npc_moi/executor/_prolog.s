lbl_80A73E60:
/* 80A73E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73E64  7C 08 02 A6 */	mflr r0
/* 80A73E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73E6C  3C 60 80 A8 */	lis r3, data_80A7AEDC@ha
/* 80A73E70  38 63 AE DC */	addi r3, r3, data_80A7AEDC@l
/* 80A73E74  4B 7E F2 D8 */	b ModuleConstructorsX
/* 80A73E78  4B 7E F2 10 */	b ModuleProlog
/* 80A73E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A73E80  7C 08 03 A6 */	mtlr r0
/* 80A73E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73E88  4E 80 00 20 */	blr 
