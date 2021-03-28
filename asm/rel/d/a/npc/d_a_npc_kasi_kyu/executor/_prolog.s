lbl_80A218E0:
/* 80A218E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A218E4  7C 08 02 A6 */	mflr r0
/* 80A218E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A218EC  3C 60 80 A2 */	lis r3, data_80A258A4@ha
/* 80A218F0  38 63 58 A4 */	addi r3, r3, data_80A258A4@l
/* 80A218F4  4B 84 18 58 */	b ModuleConstructorsX
/* 80A218F8  4B 84 17 90 */	b ModuleProlog
/* 80A218FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A21900  7C 08 03 A6 */	mtlr r0
/* 80A21904  38 21 00 10 */	addi r1, r1, 0x10
/* 80A21908  4E 80 00 20 */	blr 
