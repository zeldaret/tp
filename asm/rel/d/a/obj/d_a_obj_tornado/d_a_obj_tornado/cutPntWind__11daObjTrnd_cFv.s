lbl_80D1BA0C:
/* 80D1BA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1BA10  7C 08 02 A6 */	mflr r0
/* 80D1BA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1BA18  38 63 07 40 */	addi r3, r3, 0x740
/* 80D1BA1C  4B 33 F4 3C */	b dKyw_pntwind_cut__FP14WIND_INFLUENCE
/* 80D1BA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1BA24  7C 08 03 A6 */	mtlr r0
/* 80D1BA28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1BA2C  4E 80 00 20 */	blr 
