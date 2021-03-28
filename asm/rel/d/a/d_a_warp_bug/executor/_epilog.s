lbl_80D67DEC:
/* 80D67DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D67DF0  7C 08 02 A6 */	mflr r0
/* 80D67DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67DF8  4B 4F B2 94 */	b ModuleEpilog
/* 80D67DFC  3C 60 80 D7 */	lis r3, data_80D681D8@ha
/* 80D67E00  38 63 81 D8 */	addi r3, r3, data_80D681D8@l
/* 80D67E04  4B 4F B3 8C */	b ModuleDestructorsX
/* 80D67E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D67E0C  7C 08 03 A6 */	mtlr r0
/* 80D67E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D67E14  4E 80 00 20 */	blr 
