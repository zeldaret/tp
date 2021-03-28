lbl_80741E00:
/* 80741E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80741E04  7C 08 02 A6 */	mflr r0
/* 80741E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80741E0C  3C 60 80 75 */	lis r3, data_8074BF28@ha
/* 80741E10  38 63 BF 28 */	addi r3, r3, data_8074BF28@l
/* 80741E14  4B B2 13 38 */	b ModuleConstructorsX
/* 80741E18  4B B2 12 70 */	b ModuleProlog
/* 80741E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80741E20  7C 08 03 A6 */	mtlr r0
/* 80741E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80741E28  4E 80 00 20 */	blr 
