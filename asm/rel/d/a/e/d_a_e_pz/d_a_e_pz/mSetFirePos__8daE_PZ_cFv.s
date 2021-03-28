lbl_80758DA4:
/* 80758DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80758DA8  7C 08 02 A6 */	mflr r0
/* 80758DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80758DB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80758DB4  7C 7F 1B 78 */	mr r31, r3
/* 80758DB8  80 63 04 A4 */	lwz r3, 0x4a4(r3)
/* 80758DBC  38 81 00 08 */	addi r4, r1, 8
/* 80758DC0  4B 8C 0B FC */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80758DC4  2C 03 00 00 */	cmpwi r3, 0
/* 80758DC8  41 82 00 28 */	beq lbl_80758DF0
/* 80758DCC  80 61 00 08 */	lwz r3, 8(r1)
/* 80758DD0  28 03 00 00 */	cmplwi r3, 0
/* 80758DD4  41 82 00 1C */	beq lbl_80758DF0
/* 80758DD8  C0 1F 07 A8 */	lfs f0, 0x7a8(r31)
/* 80758DDC  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80758DE0  C0 1F 07 AC */	lfs f0, 0x7ac(r31)
/* 80758DE4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80758DE8  C0 1F 07 B0 */	lfs f0, 0x7b0(r31)
/* 80758DEC  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_80758DF0:
/* 80758DF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80758DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80758DF8  7C 08 03 A6 */	mtlr r0
/* 80758DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80758E00  4E 80 00 20 */	blr 
