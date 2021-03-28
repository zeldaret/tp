lbl_80CA84E0:
/* 80CA84E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA84E4  7C 08 02 A6 */	mflr r0
/* 80CA84E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA84EC  3C 60 80 CB */	lis r3, data_80CA9B64@ha
/* 80CA84F0  38 63 9B 64 */	addi r3, r3, data_80CA9B64@l
/* 80CA84F4  4B 5B AC 58 */	b ModuleConstructorsX
/* 80CA84F8  4B 5B AB 90 */	b ModuleProlog
/* 80CA84FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8500  7C 08 03 A6 */	mtlr r0
/* 80CA8504  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8508  4E 80 00 20 */	blr 
