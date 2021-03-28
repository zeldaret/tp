lbl_80C28280:
/* 80C28280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C28284  7C 08 02 A6 */	mflr r0
/* 80C28288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2828C  3C 60 80 C3 */	lis r3, data_80C29224@ha
/* 80C28290  38 63 92 24 */	addi r3, r3, data_80C29224@l
/* 80C28294  4B 63 AE B8 */	b ModuleConstructorsX
/* 80C28298  4B 63 AD F0 */	b ModuleProlog
/* 80C2829C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C282A0  7C 08 03 A6 */	mtlr r0
/* 80C282A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C282A8  4E 80 00 20 */	blr 
