lbl_807BFFF4:
/* 807BFFF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807BFFF8  7C 08 02 A6 */	mflr r0
/* 807BFFFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C0000  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807C0004  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807C0008  7C 7E 1B 78 */	mr r30, r3
/* 807C000C  3C 80 80 7C */	lis r4, lit_3908@ha
/* 807C0010  3B E4 1F B8 */	addi r31, r4, lit_3908@l
/* 807C0014  80 03 06 BC */	lwz r0, 0x6bc(r3)
/* 807C0018  2C 00 00 06 */	cmpwi r0, 6
/* 807C001C  41 82 02 14 */	beq lbl_807C0230
/* 807C0020  40 80 03 04 */	bge lbl_807C0324
/* 807C0024  2C 00 00 03 */	cmpwi r0, 3
/* 807C0028  40 80 01 34 */	bge lbl_807C015C
/* 807C002C  2C 00 00 00 */	cmpwi r0, 0
/* 807C0030  40 80 00 08 */	bge lbl_807C0038
/* 807C0034  48 00 02 F0 */	b lbl_807C0324
lbl_807C0038:
/* 807C0038  80 1E 09 68 */	lwz r0, 0x968(r30)
/* 807C003C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C0040  90 1E 09 68 */	stw r0, 0x968(r30)
/* 807C0044  38 7E 09 50 */	addi r3, r30, 0x950
/* 807C0048  81 9E 09 8C */	lwz r12, 0x98c(r30)
/* 807C004C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807C0050  7D 89 03 A6 */	mtctr r12
/* 807C0054  4E 80 04 21 */	bctrl 
/* 807C0058  38 00 00 00 */	li r0, 0
/* 807C005C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807C0060  A8 7E 0A 96 */	lha r3, 0xa96(r30)
/* 807C0064  3C 63 00 01 */	addis r3, r3, 1
/* 807C0068  38 03 80 00 */	addi r0, r3, -32768
/* 807C006C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807C0070  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807C0074  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807C0078  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024C@ha */
/* 807C007C  38 03 02 4C */	addi r0, r3, 0x024C /* 0x0007024C@l */
/* 807C0080  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C0084  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807C0088  38 81 00 0C */	addi r4, r1, 0xc
/* 807C008C  38 A0 FF FF */	li r5, -1
/* 807C0090  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807C0094  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C0098  7D 89 03 A6 */	mtctr r12
/* 807C009C  4E 80 04 21 */	bctrl 
/* 807C00A0  80 1E 06 BC */	lwz r0, 0x6bc(r30)
/* 807C00A4  2C 00 00 00 */	cmpwi r0, 0
/* 807C00A8  40 82 00 30 */	bne lbl_807C00D8
/* 807C00AC  7F C3 F3 78 */	mr r3, r30
/* 807C00B0  38 80 00 09 */	li r4, 9
/* 807C00B4  38 A0 00 00 */	li r5, 0
/* 807C00B8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807C00BC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C00C0  4B FF DA 21 */	bl setBck__8daE_TT_cFiUcff
/* 807C00C4  38 00 00 03 */	li r0, 3
/* 807C00C8  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807C00CC  7F C3 F3 78 */	mr r3, r30
/* 807C00D0  4B FF E6 39 */	bl setDeathEyeEffect__8daE_TT_cFv
/* 807C00D4  48 00 02 50 */	b lbl_807C0324
lbl_807C00D8:
/* 807C00D8  2C 00 00 01 */	cmpwi r0, 1
/* 807C00DC  40 82 00 5C */	bne lbl_807C0138
/* 807C00E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024D@ha */
/* 807C00E4  38 03 02 4D */	addi r0, r3, 0x024D /* 0x0007024D@l */
/* 807C00E8  90 01 00 08 */	stw r0, 8(r1)
/* 807C00EC  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807C00F0  38 81 00 08 */	addi r4, r1, 8
/* 807C00F4  38 A0 00 00 */	li r5, 0
/* 807C00F8  38 C0 FF FF */	li r6, -1
/* 807C00FC  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807C0100  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C0104  7D 89 03 A6 */	mtctr r12
/* 807C0108  4E 80 04 21 */	bctrl 
/* 807C010C  7F C3 F3 78 */	mr r3, r30
/* 807C0110  38 80 00 0A */	li r4, 0xa
/* 807C0114  38 A0 00 00 */	li r5, 0
/* 807C0118  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807C011C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C0120  4B FF D9 C1 */	bl setBck__8daE_TT_cFiUcff
/* 807C0124  38 00 00 04 */	li r0, 4
/* 807C0128  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807C012C  7F C3 F3 78 */	mr r3, r30
/* 807C0130  4B FF E8 6D */	bl setDeathFootEffect__8daE_TT_cFv
/* 807C0134  48 00 01 F0 */	b lbl_807C0324
lbl_807C0138:
/* 807C0138  7F C3 F3 78 */	mr r3, r30
/* 807C013C  38 80 00 09 */	li r4, 9
/* 807C0140  38 A0 00 00 */	li r5, 0
/* 807C0144  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807C0148  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C014C  4B FF D9 95 */	bl setBck__8daE_TT_cFiUcff
/* 807C0150  38 00 00 05 */	li r0, 5
/* 807C0154  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807C0158  48 00 01 CC */	b lbl_807C0324
lbl_807C015C:
/* 807C015C  40 82 00 0C */	bne lbl_807C0168
/* 807C0160  4B FF E5 A9 */	bl setDeathEyeEffect__8daE_TT_cFv
/* 807C0164  48 00 00 10 */	b lbl_807C0174
lbl_807C0168:
/* 807C0168  2C 00 00 04 */	cmpwi r0, 4
/* 807C016C  40 82 00 08 */	bne lbl_807C0174
/* 807C0170  4B FF E8 2D */	bl setDeathFootEffect__8daE_TT_cFv
lbl_807C0174:
/* 807C0174  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807C0178  38 63 00 0C */	addi r3, r3, 0xc
/* 807C017C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 807C0180  4B B6 82 AC */	b checkPass__12J3DFrameCtrlFf
/* 807C0184  2C 03 00 00 */	cmpwi r3, 0
/* 807C0188  41 82 00 0C */	beq lbl_807C0194
/* 807C018C  7F C3 F3 78 */	mr r3, r30
/* 807C0190  4B FF E1 19 */	bl setBodyLandEffect__8daE_TT_cFv
lbl_807C0194:
/* 807C0194  88 1E 06 FA */	lbz r0, 0x6fa(r30)
/* 807C0198  28 00 00 00 */	cmplwi r0, 0
/* 807C019C  41 82 00 2C */	beq lbl_807C01C8
/* 807C01A0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807C01A4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 807C01A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C01AC  40 81 00 08 */	ble lbl_807C01B4
/* 807C01B0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807C01B4:
/* 807C01B4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807C01B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C01BC  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807C01C0  4B AB 05 80 */	b cLib_chaseF__FPfff
/* 807C01C4  48 00 00 14 */	b lbl_807C01D8
lbl_807C01C8:
/* 807C01C8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807C01CC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C01D0  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 807C01D4  4B AB 05 6C */	b cLib_chaseF__FPfff
lbl_807C01D8:
/* 807C01D8  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 807C01DC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807C01E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C01E4  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 807C01E8  4B AA F8 54 */	b cLib_addCalc2__FPffff
/* 807C01EC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807C01F0  38 80 00 01 */	li r4, 1
/* 807C01F4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C01F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C01FC  40 82 00 18 */	bne lbl_807C0214
/* 807C0200  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C0204  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C0208  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C020C  41 82 00 08 */	beq lbl_807C0214
/* 807C0210  38 80 00 00 */	li r4, 0
lbl_807C0214:
/* 807C0214  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C0218  41 82 01 0C */	beq lbl_807C0324
/* 807C021C  38 00 00 06 */	li r0, 6
/* 807C0220  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807C0224  38 00 00 05 */	li r0, 5
/* 807C0228  98 1E 06 EA */	stb r0, 0x6ea(r30)
/* 807C022C  48 00 00 F8 */	b lbl_807C0324
lbl_807C0230:
/* 807C0230  38 00 00 01 */	li r0, 1
/* 807C0234  98 1E 06 FB */	stb r0, 0x6fb(r30)
/* 807C0238  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 807C023C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807C0240  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C0244  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 807C0248  4B AA F7 F4 */	b cLib_addCalc2__FPffff
/* 807C024C  88 1E 06 FA */	lbz r0, 0x6fa(r30)
/* 807C0250  28 00 00 00 */	cmplwi r0, 0
/* 807C0254  41 82 00 2C */	beq lbl_807C0280
/* 807C0258  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807C025C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 807C0260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C0264  40 81 00 08 */	ble lbl_807C026C
/* 807C0268  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807C026C:
/* 807C026C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807C0270  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C0274  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807C0278  4B AB 04 C8 */	b cLib_chaseF__FPfff
/* 807C027C  48 00 00 14 */	b lbl_807C0290
lbl_807C0280:
/* 807C0280  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807C0284  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C0288  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 807C028C  4B AB 04 B4 */	b cLib_chaseF__FPfff
lbl_807C0290:
/* 807C0290  88 1E 06 EA */	lbz r0, 0x6ea(r30)
/* 807C0294  28 00 00 00 */	cmplwi r0, 0
/* 807C0298  40 82 00 8C */	bne lbl_807C0324
/* 807C029C  88 1E 06 F6 */	lbz r0, 0x6f6(r30)
/* 807C02A0  28 00 00 00 */	cmplwi r0, 0
/* 807C02A4  40 82 00 20 */	bne lbl_807C02C4
/* 807C02A8  7F C3 F3 78 */	mr r3, r30
/* 807C02AC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807C02B0  38 A0 00 0A */	li r5, 0xa
/* 807C02B4  38 C0 00 00 */	li r6, 0
/* 807C02B8  38 E0 00 35 */	li r7, 0x35
/* 807C02BC  4B 85 C8 1C */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807C02C0  48 00 00 1C */	b lbl_807C02DC
lbl_807C02C4:
/* 807C02C4  7F C3 F3 78 */	mr r3, r30
/* 807C02C8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807C02CC  38 A0 00 0A */	li r5, 0xa
/* 807C02D0  38 C0 00 00 */	li r6, 0
/* 807C02D4  38 E0 00 13 */	li r7, 0x13
/* 807C02D8  4B 85 C8 00 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_807C02DC:
/* 807C02DC  7F C3 F3 78 */	mr r3, r30
/* 807C02E0  4B 85 99 9C */	b fopAcM_delete__FP10fopAc_ac_c
/* 807C02E4  88 9E 06 F9 */	lbz r4, 0x6f9(r30)
/* 807C02E8  28 04 00 FF */	cmplwi r4, 0xff
/* 807C02EC  41 82 00 38 */	beq lbl_807C0324
/* 807C02F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C02F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C02F8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807C02FC  7C 05 07 74 */	extsb r5, r0
/* 807C0300  4B 87 50 60 */	b isSwitch__10dSv_info_cCFii
/* 807C0304  2C 03 00 00 */	cmpwi r3, 0
/* 807C0308  40 82 00 1C */	bne lbl_807C0324
/* 807C030C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C0310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C0314  88 9E 06 F9 */	lbz r4, 0x6f9(r30)
/* 807C0318  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807C031C  7C 05 07 74 */	extsb r5, r0
/* 807C0320  4B 87 4E E0 */	b onSwitch__10dSv_info_cFii
lbl_807C0324:
/* 807C0324  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807C0328  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807C032C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C0330  7C 08 03 A6 */	mtlr r0
/* 807C0334  38 21 00 20 */	addi r1, r1, 0x20
/* 807C0338  4E 80 00 20 */	blr 
