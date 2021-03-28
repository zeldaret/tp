lbl_80D36220:
/* 80D36220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D36224  7C 08 02 A6 */	mflr r0
/* 80D36228  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3622C  3C 60 80 D3 */	lis r3, data_80D36A04@ha
/* 80D36230  38 63 6A 04 */	addi r3, r3, data_80D36A04@l
/* 80D36234  4B 52 CF 18 */	b ModuleConstructorsX
/* 80D36238  4B 52 CE 50 */	b ModuleProlog
/* 80D3623C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D36240  7C 08 03 A6 */	mtlr r0
/* 80D36244  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36248  4E 80 00 20 */	blr 
