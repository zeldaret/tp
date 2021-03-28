lbl_80B0A500:
/* 80B0A500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0A504  7C 08 02 A6 */	mflr r0
/* 80B0A508  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0A50C  7C 65 1B 78 */	mr r5, r3
/* 80B0A510  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B0A514  38 63 C1 C4 */	addi r3, r3, lit_3999@l
/* 80B0A518  90 85 06 EC */	stw r4, 0x6ec(r5)
/* 80B0A51C  38 00 01 2C */	li r0, 0x12c
/* 80B0A520  90 05 07 0C */	stw r0, 0x70c(r5)
/* 80B0A524  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80B0A528  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B0A52C  C0 03 01 7C */	lfs f0, 0x17c(r3)
/* 80B0A530  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B0A534  C0 03 01 54 */	lfs f0, 0x154(r3)
/* 80B0A538  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B0A53C  38 65 06 04 */	addi r3, r5, 0x604
/* 80B0A540  A8 05 04 E6 */	lha r0, 0x4e6(r5)
/* 80B0A544  20 00 20 00 */	subfic r0, r0, 0x2000
/* 80B0A548  7C 05 07 34 */	extsh r5, r0
/* 80B0A54C  38 C1 00 08 */	addi r6, r1, 8
/* 80B0A550  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B0A554  4B 76 68 6C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B0A558  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0A55C  7C 08 03 A6 */	mtlr r0
/* 80B0A560  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0A564  4E 80 00 20 */	blr 
