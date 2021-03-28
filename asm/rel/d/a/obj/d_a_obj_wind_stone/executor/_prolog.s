lbl_80D37980:
/* 80D37980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D37984  7C 08 02 A6 */	mflr r0
/* 80D37988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3798C  3C 60 80 D4 */	lis r3, data_80D38600@ha
/* 80D37990  38 63 86 00 */	addi r3, r3, data_80D38600@l
/* 80D37994  4B 52 B7 B8 */	b ModuleConstructorsX
/* 80D37998  4B 52 B6 F0 */	b ModuleProlog
/* 80D3799C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D379A0  7C 08 03 A6 */	mtlr r0
/* 80D379A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D379A8  4E 80 00 20 */	blr 
