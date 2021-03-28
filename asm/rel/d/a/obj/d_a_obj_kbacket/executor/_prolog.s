lbl_80585D60:
/* 80585D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585D64  7C 08 02 A6 */	mflr r0
/* 80585D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585D6C  3C 60 80 58 */	lis r3, data_80587D70@ha
/* 80585D70  38 63 7D 70 */	addi r3, r3, data_80587D70@l
/* 80585D74  4B CD D3 D8 */	b ModuleConstructorsX
/* 80585D78  4B CD D3 10 */	b ModuleProlog
/* 80585D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585D80  7C 08 03 A6 */	mtlr r0
/* 80585D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80585D88  4E 80 00 20 */	blr 
