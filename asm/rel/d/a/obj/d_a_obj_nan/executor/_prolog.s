lbl_80CA04C0:
/* 80CA04C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA04C4  7C 08 02 A6 */	mflr r0
/* 80CA04C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA04CC  3C 60 80 CA */	lis r3, data_80CA31A8@ha
/* 80CA04D0  38 63 31 A8 */	addi r3, r3, data_80CA31A8@l
/* 80CA04D4  4B 5C 2C 78 */	b ModuleConstructorsX
/* 80CA04D8  4B 5C 2B B0 */	b ModuleProlog
/* 80CA04DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA04E0  7C 08 03 A6 */	mtlr r0
/* 80CA04E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA04E8  4E 80 00 20 */	blr 
