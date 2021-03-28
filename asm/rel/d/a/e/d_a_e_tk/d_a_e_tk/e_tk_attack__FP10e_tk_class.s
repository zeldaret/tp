lbl_807B8D78:
/* 807B8D78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B8D7C  7C 08 02 A6 */	mflr r0
/* 807B8D80  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B8D84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807B8D88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807B8D8C  7C 7F 1B 78 */	mr r31, r3
/* 807B8D90  3C 80 80 7C */	lis r4, lit_3762@ha
/* 807B8D94  3B C4 A2 6C */	addi r30, r4, lit_3762@l
/* 807B8D98  A8 03 06 78 */	lha r0, 0x678(r3)
/* 807B8D9C  2C 00 00 01 */	cmpwi r0, 1
/* 807B8DA0  41 82 00 40 */	beq lbl_807B8DE0
/* 807B8DA4  40 80 00 10 */	bge lbl_807B8DB4
/* 807B8DA8  2C 00 00 00 */	cmpwi r0, 0
/* 807B8DAC  40 80 00 14 */	bge lbl_807B8DC0
/* 807B8DB0  48 00 01 8C */	b lbl_807B8F3C
lbl_807B8DB4:
/* 807B8DB4  2C 00 00 03 */	cmpwi r0, 3
/* 807B8DB8  40 80 01 84 */	bge lbl_807B8F3C
/* 807B8DBC  48 00 01 28 */	b lbl_807B8EE4
lbl_807B8DC0:
/* 807B8DC0  38 00 00 01 */	li r0, 1
/* 807B8DC4  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 807B8DC8  38 80 00 05 */	li r4, 5
/* 807B8DCC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 807B8DD0  38 A0 00 00 */	li r5, 0
/* 807B8DD4  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 807B8DD8  4B FF F4 5D */	bl anm_init__FP10e_tk_classifUcf
/* 807B8DDC  48 00 01 60 */	b lbl_807B8F3C
lbl_807B8DE0:
/* 807B8DE0  4B FF F6 49 */	bl pl_y_check__FP10e_tk_class
/* 807B8DE4  2C 03 00 00 */	cmpwi r3, 0
/* 807B8DE8  41 82 00 88 */	beq lbl_807B8E70
/* 807B8DEC  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 807B8DF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807B8DF4  FC 00 00 1E */	fctiwz f0, f0
/* 807B8DF8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807B8DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B8E00  2C 00 00 18 */	cmpwi r0, 0x18
/* 807B8E04  40 82 00 48 */	bne lbl_807B8E4C
/* 807B8E08  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807B8E0C  7C 07 07 74 */	extsb r7, r0
/* 807B8E10  38 00 00 00 */	li r0, 0
/* 807B8E14  90 01 00 08 */	stw r0, 8(r1)
/* 807B8E18  38 60 01 D2 */	li r3, 0x1d2
/* 807B8E1C  28 1F 00 00 */	cmplwi r31, 0
/* 807B8E20  41 82 00 0C */	beq lbl_807B8E2C
/* 807B8E24  80 9F 00 04 */	lwz r4, 4(r31)
/* 807B8E28  48 00 00 08 */	b lbl_807B8E30
lbl_807B8E2C:
/* 807B8E2C  38 80 FF FF */	li r4, -1
lbl_807B8E30:
/* 807B8E30  38 A0 00 00 */	li r5, 0
/* 807B8E34  38 DF 05 38 */	addi r6, r31, 0x538
/* 807B8E38  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 807B8E3C  39 20 00 00 */	li r9, 0
/* 807B8E40  39 40 FF FF */	li r10, -1
/* 807B8E44  4B 86 10 AC */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 807B8E48  90 7F 06 AC */	stw r3, 0x6ac(r31)
lbl_807B8E4C:
/* 807B8E4C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 807B8E50  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807B8E54  FC 00 00 1E */	fctiwz f0, f0
/* 807B8E58  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807B8E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B8E60  2C 00 00 1C */	cmpwi r0, 0x1c
/* 807B8E64  40 82 00 0C */	bne lbl_807B8E70
/* 807B8E68  38 00 00 01 */	li r0, 1
/* 807B8E6C  98 1F 06 A1 */	stb r0, 0x6a1(r31)
lbl_807B8E70:
/* 807B8E70  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 807B8E74  38 80 00 01 */	li r4, 1
/* 807B8E78  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807B8E7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B8E80  40 82 00 18 */	bne lbl_807B8E98
/* 807B8E84  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 807B8E88  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807B8E8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807B8E90  41 82 00 08 */	beq lbl_807B8E98
/* 807B8E94  38 80 00 00 */	li r4, 0
lbl_807B8E98:
/* 807B8E98  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807B8E9C  41 82 00 A0 */	beq lbl_807B8F3C
/* 807B8EA0  7F E3 FB 78 */	mr r3, r31
/* 807B8EA4  38 80 00 0A */	li r4, 0xa
/* 807B8EA8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807B8EAC  38 A0 00 02 */	li r5, 2
/* 807B8EB0  FC 40 08 90 */	fmr f2, f1
/* 807B8EB4  4B FF F3 81 */	bl anm_init__FP10e_tk_classifUcf
/* 807B8EB8  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 807B8EBC  4B AA EA 98 */	b cM_rndF__Ff
/* 807B8EC0  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807B8EC4  EC 00 08 2A */	fadds f0, f0, f1
/* 807B8EC8  FC 00 00 1E */	fctiwz f0, f0
/* 807B8ECC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807B8ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B8ED4  B0 1F 06 96 */	sth r0, 0x696(r31)
/* 807B8ED8  38 00 00 02 */	li r0, 2
/* 807B8EDC  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 807B8EE0  48 00 00 5C */	b lbl_807B8F3C
lbl_807B8EE4:
/* 807B8EE4  4B FF F5 45 */	bl pl_y_check__FP10e_tk_class
/* 807B8EE8  2C 03 00 00 */	cmpwi r3, 0
/* 807B8EEC  41 82 00 10 */	beq lbl_807B8EFC
/* 807B8EF0  A8 1F 06 96 */	lha r0, 0x696(r31)
/* 807B8EF4  2C 00 00 00 */	cmpwi r0, 0
/* 807B8EF8  40 82 00 14 */	bne lbl_807B8F0C
lbl_807B8EFC:
/* 807B8EFC  38 00 00 01 */	li r0, 1
/* 807B8F00  B0 1F 06 76 */	sth r0, 0x676(r31)
/* 807B8F04  38 00 00 03 */	li r0, 3
/* 807B8F08  B0 1F 06 78 */	sth r0, 0x678(r31)
lbl_807B8F0C:
/* 807B8F0C  7F E3 FB 78 */	mr r3, r31
/* 807B8F10  3C 80 80 7C */	lis r4, l_HIO@ha
/* 807B8F14  38 84 A4 48 */	addi r4, r4, l_HIO@l
/* 807B8F18  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 807B8F1C  38 80 40 00 */	li r4, 0x4000
/* 807B8F20  4B FF F5 41 */	bl pl_check__FP10e_tk_classfs
/* 807B8F24  2C 03 00 00 */	cmpwi r3, 0
/* 807B8F28  41 82 00 14 */	beq lbl_807B8F3C
/* 807B8F2C  38 00 00 01 */	li r0, 1
/* 807B8F30  B0 1F 06 76 */	sth r0, 0x676(r31)
/* 807B8F34  38 00 00 0A */	li r0, 0xa
/* 807B8F38  B0 1F 06 78 */	sth r0, 0x678(r31)
lbl_807B8F3C:
/* 807B8F3C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 807B8F40  A8 9F 06 8C */	lha r4, 0x68c(r31)
/* 807B8F44  38 A0 00 04 */	li r5, 4
/* 807B8F48  38 C0 08 00 */	li r6, 0x800
/* 807B8F4C  4B AB 76 BC */	b cLib_addCalcAngleS2__FPssss
/* 807B8F50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807B8F54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807B8F58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B8F5C  7C 08 03 A6 */	mtlr r0
/* 807B8F60  38 21 00 20 */	addi r1, r1, 0x20
/* 807B8F64  4E 80 00 20 */	blr 
