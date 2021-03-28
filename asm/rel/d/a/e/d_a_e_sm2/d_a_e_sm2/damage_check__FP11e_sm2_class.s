lbl_8079A9B4:
/* 8079A9B4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8079A9B8  7C 08 02 A6 */	mflr r0
/* 8079A9BC  90 01 01 14 */	stw r0, 0x114(r1)
/* 8079A9C0  39 61 01 10 */	addi r11, r1, 0x110
/* 8079A9C4  4B BC 78 00 */	b _savegpr_23
/* 8079A9C8  7C 7A 1B 78 */	mr r26, r3
/* 8079A9CC  3C 60 80 7A */	lis r3, cNullVec__6Z2Calc@ha
/* 8079A9D0  3B 63 D7 34 */	addi r27, r3, cNullVec__6Z2Calc@l
/* 8079A9D4  3C 60 80 7A */	lis r3, lit_3790@ha
/* 8079A9D8  3B 83 D5 B0 */	addi r28, r3, lit_3790@l
/* 8079A9DC  38 7A 0A 88 */	addi r3, r26, 0xa88
/* 8079A9E0  4B 8E 8E 50 */	b Move__10dCcD_GSttsFv
/* 8079A9E4  A8 1A 06 8E */	lha r0, 0x68e(r26)
/* 8079A9E8  2C 00 00 00 */	cmpwi r0, 0
/* 8079A9EC  40 82 01 7C */	bne lbl_8079AB68
/* 8079A9F0  A8 1A 06 82 */	lha r0, 0x682(r26)
/* 8079A9F4  2C 00 00 02 */	cmpwi r0, 2
/* 8079A9F8  40 82 01 70 */	bne lbl_8079AB68
/* 8079A9FC  A8 1A 06 84 */	lha r0, 0x684(r26)
/* 8079AA00  2C 00 00 05 */	cmpwi r0, 5
/* 8079AA04  40 80 01 64 */	bge lbl_8079AB68
/* 8079AA08  3B 20 00 00 */	li r25, 0
/* 8079AA0C  3A E0 00 00 */	li r23, 0
lbl_8079AA10:
/* 8079AA10  3B 17 0A A8 */	addi r24, r23, 0xaa8
/* 8079AA14  7F 1A C2 14 */	add r24, r26, r24
/* 8079AA18  7F 03 C3 78 */	mr r3, r24
/* 8079AA1C  4B 8E 9C 3C */	b ChkCoHit__12dCcD_GObjInfFv
/* 8079AA20  28 03 00 00 */	cmplwi r3, 0
/* 8079AA24  41 82 01 34 */	beq lbl_8079AB58
/* 8079AA28  7F 03 C3 78 */	mr r3, r24
/* 8079AA2C  4B 8E 9C C4 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 8079AA30  4B AC 90 18 */	b GetAc__8cCcD_ObjFv
/* 8079AA34  7C 7D 1B 78 */	mr r29, r3
/* 8079AA38  80 1A 0F D0 */	lwz r0, 0xfd0(r26)
/* 8079AA3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079AA40  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8079AA44  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8079AA48  38 81 00 10 */	addi r4, r1, 0x10
/* 8079AA4C  4B 87 ED AC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8079AA50  7C 1D 18 40 */	cmplw r29, r3
/* 8079AA54  40 82 01 04 */	bne lbl_8079AB58
/* 8079AA58  88 1D 08 3C */	lbz r0, 0x83c(r29)
/* 8079AA5C  88 7A 08 3C */	lbz r3, 0x83c(r26)
/* 8079AA60  7C 00 18 40 */	cmplw r0, r3
/* 8079AA64  41 81 00 F4 */	bgt lbl_8079AB58
/* 8079AA68  38 03 00 01 */	addi r0, r3, 1
/* 8079AA6C  98 1A 08 3C */	stb r0, 0x83c(r26)
/* 8079AA70  88 1A 08 3C */	lbz r0, 0x83c(r26)
/* 8079AA74  28 00 00 03 */	cmplwi r0, 3
/* 8079AA78  40 81 00 0C */	ble lbl_8079AA84
/* 8079AA7C  38 00 00 03 */	li r0, 3
/* 8079AA80  98 1A 08 3C */	stb r0, 0x83c(r26)
lbl_8079AA84:
/* 8079AA84  88 1A 08 3C */	lbz r0, 0x83c(r26)
/* 8079AA88  28 00 00 02 */	cmplwi r0, 2
/* 8079AA8C  41 81 00 34 */	bgt lbl_8079AAC0
/* 8079AA90  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703C6@ha */
/* 8079AA94  38 03 03 C6 */	addi r0, r3, 0x03C6 /* 0x000703C6@l */
/* 8079AA98  90 01 00 20 */	stw r0, 0x20(r1)
/* 8079AA9C  38 7A 05 DC */	addi r3, r26, 0x5dc
/* 8079AAA0  38 81 00 20 */	addi r4, r1, 0x20
/* 8079AAA4  38 A0 00 00 */	li r5, 0
/* 8079AAA8  38 C0 FF FF */	li r6, -1
/* 8079AAAC  81 9A 05 DC */	lwz r12, 0x5dc(r26)
/* 8079AAB0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079AAB4  7D 89 03 A6 */	mtctr r12
/* 8079AAB8  4E 80 04 21 */	bctrl 
/* 8079AABC  48 00 00 30 */	b lbl_8079AAEC
lbl_8079AAC0:
/* 8079AAC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703C7@ha */
/* 8079AAC4  38 03 03 C7 */	addi r0, r3, 0x03C7 /* 0x000703C7@l */
/* 8079AAC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8079AACC  38 7A 05 DC */	addi r3, r26, 0x5dc
/* 8079AAD0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8079AAD4  38 A0 00 00 */	li r5, 0
/* 8079AAD8  38 C0 FF FF */	li r6, -1
/* 8079AADC  81 9A 05 DC */	lwz r12, 0x5dc(r26)
/* 8079AAE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079AAE4  7D 89 03 A6 */	mtctr r12
/* 8079AAE8  4E 80 04 21 */	bctrl 
lbl_8079AAEC:
/* 8079AAEC  7F 43 D3 78 */	mr r3, r26
/* 8079AAF0  4B FF E6 71 */	bl cc_stts_init__FP11e_sm2_class
/* 8079AAF4  38 60 00 0A */	li r3, 0xa
/* 8079AAF8  B0 7A 06 8C */	sth r3, 0x68c(r26)
/* 8079AAFC  38 00 00 05 */	li r0, 5
/* 8079AB00  B0 1A 06 84 */	sth r0, 0x684(r26)
/* 8079AB04  B0 7D 06 8C */	sth r3, 0x68c(r29)
/* 8079AB08  38 00 00 02 */	li r0, 2
/* 8079AB0C  B0 1D 06 82 */	sth r0, 0x682(r29)
/* 8079AB10  B0 7D 06 84 */	sth r3, 0x684(r29)
/* 8079AB14  88 9A 05 B7 */	lbz r4, 0x5b7(r26)
/* 8079AB18  38 7B 01 54 */	addi r3, r27, 0x154
/* 8079AB1C  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 8079AB20  1C 00 00 07 */	mulli r0, r0, 7
/* 8079AB24  7C 04 02 14 */	add r0, r4, r0
/* 8079AB28  7C 03 00 AE */	lbzx r0, r3, r0
/* 8079AB2C  98 1A 05 B7 */	stb r0, 0x5b7(r26)
/* 8079AB30  98 1D 05 B7 */	stb r0, 0x5b7(r29)
/* 8079AB34  38 00 00 64 */	li r0, 0x64
/* 8079AB38  B0 1D 06 86 */	sth r0, 0x686(r29)
/* 8079AB3C  28 1A 00 00 */	cmplwi r26, 0
/* 8079AB40  41 82 00 0C */	beq lbl_8079AB4C
/* 8079AB44  80 1A 00 04 */	lwz r0, 4(r26)
/* 8079AB48  48 00 00 08 */	b lbl_8079AB50
lbl_8079AB4C:
/* 8079AB4C  38 00 FF FF */	li r0, -1
lbl_8079AB50:
/* 8079AB50  90 1D 0F D0 */	stw r0, 0xfd0(r29)
/* 8079AB54  48 00 04 28 */	b lbl_8079AF7C
lbl_8079AB58:
/* 8079AB58  3B 39 00 01 */	addi r25, r25, 1
/* 8079AB5C  2C 19 00 04 */	cmpwi r25, 4
/* 8079AB60  3A F7 01 38 */	addi r23, r23, 0x138
/* 8079AB64  41 80 FE AC */	blt lbl_8079AA10
lbl_8079AB68:
/* 8079AB68  A8 1A 06 8C */	lha r0, 0x68c(r26)
/* 8079AB6C  2C 00 00 00 */	cmpwi r0, 0
/* 8079AB70  40 82 04 0C */	bne lbl_8079AF7C
/* 8079AB74  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079AB78  38 80 00 00 */	li r4, 0
/* 8079AB7C  38 A0 00 00 */	li r5, 0
/* 8079AB80  38 C0 00 00 */	li r6, 0
/* 8079AB84  4B AC C8 70 */	b __ct__5csXyzFsss
/* 8079AB88  3B 00 00 00 */	li r24, 0
/* 8079AB8C  3B 20 00 00 */	li r25, 0
lbl_8079AB90:
/* 8079AB90  3A F9 0A A8 */	addi r23, r25, 0xaa8
/* 8079AB94  7E FA BA 14 */	add r23, r26, r23
/* 8079AB98  7E E3 BB 78 */	mr r3, r23
/* 8079AB9C  4B 8E 98 C4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8079ABA0  28 03 00 00 */	cmplwi r3, 0
/* 8079ABA4  41 82 03 C8 */	beq lbl_8079AF6C
/* 8079ABA8  38 00 00 06 */	li r0, 6
/* 8079ABAC  B0 1A 06 8C */	sth r0, 0x68c(r26)
/* 8079ABB0  7E E3 BB 78 */	mr r3, r23
/* 8079ABB4  4B 8E 99 44 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8079ABB8  90 7A 0F 8C */	stw r3, 0xf8c(r26)
/* 8079ABBC  38 00 00 64 */	li r0, 0x64
/* 8079ABC0  B0 1A 05 62 */	sth r0, 0x562(r26)
/* 8079ABC4  7F 43 D3 78 */	mr r3, r26
/* 8079ABC8  38 9A 0F 8C */	addi r4, r26, 0xf8c
/* 8079ABCC  4B 8E D0 38 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8079ABD0  38 00 00 0A */	li r0, 0xa
/* 8079ABD4  B0 1A 06 8C */	sth r0, 0x68c(r26)
/* 8079ABD8  88 1A 0F AC */	lbz r0, 0xfac(r26)
/* 8079ABDC  28 00 00 10 */	cmplwi r0, 0x10
/* 8079ABE0  40 82 00 10 */	bne lbl_8079ABF0
/* 8079ABE4  C0 1C 00 58 */	lfs f0, 0x58(r28)
/* 8079ABE8  D0 1A 08 2C */	stfs f0, 0x82c(r26)
/* 8079ABEC  48 00 03 90 */	b lbl_8079AF7C
lbl_8079ABF0:
/* 8079ABF0  C0 1C 00 84 */	lfs f0, 0x84(r28)
/* 8079ABF4  D0 1A 08 2C */	stfs f0, 0x82c(r26)
/* 8079ABF8  88 9A 08 3C */	lbz r4, 0x83c(r26)
/* 8079ABFC  28 04 00 00 */	cmplwi r4, 0
/* 8079AC00  41 82 03 00 */	beq lbl_8079AF00
/* 8079AC04  80 7A 0F 8C */	lwz r3, 0xf8c(r26)
/* 8079AC08  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8079AC0C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8079AC10  41 82 01 10 */	beq lbl_8079AD20
/* 8079AC14  7F 43 D3 78 */	mr r3, r26
/* 8079AC18  4B FF E4 6D */	bl sm2_delete__FP11e_sm2_class
/* 8079AC1C  3B 20 00 00 */	li r25, 0
/* 8079AC20  3B 00 00 00 */	li r24, 0
/* 8079AC24  3A E0 00 00 */	li r23, 0
/* 8079AC28  3B BB 01 CC */	addi r29, r27, 0x1cc
/* 8079AC2C  3B DB 01 9C */	addi r30, r27, 0x19c
/* 8079AC30  3B FB 01 E4 */	addi r31, r27, 0x1e4
/* 8079AC34  3B 7B 01 88 */	addi r27, r27, 0x188
/* 8079AC38  48 00 00 C8 */	b lbl_8079AD00
lbl_8079AC3C:
/* 8079AC3C  C0 3C 00 FC */	lfs f1, 0xfc(r28)
/* 8079AC40  4B AC CD 4C */	b cM_rndFX__Ff
/* 8079AC44  FC 00 08 1E */	fctiwz f0, f1
/* 8079AC48  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8079AC4C  80 81 00 E4 */	lwz r4, 0xe4(r1)
/* 8079AC50  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 8079AC54  7C 1D BA AE */	lhax r0, r29, r23
/* 8079AC58  7C 00 22 14 */	add r0, r0, r4
/* 8079AC5C  7C 03 02 14 */	add r0, r3, r0
/* 8079AC60  B0 01 00 2E */	sth r0, 0x2e(r1)
/* 8079AC64  7C 1E C0 2E */	lwzx r0, r30, r24
/* 8079AC68  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8079AC6C  38 63 07 08 */	addi r3, r3, 0x708
/* 8079AC70  7C 7A 1A 14 */	add r3, r26, r3
/* 8079AC74  C0 03 00 00 */	lfs f0, 0(r3)
/* 8079AC78  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8079AC7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8079AC80  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8079AC84  C0 03 00 08 */	lfs f0, 8(r3)
/* 8079AC88  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8079AC8C  88 1A 08 3C */	lbz r0, 0x83c(r26)
/* 8079AC90  54 00 10 3A */	slwi r0, r0, 2
/* 8079AC94  7C 3F 04 2E */	lfsx f1, r31, r0
/* 8079AC98  4B AC CC BC */	b cM_rndF__Ff
/* 8079AC9C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8079ACA0  EC 00 08 2A */	fadds f0, f0, f1
/* 8079ACA4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8079ACA8  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8079ACAC  7C 07 07 74 */	extsb r7, r0
/* 8079ACB0  38 00 00 00 */	li r0, 0
/* 8079ACB4  90 01 00 08 */	stw r0, 8(r1)
/* 8079ACB8  38 60 01 BE */	li r3, 0x1be
/* 8079ACBC  28 1A 00 00 */	cmplwi r26, 0
/* 8079ACC0  41 82 00 0C */	beq lbl_8079ACCC
/* 8079ACC4  80 9A 00 04 */	lwz r4, 4(r26)
/* 8079ACC8  48 00 00 08 */	b lbl_8079ACD0
lbl_8079ACCC:
/* 8079ACCC  38 80 FF FF */	li r4, -1
lbl_8079ACD0:
/* 8079ACD0  88 1A 05 B7 */	lbz r0, 0x5b7(r26)
/* 8079ACD4  54 05 20 36 */	slwi r5, r0, 4
/* 8079ACD8  38 00 FF 0B */	li r0, -245
/* 8079ACDC  7C A5 03 78 */	or r5, r5, r0
/* 8079ACE0  38 C1 00 58 */	addi r6, r1, 0x58
/* 8079ACE4  39 01 00 2C */	addi r8, r1, 0x2c
/* 8079ACE8  39 20 00 00 */	li r9, 0
/* 8079ACEC  39 40 FF FF */	li r10, -1
/* 8079ACF0  4B 87 F2 00 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8079ACF4  3B 39 00 01 */	addi r25, r25, 1
/* 8079ACF8  3B 18 00 04 */	addi r24, r24, 4
/* 8079ACFC  3A F7 00 02 */	addi r23, r23, 2
lbl_8079AD00:
/* 8079AD00  88 1A 08 3C */	lbz r0, 0x83c(r26)
/* 8079AD04  54 00 10 3A */	slwi r0, r0, 2
/* 8079AD08  7C 1B 00 2E */	lwzx r0, r27, r0
/* 8079AD0C  7C 19 00 00 */	cmpw r25, r0
/* 8079AD10  41 80 FF 2C */	blt lbl_8079AC3C
/* 8079AD14  38 00 00 01 */	li r0, 1
/* 8079AD18  98 1A 0F D4 */	stb r0, 0xfd4(r26)
/* 8079AD1C  48 00 01 B4 */	b lbl_8079AED0
lbl_8079AD20:
/* 8079AD20  38 04 FF FF */	addi r0, r4, -1
/* 8079AD24  98 1A 08 3C */	stb r0, 0x83c(r26)
/* 8079AD28  7F 43 D3 78 */	mr r3, r26
/* 8079AD2C  4B FF E4 35 */	bl cc_stts_init__FP11e_sm2_class
/* 8079AD30  88 7A 08 3C */	lbz r3, 0x83c(r26)
/* 8079AD34  4B FF E3 3D */	bl size_get__FUc
/* 8079AD38  D0 3A 08 34 */	stfs f1, 0x834(r26)
/* 8079AD3C  38 60 00 01 */	li r3, 1
/* 8079AD40  B0 7A 06 82 */	sth r3, 0x682(r26)
/* 8079AD44  38 00 00 0A */	li r0, 0xa
/* 8079AD48  B0 1A 06 84 */	sth r0, 0x684(r26)
/* 8079AD4C  C0 1C 00 78 */	lfs f0, 0x78(r28)
/* 8079AD50  D0 1A 08 30 */	stfs f0, 0x830(r26)
/* 8079AD54  98 7A 0F D4 */	stb r3, 0xfd4(r26)
/* 8079AD58  38 61 00 40 */	addi r3, r1, 0x40
/* 8079AD5C  38 9A 07 08 */	addi r4, r26, 0x708
/* 8079AD60  38 BA 07 2C */	addi r5, r26, 0x72c
/* 8079AD64  4B AC BD D0 */	b __mi__4cXyzCFRC3Vec
/* 8079AD68  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8079AD6C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8079AD70  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8079AD74  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8079AD78  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8079AD7C  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8079AD80  4B AC C8 F4 */	b cM_atan2s__Fff
/* 8079AD84  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 8079AD88  38 00 00 14 */	li r0, 0x14
/* 8079AD8C  B0 1A 06 8C */	sth r0, 0x68c(r26)
/* 8079AD90  88 1A 08 3C */	lbz r0, 0x83c(r26)
/* 8079AD94  54 00 40 2E */	slwi r0, r0, 8
/* 8079AD98  64 03 FF 00 */	oris r3, r0, 0xff00
/* 8079AD9C  88 1A 05 B7 */	lbz r0, 0x5b7(r26)
/* 8079ADA0  54 00 20 36 */	slwi r0, r0, 4
/* 8079ADA4  7C 60 03 78 */	or r0, r3, r0
/* 8079ADA8  60 17 00 0A */	ori r23, r0, 0xa
/* 8079ADAC  38 61 00 24 */	addi r3, r1, 0x24
/* 8079ADB0  38 80 00 00 */	li r4, 0
/* 8079ADB4  38 A0 00 00 */	li r5, 0
/* 8079ADB8  38 C0 00 00 */	li r6, 0
/* 8079ADBC  4B AC C6 38 */	b __ct__5csXyzFsss
/* 8079ADC0  38 61 00 34 */	addi r3, r1, 0x34
/* 8079ADC4  38 9A 07 50 */	addi r4, r26, 0x750
/* 8079ADC8  38 BA 07 2C */	addi r5, r26, 0x72c
/* 8079ADCC  4B AC BD 68 */	b __mi__4cXyzCFRC3Vec
/* 8079ADD0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8079ADD4  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8079ADD8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8079ADDC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8079ADE0  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8079ADE4  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8079ADE8  4B AC C8 8C */	b cM_atan2s__Fff
/* 8079ADEC  B0 61 00 26 */	sth r3, 0x26(r1)
/* 8079ADF0  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 8079ADF4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8079ADF8  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 8079ADFC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8079AE00  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 8079AE04  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8079AE08  C0 5C 00 80 */	lfs f2, 0x80(r28)
/* 8079AE0C  EC 01 10 2A */	fadds f0, f1, f2
/* 8079AE10  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8079AE14  C0 1A 07 50 */	lfs f0, 0x750(r26)
/* 8079AE18  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079AE1C  C0 3A 07 54 */	lfs f1, 0x754(r26)
/* 8079AE20  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8079AE24  C0 1A 07 58 */	lfs f0, 0x758(r26)
/* 8079AE28  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8079AE2C  EC 01 10 2A */	fadds f0, f1, f2
/* 8079AE30  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079AE34  38 61 00 70 */	addi r3, r1, 0x70
/* 8079AE38  4B 8D CE 30 */	b __ct__11dBgS_LinChkFv
/* 8079AE3C  38 61 00 70 */	addi r3, r1, 0x70
/* 8079AE40  38 81 00 64 */	addi r4, r1, 0x64
/* 8079AE44  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8079AE48  7F 46 D3 78 */	mr r6, r26
/* 8079AE4C  4B 8D CF 18 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8079AE50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8079AE54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8079AE58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8079AE5C  38 81 00 70 */	addi r4, r1, 0x70
/* 8079AE60  4B 8D 95 54 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8079AE64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079AE68  41 82 00 1C */	beq lbl_8079AE84
/* 8079AE6C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8079AE70  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079AE74  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8079AE78  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079AE7C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8079AE80  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_8079AE84:
/* 8079AE84  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8079AE88  7C 07 07 74 */	extsb r7, r0
/* 8079AE8C  38 00 00 00 */	li r0, 0
/* 8079AE90  90 01 00 08 */	stw r0, 8(r1)
/* 8079AE94  38 60 01 BE */	li r3, 0x1be
/* 8079AE98  28 1A 00 00 */	cmplwi r26, 0
/* 8079AE9C  41 82 00 0C */	beq lbl_8079AEA8
/* 8079AEA0  80 9A 00 04 */	lwz r4, 4(r26)
/* 8079AEA4  48 00 00 08 */	b lbl_8079AEAC
lbl_8079AEA8:
/* 8079AEA8  38 80 FF FF */	li r4, -1
lbl_8079AEAC:
/* 8079AEAC  7E E5 BB 78 */	mr r5, r23
/* 8079AEB0  38 C1 00 4C */	addi r6, r1, 0x4c
/* 8079AEB4  39 01 00 24 */	addi r8, r1, 0x24
/* 8079AEB8  39 20 00 00 */	li r9, 0
/* 8079AEBC  39 40 FF FF */	li r10, -1
/* 8079AEC0  4B 87 F0 30 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8079AEC4  38 61 00 70 */	addi r3, r1, 0x70
/* 8079AEC8  38 80 FF FF */	li r4, -1
/* 8079AECC  4B 8D CE 10 */	b __dt__11dBgS_LinChkFv
lbl_8079AED0:
/* 8079AED0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703C1@ha */
/* 8079AED4  38 03 03 C1 */	addi r0, r3, 0x03C1 /* 0x000703C1@l */
/* 8079AED8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8079AEDC  38 7A 05 DC */	addi r3, r26, 0x5dc
/* 8079AEE0  38 81 00 18 */	addi r4, r1, 0x18
/* 8079AEE4  38 A0 00 00 */	li r5, 0
/* 8079AEE8  38 C0 FF FF */	li r6, -1
/* 8079AEEC  81 9A 05 DC */	lwz r12, 0x5dc(r26)
/* 8079AEF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079AEF4  7D 89 03 A6 */	mtctr r12
/* 8079AEF8  4E 80 04 21 */	bctrl 
/* 8079AEFC  48 00 00 80 */	b lbl_8079AF7C
lbl_8079AF00:
/* 8079AF00  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007027B@ha */
/* 8079AF04  38 03 02 7B */	addi r0, r3, 0x027B /* 0x0007027B@l */
/* 8079AF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079AF0C  38 7A 05 DC */	addi r3, r26, 0x5dc
/* 8079AF10  38 81 00 14 */	addi r4, r1, 0x14
/* 8079AF14  38 A0 00 00 */	li r5, 0
/* 8079AF18  38 C0 FF FF */	li r6, -1
/* 8079AF1C  81 9A 05 DC */	lwz r12, 0x5dc(r26)
/* 8079AF20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079AF24  7D 89 03 A6 */	mtctr r12
/* 8079AF28  4E 80 04 21 */	bctrl 
/* 8079AF2C  38 00 00 14 */	li r0, 0x14
/* 8079AF30  B0 1A 06 82 */	sth r0, 0x682(r26)
/* 8079AF34  38 00 00 00 */	li r0, 0
/* 8079AF38  B0 1A 06 84 */	sth r0, 0x684(r26)
/* 8079AF3C  C0 1C 00 C4 */	lfs f0, 0xc4(r28)
/* 8079AF40  D0 1A 06 B0 */	stfs f0, 0x6b0(r26)
/* 8079AF44  B0 1A 06 86 */	sth r0, 0x686(r26)
/* 8079AF48  38 00 00 01 */	li r0, 1
/* 8079AF4C  98 1A 05 D8 */	stb r0, 0x5d8(r26)
/* 8079AF50  C0 1C 00 80 */	lfs f0, 0x80(r28)
/* 8079AF54  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 8079AF58  98 1A 0F D4 */	stb r0, 0xfd4(r26)
/* 8079AF5C  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 8079AF60  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 8079AF64  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 8079AF68  48 00 00 14 */	b lbl_8079AF7C
lbl_8079AF6C:
/* 8079AF6C  3B 18 00 01 */	addi r24, r24, 1
/* 8079AF70  2C 18 00 04 */	cmpwi r24, 4
/* 8079AF74  3B 39 01 38 */	addi r25, r25, 0x138
/* 8079AF78  41 80 FC 18 */	blt lbl_8079AB90
lbl_8079AF7C:
/* 8079AF7C  39 61 01 10 */	addi r11, r1, 0x110
/* 8079AF80  4B BC 72 90 */	b _restgpr_23
/* 8079AF84  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8079AF88  7C 08 03 A6 */	mtlr r0
/* 8079AF8C  38 21 01 10 */	addi r1, r1, 0x110
/* 8079AF90  4E 80 00 20 */	blr 
