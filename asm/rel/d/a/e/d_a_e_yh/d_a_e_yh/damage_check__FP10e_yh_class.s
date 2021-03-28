lbl_807FDA24:
/* 807FDA24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807FDA28  7C 08 02 A6 */	mflr r0
/* 807FDA2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 807FDA30  39 61 00 40 */	addi r11, r1, 0x40
/* 807FDA34  4B B6 47 98 */	b _savegpr_25
/* 807FDA38  7C 7E 1B 78 */	mr r30, r3
/* 807FDA3C  3C 60 80 80 */	lis r3, lit_3902@ha
/* 807FDA40  3B E3 42 7C */	addi r31, r3, lit_3902@l
/* 807FDA44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FDA48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807FDA4C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 807FDA50  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 807FDA54  2C 00 00 00 */	cmpwi r0, 0
/* 807FDA58  40 82 03 FC */	bne lbl_807FDE54
/* 807FDA5C  38 7E 08 88 */	addi r3, r30, 0x888
/* 807FDA60  4B 88 5D D0 */	b Move__10dCcD_GSttsFv
/* 807FDA64  80 1E 0A 3C */	lwz r0, 0xa3c(r30)
/* 807FDA68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807FDA6C  41 82 00 98 */	beq lbl_807FDB04
/* 807FDA70  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 807FDA74  2C 00 00 14 */	cmpwi r0, 0x14
/* 807FDA78  40 82 00 30 */	bne lbl_807FDAA8
/* 807FDA7C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 807FDA80  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807FDA84  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807FDA88  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807FDA8C  38 00 00 00 */	li r0, 0
/* 807FDA90  B0 1E 08 64 */	sth r0, 0x864(r30)
/* 807FDA94  38 00 F0 00 */	li r0, -4096
/* 807FDA98  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807FDA9C  38 00 00 05 */	li r0, 5
/* 807FDAA0  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807FDAA4  48 00 00 2C */	b lbl_807FDAD0
lbl_807FDAA8:
/* 807FDAA8  38 00 00 06 */	li r0, 6
/* 807FDAAC  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807FDAB0  38 00 00 07 */	li r0, 7
/* 807FDAB4  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FDAB8  38 00 00 00 */	li r0, 0
/* 807FDABC  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDAC0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807FDAC4  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 807FDAC8  38 00 00 0A */	li r0, 0xa
/* 807FDACC  98 1E 12 3C */	stb r0, 0x123c(r30)
lbl_807FDAD0:
/* 807FDAD0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FDAD4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807FDAD8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807FDADC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807FDAE0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807FDAE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FDAE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807FDAEC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807FDAF0  38 80 00 04 */	li r4, 4
/* 807FDAF4  38 A0 00 1F */	li r5, 0x1f
/* 807FDAF8  38 C1 00 0C */	addi r6, r1, 0xc
/* 807FDAFC  4B 87 1F 28 */	b StartShock__12dVibration_cFii4cXyz
/* 807FDB00  48 00 03 54 */	b lbl_807FDE54
lbl_807FDB04:
/* 807FDB04  3B 80 00 00 */	li r28, 0
/* 807FDB08  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 807FDB0C  2C 00 00 14 */	cmpwi r0, 0x14
/* 807FDB10  40 80 00 CC */	bge lbl_807FDBDC
/* 807FDB14  3B 20 00 00 */	li r25, 0
/* 807FDB18  3B 60 00 00 */	li r27, 0
lbl_807FDB1C:
/* 807FDB1C  3B 5B 0B 1C */	addi r26, r27, 0xb1c
/* 807FDB20  7F 5E D2 14 */	add r26, r30, r26
/* 807FDB24  7F 43 D3 78 */	mr r3, r26
/* 807FDB28  4B 88 69 38 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807FDB2C  28 03 00 00 */	cmplwi r3, 0
/* 807FDB30  41 82 00 9C */	beq lbl_807FDBCC
/* 807FDB34  38 00 00 0A */	li r0, 0xa
/* 807FDB38  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807FDB3C  7F 43 D3 78 */	mr r3, r26
/* 807FDB40  4B 88 69 B8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807FDB44  90 7E 0F FC */	stw r3, 0xffc(r30)
/* 807FDB48  80 7E 0F FC */	lwz r3, 0xffc(r30)
/* 807FDB4C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 807FDB50  54 80 03 DF */	rlwinm. r0, r4, 0, 0xf, 0xf
/* 807FDB54  41 82 00 0C */	beq lbl_807FDB60
/* 807FDB58  3B 80 00 01 */	li r28, 1
/* 807FDB5C  48 00 00 80 */	b lbl_807FDBDC
lbl_807FDB60:
/* 807FDB60  3C 60 08 00 */	lis r3, 0x0800 /* 0x08000020@ha */
/* 807FDB64  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x08000020@l */
/* 807FDB68  7C 80 00 39 */	and. r0, r4, r0
/* 807FDB6C  41 82 00 50 */	beq lbl_807FDBBC
/* 807FDB70  38 00 00 15 */	li r0, 0x15
/* 807FDB74  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FDB78  80 7E 0F FC */	lwz r3, 0xffc(r30)
/* 807FDB7C  4B A6 5E CC */	b GetAc__8cCcD_ObjFv
/* 807FDB80  90 7E 10 00 */	stw r3, 0x1000(r30)
/* 807FDB84  80 7E 10 00 */	lwz r3, 0x1000(r30)
/* 807FDB88  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807FDB8C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807FDB90  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FDB94  FC 20 00 50 */	fneg f1, f0
/* 807FDB98  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807FDB9C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807FDBA0  EC 02 00 28 */	fsubs f0, f2, f0
/* 807FDBA4  FC 40 00 50 */	fneg f2, f0
/* 807FDBA8  4B A6 9A CC */	b cM_atan2s__Fff
/* 807FDBAC  B0 7E 06 84 */	sth r3, 0x684(r30)
/* 807FDBB0  38 00 00 00 */	li r0, 0
/* 807FDBB4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDBB8  48 00 02 9C */	b lbl_807FDE54
lbl_807FDBBC:
/* 807FDBBC  38 7E 0F FC */	addi r3, r30, 0xffc
/* 807FDBC0  4B 88 9E 98 */	b at_power_check__FP11dCcU_AtInfo
/* 807FDBC4  3B 80 00 01 */	li r28, 1
/* 807FDBC8  48 00 00 14 */	b lbl_807FDBDC
lbl_807FDBCC:
/* 807FDBCC  3B 39 00 01 */	addi r25, r25, 1
/* 807FDBD0  2C 19 00 04 */	cmpwi r25, 4
/* 807FDBD4  3B 7B 01 38 */	addi r27, r27, 0x138
/* 807FDBD8  41 80 FF 44 */	blt lbl_807FDB1C
lbl_807FDBDC:
/* 807FDBDC  38 7E 08 A8 */	addi r3, r30, 0x8a8
/* 807FDBE0  4B 88 68 80 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807FDBE4  28 03 00 00 */	cmplwi r3, 0
/* 807FDBE8  41 82 01 54 */	beq lbl_807FDD3C
/* 807FDBEC  38 00 00 0A */	li r0, 0xa
/* 807FDBF0  98 1E 12 3C */	stb r0, 0x123c(r30)
/* 807FDBF4  38 7E 08 A8 */	addi r3, r30, 0x8a8
/* 807FDBF8  4B 88 69 00 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807FDBFC  90 7E 0F FC */	stw r3, 0xffc(r30)
/* 807FDC00  7F C3 F3 78 */	mr r3, r30
/* 807FDC04  38 9E 0F FC */	addi r4, r30, 0xffc
/* 807FDC08  4B 88 9F FC */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807FDC0C  80 7E 0F FC */	lwz r3, 0xffc(r30)
/* 807FDC10  80 83 00 10 */	lwz r4, 0x10(r3)
/* 807FDC14  3C 60 08 00 */	lis r3, 0x0800 /* 0x08000020@ha */
/* 807FDC18  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x08000020@l */
/* 807FDC1C  7C 80 00 39 */	and. r0, r4, r0
/* 807FDC20  41 82 00 50 */	beq lbl_807FDC70
/* 807FDC24  38 00 00 15 */	li r0, 0x15
/* 807FDC28  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FDC2C  80 7E 0F FC */	lwz r3, 0xffc(r30)
/* 807FDC30  4B A6 5E 18 */	b GetAc__8cCcD_ObjFv
/* 807FDC34  90 7E 10 00 */	stw r3, 0x1000(r30)
/* 807FDC38  80 7E 10 00 */	lwz r3, 0x1000(r30)
/* 807FDC3C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807FDC40  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807FDC44  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FDC48  FC 20 00 50 */	fneg f1, f0
/* 807FDC4C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807FDC50  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807FDC54  EC 02 00 28 */	fsubs f0, f2, f0
/* 807FDC58  FC 40 00 50 */	fneg f2, f0
/* 807FDC5C  4B A6 9A 18 */	b cM_atan2s__Fff
/* 807FDC60  B0 7E 06 84 */	sth r3, 0x684(r30)
/* 807FDC64  38 00 00 00 */	li r0, 0
/* 807FDC68  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDC6C  48 00 01 E8 */	b lbl_807FDE54
lbl_807FDC70:
/* 807FDC70  38 00 00 06 */	li r0, 6
/* 807FDC74  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807FDC78  88 1E 10 1C */	lbz r0, 0x101c(r30)
/* 807FDC7C  28 00 00 10 */	cmplwi r0, 0x10
/* 807FDC80  40 82 00 48 */	bne lbl_807FDCC8
/* 807FDC84  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 807FDC88  2C 00 00 14 */	cmpwi r0, 0x14
/* 807FDC8C  40 82 00 20 */	bne lbl_807FDCAC
/* 807FDC90  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807FDC94  D0 1E 08 5C */	stfs f0, 0x85c(r30)
/* 807FDC98  A8 1E 10 0A */	lha r0, 0x100a(r30)
/* 807FDC9C  B0 1E 08 60 */	sth r0, 0x860(r30)
/* 807FDCA0  38 00 00 0A */	li r0, 0xa
/* 807FDCA4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDCA8  48 00 00 94 */	b lbl_807FDD3C
lbl_807FDCAC:
/* 807FDCAC  38 00 00 07 */	li r0, 7
/* 807FDCB0  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FDCB4  38 00 00 00 */	li r0, 0
/* 807FDCB8  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDCBC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807FDCC0  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 807FDCC4  48 00 00 78 */	b lbl_807FDD3C
lbl_807FDCC8:
/* 807FDCC8  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 807FDCCC  2C 00 00 14 */	cmpwi r0, 0x14
/* 807FDCD0  40 80 00 28 */	bge lbl_807FDCF8
/* 807FDCD4  38 00 00 07 */	li r0, 7
/* 807FDCD8  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FDCDC  38 00 00 00 */	li r0, 0
/* 807FDCE0  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDCE4  A8 1E 10 0A */	lha r0, 0x100a(r30)
/* 807FDCE8  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 807FDCEC  38 00 00 1E */	li r0, 0x1e
/* 807FDCF0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807FDCF4  48 00 00 48 */	b lbl_807FDD3C
lbl_807FDCF8:
/* 807FDCF8  40 82 00 44 */	bne lbl_807FDD3C
/* 807FDCFC  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 807FDD00  2C 00 00 00 */	cmpwi r0, 0
/* 807FDD04  41 81 00 20 */	bgt lbl_807FDD24
/* 807FDD08  A8 1E 10 0A */	lha r0, 0x100a(r30)
/* 807FDD0C  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 807FDD10  38 00 00 00 */	li r0, 0
/* 807FDD14  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDD18  38 00 00 15 */	li r0, 0x15
/* 807FDD1C  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FDD20  48 00 01 34 */	b lbl_807FDE54
lbl_807FDD24:
/* 807FDD24  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807FDD28  D0 1E 08 5C */	stfs f0, 0x85c(r30)
/* 807FDD2C  A8 1E 10 0A */	lha r0, 0x100a(r30)
/* 807FDD30  B0 1E 08 60 */	sth r0, 0x860(r30)
/* 807FDD34  38 00 00 0A */	li r0, 0xa
/* 807FDD38  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807FDD3C:
/* 807FDD3C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 807FDD40  2C 00 00 0A */	cmpwi r0, 0xa
/* 807FDD44  41 81 00 14 */	bgt lbl_807FDD58
/* 807FDD48  38 00 00 00 */	li r0, 0
/* 807FDD4C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807FDD50  38 00 00 03 */	li r0, 3
/* 807FDD54  98 1E 09 62 */	stb r0, 0x962(r30)
lbl_807FDD58:
/* 807FDD58  7F 80 07 75 */	extsb. r0, r28
/* 807FDD5C  41 82 00 F8 */	beq lbl_807FDE54
/* 807FDD60  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 807FDD64  2C 00 00 14 */	cmpwi r0, 0x14
/* 807FDD68  40 82 00 2C */	bne lbl_807FDD94
/* 807FDD6C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807FDD70  D0 1E 08 5C */	stfs f0, 0x85c(r30)
/* 807FDD74  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807FDD78  7C 00 00 D0 */	neg r0, r0
/* 807FDD7C  B0 1E 08 60 */	sth r0, 0x860(r30)
/* 807FDD80  38 00 00 0A */	li r0, 0xa
/* 807FDD84  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDD88  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807FDD8C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807FDD90  48 00 00 C4 */	b lbl_807FDE54
lbl_807FDD94:
/* 807FDD94  38 00 00 14 */	li r0, 0x14
/* 807FDD98  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FDD9C  38 60 00 00 */	li r3, 0
/* 807FDDA0  B0 7E 06 70 */	sth r3, 0x670(r30)
/* 807FDDA4  38 00 13 88 */	li r0, 0x1388
/* 807FDDA8  B0 1E 08 52 */	sth r0, 0x852(r30)
/* 807FDDAC  98 7E 08 54 */	stb r3, 0x854(r30)
/* 807FDDB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FDDB4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807FDDB8  38 00 00 2D */	li r0, 0x2d
/* 807FDDBC  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 807FDDC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008A@ha */
/* 807FDDC4  38 03 00 8A */	addi r0, r3, 0x008A /* 0x0007008A@l */
/* 807FDDC8  90 01 00 08 */	stw r0, 8(r1)
/* 807FDDCC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807FDDD0  38 81 00 08 */	addi r4, r1, 8
/* 807FDDD4  38 A0 FF FF */	li r5, -1
/* 807FDDD8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807FDDDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FDDE0  7D 89 03 A6 */	mtctr r12
/* 807FDDE4  4E 80 04 21 */	bctrl 
/* 807FDDE8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807FDDEC  80 9E 0F FC */	lwz r4, 0xffc(r30)
/* 807FDDF0  38 A0 00 21 */	li r5, 0x21
/* 807FDDF4  38 C0 00 00 */	li r6, 0
/* 807FDDF8  4B 88 97 1C */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 807FDDFC  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 807FDE00  28 00 00 01 */	cmplwi r0, 1
/* 807FDE04  40 82 00 24 */	bne lbl_807FDE28
/* 807FDE08  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 807FDE0C  D0 1E 08 68 */	stfs f0, 0x868(r30)
/* 807FDE10  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807FDE14  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807FDE18  38 00 00 0A */	li r0, 0xa
/* 807FDE1C  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 807FDE20  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807FDE24  48 00 00 30 */	b lbl_807FDE54
lbl_807FDE28:
/* 807FDE28  28 00 00 02 */	cmplwi r0, 2
/* 807FDE2C  40 82 00 18 */	bne lbl_807FDE44
/* 807FDE30  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 807FDE34  D0 1E 08 68 */	stfs f0, 0x868(r30)
/* 807FDE38  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807FDE3C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807FDE40  48 00 00 14 */	b lbl_807FDE54
lbl_807FDE44:
/* 807FDE44  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807FDE48  D0 1E 08 68 */	stfs f0, 0x868(r30)
/* 807FDE4C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807FDE50  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807FDE54:
/* 807FDE54  39 61 00 40 */	addi r11, r1, 0x40
/* 807FDE58  4B B6 43 C0 */	b _restgpr_25
/* 807FDE5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807FDE60  7C 08 03 A6 */	mtlr r0
/* 807FDE64  38 21 00 40 */	addi r1, r1, 0x40
/* 807FDE68  4E 80 00 20 */	blr 
