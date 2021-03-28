lbl_80C79D60:
/* 80C79D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C79D64  7C 08 02 A6 */	mflr r0
/* 80C79D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79D6C  3C 60 80 C8 */	lis r3, data_80C7C604@ha
/* 80C79D70  38 63 C6 04 */	addi r3, r3, data_80C7C604@l
/* 80C79D74  4B 5E 93 D8 */	b ModuleConstructorsX
/* 80C79D78  4B 5E 93 10 */	b ModuleProlog
/* 80C79D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C79D80  7C 08 03 A6 */	mtlr r0
/* 80C79D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79D88  4E 80 00 20 */	blr 
