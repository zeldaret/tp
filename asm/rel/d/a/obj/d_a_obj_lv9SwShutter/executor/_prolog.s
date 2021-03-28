lbl_80C8CDC0:
/* 80C8CDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CDC4  7C 08 02 A6 */	mflr r0
/* 80C8CDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CDCC  3C 60 80 C9 */	lis r3, data_80C8D7C8@ha
/* 80C8CDD0  38 63 D7 C8 */	addi r3, r3, data_80C8D7C8@l
/* 80C8CDD4  4B 5D 63 78 */	b ModuleConstructorsX
/* 80C8CDD8  4B 5D 62 B0 */	b ModuleProlog
/* 80C8CDDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CDE0  7C 08 03 A6 */	mtlr r0
/* 80C8CDE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CDE8  4E 80 00 20 */	blr 
