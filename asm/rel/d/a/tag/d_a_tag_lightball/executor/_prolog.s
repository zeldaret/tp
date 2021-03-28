lbl_80D5A780:
/* 80D5A780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5A784  7C 08 02 A6 */	mflr r0
/* 80D5A788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5A78C  3C 60 80 D6 */	lis r3, data_80D5AC70@ha
/* 80D5A790  38 63 AC 70 */	addi r3, r3, data_80D5AC70@l
/* 80D5A794  4B 50 89 B8 */	b ModuleConstructorsX
/* 80D5A798  4B 50 88 F0 */	b ModuleProlog
/* 80D5A79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5A7A0  7C 08 03 A6 */	mtlr r0
/* 80D5A7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5A7A8  4E 80 00 20 */	blr 
