lbl_80D595E0:
/* 80D595E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D595E4  7C 08 02 A6 */	mflr r0
/* 80D595E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D595EC  3C 60 80 D6 */	lis r3, data_80D59718@ha
/* 80D595F0  38 63 97 18 */	addi r3, r3, data_80D59718@l
/* 80D595F4  4B 50 9B 58 */	b ModuleConstructorsX
/* 80D595F8  4B 50 9A 90 */	b ModuleProlog
/* 80D595FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59600  7C 08 03 A6 */	mtlr r0
/* 80D59604  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59608  4E 80 00 20 */	blr 
