lbl_80592E20:
/* 80592E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592E24  7C 08 02 A6 */	mflr r0
/* 80592E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592E2C  3C 60 80 59 */	lis r3, data_80593464@ha
/* 80592E30  38 63 34 64 */	addi r3, r3, data_80593464@l
/* 80592E34  4B CD 03 18 */	b ModuleConstructorsX
/* 80592E38  4B CD 02 50 */	b ModuleProlog
/* 80592E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592E40  7C 08 03 A6 */	mtlr r0
/* 80592E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80592E48  4E 80 00 20 */	blr 
