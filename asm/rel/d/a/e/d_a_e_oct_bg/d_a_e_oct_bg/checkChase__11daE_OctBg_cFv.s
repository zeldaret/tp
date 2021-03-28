lbl_80736DAC:
/* 80736DAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80736DB0  7C 08 02 A6 */	mflr r0
/* 80736DB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80736DB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80736DBC  7C 7F 1B 78 */	mr r31, r3
/* 80736DC0  88 03 0B AC */	lbz r0, 0xbac(r3)
/* 80736DC4  28 00 00 00 */	cmplwi r0, 0
/* 80736DC8  40 82 00 0C */	bne lbl_80736DD4
/* 80736DCC  38 60 00 00 */	li r3, 0
/* 80736DD0  48 00 00 4C */	b lbl_80736E1C
lbl_80736DD4:
/* 80736DD4  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80736DD8  38 81 00 08 */	addi r4, r1, 8
/* 80736DDC  4B 8E 2B E0 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80736DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80736DE4  41 82 00 10 */	beq lbl_80736DF4
/* 80736DE8  80 01 00 08 */	lwz r0, 8(r1)
/* 80736DEC  28 00 00 00 */	cmplwi r0, 0
/* 80736DF0  40 82 00 28 */	bne lbl_80736E18
lbl_80736DF4:
/* 80736DF4  38 00 00 00 */	li r0, 0
/* 80736DF8  98 1F 0B AC */	stb r0, 0xbac(r31)
/* 80736DFC  3C 60 80 74 */	lis r3, struct_8073A14C+0x25@ha
/* 80736E00  38 83 A1 71 */	addi r4, r3, struct_8073A14C+0x25@l
/* 80736E04  88 64 00 00 */	lbz r3, 0(r4)
/* 80736E08  38 03 FF FF */	addi r0, r3, -1
/* 80736E0C  98 04 00 00 */	stb r0, 0(r4)
/* 80736E10  38 60 00 00 */	li r3, 0
/* 80736E14  48 00 00 08 */	b lbl_80736E1C
lbl_80736E18:
/* 80736E18  38 60 00 01 */	li r3, 1
lbl_80736E1C:
/* 80736E1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80736E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80736E24  7C 08 03 A6 */	mtlr r0
/* 80736E28  38 21 00 20 */	addi r1, r1, 0x20
/* 80736E2C  4E 80 00 20 */	blr 
