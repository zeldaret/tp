lbl_80B05C7C:
/* 80B05C7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B05C80  7C 08 02 A6 */	mflr r0
/* 80B05C84  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B05C88  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B05C8C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B05C90  7C 7E 1B 78 */	mr r30, r3
/* 80B05C94  3C 80 80 B1 */	lis r4, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B05C98  3B E4 C1 C4 */	addi r31, r4, lit_3999@l /* 0x80B0C1C4@l */
/* 80B05C9C  48 00 14 79 */	bl checkAttackDemo__10daNPC_TK_cFv
/* 80B05CA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B05CA4  40 82 02 0C */	bne lbl_80B05EB0
/* 80B05CA8  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B05CAC  2C 00 00 02 */	cmpwi r0, 2
/* 80B05CB0  41 82 00 94 */	beq lbl_80B05D44
/* 80B05CB4  40 80 00 14 */	bge lbl_80B05CC8
/* 80B05CB8  2C 00 00 00 */	cmpwi r0, 0
/* 80B05CBC  41 82 00 1C */	beq lbl_80B05CD8
/* 80B05CC0  40 80 00 20 */	bge lbl_80B05CE0
/* 80B05CC4  48 00 01 EC */	b lbl_80B05EB0
lbl_80B05CC8:
/* 80B05CC8  2C 00 00 04 */	cmpwi r0, 4
/* 80B05CCC  41 82 01 70 */	beq lbl_80B05E3C
/* 80B05CD0  40 80 01 E0 */	bge lbl_80B05EB0
/* 80B05CD4  48 00 00 B4 */	b lbl_80B05D88
lbl_80B05CD8:
/* 80B05CD8  38 00 00 01 */	li r0, 1
/* 80B05CDC  90 1E 06 94 */	stw r0, 0x694(r30)
lbl_80B05CE0:
/* 80B05CE0  3C 60 80 B0 */	lis r3, s_hanjo__FPvPv@ha /* 0x80B02208@ha */
/* 80B05CE4  38 63 22 08 */	addi r3, r3, s_hanjo__FPvPv@l /* 0x80B02208@l */
/* 80B05CE8  7F C4 F3 78 */	mr r4, r30
/* 80B05CEC  4B 51 B6 4D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80B05CF0  90 7E 06 38 */	stw r3, 0x638(r30)
/* 80B05CF4  80 7E 06 38 */	lwz r3, 0x638(r30)
/* 80B05CF8  28 03 00 00 */	cmplwi r3, 0
/* 80B05CFC  41 82 00 38 */	beq lbl_80B05D34
/* 80B05D00  4B EF 3F 99 */	bl getType__13daNpc_Hanjo_cFv
/* 80B05D04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B05D08  28 00 00 01 */	cmplwi r0, 1
/* 80B05D0C  40 82 00 28 */	bne lbl_80B05D34
/* 80B05D10  38 00 00 02 */	li r0, 2
/* 80B05D14  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B05D18  80 1E 09 C4 */	lwz r0, 0x9c4(r30)
/* 80B05D1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B05D20  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 80B05D24  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B05D28  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B05D2C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B05D30  48 00 01 80 */	b lbl_80B05EB0
lbl_80B05D34:
/* 80B05D34  7F C3 F3 78 */	mr r3, r30
/* 80B05D38  38 80 00 00 */	li r4, 0
/* 80B05D3C  4B FF BB 3D */	bl setActionMode__10daNPC_TK_cFi
/* 80B05D40  48 00 01 70 */	b lbl_80B05EB0
lbl_80B05D44:
/* 80B05D44  7F C3 F3 78 */	mr r3, r30
/* 80B05D48  38 80 00 0C */	li r4, 0xc
/* 80B05D4C  38 A0 00 02 */	li r5, 2
/* 80B05D50  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80B05D54  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B05D58  4B FF B7 41 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B05D5C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80B05D60  4B 76 1B F5 */	bl cM_rndF__Ff
/* 80B05D64  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B05D68  EC 00 08 2A */	fadds f0, f0, f1
/* 80B05D6C  FC 00 00 1E */	fctiwz f0, f0
/* 80B05D70  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80B05D74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B05D78  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B05D7C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B05D80  38 00 00 03 */	li r0, 3
/* 80B05D84  90 1E 06 94 */	stw r0, 0x694(r30)
lbl_80B05D88:
/* 80B05D88  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80B05D8C  2C 00 00 00 */	cmpwi r0, 0
/* 80B05D90  40 82 00 6C */	bne lbl_80B05DFC
/* 80B05D94  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B05D98  38 63 00 0C */	addi r3, r3, 0xc
/* 80B05D9C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B05DA0  4B 82 26 8D */	bl checkPass__12J3DFrameCtrlFf
/* 80B05DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80B05DA8  41 82 00 54 */	beq lbl_80B05DFC
/* 80B05DAC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B05DB0  4B 76 1B A5 */	bl cM_rndF__Ff
/* 80B05DB4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80B05DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B05DBC  40 80 00 20 */	bge lbl_80B05DDC
/* 80B05DC0  7F C3 F3 78 */	mr r3, r30
/* 80B05DC4  38 80 00 0A */	li r4, 0xa
/* 80B05DC8  38 A0 00 00 */	li r5, 0
/* 80B05DCC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B05DD0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B05DD4  4B FF B6 C5 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B05DD8  48 00 00 1C */	b lbl_80B05DF4
lbl_80B05DDC:
/* 80B05DDC  7F C3 F3 78 */	mr r3, r30
/* 80B05DE0  38 80 00 0B */	li r4, 0xb
/* 80B05DE4  38 A0 00 00 */	li r5, 0
/* 80B05DE8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B05DEC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B05DF0  4B FF B6 A9 */	bl setBck__10daNPC_TK_cFiUcff
lbl_80B05DF4:
/* 80B05DF4  38 00 00 04 */	li r0, 4
/* 80B05DF8  90 1E 06 94 */	stw r0, 0x694(r30)
lbl_80B05DFC:
/* 80B05DFC  38 00 00 01 */	li r0, 1
/* 80B05E00  98 1E 06 AD */	stb r0, 0x6ad(r30)
/* 80B05E04  38 61 00 14 */	addi r3, r1, 0x14
/* 80B05E08  7F C4 F3 78 */	mr r4, r30
/* 80B05E0C  4B FF FD C5 */	bl getHanjoHandPos__10daNPC_TK_cFv
/* 80B05E10  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B05E14  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B05E18  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B05E1C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B05E20  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B05E24  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B05E28  80 7E 06 38 */	lwz r3, 0x638(r30)
/* 80B05E2C  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80B05E30  38 03 D0 00 */	addi r0, r3, -12288
/* 80B05E34  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B05E38  48 00 00 78 */	b lbl_80B05EB0
lbl_80B05E3C:
/* 80B05E3C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B05E40  38 80 00 01 */	li r4, 1
/* 80B05E44  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B05E48  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B05E4C  40 82 00 18 */	bne lbl_80B05E64
/* 80B05E50  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B05E54  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B05E58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B05E5C  41 82 00 08 */	beq lbl_80B05E64
/* 80B05E60  38 80 00 00 */	li r4, 0
lbl_80B05E64:
/* 80B05E64  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B05E68  41 82 00 0C */	beq lbl_80B05E74
/* 80B05E6C  38 00 00 02 */	li r0, 2
/* 80B05E70  90 1E 06 94 */	stw r0, 0x694(r30)
lbl_80B05E74:
/* 80B05E74  38 00 00 01 */	li r0, 1
/* 80B05E78  98 1E 06 AD */	stb r0, 0x6ad(r30)
/* 80B05E7C  38 61 00 08 */	addi r3, r1, 8
/* 80B05E80  7F C4 F3 78 */	mr r4, r30
/* 80B05E84  4B FF FD 4D */	bl getHanjoHandPos__10daNPC_TK_cFv
/* 80B05E88  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B05E8C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B05E90  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B05E94  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B05E98  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B05E9C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B05EA0  80 7E 06 38 */	lwz r3, 0x638(r30)
/* 80B05EA4  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80B05EA8  38 03 D0 00 */	addi r0, r3, -12288
/* 80B05EAC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80B05EB0:
/* 80B05EB0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B05EB4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B05EB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B05EBC  7C 08 03 A6 */	mtlr r0
/* 80B05EC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B05EC4  4E 80 00 20 */	blr 
