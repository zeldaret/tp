lbl_80CA9E20:
/* 80CA9E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9E24  7C 08 02 A6 */	mflr r0
/* 80CA9E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9E2C  3C 60 80 CB */	lis r3, data_80CAAB18@ha
/* 80CA9E30  38 63 AB 18 */	addi r3, r3, data_80CAAB18@l
/* 80CA9E34  4B 5B 93 18 */	b ModuleConstructorsX
/* 80CA9E38  4B 5B 92 50 */	b ModuleProlog
/* 80CA9E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9E40  7C 08 03 A6 */	mtlr r0
/* 80CA9E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA9E48  4E 80 00 20 */	blr 
