lbl_8072C4E0:
/* 8072C4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072C4E4  7C 08 02 A6 */	mflr r0
/* 8072C4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072C4EC  3C 60 80 73 */	lis r3, data_80735B14@ha
/* 8072C4F0  38 63 5B 14 */	addi r3, r3, data_80735B14@l
/* 8072C4F4  4B B3 6C 58 */	b ModuleConstructorsX
/* 8072C4F8  4B B3 6B 90 */	b ModuleProlog
/* 8072C4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072C500  7C 08 03 A6 */	mtlr r0
/* 8072C504  38 21 00 10 */	addi r1, r1, 0x10
/* 8072C508  4E 80 00 20 */	blr 
