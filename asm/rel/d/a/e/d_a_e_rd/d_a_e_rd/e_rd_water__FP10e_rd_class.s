lbl_8050DAB8:
/* 8050DAB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050DABC  7C 08 02 A6 */	mflr r0
/* 8050DAC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050DAC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050DAC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8050DACC  7C 7E 1B 78 */	mr r30, r3
/* 8050DAD0  3C 80 80 52 */	lis r4, lit_4208@ha /* 0x80518584@ha */
/* 8050DAD4  3B E4 85 84 */	addi r31, r4, lit_4208@l /* 0x80518584@l */
/* 8050DAD8  38 00 00 0A */	li r0, 0xa
/* 8050DADC  B0 03 09 98 */	sth r0, 0x998(r3)
/* 8050DAE0  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8050DAE4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8050DAE8  41 82 00 CC */	beq lbl_8050DBB4
/* 8050DAEC  40 80 01 0C */	bge lbl_8050DBF8
/* 8050DAF0  2C 00 00 02 */	cmpwi r0, 2
/* 8050DAF4  40 80 01 04 */	bge lbl_8050DBF8
/* 8050DAF8  2C 00 00 00 */	cmpwi r0, 0
/* 8050DAFC  40 80 00 08 */	bge lbl_8050DB04
/* 8050DB00  48 00 00 F8 */	b lbl_8050DBF8
lbl_8050DB04:
/* 8050DB04  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050DB08  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8050DB0C  88 1E 0A 1F */	lbz r0, 0xa1f(r30)
/* 8050DB10  7C 00 07 75 */	extsb. r0, r0
/* 8050DB14  40 82 00 1C */	bne lbl_8050DB30
/* 8050DB18  38 80 00 14 */	li r4, 0x14
/* 8050DB1C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8050DB20  38 A0 00 02 */	li r5, 2
/* 8050DB24  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050DB28  4B FF 70 AD */	bl anm_init__FP10e_rd_classifUcf
/* 8050DB2C  48 00 00 18 */	b lbl_8050DB44
lbl_8050DB30:
/* 8050DB30  38 80 00 15 */	li r4, 0x15
/* 8050DB34  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8050DB38  38 A0 00 02 */	li r5, 2
/* 8050DB3C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050DB40  4B FF 70 95 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050DB44:
/* 8050DB44  38 00 00 3C */	li r0, 0x3c
/* 8050DB48  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050DB4C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050DB50  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8050DB54  D0 1E 09 EC */	stfs f0, 0x9ec(r30)
/* 8050DB58  D0 1E 09 F0 */	stfs f0, 0x9f0(r30)
/* 8050DB5C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8050DB60  D0 01 00 08 */	stfs f0, 8(r1)
/* 8050DB64  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8050DB68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8050DB6C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8050DB70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8050DB74  C0 1E 09 84 */	lfs f0, 0x984(r30)
/* 8050DB78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8050DB7C  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8050DB80  2C 00 00 00 */	cmpwi r0, 0
/* 8050DB84  40 82 00 18 */	bne lbl_8050DB9C
/* 8050DB88  38 61 00 08 */	addi r3, r1, 8
/* 8050DB8C  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 8050DB90  38 80 00 00 */	li r4, 0
/* 8050DB94  4B B1 1C E9 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 8050DB98  48 00 00 10 */	b lbl_8050DBA8
lbl_8050DB9C:
/* 8050DB9C  38 61 00 08 */	addi r3, r1, 8
/* 8050DBA0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050DBA4  4B B1 1D 69 */	bl fopKyM_createMpillar__FPC4cXyzf
lbl_8050DBA8:
/* 8050DBA8  38 00 00 0A */	li r0, 0xa
/* 8050DBAC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050DBB0  48 00 00 48 */	b lbl_8050DBF8
lbl_8050DBB4:
/* 8050DBB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050DBB8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8050DBBC  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8050DBC0  C0 3E 09 84 */	lfs f1, 0x984(r30)
/* 8050DBC4  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 8050DBC8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8050DBCC  4B D6 1E 71 */	bl cLib_addCalc2__FPffff
/* 8050DBD0  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 8050DBD4  38 80 C0 00 */	li r4, -16384
/* 8050DBD8  38 A0 00 04 */	li r5, 4
/* 8050DBDC  38 C0 04 00 */	li r6, 0x400
/* 8050DBE0  4B D6 2A 29 */	bl cLib_addCalcAngleS2__FPssss
/* 8050DBE4  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050DBE8  2C 00 00 00 */	cmpwi r0, 0
/* 8050DBEC  40 82 00 0C */	bne lbl_8050DBF8
/* 8050DBF0  7F C3 F3 78 */	mr r3, r30
/* 8050DBF4  4B FF D6 B5 */	bl rd_disappear__FP10e_rd_class
lbl_8050DBF8:
/* 8050DBF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050DBFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8050DC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050DC04  7C 08 03 A6 */	mtlr r0
/* 8050DC08  38 21 00 20 */	addi r1, r1, 0x20
/* 8050DC0C  4E 80 00 20 */	blr 
