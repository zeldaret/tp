lbl_80D1C54C:
/* 80D1C54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C550  7C 08 02 A6 */	mflr r0
/* 80D1C554  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C558  38 63 07 3C */	addi r3, r3, 0x73c
/* 80D1C55C  4B 33 E8 FC */	b dKyw_pntwind_cut__FP14WIND_INFLUENCE
/* 80D1C560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C564  7C 08 03 A6 */	mtlr r0
/* 80D1C568  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C56C  4E 80 00 20 */	blr 
