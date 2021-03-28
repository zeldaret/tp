lbl_80D3B900:
/* 80D3B900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B904  7C 08 02 A6 */	mflr r0
/* 80D3B908  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B90C  3C 60 80 D4 */	lis r3, data_80D3BF18@ha
/* 80D3B910  38 63 BF 18 */	addi r3, r3, data_80D3BF18@l
/* 80D3B914  4B 52 78 38 */	b ModuleConstructorsX
/* 80D3B918  4B 52 77 70 */	b ModuleProlog
/* 80D3B91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B920  7C 08 03 A6 */	mtlr r0
/* 80D3B924  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B928  4E 80 00 20 */	blr 
