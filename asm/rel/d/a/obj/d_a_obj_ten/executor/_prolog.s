lbl_80D086E0:
/* 80D086E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D086E4  7C 08 02 A6 */	mflr r0
/* 80D086E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D086EC  3C 60 80 D1 */	lis r3, data_80D0B8DC@ha
/* 80D086F0  38 63 B8 DC */	addi r3, r3, data_80D0B8DC@l
/* 80D086F4  4B 55 AA 58 */	b ModuleConstructorsX
/* 80D086F8  4B 55 A9 90 */	b ModuleProlog
/* 80D086FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D08700  7C 08 03 A6 */	mtlr r0
/* 80D08704  38 21 00 10 */	addi r1, r1, 0x10
/* 80D08708  4E 80 00 20 */	blr 
