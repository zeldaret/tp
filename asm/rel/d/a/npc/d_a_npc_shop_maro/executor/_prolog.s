lbl_80AEBDE0:
/* 80AEBDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBDE4  7C 08 02 A6 */	mflr r0
/* 80AEBDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBDEC  3C 60 80 AF */	lis r3, data_80AEC910@ha
/* 80AEBDF0  38 63 C9 10 */	addi r3, r3, data_80AEC910@l
/* 80AEBDF4  4B 77 73 58 */	b ModuleConstructorsX
/* 80AEBDF8  4B 77 72 90 */	b ModuleProlog
/* 80AEBDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBE00  7C 08 03 A6 */	mtlr r0
/* 80AEBE04  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBE08  4E 80 00 20 */	blr 
