lbl_80BE9C40:
/* 80BE9C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9C44  7C 08 02 A6 */	mflr r0
/* 80BE9C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9C4C  3C 60 80 BF */	lis r3, data_80BEB4BC@ha
/* 80BE9C50  38 63 B4 BC */	addi r3, r3, data_80BEB4BC@l
/* 80BE9C54  4B 67 94 F8 */	b ModuleConstructorsX
/* 80BE9C58  4B 67 94 30 */	b ModuleProlog
/* 80BE9C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9C60  7C 08 03 A6 */	mtlr r0
/* 80BE9C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9C68  4E 80 00 20 */	blr 
