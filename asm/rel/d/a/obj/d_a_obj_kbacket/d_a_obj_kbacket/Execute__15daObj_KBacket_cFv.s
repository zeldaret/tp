lbl_80586738:
/* 80586738  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8058673C  7C 08 02 A6 */	mflr r0
/* 80586740  90 01 00 74 */	stw r0, 0x74(r1)
/* 80586744  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80586748  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8058674C  39 61 00 60 */	addi r11, r1, 0x60
/* 80586750  4B DD BA 80 */	b _savegpr_26
/* 80586754  7C 7B 1B 78 */	mr r27, r3
/* 80586758  3C 60 80 58 */	lis r3, m__21daObj_KBacket_Param_c@ha
/* 8058675C  3B C3 7D 84 */	addi r30, r3, m__21daObj_KBacket_Param_c@l
/* 80586760  3B FE 00 00 */	addi r31, r30, 0
/* 80586764  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 80586768  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8058676C  38 00 00 00 */	li r0, 0
/* 80586770  B0 01 00 08 */	sth r0, 8(r1)
/* 80586774  D0 1B 04 EC */	stfs f0, 0x4ec(r27)
/* 80586778  D0 1B 04 F0 */	stfs f0, 0x4f0(r27)
/* 8058677C  D0 1B 04 F4 */	stfs f0, 0x4f4(r27)
/* 80586780  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 80586784  38 00 00 06 */	li r0, 6
/* 80586788  98 1B 05 48 */	stb r0, 0x548(r27)
/* 8058678C  38 7B 07 8C */	addi r3, r27, 0x78c
/* 80586790  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80586794  4B AE F7 AC */	b SetWallR__12dBgS_AcchCirFf
/* 80586798  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8058679C  D0 1B 07 BC */	stfs f0, 0x7bc(r27)
/* 805867A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805867A4  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 805867A8  3B 80 00 00 */	li r28, 0
/* 805867AC  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 805867B0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 805867B4  41 82 00 08 */	beq lbl_805867BC
/* 805867B8  3B 80 00 01 */	li r28, 1
lbl_805867BC:
/* 805867BC  88 1B 0A 44 */	lbz r0, 0xa44(r27)
/* 805867C0  28 00 00 00 */	cmplwi r0, 0
/* 805867C4  40 82 00 30 */	bne lbl_805867F4
/* 805867C8  88 7B 09 D0 */	lbz r3, 0x9d0(r27)
/* 805867CC  28 03 00 00 */	cmplwi r3, 0
/* 805867D0  40 82 00 0C */	bne lbl_805867DC
/* 805867D4  38 00 40 00 */	li r0, 0x4000
/* 805867D8  48 00 00 18 */	b lbl_805867F0
lbl_805867DC:
/* 805867DC  38 03 FF FF */	addi r0, r3, -1
/* 805867E0  30 00 FF FF */	addic r0, r0, -1
/* 805867E4  7C 60 01 10 */	subfe r3, r0, r0
/* 805867E8  38 00 C0 00 */	li r0, -16384
/* 805867EC  7C 00 18 38 */	and r0, r0, r3
lbl_805867F0:
/* 805867F0  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
lbl_805867F4:
/* 805867F4  2C 1C 00 00 */	cmpwi r28, 0
/* 805867F8  41 82 00 84 */	beq lbl_8058687C
/* 805867FC  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80586800  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80586804  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80586808  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 8058680C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80586810  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80586814  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80586818  60 00 00 04 */	ori r0, r0, 4
/* 8058681C  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80586820  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80586824  60 00 00 02 */	ori r0, r0, 2
/* 80586828  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 8058682C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80586830  D0 1B 0A 00 */	stfs f0, 0xa00(r27)
/* 80586834  38 00 00 00 */	li r0, 0
/* 80586838  98 1B 07 64 */	stb r0, 0x764(r27)
/* 8058683C  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80586840  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80586844  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80586848  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 8058684C  D0 1B 09 D4 */	stfs f0, 0x9d4(r27)
/* 80586850  D0 1B 09 D8 */	stfs f0, 0x9d8(r27)
/* 80586854  D0 1B 09 DC */	stfs f0, 0x9dc(r27)
/* 80586858  B0 1B 09 EC */	sth r0, 0x9ec(r27)
/* 8058685C  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80586860  B0 1B 09 F0 */	sth r0, 0x9f0(r27)
/* 80586864  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80586868  98 1B 0A 45 */	stb r0, 0xa45(r27)
/* 8058686C  98 1B 0A 46 */	stb r0, 0xa46(r27)
/* 80586870  98 1B 0A 47 */	stb r0, 0xa47(r27)
/* 80586874  98 1B 0A 4A */	stb r0, 0xa4a(r27)
/* 80586878  48 00 0A 90 */	b lbl_80587308
lbl_8058687C:
/* 8058687C  38 9E 00 00 */	addi r4, r30, 0
/* 80586880  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80586884  FC 00 00 1E */	fctiwz f0, f0
/* 80586888  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8058688C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80586890  98 1B 07 64 */	stb r0, 0x764(r27)
/* 80586894  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80586898  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8058689C  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 805868A0  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 805868A4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 805868A8  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 805868AC  88 1B 0A 49 */	lbz r0, 0xa49(r27)
/* 805868B0  28 00 00 00 */	cmplwi r0, 0
/* 805868B4  41 82 00 B0 */	beq lbl_80586964
/* 805868B8  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 805868BC  FC 00 02 10 */	fabs f0, f0
/* 805868C0  FC 20 00 18 */	frsp f1, f0
/* 805868C4  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 805868C8  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 805868CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805868D0  7C 00 00 26 */	mfcr r0
/* 805868D4  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 805868D8  40 82 00 8C */	bne lbl_80586964
/* 805868DC  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 805868E0  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 805868E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805868E8  FC 00 00 1E */	fctiwz f0, f0
/* 805868EC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805868F0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805868F4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805868F8  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 805868FC  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80586900  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80586904  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 80586908  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8058690C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80586910  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80586914  7C 03 04 2E */	lfsx f0, r3, r0
/* 80586918  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058691C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80586920  7C 63 02 14 */	add r3, r3, r0
/* 80586924  C0 03 00 04 */	lfs f0, 4(r3)
/* 80586928  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058692C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80586930  38 00 40 00 */	li r0, 0x4000
/* 80586934  B0 1B 0A 18 */	sth r0, 0xa18(r27)
/* 80586938  38 00 00 01 */	li r0, 1
/* 8058693C  98 1B 0A 47 */	stb r0, 0xa47(r27)
/* 80586940  7F 63 DB 78 */	mr r3, r27
/* 80586944  4B A9 68 B8 */	b fopAcM_carryOffRevise__FP10fopAc_ac_c
/* 80586948  2C 03 00 00 */	cmpwi r3, 0
/* 8058694C  41 82 03 84 */	beq lbl_80586CD0
/* 80586950  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80586954  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80586958  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8058695C  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80586960  48 00 03 70 */	b lbl_80586CD0
lbl_80586964:
/* 80586964  3B 40 00 00 */	li r26, 0
/* 80586968  3B A0 00 80 */	li r29, 0x80
/* 8058696C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80586970  38 9B 0A 04 */	addi r4, r27, 0xa04
/* 80586974  4B A9 6F 1C */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80586978  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8058697C  C0 3B 0A 04 */	lfs f1, 0xa04(r27)
/* 80586980  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80586984  41 82 03 4C */	beq lbl_80586CD0
/* 80586988  C0 1B 0A 00 */	lfs f0, 0xa00(r27)
/* 8058698C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80586990  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80586994  40 80 03 3C */	bge lbl_80586CD0
/* 80586998  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8058699C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805869A0  4C 40 13 82 */	cror 2, 0, 2
/* 805869A4  40 82 03 2C */	bne lbl_80586CD0
/* 805869A8  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 805869AC  28 00 00 00 */	cmplwi r0, 0
/* 805869B0  40 82 00 A0 */	bne lbl_80586A50
/* 805869B4  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 805869B8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805869BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805869C0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 805869C4  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 805869C8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805869CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805869D0  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 805869D4  38 00 00 00 */	li r0, 0
/* 805869D8  98 1B 0A 45 */	stb r0, 0xa45(r27)
/* 805869DC  38 00 00 01 */	li r0, 1
/* 805869E0  98 1B 0A 46 */	stb r0, 0xa46(r27)
/* 805869E4  88 1B 0A 47 */	lbz r0, 0xa47(r27)
/* 805869E8  28 00 00 00 */	cmplwi r0, 0
/* 805869EC  40 82 00 1C */	bne lbl_80586A08
/* 805869F0  88 1B 0A 4A */	lbz r0, 0xa4a(r27)
/* 805869F4  28 00 00 00 */	cmplwi r0, 0
/* 805869F8  40 82 00 10 */	bne lbl_80586A08
/* 805869FC  88 1B 0A 49 */	lbz r0, 0xa49(r27)
/* 80586A00  28 00 00 00 */	cmplwi r0, 0
/* 80586A04  41 82 00 40 */	beq lbl_80586A44
lbl_80586A08:
/* 80586A08  7F 63 DB 78 */	mr r3, r27
/* 80586A0C  48 00 10 65 */	bl setWaterPrtcl__15daObj_KBacket_cFv
/* 80586A10  3B 40 00 01 */	li r26, 1
/* 80586A14  88 1B 0A 47 */	lbz r0, 0xa47(r27)
/* 80586A18  28 00 00 00 */	cmplwi r0, 0
/* 80586A1C  40 82 00 10 */	bne lbl_80586A2C
/* 80586A20  88 1B 0A 4A */	lbz r0, 0xa4a(r27)
/* 80586A24  28 00 00 00 */	cmplwi r0, 0
/* 80586A28  41 82 00 1C */	beq lbl_80586A44
lbl_80586A2C:
/* 80586A2C  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80586A30  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80586A34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80586A38  40 80 00 0C */	bge lbl_80586A44
/* 80586A3C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80586A40  D0 1B 0A 10 */	stfs f0, 0xa10(r27)
lbl_80586A44:
/* 80586A44  38 00 00 00 */	li r0, 0
/* 80586A48  98 1B 0A 47 */	stb r0, 0xa47(r27)
/* 80586A4C  98 1B 0A 4A */	stb r0, 0xa4a(r27)
lbl_80586A50:
/* 80586A50  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80586A54  38 9B 07 E0 */	addi r4, r27, 0x7e0
/* 80586A58  38 A1 00 28 */	addi r5, r1, 0x28
/* 80586A5C  38 C1 00 18 */	addi r6, r1, 0x18
/* 80586A60  38 E0 00 00 */	li r7, 0
/* 80586A64  4B A9 6F 44 */	b fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 80586A68  2C 03 00 00 */	cmpwi r3, 0
/* 80586A6C  41 82 00 FC */	beq lbl_80586B68
/* 80586A70  38 61 00 1C */	addi r3, r1, 0x1c
/* 80586A74  38 81 00 28 */	addi r4, r1, 0x28
/* 80586A78  4B CE 04 D0 */	b normalizeZP__4cXyzFv
/* 80586A7C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80586A80  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80586A84  4B CE 0B F0 */	b cM_atan2s__Fff
/* 80586A88  7C 64 1B 78 */	mr r4, r3
/* 80586A8C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80586A90  38 A0 00 04 */	li r5, 4
/* 80586A94  38 C0 02 00 */	li r6, 0x200
/* 80586A98  4B CE 9B 70 */	b cLib_addCalcAngleS2__FPssss
/* 80586A9C  2C 1A 00 00 */	cmpwi r26, 0
/* 80586AA0  41 82 00 14 */	beq lbl_80586AB4
/* 80586AA4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80586AA8  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80586AAC  4B CE 0B C8 */	b cM_atan2s__Fff
/* 80586AB0  B0 7B 04 DE */	sth r3, 0x4de(r27)
lbl_80586AB4:
/* 80586AB4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80586AB8  7C 1D 01 D6 */	mullw r0, r29, r0
/* 80586ABC  7C 1D 07 34 */	extsh r29, r0
/* 80586AC0  38 7B 09 EE */	addi r3, r27, 0x9ee
/* 80586AC4  A8 1B 09 EE */	lha r0, 0x9ee(r27)
/* 80586AC8  2C 00 00 00 */	cmpwi r0, 0
/* 80586ACC  7F A0 EB 78 */	mr r0, r29
/* 80586AD0  40 80 00 08 */	bge lbl_80586AD8
/* 80586AD4  7C 1D 00 D0 */	neg r0, r29
lbl_80586AD8:
/* 80586AD8  7C 04 07 34 */	extsh r4, r0
/* 80586ADC  38 A0 00 10 */	li r5, 0x10
/* 80586AE0  4B CE A0 B0 */	b cLib_chaseAngleS__FPsss
/* 80586AE4  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 80586AE8  28 00 00 00 */	cmplwi r0, 0
/* 80586AEC  41 82 00 40 */	beq lbl_80586B2C
/* 80586AF0  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80586AF4  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80586AF8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80586AFC  C8 3E 00 D8 */	lfd f1, 0xd8(r30)
/* 80586B00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80586B04  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80586B08  3C 00 43 30 */	lis r0, 0x4330
/* 80586B0C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80586B10  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80586B14  EC 00 08 28 */	fsubs f0, f0, f1
/* 80586B18  EC 22 00 32 */	fmuls f1, f2, f0
/* 80586B1C  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 80586B20  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80586B24  4B CE 8F 18 */	b cLib_addCalc2__FPffff
/* 80586B28  48 00 00 50 */	b lbl_80586B78
lbl_80586B2C:
/* 80586B2C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80586B30  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 80586B34  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80586B38  C8 3E 00 D8 */	lfd f1, 0xd8(r30)
/* 80586B3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80586B40  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80586B44  3C 00 43 30 */	lis r0, 0x4330
/* 80586B48  90 01 00 38 */	stw r0, 0x38(r1)
/* 80586B4C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80586B50  EC 00 08 28 */	fsubs f0, f0, f1
/* 80586B54  EC 22 00 32 */	fmuls f1, f2, f0
/* 80586B58  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 80586B5C  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80586B60  4B CE 8E DC */	b cLib_addCalc2__FPffff
/* 80586B64  48 00 00 14 */	b lbl_80586B78
lbl_80586B68:
/* 80586B68  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80586B6C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80586B70  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80586B74  4B CE 9B CC */	b cLib_chaseF__FPfff
lbl_80586B78:
/* 80586B78  80 1B 09 F4 */	lwz r0, 0x9f4(r27)
/* 80586B7C  2C 00 00 00 */	cmpwi r0, 0
/* 80586B80  40 82 00 9C */	bne lbl_80586C1C
/* 80586B84  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80586B88  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80586B8C  41 82 00 90 */	beq lbl_80586C1C
/* 80586B90  7F 63 DB 78 */	mr r3, r27
/* 80586B94  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80586B98  38 A1 00 08 */	addi r5, r1, 8
/* 80586B9C  48 00 0C C9 */	bl getWallAngle__15daObj_KBacket_cFsPs
/* 80586BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80586BA4  41 82 00 30 */	beq lbl_80586BD4
/* 80586BA8  A8 01 00 08 */	lha r0, 8(r1)
/* 80586BAC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80586BB0  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80586BB4  4B CE 0D D8 */	b cM_rndFX__Ff
/* 80586BB8  FC 00 08 1E */	fctiwz f0, f1
/* 80586BBC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80586BC0  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80586BC4  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80586BC8  7C 00 1A 14 */	add r0, r0, r3
/* 80586BCC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80586BD0  48 00 00 30 */	b lbl_80586C00
lbl_80586BD4:
/* 80586BD4  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80586BD8  4B CE 0D B4 */	b cM_rndFX__Ff
/* 80586BDC  FC 00 08 1E */	fctiwz f0, f1
/* 80586BE0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80586BE4  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80586BE8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80586BEC  7C 00 1A 14 */	add r0, r0, r3
/* 80586BF0  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80586BF4  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 80586BF8  38 03 80 00 */	addi r0, r3, -32768
/* 80586BFC  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_80586C00:
/* 80586C00  A8 1B 09 EE */	lha r0, 0x9ee(r27)
/* 80586C04  7C 00 00 D0 */	neg r0, r0
/* 80586C08  7C 00 0E 70 */	srawi r0, r0, 1
/* 80586C0C  7C 00 01 94 */	addze r0, r0
/* 80586C10  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80586C14  38 00 00 0A */	li r0, 0xa
/* 80586C18  90 1B 09 F4 */	stw r0, 0x9f4(r27)
lbl_80586C1C:
/* 80586C1C  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 80586C20  28 00 00 00 */	cmplwi r0, 0
/* 80586C24  41 82 00 30 */	beq lbl_80586C54
/* 80586C28  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 80586C2C  C0 1B 0A 04 */	lfs f0, 0xa04(r27)
/* 80586C30  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80586C34  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80586C38  C0 7E 00 94 */	lfs f3, 0x94(r30)
/* 80586C3C  4B CE 8E 00 */	b cLib_addCalc2__FPffff
/* 80586C40  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80586C44  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80586C48  7F 63 DB 78 */	mr r3, r27
/* 80586C4C  48 00 0F 1D */	bl setHamonPrtcl__15daObj_KBacket_cFv
/* 80586C50  48 00 00 78 */	b lbl_80586CC8
lbl_80586C54:
/* 80586C54  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80586C58  EC 20 F8 2A */	fadds f1, f0, f31
/* 80586C5C  C0 1B 0A 04 */	lfs f0, 0xa04(r27)
/* 80586C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80586C64  40 80 00 64 */	bge lbl_80586CC8
/* 80586C68  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80586C6C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80586C70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80586C74  40 80 00 20 */	bge lbl_80586C94
/* 80586C78  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80586C7C  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80586C80  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 80586C84  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 80586C88  C0 9E 00 A0 */	lfs f4, 0xa0(r30)
/* 80586C8C  4B CE 8C F0 */	b cLib_addCalc__FPfffff
/* 80586C90  48 00 00 1C */	b lbl_80586CAC
lbl_80586C94:
/* 80586C94  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80586C98  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80586C9C  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80586CA0  FC 60 10 90 */	fmr f3, f2
/* 80586CA4  C0 9E 00 A0 */	lfs f4, 0xa0(r30)
/* 80586CA8  4B CE 8C D4 */	b cLib_addCalc__FPfffff
lbl_80586CAC:
/* 80586CAC  38 00 01 00 */	li r0, 0x100
/* 80586CB0  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80586CB4  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80586CB8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80586CBC  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80586CC0  38 00 00 01 */	li r0, 1
/* 80586CC4  98 1B 0A 45 */	stb r0, 0xa45(r27)
lbl_80586CC8:
/* 80586CC8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80586CCC  D0 1B 05 30 */	stfs f0, 0x530(r27)
lbl_80586CD0:
/* 80586CD0  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 80586CD4  28 00 00 00 */	cmplwi r0, 0
/* 80586CD8  41 82 00 40 */	beq lbl_80586D18
/* 80586CDC  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80586CE0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80586CE4  41 82 02 D8 */	beq lbl_80586FBC
/* 80586CE8  38 00 00 00 */	li r0, 0
/* 80586CEC  98 1B 0A 45 */	stb r0, 0xa45(r27)
/* 80586CF0  98 1B 0A 46 */	stb r0, 0xa46(r27)
/* 80586CF4  B0 1B 09 EC */	sth r0, 0x9ec(r27)
/* 80586CF8  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80586CFC  B0 1B 09 F0 */	sth r0, 0x9f0(r27)
/* 80586D00  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80586D04  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80586D08  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80586D0C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80586D10  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80586D14  48 00 02 A8 */	b lbl_80586FBC
lbl_80586D18:
/* 80586D18  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 80586D1C  28 00 00 00 */	cmplwi r0, 0
/* 80586D20  40 82 02 9C */	bne lbl_80586FBC
/* 80586D24  88 1B 0A 47 */	lbz r0, 0xa47(r27)
/* 80586D28  28 00 00 00 */	cmplwi r0, 0
/* 80586D2C  41 82 01 50 */	beq lbl_80586E7C
/* 80586D30  80 7B 05 A4 */	lwz r3, 0x5a4(r27)
/* 80586D34  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80586D38  41 82 00 94 */	beq lbl_80586DCC
/* 80586D3C  7F 63 DB 78 */	mr r3, r27
/* 80586D40  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80586D44  38 A1 00 08 */	addi r5, r1, 8
/* 80586D48  48 00 0B 1D */	bl getWallAngle__15daObj_KBacket_cFsPs
/* 80586D4C  2C 03 00 00 */	cmpwi r3, 0
/* 80586D50  41 82 00 18 */	beq lbl_80586D68
/* 80586D54  A8 61 00 08 */	lha r3, 8(r1)
/* 80586D58  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80586D5C  7C 03 00 50 */	subf r0, r3, r0
/* 80586D60  7C 1D 07 34 */	extsh r29, r0
/* 80586D64  48 00 00 08 */	b lbl_80586D6C
lbl_80586D68:
/* 80586D68  AB BB 04 DE */	lha r29, 0x4de(r27)
lbl_80586D6C:
/* 80586D6C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80586D70  4B CE 0C 1C */	b cM_rndFX__Ff
/* 80586D74  FC 00 08 1E */	fctiwz f0, f1
/* 80586D78  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80586D7C  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80586D80  7F A0 07 34 */	extsh r0, r29
/* 80586D84  54 04 08 3C */	slwi r4, r0, 1
/* 80586D88  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80586D8C  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80586D90  7C 04 00 50 */	subf r0, r4, r0
/* 80586D94  7C 00 2A 14 */	add r0, r0, r5
/* 80586D98  7C 03 07 34 */	extsh r3, r0
/* 80586D9C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80586DA0  7C 00 1A 14 */	add r0, r0, r3
/* 80586DA4  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80586DA8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80586DAC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80586DB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80586DB4  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80586DB8  38 00 00 00 */	li r0, 0
/* 80586DBC  98 1B 0A 47 */	stb r0, 0xa47(r27)
/* 80586DC0  38 00 00 01 */	li r0, 1
/* 80586DC4  98 1B 0A 4A */	stb r0, 0xa4a(r27)
/* 80586DC8  48 00 01 F4 */	b lbl_80586FBC
lbl_80586DCC:
/* 80586DCC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80586DD0  41 82 01 EC */	beq lbl_80586FBC
/* 80586DD4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80586DD8  7C 03 07 74 */	extsb r3, r0
/* 80586DDC  4B AA 62 90 */	b dComIfGp_getReverb__Fi
/* 80586DE0  7C 67 1B 78 */	mr r7, r3
/* 80586DE4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010B@ha */
/* 80586DE8  38 03 01 0B */	addi r0, r3, 0x010B /* 0x0008010B@l */
/* 80586DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586DF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80586DF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80586DF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80586DFC  38 81 00 14 */	addi r4, r1, 0x14
/* 80586E00  38 BB 05 38 */	addi r5, r27, 0x538
/* 80586E04  38 C0 00 00 */	li r6, 0
/* 80586E08  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80586E0C  FC 40 08 90 */	fmr f2, f1
/* 80586E10  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80586E14  FC 80 18 90 */	fmr f4, f3
/* 80586E18  39 00 00 00 */	li r8, 0
/* 80586E1C  4B D2 4B 68 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80586E20  C0 3B 09 D8 */	lfs f1, 0x9d8(r27)
/* 80586E24  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80586E28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80586E2C  40 80 00 30 */	bge lbl_80586E5C
/* 80586E30  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80586E34  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80586E38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80586E3C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80586E40  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80586E44  C0 1B 09 D8 */	lfs f0, 0x9d8(r27)
/* 80586E48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80586E4C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80586E50  7F 63 DB 78 */	mr r3, r27
/* 80586E54  48 00 0B A1 */	bl setSmokePrtcl__15daObj_KBacket_cFv
/* 80586E58  48 00 01 64 */	b lbl_80586FBC
lbl_80586E5C:
/* 80586E5C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80586E60  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80586E64  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80586E68  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80586E6C  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80586E70  38 00 00 00 */	li r0, 0
/* 80586E74  98 1B 0A 47 */	stb r0, 0xa47(r27)
/* 80586E78  48 00 01 44 */	b lbl_80586FBC
lbl_80586E7C:
/* 80586E7C  88 1B 0A 4A */	lbz r0, 0xa4a(r27)
/* 80586E80  28 00 00 00 */	cmplwi r0, 0
/* 80586E84  41 82 00 B8 */	beq lbl_80586F3C
/* 80586E88  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80586E8C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80586E90  41 82 01 2C */	beq lbl_80586FBC
/* 80586E94  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80586E98  7C 03 07 74 */	extsb r3, r0
/* 80586E9C  4B AA 61 D0 */	b dComIfGp_getReverb__Fi
/* 80586EA0  7C 67 1B 78 */	mr r7, r3
/* 80586EA4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010B@ha */
/* 80586EA8  38 03 01 0B */	addi r0, r3, 0x010B /* 0x0008010B@l */
/* 80586EAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80586EB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80586EB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80586EB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80586EBC  38 81 00 10 */	addi r4, r1, 0x10
/* 80586EC0  38 BB 05 38 */	addi r5, r27, 0x538
/* 80586EC4  38 C0 00 00 */	li r6, 0
/* 80586EC8  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80586ECC  FC 40 08 90 */	fmr f2, f1
/* 80586ED0  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80586ED4  FC 80 18 90 */	fmr f4, f3
/* 80586ED8  39 00 00 00 */	li r8, 0
/* 80586EDC  4B D2 4A A8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80586EE0  C0 3B 09 D8 */	lfs f1, 0x9d8(r27)
/* 80586EE4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80586EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80586EEC  40 80 00 30 */	bge lbl_80586F1C
/* 80586EF0  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80586EF4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80586EF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80586EFC  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80586F00  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80586F04  C0 1B 09 D8 */	lfs f0, 0x9d8(r27)
/* 80586F08  EC 01 00 32 */	fmuls f0, f1, f0
/* 80586F0C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80586F10  7F 63 DB 78 */	mr r3, r27
/* 80586F14  48 00 0A E1 */	bl setSmokePrtcl__15daObj_KBacket_cFv
/* 80586F18  48 00 00 A4 */	b lbl_80586FBC
lbl_80586F1C:
/* 80586F1C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80586F20  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80586F24  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80586F28  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80586F2C  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80586F30  38 00 00 00 */	li r0, 0
/* 80586F34  98 1B 0A 4A */	stb r0, 0xa4a(r27)
/* 80586F38  48 00 00 84 */	b lbl_80586FBC
lbl_80586F3C:
/* 80586F3C  88 1B 0A 49 */	lbz r0, 0xa49(r27)
/* 80586F40  28 00 00 00 */	cmplwi r0, 0
/* 80586F44  41 82 00 54 */	beq lbl_80586F98
/* 80586F48  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80586F4C  7C 03 07 74 */	extsb r3, r0
/* 80586F50  4B AA 61 1C */	b dComIfGp_getReverb__Fi
/* 80586F54  7C 67 1B 78 */	mr r7, r3
/* 80586F58  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010C@ha */
/* 80586F5C  38 03 01 0C */	addi r0, r3, 0x010C /* 0x0008010C@l */
/* 80586F60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80586F64  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80586F68  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80586F6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80586F70  38 81 00 0C */	addi r4, r1, 0xc
/* 80586F74  38 BB 05 38 */	addi r5, r27, 0x538
/* 80586F78  38 C0 00 00 */	li r6, 0
/* 80586F7C  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80586F80  FC 40 08 90 */	fmr f2, f1
/* 80586F84  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80586F88  FC 80 18 90 */	fmr f4, f3
/* 80586F8C  39 00 00 00 */	li r8, 0
/* 80586F90  4B D2 49 F4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80586F94  48 00 00 28 */	b lbl_80586FBC
lbl_80586F98:
/* 80586F98  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80586F9C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80586FA0  40 82 00 1C */	bne lbl_80586FBC
/* 80586FA4  C0 3B 0A 00 */	lfs f1, 0xa00(r27)
/* 80586FA8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80586FAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80586FB0  D0 1B 0A 0C */	stfs f0, 0xa0c(r27)
/* 80586FB4  38 00 00 01 */	li r0, 1
/* 80586FB8  98 1B 0A 4A */	stb r0, 0xa4a(r27)
lbl_80586FBC:
/* 80586FBC  88 1B 0A 48 */	lbz r0, 0xa48(r27)
/* 80586FC0  28 00 00 00 */	cmplwi r0, 0
/* 80586FC4  40 82 00 28 */	bne lbl_80586FEC
/* 80586FC8  88 1B 0A 47 */	lbz r0, 0xa47(r27)
/* 80586FCC  28 00 00 00 */	cmplwi r0, 0
/* 80586FD0  40 82 00 1C */	bne lbl_80586FEC
/* 80586FD4  88 1B 0A 4A */	lbz r0, 0xa4a(r27)
/* 80586FD8  28 00 00 00 */	cmplwi r0, 0
/* 80586FDC  40 82 00 10 */	bne lbl_80586FEC
/* 80586FE0  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 80586FE4  60 00 00 10 */	ori r0, r0, 0x10
/* 80586FE8  90 1B 05 5C */	stw r0, 0x55c(r27)
lbl_80586FEC:
/* 80586FEC  C0 1B 04 F8 */	lfs f0, 0x4f8(r27)
/* 80586FF0  D0 1B 09 D4 */	stfs f0, 0x9d4(r27)
/* 80586FF4  C0 1B 04 FC */	lfs f0, 0x4fc(r27)
/* 80586FF8  D0 1B 09 D8 */	stfs f0, 0x9d8(r27)
/* 80586FFC  C0 1B 05 00 */	lfs f0, 0x500(r27)
/* 80587000  D0 1B 09 DC */	stfs f0, 0x9dc(r27)
/* 80587004  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 80587008  28 00 00 00 */	cmplwi r0, 0
/* 8058700C  41 82 00 2C */	beq lbl_80587038
/* 80587010  38 7B 0A 10 */	addi r3, r27, 0xa10
/* 80587014  34 1B 07 50 */	addic. r0, r27, 0x750
/* 80587018  41 82 00 0C */	beq lbl_80587024
/* 8058701C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80587020  48 00 00 08 */	b lbl_80587028
lbl_80587024:
/* 80587024  C0 3E 00 BC */	lfs f1, 0xbc(r30)
lbl_80587028:
/* 80587028  C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 8058702C  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 80587030  4B CE 8A 0C */	b cLib_addCalc2__FPffff
/* 80587034  48 00 00 18 */	b lbl_8058704C
lbl_80587038:
/* 80587038  38 7B 0A 10 */	addi r3, r27, 0xa10
/* 8058703C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80587040  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80587044  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 80587048  4B CE 89 F4 */	b cLib_addCalc2__FPffff
lbl_8058704C:
/* 8058704C  A8 1B 0A 14 */	lha r0, 0xa14(r27)
/* 80587050  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80587054  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80587058  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8058705C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80587060  7C 23 04 2E */	lfsx f1, r3, r0
/* 80587064  C0 1B 0A 10 */	lfs f0, 0xa10(r27)
/* 80587068  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058706C  FC 00 00 1E */	fctiwz f0, f0
/* 80587070  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80587074  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80587078  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 8058707C  3B A3 00 04 */	addi r29, r3, 4
/* 80587080  A8 1B 0A 14 */	lha r0, 0xa14(r27)
/* 80587084  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80587088  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8058708C  7C 3D 04 2E */	lfsx f1, r29, r0
/* 80587090  A8 7B 04 E8 */	lha r3, 0x4e8(r27)
/* 80587094  C0 1B 0A 10 */	lfs f0, 0xa10(r27)
/* 80587098  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058709C  FC 00 00 1E */	fctiwz f0, f0
/* 805870A0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805870A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805870A8  7C 03 02 14 */	add r0, r3, r0
/* 805870AC  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 805870B0  38 7B 09 EE */	addi r3, r27, 0x9ee
/* 805870B4  38 80 00 00 */	li r4, 0
/* 805870B8  38 A0 00 0A */	li r5, 0xa
/* 805870BC  4B CE 9A D4 */	b cLib_chaseAngleS__FPsss
/* 805870C0  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 805870C4  A8 1B 09 EE */	lha r0, 0x9ee(r27)
/* 805870C8  7C 03 02 14 */	add r0, r3, r0
/* 805870CC  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 805870D0  A8 7B 0A 14 */	lha r3, 0xa14(r27)
/* 805870D4  38 03 00 01 */	addi r0, r3, 1
/* 805870D8  B0 1B 0A 14 */	sth r0, 0xa14(r27)
/* 805870DC  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 805870E0  28 00 00 00 */	cmplwi r0, 0
/* 805870E4  41 82 00 8C */	beq lbl_80587170
/* 805870E8  C0 3B 07 50 */	lfs f1, 0x750(r27)
/* 805870EC  EC 41 00 72 */	fmuls f2, f1, f1
/* 805870F0  C0 1B 07 58 */	lfs f0, 0x758(r27)
/* 805870F4  EC 00 00 32 */	fmuls f0, f0, f0
/* 805870F8  EF E2 00 2A */	fadds f31, f2, f0
/* 805870FC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80587100  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80587104  40 81 00 0C */	ble lbl_80587110
/* 80587108  FC 00 F8 34 */	frsqrte f0, f31
/* 8058710C  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80587110:
/* 80587110  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80587114  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80587118  40 80 00 60 */	bge lbl_80587178
/* 8058711C  C0 5B 07 58 */	lfs f2, 0x758(r27)
/* 80587120  4B CE 05 54 */	b cM_atan2s__Fff
/* 80587124  B0 7B 0A 1C */	sth r3, 0xa1c(r27)
/* 80587128  80 1B 09 F8 */	lwz r0, 0x9f8(r27)
/* 8058712C  2C 00 00 00 */	cmpwi r0, 0
/* 80587130  40 82 00 48 */	bne lbl_80587178
/* 80587134  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80587138  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8058713C  40 80 00 0C */	bge lbl_80587148
/* 80587140  FF E0 00 90 */	fmr f31, f0
/* 80587144  48 00 00 14 */	b lbl_80587158
lbl_80587148:
/* 80587148  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8058714C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80587150  40 80 00 08 */	bge lbl_80587158
/* 80587154  FF E0 00 90 */	fmr f31, f0
lbl_80587158:
/* 80587158  D3 FB 09 FC */	stfs f31, 0x9fc(r27)
/* 8058715C  38 00 02 00 */	li r0, 0x200
/* 80587160  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80587164  38 00 00 0A */	li r0, 0xa
/* 80587168  90 1B 09 F8 */	stw r0, 0x9f8(r27)
/* 8058716C  48 00 00 0C */	b lbl_80587178
lbl_80587170:
/* 80587170  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80587174  D0 1B 09 FC */	stfs f0, 0x9fc(r27)
lbl_80587178:
/* 80587178  38 7B 09 FC */	addi r3, r27, 0x9fc
/* 8058717C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80587180  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 80587184  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 80587188  4B CE 88 B4 */	b cLib_addCalc2__FPffff
/* 8058718C  7F 63 DB 78 */	mr r3, r27
/* 80587190  4B A9 34 7C */	b fopAcM_calcSpeed__FP10fopAc_ac_c
/* 80587194  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 80587198  28 00 00 00 */	cmplwi r0, 0
/* 8058719C  41 82 00 54 */	beq lbl_805871F0
/* 805871A0  A8 1B 0A 1C */	lha r0, 0xa1c(r27)
/* 805871A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805871A8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805871AC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805871B0  7C 23 04 2E */	lfsx f1, r3, r0
/* 805871B4  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 805871B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805871BC  D0 1B 09 E0 */	stfs f0, 0x9e0(r27)
/* 805871C0  A8 1B 0A 1C */	lha r0, 0xa1c(r27)
/* 805871C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805871C8  7C 3D 04 2E */	lfsx f1, r29, r0
/* 805871CC  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 805871D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805871D4  D0 1B 09 E8 */	stfs f0, 0x9e8(r27)
/* 805871D8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805871DC  D0 1B 09 E4 */	stfs f0, 0x9e4(r27)
/* 805871E0  38 7B 04 F8 */	addi r3, r27, 0x4f8
/* 805871E4  38 9B 09 E0 */	addi r4, r27, 0x9e0
/* 805871E8  7C 65 1B 78 */	mr r5, r3
/* 805871EC  4B DB FE A4 */	b PSVECAdd
lbl_805871F0:
/* 805871F0  7F 63 DB 78 */	mr r3, r27
/* 805871F4  38 9B 07 50 */	addi r4, r27, 0x750
/* 805871F8  4B A9 34 68 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 805871FC  38 7B 05 78 */	addi r3, r27, 0x578
/* 80587200  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80587204  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80587208  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8058720C  4B AE F8 A0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80587210  80 1B 06 54 */	lwz r0, 0x654(r27)
/* 80587214  90 1B 07 CC */	stw r0, 0x7cc(r27)
/* 80587218  80 1B 06 58 */	lwz r0, 0x658(r27)
/* 8058721C  90 1B 07 D0 */	stw r0, 0x7d0(r27)
/* 80587220  80 1B 06 5C */	lwz r0, 0x65c(r27)
/* 80587224  90 1B 07 D4 */	stw r0, 0x7d4(r27)
/* 80587228  88 1B 06 60 */	lbz r0, 0x660(r27)
/* 8058722C  98 1B 07 D8 */	stb r0, 0x7d8(r27)
/* 80587230  A0 1B 06 68 */	lhz r0, 0x668(r27)
/* 80587234  B0 1B 07 E0 */	sth r0, 0x7e0(r27)
/* 80587238  A0 1B 06 6A */	lhz r0, 0x66a(r27)
/* 8058723C  B0 1B 07 E2 */	sth r0, 0x7e2(r27)
/* 80587240  80 1B 06 6C */	lwz r0, 0x66c(r27)
/* 80587244  90 1B 07 E4 */	stw r0, 0x7e4(r27)
/* 80587248  80 1B 06 70 */	lwz r0, 0x670(r27)
/* 8058724C  90 1B 07 E8 */	stw r0, 0x7e8(r27)
/* 80587250  C0 1B 06 78 */	lfs f0, 0x678(r27)
/* 80587254  D0 1B 07 F0 */	stfs f0, 0x7f0(r27)
/* 80587258  C0 1B 06 7C */	lfs f0, 0x67c(r27)
/* 8058725C  D0 1B 07 F4 */	stfs f0, 0x7f4(r27)
/* 80587260  C0 1B 06 80 */	lfs f0, 0x680(r27)
/* 80587264  D0 1B 07 F8 */	stfs f0, 0x7f8(r27)
/* 80587268  80 1B 06 84 */	lwz r0, 0x684(r27)
/* 8058726C  90 1B 07 FC */	stw r0, 0x7fc(r27)
/* 80587270  C0 1B 06 88 */	lfs f0, 0x688(r27)
/* 80587274  D0 1B 08 00 */	stfs f0, 0x800(r27)
/* 80587278  80 1B 06 8C */	lwz r0, 0x68c(r27)
/* 8058727C  90 1B 08 04 */	stw r0, 0x804(r27)
/* 80587280  C0 1B 06 10 */	lfs f0, 0x610(r27)
/* 80587284  D0 1B 0A 00 */	stfs f0, 0xa00(r27)
/* 80587288  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8058728C  C0 1B 0A 00 */	lfs f0, 0xa00(r27)
/* 80587290  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80587294  41 82 00 74 */	beq lbl_80587308
/* 80587298  38 7B 07 E0 */	addi r3, r27, 0x7e0
/* 8058729C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805872A0  4B BC E2 CC */	b daNpcF_getGroundAngle__FP13cBgS_PolyInfos
/* 805872A4  B0 7B 0A 16 */	sth r3, 0xa16(r27)
/* 805872A8  7F 63 DB 78 */	mr r3, r27
/* 805872AC  48 00 03 15 */	bl setEnvTevColor__15daObj_KBacket_cFv
/* 805872B0  7F 63 DB 78 */	mr r3, r27
/* 805872B4  48 00 03 69 */	bl setRoomNo__15daObj_KBacket_cFv
/* 805872B8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 805872BC  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 805872C0  7C 03 07 74 */	extsb r3, r0
/* 805872C4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 805872C8  7C 00 07 74 */	extsb r0, r0
/* 805872CC  7C 03 00 00 */	cmpw r3, r0
/* 805872D0  41 82 00 38 */	beq lbl_80587308
/* 805872D4  88 1B 0A 4B */	lbz r0, 0xa4b(r27)
/* 805872D8  28 00 00 00 */	cmplwi r0, 0
/* 805872DC  40 82 00 2C */	bne lbl_80587308
/* 805872E0  88 1B 0A 47 */	lbz r0, 0xa47(r27)
/* 805872E4  28 00 00 00 */	cmplwi r0, 0
/* 805872E8  40 82 00 20 */	bne lbl_80587308
/* 805872EC  88 1B 0A 4A */	lbz r0, 0xa4a(r27)
/* 805872F0  28 00 00 00 */	cmplwi r0, 0
/* 805872F4  40 82 00 14 */	bne lbl_80587308
/* 805872F8  7F 63 DB 78 */	mr r3, r27
/* 805872FC  4B A9 29 80 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80587300  38 60 00 01 */	li r3, 1
/* 80587304  48 00 01 08 */	b lbl_8058740C
lbl_80587308:
/* 80587308  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8058730C  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 80587310  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80587314  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80587318  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8058731C  D0 1B 05 58 */	stfs f0, 0x558(r27)
/* 80587320  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80587324  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 80587328  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8058732C  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 80587330  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80587334  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 80587338  7F 63 DB 78 */	mr r3, r27
/* 8058733C  48 00 03 59 */	bl setMtx__15daObj_KBacket_cFv
/* 80587340  88 1B 0A 44 */	lbz r0, 0xa44(r27)
/* 80587344  28 00 00 00 */	cmplwi r0, 0
/* 80587348  41 82 00 38 */	beq lbl_80587380
/* 8058734C  7F 63 DB 78 */	mr r3, r27
/* 80587350  A8 9B 0A 18 */	lha r4, 0xa18(r27)
/* 80587354  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000C000@ha */
/* 80587358  38 A5 C0 00 */	addi r5, r5, 0xC000 /* 0x0000C000@l */
/* 8058735C  48 00 04 69 */	bl calcRollAngle__15daObj_KBacket_cFsi
/* 80587360  B0 7B 0A 18 */	sth r3, 0xa18(r27)
/* 80587364  A8 1B 0A 18 */	lha r0, 0xa18(r27)
/* 80587368  2C 00 C0 00 */	cmpwi r0, -16384
/* 8058736C  40 82 00 28 */	bne lbl_80587394
/* 80587370  38 00 00 00 */	li r0, 0
/* 80587374  B0 1B 0A 18 */	sth r0, 0xa18(r27)
/* 80587378  98 1B 0A 44 */	stb r0, 0xa44(r27)
/* 8058737C  48 00 00 18 */	b lbl_80587394
lbl_80587380:
/* 80587380  7F 63 DB 78 */	mr r3, r27
/* 80587384  A8 9B 0A 18 */	lha r4, 0xa18(r27)
/* 80587388  3C A0 00 01 */	lis r5, 1
/* 8058738C  48 00 04 39 */	bl calcRollAngle__15daObj_KBacket_cFsi
/* 80587390  B0 7B 0A 18 */	sth r3, 0xa18(r27)
lbl_80587394:
/* 80587394  38 7B 09 2C */	addi r3, r27, 0x92c
/* 80587398  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8058739C  4B CE 7E 64 */	b SetR__8cM3dGCylFf
/* 805873A0  38 7B 09 2C */	addi r3, r27, 0x92c
/* 805873A4  38 9E 00 00 */	addi r4, r30, 0
/* 805873A8  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 805873AC  4B CE 7E 4C */	b SetH__8cM3dGCylFf
/* 805873B0  38 7B 09 2C */	addi r3, r27, 0x92c
/* 805873B4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805873B8  4B CE 7E 24 */	b SetC__8cM3dGCylFRC4cXyz
/* 805873BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805873C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805873C4  38 63 23 3C */	addi r3, r3, 0x233c
/* 805873C8  38 9B 08 08 */	addi r4, r27, 0x808
/* 805873CC  4B CD D7 DC */	b Set__4cCcSFP8cCcD_Obj
/* 805873D0  38 7B 08 08 */	addi r3, r27, 0x808
/* 805873D4  81 9B 08 44 */	lwz r12, 0x844(r27)
/* 805873D8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 805873DC  7D 89 03 A6 */	mtctr r12
/* 805873E0  4E 80 04 21 */	bctrl 
/* 805873E4  30 1C FF FF */	addic r0, r28, -1
/* 805873E8  7C 00 E1 10 */	subfe r0, r0, r28
/* 805873EC  98 1B 0A 49 */	stb r0, 0xa49(r27)
/* 805873F0  38 7B 09 F4 */	addi r3, r27, 0x9f4
/* 805873F4  48 00 08 95 */	bl func_80587C88
/* 805873F8  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 805873FC  48 00 08 8D */	bl func_80587C88
/* 80587400  38 00 00 00 */	li r0, 0
/* 80587404  98 1B 0A 4B */	stb r0, 0xa4b(r27)
/* 80587408  38 60 00 01 */	li r3, 1
lbl_8058740C:
/* 8058740C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80587410  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80587414  39 61 00 60 */	addi r11, r1, 0x60
/* 80587418  4B DD AE 04 */	b _restgpr_26
/* 8058741C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80587420  7C 08 03 A6 */	mtlr r0
/* 80587424  38 21 00 70 */	addi r1, r1, 0x70
/* 80587428  4E 80 00 20 */	blr 
