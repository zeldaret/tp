lbl_80A73D60:
/* 80A73D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73D64  7C 08 02 A6 */	mflr r0
/* 80A73D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73D6C  3C 60 80 A7 */	lis r3, data_80A73E00@ha
/* 80A73D70  38 63 3E 00 */	addi r3, r3, data_80A73E00@l
/* 80A73D74  4B 7E F3 D8 */	b ModuleConstructorsX
/* 80A73D78  4B 7E F3 10 */	b ModuleProlog
/* 80A73D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A73D80  7C 08 03 A6 */	mtlr r0
/* 80A73D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73D88  4E 80 00 20 */	blr 
