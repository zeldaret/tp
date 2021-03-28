lbl_805EAAFC:
/* 805EAAFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805EAB00  7C 08 02 A6 */	mflr r0
/* 805EAB04  90 01 00 44 */	stw r0, 0x44(r1)
/* 805EAB08  39 61 00 40 */	addi r11, r1, 0x40
/* 805EAB0C  4B D7 76 CC */	b _savegpr_28
/* 805EAB10  7C 7D 1B 78 */	mr r29, r3
/* 805EAB14  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805EAB18  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805EAB1C  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EAB20  4B A9 99 40 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EAB24  28 03 00 00 */	cmplwi r3, 0
/* 805EAB28  41 82 00 10 */	beq lbl_805EAB38
/* 805EAB2C  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805EAB30  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805EAB34  41 82 00 14 */	beq lbl_805EAB48
lbl_805EAB38:
/* 805EAB38  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EAB3C  4B A9 99 24 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EAB40  28 03 00 00 */	cmplwi r3, 0
/* 805EAB44  41 82 04 CC */	beq lbl_805EB010
lbl_805EAB48:
/* 805EAB48  AB DD 05 62 */	lha r30, 0x562(r29)
/* 805EAB4C  88 1D 05 C5 */	lbz r0, 0x5c5(r29)
/* 805EAB50  28 00 00 00 */	cmplwi r0, 0
/* 805EAB54  40 82 00 F4 */	bne lbl_805EAC48
/* 805EAB58  88 1D 05 C7 */	lbz r0, 0x5c7(r29)
/* 805EAB5C  28 00 00 0C */	cmplwi r0, 0xc
/* 805EAB60  41 82 00 0C */	beq lbl_805EAB6C
/* 805EAB64  28 00 00 0D */	cmplwi r0, 0xd
/* 805EAB68  40 82 00 E0 */	bne lbl_805EAC48
lbl_805EAB6C:
/* 805EAB6C  38 00 00 01 */	li r0, 1
/* 805EAB70  98 1D 05 C5 */	stb r0, 0x5c5(r29)
/* 805EAB74  88 1D 05 CE */	lbz r0, 0x5ce(r29)
/* 805EAB78  28 00 00 FF */	cmplwi r0, 0xff
/* 805EAB7C  41 82 00 3C */	beq lbl_805EABB8
/* 805EAB80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EAB84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EAB88  38 80 00 8E */	li r4, 0x8e
/* 805EAB8C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805EAB90  7C 05 07 74 */	extsb r5, r0
/* 805EAB94  4B A4 A7 CC */	b isSwitch__10dSv_info_cCFii
/* 805EAB98  2C 03 00 00 */	cmpwi r3, 0
/* 805EAB9C  41 82 00 1C */	beq lbl_805EABB8
/* 805EABA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EABA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EABA8  38 80 00 8E */	li r4, 0x8e
/* 805EABAC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805EABB0  7C 05 07 74 */	extsb r5, r0
/* 805EABB4  4B A4 A6 FC */	b offSwitch__10dSv_info_cFii
lbl_805EABB8:
/* 805EABB8  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 805EABBC  28 00 00 00 */	cmplwi r0, 0
/* 805EABC0  41 82 00 48 */	beq lbl_805EAC08
/* 805EABC4  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805EABC8  3C 60 80 5F */	lis r3, l_HIO@ha
/* 805EABCC  38 63 D7 0C */	addi r3, r3, l_HIO@l
/* 805EABD0  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805EABD4  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805EABD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805EABDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EABE0  3C 00 43 30 */	lis r0, 0x4330
/* 805EABE4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805EABE8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805EABEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EABF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EABF4  FC 00 00 1E */	fctiwz f0, f0
/* 805EABF8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805EABFC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805EAC00  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 805EAC04  48 00 00 44 */	b lbl_805EAC48
lbl_805EAC08:
/* 805EAC08  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805EAC0C  3C 60 80 5F */	lis r3, l_HIO@ha
/* 805EAC10  38 63 D7 0C */	addi r3, r3, l_HIO@l
/* 805EAC14  A8 03 00 0C */	lha r0, 0xc(r3)
/* 805EAC18  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805EAC1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805EAC20  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805EAC24  3C 00 43 30 */	lis r0, 0x4330
/* 805EAC28  90 01 00 28 */	stw r0, 0x28(r1)
/* 805EAC2C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805EAC30  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EAC34  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EAC38  FC 00 00 1E */	fctiwz f0, f0
/* 805EAC3C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805EAC40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EAC44  B0 1D 05 DC */	sth r0, 0x5dc(r29)
lbl_805EAC48:
/* 805EAC48  38 00 00 1E */	li r0, 0x1e
/* 805EAC4C  90 1D 11 5C */	stw r0, 0x115c(r29)
/* 805EAC50  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EAC54  4B A9 98 0C */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EAC58  28 03 00 00 */	cmplwi r3, 0
/* 805EAC5C  41 82 00 20 */	beq lbl_805EAC7C
/* 805EAC60  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EAC64  4B A9 98 94 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EAC68  7C 7C 1B 78 */	mr r28, r3
/* 805EAC6C  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EAC70  4B A9 98 88 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EAC74  90 7D 11 44 */	stw r3, 0x1144(r29)
/* 805EAC78  48 00 00 1C */	b lbl_805EAC94
lbl_805EAC7C:
/* 805EAC7C  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EAC80  4B A9 98 78 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EAC84  7C 7C 1B 78 */	mr r28, r3
/* 805EAC88  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EAC8C  4B A9 98 6C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EAC90  90 7D 11 44 */	stw r3, 0x1144(r29)
lbl_805EAC94:
/* 805EAC94  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 805EAC98  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 805EAC9C  40 82 00 0C */	bne lbl_805EACA8
/* 805EACA0  7F A3 EB 78 */	mr r3, r29
/* 805EACA4  4B FF FA A9 */	bl At_Check__8daB_GG_cFv
lbl_805EACA8:
/* 805EACA8  38 60 00 0A */	li r3, 0xa
/* 805EACAC  B0 7D 05 CC */	sth r3, 0x5cc(r29)
/* 805EACB0  38 80 00 03 */	li r4, 3
/* 805EACB4  98 9D 05 C6 */	stb r4, 0x5c6(r29)
/* 805EACB8  38 00 00 02 */	li r0, 2
/* 805EACBC  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805EACC0  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 805EACC4  54 A0 06 F7 */	rlwinm. r0, r5, 0, 0x1b, 0x1b
/* 805EACC8  41 82 01 60 */	beq lbl_805EAE28
/* 805EACCC  88 7D 05 F0 */	lbz r3, 0x5f0(r29)
/* 805EACD0  28 03 00 01 */	cmplwi r3, 1
/* 805EACD4  41 81 00 84 */	bgt lbl_805EAD58
/* 805EACD8  38 03 00 01 */	addi r0, r3, 1
/* 805EACDC  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805EACE0  7F A3 EB 78 */	mr r3, r29
/* 805EACE4  38 80 00 16 */	li r4, 0x16
/* 805EACE8  38 A0 00 00 */	li r5, 0
/* 805EACEC  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805EACF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805EACF4  4B FF 42 71 */	bl SetAnm__8daB_GG_cFiiff
/* 805EACF8  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 805EACFC  60 00 00 80 */	ori r0, r0, 0x80
/* 805EAD00  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 805EAD04  38 00 00 04 */	li r0, 4
/* 805EAD08  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805EAD0C  38 00 00 03 */	li r0, 3
/* 805EAD10  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 805EAD14  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805EAD18  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805EAD1C  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805EAD20  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805EAD24  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805EAD28  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805EAD2C  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805EAD30  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805EAD34  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805EAD38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805EAD3C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805EAD40  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805EAD44  7F A3 EB 78 */	mr r3, r29
/* 805EAD48  4B FF FA 05 */	bl At_Check__8daB_GG_cFv
/* 805EAD4C  38 00 00 14 */	li r0, 0x14
/* 805EAD50  B0 1D 05 CC */	sth r0, 0x5cc(r29)
/* 805EAD54  48 00 01 C0 */	b lbl_805EAF14
lbl_805EAD58:
/* 805EAD58  38 00 00 2A */	li r0, 0x2a
/* 805EAD5C  90 1D 11 5C */	stw r0, 0x115c(r29)
/* 805EAD60  38 00 00 0F */	li r0, 0xf
/* 805EAD64  B0 1D 05 CC */	sth r0, 0x5cc(r29)
/* 805EAD68  98 9D 05 C6 */	stb r4, 0x5c6(r29)
/* 805EAD6C  7F A3 EB 78 */	mr r3, r29
/* 805EAD70  38 80 00 18 */	li r4, 0x18
/* 805EAD74  38 A0 00 00 */	li r5, 0
/* 805EAD78  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805EAD7C  FC 40 08 90 */	fmr f2, f1
/* 805EAD80  4B FF 41 E5 */	bl SetAnm__8daB_GG_cFiiff
/* 805EAD84  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805EAD88  60 00 00 01 */	ori r0, r0, 1
/* 805EAD8C  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805EAD90  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805EAD94  60 00 00 01 */	ori r0, r0, 1
/* 805EAD98  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805EAD9C  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805EADA0  60 00 00 01 */	ori r0, r0, 1
/* 805EADA4  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805EADA8  38 00 00 00 */	li r0, 0
/* 805EADAC  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805EADB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805EADB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805EADB8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805EADBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805EADC0  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805EADC4  80 63 00 04 */	lwz r3, 4(r3)
/* 805EADC8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805EADCC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EADD0  38 63 02 10 */	addi r3, r3, 0x210
/* 805EADD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805EADD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805EADDC  4B D5 B6 D4 */	b PSMTXCopy
/* 805EADE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EADE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805EADE8  38 81 00 10 */	addi r4, r1, 0x10
/* 805EADEC  7C 85 23 78 */	mr r5, r4
/* 805EADF0  4B D5 BF 7C */	b PSMTXMultVec
/* 805EADF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EADF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EADFC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805EAE00  38 80 00 02 */	li r4, 2
/* 805EAE04  7F A5 EB 78 */	mr r5, r29
/* 805EAE08  38 C1 00 10 */	addi r6, r1, 0x10
/* 805EAE0C  38 E0 00 00 */	li r7, 0
/* 805EAE10  39 00 00 00 */	li r8, 0
/* 805EAE14  39 20 00 00 */	li r9, 0
/* 805EAE18  4B A6 14 00 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805EAE1C  7F A3 EB 78 */	mr r3, r29
/* 805EAE20  4B FF F9 2D */	bl At_Check__8daB_GG_cFv
/* 805EAE24  48 00 00 F0 */	b lbl_805EAF14
lbl_805EAE28:
/* 805EAE28  54 A0 04 63 */	rlwinm. r0, r5, 0, 0x11, 0x11
/* 805EAE2C  41 82 00 14 */	beq lbl_805EAE40
/* 805EAE30  98 7D 05 C7 */	stb r3, 0x5c7(r29)
/* 805EAE34  38 00 00 00 */	li r0, 0
/* 805EAE38  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805EAE3C  48 00 00 D8 */	b lbl_805EAF14
lbl_805EAE40:
/* 805EAE40  A8 7D 05 E0 */	lha r3, 0x5e0(r29)
/* 805EAE44  38 03 00 01 */	addi r0, r3, 1
/* 805EAE48  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 805EAE4C  38 00 00 00 */	li r0, 0
/* 805EAE50  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805EAE54  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EAE58  4B A9 96 08 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EAE5C  28 03 00 00 */	cmplwi r3, 0
/* 805EAE60  41 82 00 30 */	beq lbl_805EAE90
/* 805EAE64  38 DD 07 AC */	addi r6, r29, 0x7ac
/* 805EAE68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EAE6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EAE70  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805EAE74  38 80 00 01 */	li r4, 1
/* 805EAE78  7F A5 EB 78 */	mr r5, r29
/* 805EAE7C  38 E0 00 00 */	li r7, 0
/* 805EAE80  39 00 00 00 */	li r8, 0
/* 805EAE84  39 20 00 00 */	li r9, 0
/* 805EAE88  4B A6 13 90 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805EAE8C  48 00 00 2C */	b lbl_805EAEB8
lbl_805EAE90:
/* 805EAE90  38 DD 0C 90 */	addi r6, r29, 0xc90
/* 805EAE94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EAE98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EAE9C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805EAEA0  38 80 00 01 */	li r4, 1
/* 805EAEA4  7F A5 EB 78 */	mr r5, r29
/* 805EAEA8  38 E0 00 00 */	li r7, 0
/* 805EAEAC  39 00 00 00 */	li r8, 0
/* 805EAEB0  39 20 00 00 */	li r9, 0
/* 805EAEB4  4B A6 13 64 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_805EAEB8:
/* 805EAEB8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704A8@ha */
/* 805EAEBC  38 03 04 A8 */	addi r0, r3, 0x04A8 /* 0x000704A8@l */
/* 805EAEC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EAEC4  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805EAEC8  38 81 00 0C */	addi r4, r1, 0xc
/* 805EAECC  38 A0 FF FF */	li r5, -1
/* 805EAED0  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805EAED4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805EAED8  7D 89 03 A6 */	mtctr r12
/* 805EAEDC  4E 80 04 21 */	bctrl 
/* 805EAEE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EAEE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EAEE8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805EAEEC  88 03 05 68 */	lbz r0, 0x568(r3)
/* 805EAEF0  28 00 00 16 */	cmplwi r0, 0x16
/* 805EAEF4  41 82 00 0C */	beq lbl_805EAF00
/* 805EAEF8  28 00 00 08 */	cmplwi r0, 8
/* 805EAEFC  40 82 00 18 */	bne lbl_805EAF14
lbl_805EAF00:
/* 805EAF00  A8 7D 06 BC */	lha r3, 0x6bc(r29)
/* 805EAF04  38 03 00 01 */	addi r0, r3, 1
/* 805EAF08  B0 1D 06 BC */	sth r0, 0x6bc(r29)
/* 805EAF0C  38 00 00 14 */	li r0, 0x14
/* 805EAF10  B0 1D 05 CC */	sth r0, 0x5cc(r29)
lbl_805EAF14:
/* 805EAF14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EAF18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EAF1C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805EAF20  88 03 05 68 */	lbz r0, 0x568(r3)
/* 805EAF24  28 00 00 05 */	cmplwi r0, 5
/* 805EAF28  40 82 00 AC */	bne lbl_805EAFD4
/* 805EAF2C  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805EAF30  28 00 00 00 */	cmplwi r0, 0
/* 805EAF34  40 82 00 A0 */	bne lbl_805EAFD4
/* 805EAF38  88 1D 05 B1 */	lbz r0, 0x5b1(r29)
/* 805EAF3C  28 00 00 00 */	cmplwi r0, 0
/* 805EAF40  40 82 00 3C */	bne lbl_805EAF7C
/* 805EAF44  38 00 00 01 */	li r0, 1
/* 805EAF48  98 1D 05 B1 */	stb r0, 0x5b1(r29)
/* 805EAF4C  B3 DD 05 62 */	sth r30, 0x562(r29)
/* 805EAF50  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B5@ha */
/* 805EAF54  38 03 05 B5 */	addi r0, r3, 0x05B5 /* 0x000705B5@l */
/* 805EAF58  90 01 00 08 */	stw r0, 8(r1)
/* 805EAF5C  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805EAF60  38 81 00 08 */	addi r4, r1, 8
/* 805EAF64  38 A0 00 00 */	li r5, 0
/* 805EAF68  38 C0 FF FF */	li r6, -1
/* 805EAF6C  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805EAF70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805EAF74  7D 89 03 A6 */	mtctr r12
/* 805EAF78  4E 80 04 21 */	bctrl 
lbl_805EAF7C:
/* 805EAF7C  80 7D 0E 3C */	lwz r3, 0xe3c(r29)
/* 805EAF80  38 63 00 24 */	addi r3, r3, 0x24
/* 805EAF84  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805EAF88  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805EAF8C  4B D5 B5 24 */	b PSMTXCopy
/* 805EAF90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EAF94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805EAF98  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805EAF9C  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 805EAFA0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805EAFA4  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 805EAFA8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805EAFAC  D0 1D 06 9C */	stfs f0, 0x69c(r29)
/* 805EAFB0  38 9D 06 A0 */	addi r4, r29, 0x6a0
/* 805EAFB4  4B A2 1C 4C */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 805EAFB8  38 00 00 00 */	li r0, 0
/* 805EAFBC  98 1D 05 C4 */	stb r0, 0x5c4(r29)
/* 805EAFC0  7F A3 EB 78 */	mr r3, r29
/* 805EAFC4  38 80 00 01 */	li r4, 1
/* 805EAFC8  38 A0 00 03 */	li r5, 3
/* 805EAFCC  38 C0 00 02 */	li r6, 2
/* 805EAFD0  4B FF 4A 95 */	bl SetAction__8daB_GG_cFUcUcUc
lbl_805EAFD4:
/* 805EAFD4  7F A3 EB 78 */	mr r3, r29
/* 805EAFD8  4B FF 3A F9 */	bl MoveCo__8daB_GG_cFv
/* 805EAFDC  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805EAFE0  81 9D 07 14 */	lwz r12, 0x714(r29)
/* 805EAFE4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805EAFE8  7D 89 03 A6 */	mtctr r12
/* 805EAFEC  4E 80 04 21 */	bctrl 
/* 805EAFF0  38 7D 0B BC */	addi r3, r29, 0xbbc
/* 805EAFF4  81 9D 0B F8 */	lwz r12, 0xbf8(r29)
/* 805EAFF8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805EAFFC  7D 89 03 A6 */	mtctr r12
/* 805EB000  4E 80 04 21 */	bctrl 
/* 805EB004  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805EB008  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805EB00C  90 1D 0D 10 */	stw r0, 0xd10(r29)
lbl_805EB010:
/* 805EB010  39 61 00 40 */	addi r11, r1, 0x40
/* 805EB014  4B D7 72 10 */	b _restgpr_28
/* 805EB018  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EB01C  7C 08 03 A6 */	mtlr r0
/* 805EB020  38 21 00 40 */	addi r1, r1, 0x40
/* 805EB024  4E 80 00 20 */	blr 
