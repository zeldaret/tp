lbl_8049C874:
/* 8049C874  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8049C878  7C 08 02 A6 */	mflr r0
/* 8049C87C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8049C880  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8049C884  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8049C888  39 61 00 60 */	addi r11, r1, 0x60
/* 8049C88C  4B EC 59 50 */	b _savegpr_29
/* 8049C890  7C 7E 1B 78 */	mr r30, r3
/* 8049C894  3C 80 80 4A */	lis r4, lit_3768@ha
/* 8049C898  3B E4 DC 84 */	addi r31, r4, lit_3768@l
/* 8049C89C  4B FF E9 79 */	bl setBombMoveEffect__9daArrow_cFv
/* 8049C8A0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8049C8A4  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 8049C8A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8049C8AC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8049C8B0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8049C8B4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8049C8B8  7C 65 1B 78 */	mr r5, r3
/* 8049C8BC  4B EA A7 D4 */	b PSVECAdd
/* 8049C8C0  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 8049C8C4  A8 1E 09 54 */	lha r0, 0x954(r30)
/* 8049C8C8  7C 03 02 14 */	add r0, r3, r0
/* 8049C8CC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8049C8D0  38 61 00 18 */	addi r3, r1, 0x18
/* 8049C8D4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8049C8D8  C0 3E 09 A0 */	lfs f1, 0x9a0(r30)
/* 8049C8DC  4B DC A2 A8 */	b __ml__4cXyzCFf
/* 8049C8E0  38 61 00 0C */	addi r3, r1, 0xc
/* 8049C8E4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8049C8E8  38 A1 00 18 */	addi r5, r1, 0x18
/* 8049C8EC  4B DC A1 F8 */	b __pl__4cXyzCFRC3Vec
/* 8049C8F0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8049C8F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8049C8F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8049C8FC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8049C900  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8049C904  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8049C908  38 7E 05 6C */	addi r3, r30, 0x56c
/* 8049C90C  38 9E 04 BC */	addi r4, r30, 0x4bc
/* 8049C910  38 A1 00 30 */	addi r5, r1, 0x30
/* 8049C914  7F C6 F3 78 */	mr r6, r30
/* 8049C918  4B BD B4 4C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8049C91C  7F C3 F3 78 */	mr r3, r30
/* 8049C920  4B FF D6 9D */	bl decAlphaBlur__9daArrow_cFv
/* 8049C924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049C928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049C92C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8049C930  7F A3 EB 78 */	mr r3, r29
/* 8049C934  38 9E 05 6C */	addi r4, r30, 0x56c
/* 8049C938  4B BD 7A 7C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8049C93C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049C940  41 82 01 BC */	beq lbl_8049CAFC
/* 8049C944  88 1E 09 3C */	lbz r0, 0x93c(r30)
/* 8049C948  28 00 00 01 */	cmplwi r0, 1
/* 8049C94C  40 82 00 24 */	bne lbl_8049C970
/* 8049C950  88 1E 09 43 */	lbz r0, 0x943(r30)
/* 8049C954  28 00 00 00 */	cmplwi r0, 0
/* 8049C958  40 82 00 18 */	bne lbl_8049C970
/* 8049C95C  7F C3 F3 78 */	mr r3, r30
/* 8049C960  38 9E 05 9C */	addi r4, r30, 0x59c
/* 8049C964  4B FF E3 21 */	bl setBombArrowExplode__9daArrow_cFP4cXyz
/* 8049C968  38 60 00 01 */	li r3, 1
/* 8049C96C  48 00 01 E4 */	b lbl_8049CB50
lbl_8049C970:
/* 8049C970  3C 60 80 4A */	lis r3, __vt__8cM3dGPla@ha
/* 8049C974  38 03 DF 4C */	addi r0, r3, __vt__8cM3dGPla@l
/* 8049C978  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8049C97C  7F A3 EB 78 */	mr r3, r29
/* 8049C980  38 9E 05 80 */	addi r4, r30, 0x580
/* 8049C984  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8049C988  4B BD 7D BC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8049C98C  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 8049C990  4B EA A7 A8 */	b PSVECSquareMag
/* 8049C994  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049C998  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C99C  40 81 00 58 */	ble lbl_8049C9F4
/* 8049C9A0  FC 00 08 34 */	frsqrte f0, f1
/* 8049C9A4  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 8049C9A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C9AC  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 8049C9B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C9B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C9B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C9BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C9C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C9C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C9C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C9CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C9D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C9D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C9D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C9DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C9E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C9E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C9E8  FF E1 00 32 */	fmul f31, f1, f0
/* 8049C9EC  FF E0 F8 18 */	frsp f31, f31
/* 8049C9F0  48 00 00 90 */	b lbl_8049CA80
lbl_8049C9F4:
/* 8049C9F4  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 8049C9F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C9FC  40 80 00 10 */	bge lbl_8049CA0C
/* 8049CA00  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8049CA04  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8049CA08  48 00 00 78 */	b lbl_8049CA80
lbl_8049CA0C:
/* 8049CA0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8049CA10  80 81 00 08 */	lwz r4, 8(r1)
/* 8049CA14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8049CA18  3C 00 7F 80 */	lis r0, 0x7f80
/* 8049CA1C  7C 03 00 00 */	cmpw r3, r0
/* 8049CA20  41 82 00 14 */	beq lbl_8049CA34
/* 8049CA24  40 80 00 40 */	bge lbl_8049CA64
/* 8049CA28  2C 03 00 00 */	cmpwi r3, 0
/* 8049CA2C  41 82 00 20 */	beq lbl_8049CA4C
/* 8049CA30  48 00 00 34 */	b lbl_8049CA64
lbl_8049CA34:
/* 8049CA34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049CA38  41 82 00 0C */	beq lbl_8049CA44
/* 8049CA3C  38 00 00 01 */	li r0, 1
/* 8049CA40  48 00 00 28 */	b lbl_8049CA68
lbl_8049CA44:
/* 8049CA44  38 00 00 02 */	li r0, 2
/* 8049CA48  48 00 00 20 */	b lbl_8049CA68
lbl_8049CA4C:
/* 8049CA4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049CA50  41 82 00 0C */	beq lbl_8049CA5C
/* 8049CA54  38 00 00 05 */	li r0, 5
/* 8049CA58  48 00 00 10 */	b lbl_8049CA68
lbl_8049CA5C:
/* 8049CA5C  38 00 00 03 */	li r0, 3
/* 8049CA60  48 00 00 08 */	b lbl_8049CA68
lbl_8049CA64:
/* 8049CA64  38 00 00 04 */	li r0, 4
lbl_8049CA68:
/* 8049CA68  2C 00 00 01 */	cmpwi r0, 1
/* 8049CA6C  40 82 00 10 */	bne lbl_8049CA7C
/* 8049CA70  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8049CA74  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8049CA78  48 00 00 08 */	b lbl_8049CA80
lbl_8049CA7C:
/* 8049CA7C  FF E0 08 90 */	fmr f31, f1
lbl_8049CA80:
/* 8049CA80  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 8049CA84  38 81 00 3C */	addi r4, r1, 0x3c
/* 8049CA88  38 A1 00 24 */	addi r5, r1, 0x24
/* 8049CA8C  4B EA A8 3C */	b C_VECReflect
/* 8049CA90  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 8049CA94  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8049CA98  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8049CA9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8049CAA0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8049CAA4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8049CAA8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8049CAAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8049CAB0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8049CAB4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8049CAB8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8049CABC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8049CAC0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8049CAC4  A8 1E 09 54 */	lha r0, 0x954(r30)
/* 8049CAC8  7C 00 0E 70 */	srawi r0, r0, 1
/* 8049CACC  7C 00 00 D0 */	neg r0, r0
/* 8049CAD0  B0 1E 09 54 */	sth r0, 0x954(r30)
/* 8049CAD4  38 7E 05 80 */	addi r3, r30, 0x580
/* 8049CAD8  4B BD 92 A4 */	b dBgS_CheckBGroundPoly__FRC13cBgS_PolyInfo
/* 8049CADC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049CAE0  41 82 00 0C */	beq lbl_8049CAEC
/* 8049CAE4  38 00 00 01 */	li r0, 1
/* 8049CAE8  98 1E 09 3D */	stb r0, 0x93d(r30)
lbl_8049CAEC:
/* 8049CAEC  3C 60 80 4A */	lis r3, __vt__8cM3dGPla@ha
/* 8049CAF0  38 03 DF 4C */	addi r0, r3, __vt__8cM3dGPla@l
/* 8049CAF4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8049CAF8  48 00 00 4C */	b lbl_8049CB44
lbl_8049CAFC:
/* 8049CAFC  88 1E 09 3D */	lbz r0, 0x93d(r30)
/* 8049CB00  28 00 00 00 */	cmplwi r0, 0
/* 8049CB04  41 82 00 18 */	beq lbl_8049CB1C
/* 8049CB08  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8049CB0C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049CB10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049CB14  4C 40 13 82 */	cror 2, 0, 2
/* 8049CB18  41 82 00 1C */	beq lbl_8049CB34
lbl_8049CB1C:
/* 8049CB1C  C0 3E 09 C4 */	lfs f1, 0x9c4(r30)
/* 8049CB20  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 8049CB24  EC 21 00 28 */	fsubs f1, f1, f0
/* 8049CB28  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8049CB2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049CB30  40 81 00 14 */	ble lbl_8049CB44
lbl_8049CB34:
/* 8049CB34  38 00 00 01 */	li r0, 1
/* 8049CB38  98 1E 09 3F */	stb r0, 0x93f(r30)
/* 8049CB3C  38 60 00 01 */	li r3, 1
/* 8049CB40  48 00 00 10 */	b lbl_8049CB50
lbl_8049CB44:
/* 8049CB44  7F C3 F3 78 */	mr r3, r30
/* 8049CB48  4B FF E3 1D */	bl setNormalMatrix__9daArrow_cFv
/* 8049CB4C  38 60 00 01 */	li r3, 1
lbl_8049CB50:
/* 8049CB50  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8049CB54  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8049CB58  39 61 00 60 */	addi r11, r1, 0x60
/* 8049CB5C  4B EC 56 CC */	b _restgpr_29
/* 8049CB60  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8049CB64  7C 08 03 A6 */	mtlr r0
/* 8049CB68  38 21 00 70 */	addi r1, r1, 0x70
/* 8049CB6C  4E 80 00 20 */	blr 
