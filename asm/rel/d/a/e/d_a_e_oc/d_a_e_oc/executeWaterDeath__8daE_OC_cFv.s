lbl_80732074:
/* 80732074  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80732078  7C 08 02 A6 */	mflr r0
/* 8073207C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80732080  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80732084  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80732088  7C 7E 1B 78 */	mr r30, r3
/* 8073208C  3C 80 80 73 */	lis r4, lit_3911@ha /* 0x80735B28@ha */
/* 80732090  3B E4 5B 28 */	addi r31, r4, lit_3911@l /* 0x80735B28@l */
/* 80732094  80 03 06 B0 */	lwz r0, 0x6b0(r3)
/* 80732098  2C 00 00 01 */	cmpwi r0, 1
/* 8073209C  41 82 00 EC */	beq lbl_80732188
/* 807320A0  40 80 00 10 */	bge lbl_807320B0
/* 807320A4  2C 00 00 00 */	cmpwi r0, 0
/* 807320A8  40 80 00 14 */	bge lbl_807320BC
/* 807320AC  48 00 02 90 */	b lbl_8073233C
lbl_807320B0:
/* 807320B0  2C 00 00 03 */	cmpwi r0, 3
/* 807320B4  40 80 02 88 */	bge lbl_8073233C
/* 807320B8  48 00 01 74 */	b lbl_8073222C
lbl_807320BC:
/* 807320BC  38 80 00 0C */	li r4, 0xc
/* 807320C0  38 A0 00 00 */	li r5, 0
/* 807320C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807320C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807320CC  4B FF C1 A9 */	bl setBck__8daE_OC_cFiUcff
/* 807320D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701AF@ha */
/* 807320D4  38 03 01 AF */	addi r0, r3, 0x01AF /* 0x000701AF@l */
/* 807320D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807320DC  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 807320E0  38 81 00 10 */	addi r4, r1, 0x10
/* 807320E4  38 A0 FF FF */	li r5, -1
/* 807320E8  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 807320EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807320F0  7D 89 03 A6 */	mtctr r12
/* 807320F4  4E 80 04 21 */	bctrl 
/* 807320F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701B0@ha */
/* 807320FC  38 03 01 B0 */	addi r0, r3, 0x01B0 /* 0x000701B0@l */
/* 80732100  90 01 00 0C */	stw r0, 0xc(r1)
/* 80732104  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80732108  38 81 00 0C */	addi r4, r1, 0xc
/* 8073210C  38 A0 00 00 */	li r5, 0
/* 80732110  38 C0 FF FF */	li r6, -1
/* 80732114  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80732118  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8073211C  7D 89 03 A6 */	mtctr r12
/* 80732120  4E 80 04 21 */	bctrl 
/* 80732124  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80732128  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8073212C  EC 01 00 2A */	fadds f0, f1, f0
/* 80732130  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80732134  38 00 00 01 */	li r0, 1
/* 80732138  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8073213C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80732140  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80732144  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80732148  7F C3 F3 78 */	mr r3, r30
/* 8073214C  4B FF FE 11 */	bl setWaterEffect__8daE_OC_cFv
/* 80732150  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060032@ha */
/* 80732154  38 03 00 32 */	addi r0, r3, 0x0032 /* 0x00060032@l */
/* 80732158  90 01 00 08 */	stw r0, 8(r1)
/* 8073215C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80732160  38 81 00 08 */	addi r4, r1, 8
/* 80732164  38 A0 00 00 */	li r5, 0
/* 80732168  38 C0 FF FF */	li r6, -1
/* 8073216C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80732170  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80732174  7D 89 03 A6 */	mtctr r12
/* 80732178  4E 80 04 21 */	bctrl 
/* 8073217C  7F C3 F3 78 */	mr r3, r30
/* 80732180  4B FF BC 0D */	bl offTgSph__8daE_OC_cFv
/* 80732184  48 00 01 B8 */	b lbl_8073233C
lbl_80732188:
/* 80732188  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8073218C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80732190  C0 5F 01 34 */	lfs f2, 0x134(r31)
/* 80732194  4B B3 E5 AD */	bl cLib_chaseF__FPfff
/* 80732198  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8073219C  38 80 00 00 */	li r4, 0
/* 807321A0  38 A0 08 00 */	li r5, 0x800
/* 807321A4  4B B3 E9 ED */	bl cLib_chaseAngleS__FPsss
/* 807321A8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807321AC  38 63 00 0C */	addi r3, r3, 0xc
/* 807321B0  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 807321B4  4B BF 62 79 */	bl checkPass__12J3DFrameCtrlFf
/* 807321B8  2C 03 00 00 */	cmpwi r3, 0
/* 807321BC  40 82 00 34 */	bne lbl_807321F0
/* 807321C0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807321C4  38 63 00 0C */	addi r3, r3, 0xc
/* 807321C8  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 807321CC  4B BF 62 61 */	bl checkPass__12J3DFrameCtrlFf
/* 807321D0  2C 03 00 00 */	cmpwi r3, 0
/* 807321D4  40 82 00 1C */	bne lbl_807321F0
/* 807321D8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807321DC  38 63 00 0C */	addi r3, r3, 0xc
/* 807321E0  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 807321E4  4B BF 62 49 */	bl checkPass__12J3DFrameCtrlFf
/* 807321E8  2C 03 00 00 */	cmpwi r3, 0
/* 807321EC  41 82 00 0C */	beq lbl_807321F8
lbl_807321F0:
/* 807321F0  7F C3 F3 78 */	mr r3, r30
/* 807321F4  4B FF FD 69 */	bl setWaterEffect__8daE_OC_cFv
lbl_807321F8:
/* 807321F8  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 807321FC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80732200  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80732204  40 81 01 38 */	ble lbl_8073233C
/* 80732208  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073220C  C0 5E 06 98 */	lfs f2, 0x698(r30)
/* 80732210  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80732214  40 81 01 28 */	ble lbl_8073233C
/* 80732218  D0 5E 04 D4 */	stfs f2, 0x4d4(r30)
/* 8073221C  38 00 00 02 */	li r0, 2
/* 80732220  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80732224  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80732228  48 00 01 14 */	b lbl_8073233C
lbl_8073222C:
/* 8073222C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80732230  38 63 00 0C */	addi r3, r3, 0xc
/* 80732234  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 80732238  4B BF 61 F5 */	bl checkPass__12J3DFrameCtrlFf
/* 8073223C  2C 03 00 00 */	cmpwi r3, 0
/* 80732240  40 82 00 34 */	bne lbl_80732274
/* 80732244  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80732248  38 63 00 0C */	addi r3, r3, 0xc
/* 8073224C  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80732250  4B BF 61 DD */	bl checkPass__12J3DFrameCtrlFf
/* 80732254  2C 03 00 00 */	cmpwi r3, 0
/* 80732258  40 82 00 1C */	bne lbl_80732274
/* 8073225C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80732260  38 63 00 0C */	addi r3, r3, 0xc
/* 80732264  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 80732268  4B BF 61 C5 */	bl checkPass__12J3DFrameCtrlFf
/* 8073226C  2C 03 00 00 */	cmpwi r3, 0
/* 80732270  41 82 00 0C */	beq lbl_8073227C
lbl_80732274:
/* 80732274  7F C3 F3 78 */	mr r3, r30
/* 80732278  4B FF FC E5 */	bl setWaterEffect__8daE_OC_cFv
lbl_8073227C:
/* 8073227C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80732280  38 80 00 01 */	li r4, 1
/* 80732284  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80732288  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073228C  40 82 00 18 */	bne lbl_807322A4
/* 80732290  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80732294  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80732298  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073229C  41 82 00 08 */	beq lbl_807322A4
/* 807322A0  38 80 00 00 */	li r4, 0
lbl_807322A4:
/* 807322A4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807322A8  41 82 00 94 */	beq lbl_8073233C
/* 807322AC  80 9E 06 A4 */	lwz r4, 0x6a4(r30)
/* 807322B0  3C 60 80 73 */	lis r3, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 807322B4  38 03 5D 0C */	addi r0, r3, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 807322B8  7C 04 00 40 */	cmplw r4, r0
/* 807322BC  40 82 00 20 */	bne lbl_807322DC
/* 807322C0  7F C3 F3 78 */	mr r3, r30
/* 807322C4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807322C8  38 A0 00 0A */	li r5, 0xa
/* 807322CC  38 C0 00 00 */	li r6, 0
/* 807322D0  38 E0 00 04 */	li r7, 4
/* 807322D4  4B 8E A8 05 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807322D8  48 00 00 1C */	b lbl_807322F4
lbl_807322DC:
/* 807322DC  7F C3 F3 78 */	mr r3, r30
/* 807322E0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807322E4  38 A0 00 0A */	li r5, 0xa
/* 807322E8  38 C0 00 00 */	li r6, 0
/* 807322EC  38 E0 00 34 */	li r7, 0x34
/* 807322F0  4B 8E A7 E9 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_807322F4:
/* 807322F4  7F C3 F3 78 */	mr r3, r30
/* 807322F8  4B 8E 79 85 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807322FC  88 9E 06 E0 */	lbz r4, 0x6e0(r30)
/* 80732300  28 04 00 FF */	cmplwi r4, 0xff
/* 80732304  41 82 00 38 */	beq lbl_8073233C
/* 80732308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073230C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80732310  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80732314  7C 05 07 74 */	extsb r5, r0
/* 80732318  4B 90 30 49 */	bl isSwitch__10dSv_info_cCFii
/* 8073231C  2C 03 00 00 */	cmpwi r3, 0
/* 80732320  40 82 00 1C */	bne lbl_8073233C
/* 80732324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80732328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073232C  88 9E 06 E0 */	lbz r4, 0x6e0(r30)
/* 80732330  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80732334  7C 05 07 74 */	extsb r5, r0
/* 80732338  4B 90 2E C9 */	bl onSwitch__10dSv_info_cFii
lbl_8073233C:
/* 8073233C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80732340  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80732344  EC 01 00 28 */	fsubs f0, f1, f0
/* 80732348  C0 5E 06 98 */	lfs f2, 0x698(r30)
/* 8073234C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80732350  40 80 00 3C */	bge lbl_8073238C
/* 80732354  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80732358  EC 00 08 2A */	fadds f0, f0, f1
/* 8073235C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80732360  40 80 00 2C */	bge lbl_8073238C
/* 80732364  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80732368  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8073236C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80732370  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80732374  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80732378  38 7E 0E 80 */	addi r3, r30, 0xe80
/* 8073237C  38 81 00 14 */	addi r4, r1, 0x14
/* 80732380  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80732384  FC 40 08 90 */	fmr f2, f1
/* 80732388  4B 8E AD 85 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_8073238C:
/* 8073238C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80732390  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80732394  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80732398  7C 08 03 A6 */	mtlr r0
/* 8073239C  38 21 00 30 */	addi r1, r1, 0x30
/* 807323A0  4E 80 00 20 */	blr 
