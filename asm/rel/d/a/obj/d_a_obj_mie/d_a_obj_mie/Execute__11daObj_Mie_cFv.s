lbl_80C946A8:
/* 80C946A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C946AC  7C 08 02 A6 */	mflr r0
/* 80C946B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C946B4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C946B8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C946BC  39 61 00 50 */	addi r11, r1, 0x50
/* 80C946C0  4B 6C DB 14 */	b _savegpr_27
/* 80C946C4  7C 7B 1B 78 */	mr r27, r3
/* 80C946C8  3C 60 80 C9 */	lis r3, m__17daObj_Mie_Param_c@ha
/* 80C946CC  3B A3 5A AC */	addi r29, r3, m__17daObj_Mie_Param_c@l
/* 80C946D0  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 80C946D4  54 1E 9F FE */	rlwinm r30, r0, 0x13, 0x1f, 0x1f
/* 80C946D8  3B FD 00 00 */	addi r31, r29, 0
/* 80C946DC  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 80C946E0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C946E4  D0 1B 04 EC */	stfs f0, 0x4ec(r27)
/* 80C946E8  D0 1B 04 F0 */	stfs f0, 0x4f0(r27)
/* 80C946EC  D0 1B 04 F4 */	stfs f0, 0x4f4(r27)
/* 80C946F0  38 00 00 00 */	li r0, 0
/* 80C946F4  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 80C946F8  38 00 00 06 */	li r0, 6
/* 80C946FC  98 1B 05 48 */	stb r0, 0x548(r27)
/* 80C94700  38 7B 07 8C */	addi r3, r27, 0x78c
/* 80C94704  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C94708  4B 3E 18 38 */	b SetWallR__12dBgS_AcchCirFf
/* 80C9470C  7F E3 FB 78 */	mr r3, r31
/* 80C94710  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C94714  D0 1B 07 BC */	stfs f0, 0x7bc(r27)
/* 80C94718  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C9471C  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80C94720  2C 1E 00 00 */	cmpwi r30, 0
/* 80C94724  40 82 00 10 */	bne lbl_80C94734
/* 80C94728  88 1B 0A 40 */	lbz r0, 0xa40(r27)
/* 80C9472C  28 00 00 00 */	cmplwi r0, 0
/* 80C94730  41 82 00 78 */	beq lbl_80C947A8
lbl_80C94734:
/* 80C94734  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C94738  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C9473C  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80C94740  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C94744  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80C94748  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80C9474C  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C94750  60 00 00 04 */	ori r0, r0, 4
/* 80C94754  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80C94758  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C9475C  60 00 00 02 */	ori r0, r0, 2
/* 80C94760  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80C94764  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94768  D0 1B 0A 00 */	stfs f0, 0xa00(r27)
/* 80C9476C  38 00 00 00 */	li r0, 0
/* 80C94770  98 1B 07 64 */	stb r0, 0x764(r27)
/* 80C94774  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80C94778  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80C9477C  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80C94780  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C94784  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80C94788  B0 1B 09 EC */	sth r0, 0x9ec(r27)
/* 80C9478C  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80C94790  B0 1B 09 F0 */	sth r0, 0x9f0(r27)
/* 80C94794  98 1B 0A 42 */	stb r0, 0xa42(r27)
/* 80C94798  98 1B 0A 43 */	stb r0, 0xa43(r27)
/* 80C9479C  98 1B 0A 44 */	stb r0, 0xa44(r27)
/* 80C947A0  98 1B 0A 47 */	stb r0, 0xa47(r27)
/* 80C947A4  48 00 05 9C */	b lbl_80C94D40
lbl_80C947A8:
/* 80C947A8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C947AC  FC 00 00 1E */	fctiwz f0, f0
/* 80C947B0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C947B4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C947B8  98 1B 07 64 */	stb r0, 0x764(r27)
/* 80C947BC  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C947C0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80C947C4  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80C947C8  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C947CC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80C947D0  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80C947D4  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 80C947D8  28 00 00 00 */	cmplwi r0, 0
/* 80C947DC  41 82 00 98 */	beq lbl_80C94874
/* 80C947E0  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80C947E4  FC 00 02 10 */	fabs f0, f0
/* 80C947E8  FC 20 00 18 */	frsp f1, f0
/* 80C947EC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C947F0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C947F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C947F8  7C 00 00 26 */	mfcr r0
/* 80C947FC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80C94800  40 82 00 74 */	bne lbl_80C94874
/* 80C94804  7F 63 DB 78 */	mr r3, r27
/* 80C94808  4B 38 89 F4 */	b fopAcM_carryOffRevise__FP10fopAc_ac_c
/* 80C9480C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80C94810  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C94814  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80C94818  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C9481C  FC 00 00 1E */	fctiwz f0, f0
/* 80C94820  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C94824  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C94828  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C9482C  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80C94830  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80C94834  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80C94838  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9483C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C94840  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C94844  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C94848  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C9484C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80C94850  7C 63 02 14 */	add r3, r3, r0
/* 80C94854  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C94858  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C9485C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C94860  38 00 40 00 */	li r0, 0x4000
/* 80C94864  B0 1B 0A 14 */	sth r0, 0xa14(r27)
/* 80C94868  38 00 00 01 */	li r0, 1
/* 80C9486C  98 1B 0A 44 */	stb r0, 0xa44(r27)
/* 80C94870  48 00 04 D0 */	b lbl_80C94D40
lbl_80C94874:
/* 80C94874  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80C94878  38 9B 0A 04 */	addi r4, r27, 0xa04
/* 80C9487C  4B 38 90 14 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80C94880  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 80C94884  C0 3B 0A 04 */	lfs f1, 0xa04(r27)
/* 80C94888  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C9488C  41 82 00 C8 */	beq lbl_80C94954
/* 80C94890  C0 1B 0A 00 */	lfs f0, 0xa00(r27)
/* 80C94894  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C94898  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C9489C  40 80 00 B8 */	bge lbl_80C94954
/* 80C948A0  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C948A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C948A8  4C 40 13 82 */	cror 2, 0, 2
/* 80C948AC  40 82 00 A8 */	bne lbl_80C94954
/* 80C948B0  88 1B 0A 43 */	lbz r0, 0xa43(r27)
/* 80C948B4  28 00 00 00 */	cmplwi r0, 0
/* 80C948B8  40 82 00 9C */	bne lbl_80C94954
/* 80C948BC  88 1B 0A 44 */	lbz r0, 0xa44(r27)
/* 80C948C0  28 00 00 00 */	cmplwi r0, 0
/* 80C948C4  40 82 00 1C */	bne lbl_80C948E0
/* 80C948C8  88 1B 0A 47 */	lbz r0, 0xa47(r27)
/* 80C948CC  28 00 00 00 */	cmplwi r0, 0
/* 80C948D0  40 82 00 10 */	bne lbl_80C948E0
/* 80C948D4  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 80C948D8  28 00 00 00 */	cmplwi r0, 0
/* 80C948DC  41 82 00 0C */	beq lbl_80C948E8
lbl_80C948E0:
/* 80C948E0  7F 63 DB 78 */	mr r3, r27
/* 80C948E4  48 00 0E 85 */	bl setWaterPrtcl__11daObj_Mie_cFv
lbl_80C948E8:
/* 80C948E8  88 1B 0A 44 */	lbz r0, 0xa44(r27)
/* 80C948EC  28 00 00 00 */	cmplwi r0, 0
/* 80C948F0  40 82 00 10 */	bne lbl_80C94900
/* 80C948F4  88 1B 0A 47 */	lbz r0, 0xa47(r27)
/* 80C948F8  28 00 00 00 */	cmplwi r0, 0
/* 80C948FC  41 82 00 28 */	beq lbl_80C94924
lbl_80C94900:
/* 80C94900  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80C94904  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94908  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9490C  40 80 00 0C */	bge lbl_80C94918
/* 80C94910  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 80C94914  D0 1B 0A 0C */	stfs f0, 0xa0c(r27)
lbl_80C94918:
/* 80C94918  38 00 00 00 */	li r0, 0
/* 80C9491C  98 1B 0A 44 */	stb r0, 0xa44(r27)
/* 80C94920  98 1B 0A 47 */	stb r0, 0xa47(r27)
lbl_80C94924:
/* 80C94924  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80C94928  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80C9492C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C94930  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C94934  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80C94938  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80C9493C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C94940  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80C94944  38 00 00 00 */	li r0, 0
/* 80C94948  98 1B 0A 42 */	stb r0, 0xa42(r27)
/* 80C9494C  38 00 00 01 */	li r0, 1
/* 80C94950  98 1B 0A 43 */	stb r0, 0xa43(r27)
lbl_80C94954:
/* 80C94954  88 1B 0A 43 */	lbz r0, 0xa43(r27)
/* 80C94958  28 00 00 00 */	cmplwi r0, 0
/* 80C9495C  41 82 00 84 */	beq lbl_80C949E0
/* 80C94960  88 1B 0A 42 */	lbz r0, 0xa42(r27)
/* 80C94964  28 00 00 00 */	cmplwi r0, 0
/* 80C94968  40 82 00 78 */	bne lbl_80C949E0
/* 80C9496C  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80C94970  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C94978  40 80 00 20 */	bge lbl_80C94998
/* 80C9497C  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80C94980  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 80C94984  C0 5D 00 70 */	lfs f2, 0x70(r29)
/* 80C94988  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 80C9498C  FC 80 10 90 */	fmr f4, f2
/* 80C94990  4B 5D AF EC */	b cLib_addCalc__FPfffff
/* 80C94994  48 00 00 1C */	b lbl_80C949B0
lbl_80C94998:
/* 80C94998  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80C9499C  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 80C949A0  C0 5D 00 70 */	lfs f2, 0x70(r29)
/* 80C949A4  FC 60 10 90 */	fmr f3, f2
/* 80C949A8  FC 80 10 90 */	fmr f4, f2
/* 80C949AC  4B 5D AF D0 */	b cLib_addCalc__FPfffff
lbl_80C949B0:
/* 80C949B0  C0 3B 0A 04 */	lfs f1, 0xa04(r27)
/* 80C949B4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C949B8  EC 00 F8 2A */	fadds f0, f0, f31
/* 80C949BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C949C0  40 80 00 20 */	bge lbl_80C949E0
/* 80C949C4  38 00 01 00 */	li r0, 0x100
/* 80C949C8  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80C949CC  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C949D0  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80C949D4  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80C949D8  38 00 00 01 */	li r0, 1
/* 80C949DC  98 1B 0A 42 */	stb r0, 0xa42(r27)
lbl_80C949E0:
/* 80C949E0  88 1B 0A 42 */	lbz r0, 0xa42(r27)
/* 80C949E4  28 00 00 00 */	cmplwi r0, 0
/* 80C949E8  41 82 01 CC */	beq lbl_80C94BB4
/* 80C949EC  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C949F0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C949F4  41 82 00 34 */	beq lbl_80C94A28
/* 80C949F8  38 00 00 00 */	li r0, 0
/* 80C949FC  98 1B 0A 42 */	stb r0, 0xa42(r27)
/* 80C94A00  98 1B 0A 43 */	stb r0, 0xa43(r27)
/* 80C94A04  B0 1B 09 EC */	sth r0, 0x9ec(r27)
/* 80C94A08  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80C94A0C  B0 1B 09 F0 */	sth r0, 0x9f0(r27)
/* 80C94A10  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94A14  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C94A18  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80C94A1C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80C94A20  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80C94A24  48 00 02 E0 */	b lbl_80C94D04
lbl_80C94A28:
/* 80C94A28  38 7B 07 E0 */	addi r3, r27, 0x7e0
/* 80C94A2C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C94A30  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C94A34  4B 3B CF 28 */	b dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi
/* 80C94A38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C94A3C  41 82 00 90 */	beq lbl_80C94ACC
/* 80C94A40  38 61 00 10 */	addi r3, r1, 0x10
/* 80C94A44  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C94A48  4B 5D 25 00 */	b normalizeZP__4cXyzFv
/* 80C94A4C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80C94A50  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80C94A54  4B 5D 2C 20 */	b cM_atan2s__Fff
/* 80C94A58  7C 64 1B 78 */	mr r4, r3
/* 80C94A5C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80C94A60  38 A0 00 08 */	li r5, 8
/* 80C94A64  38 C0 04 00 */	li r6, 0x400
/* 80C94A68  4B 5D BB A0 */	b cLib_addCalcAngleS2__FPssss
/* 80C94A6C  38 7B 09 EE */	addi r3, r27, 0x9ee
/* 80C94A70  A8 1B 09 EE */	lha r0, 0x9ee(r27)
/* 80C94A74  2C 00 00 00 */	cmpwi r0, 0
/* 80C94A78  38 00 00 80 */	li r0, 0x80
/* 80C94A7C  40 80 00 08 */	bge lbl_80C94A84
/* 80C94A80  38 00 FF 80 */	li r0, -128
lbl_80C94A84:
/* 80C94A84  7C 04 07 34 */	extsh r4, r0
/* 80C94A88  38 A0 00 10 */	li r5, 0x10
/* 80C94A8C  4B 5D C1 04 */	b cLib_chaseAngleS__FPsss
/* 80C94A90  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80C94A94  C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 80C94A98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C94A9C  C8 3D 00 B0 */	lfd f1, 0xb0(r29)
/* 80C94AA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C94AA4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C94AA8  3C 00 43 30 */	lis r0, 0x4330
/* 80C94AAC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C94AB0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C94AB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C94AB8  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C94ABC  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 80C94AC0  C0 7D 00 84 */	lfs f3, 0x84(r29)
/* 80C94AC4  4B 5D AF 78 */	b cLib_addCalc2__FPffff
/* 80C94AC8  48 00 00 14 */	b lbl_80C94ADC
lbl_80C94ACC:
/* 80C94ACC  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80C94AD0  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80C94AD4  C0 5D 00 88 */	lfs f2, 0x88(r29)
/* 80C94AD8  4B 5D BC 68 */	b cLib_chaseF__FPfff
lbl_80C94ADC:
/* 80C94ADC  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 80C94AE0  C0 1B 0A 04 */	lfs f0, 0xa04(r27)
/* 80C94AE4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80C94AE8  C0 5D 00 70 */	lfs f2, 0x70(r29)
/* 80C94AEC  C0 7D 00 74 */	lfs f3, 0x74(r29)
/* 80C94AF0  4B 5D AF 4C */	b cLib_addCalc2__FPffff
/* 80C94AF4  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94AF8  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80C94AFC  7F 63 DB 78 */	mr r3, r27
/* 80C94B00  48 00 0D 91 */	bl setHamonPrtcl__11daObj_Mie_cFv
/* 80C94B04  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94B08  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80C94B0C  80 1B 09 F4 */	lwz r0, 0x9f4(r27)
/* 80C94B10  2C 00 00 00 */	cmpwi r0, 0
/* 80C94B14  40 82 01 F0 */	bne lbl_80C94D04
/* 80C94B18  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C94B1C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80C94B20  41 82 01 E4 */	beq lbl_80C94D04
/* 80C94B24  7F 63 DB 78 */	mr r3, r27
/* 80C94B28  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80C94B2C  38 A1 00 08 */	addi r5, r1, 8
/* 80C94B30  48 00 0A 2D */	bl getWallAngle__11daObj_Mie_cFsPs
/* 80C94B34  2C 03 00 00 */	cmpwi r3, 0
/* 80C94B38  41 82 01 CC */	beq lbl_80C94D04
/* 80C94B3C  38 00 00 0A */	li r0, 0xa
/* 80C94B40  90 1B 09 F4 */	stw r0, 0x9f4(r27)
/* 80C94B44  A8 61 00 08 */	lha r3, 8(r1)
/* 80C94B48  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80C94B4C  7C 03 00 50 */	subf r0, r3, r0
/* 80C94B50  7C 1C 07 34 */	extsh r28, r0
/* 80C94B54  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 80C94B58  4B 5D 2E 34 */	b cM_rndFX__Ff
/* 80C94B5C  FC 00 08 1E */	fctiwz f0, f1
/* 80C94B60  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C94B64  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80C94B68  57 84 08 3C */	slwi r4, r28, 1
/* 80C94B6C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80C94B70  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80C94B74  7C 04 00 50 */	subf r0, r4, r0
/* 80C94B78  7C 00 2A 14 */	add r0, r0, r5
/* 80C94B7C  7C 03 07 34 */	extsh r3, r0
/* 80C94B80  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80C94B84  7C 00 1A 14 */	add r0, r0, r3
/* 80C94B88  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80C94B8C  A8 1B 09 EE */	lha r0, 0x9ee(r27)
/* 80C94B90  7C 00 00 D0 */	neg r0, r0
/* 80C94B94  7C 00 0E 70 */	srawi r0, r0, 1
/* 80C94B98  7C 00 01 94 */	addze r0, r0
/* 80C94B9C  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80C94BA0  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80C94BA4  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80C94BA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C94BAC  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C94BB0  48 00 01 54 */	b lbl_80C94D04
lbl_80C94BB4:
/* 80C94BB4  88 1B 0A 43 */	lbz r0, 0xa43(r27)
/* 80C94BB8  28 00 00 00 */	cmplwi r0, 0
/* 80C94BBC  41 82 00 20 */	beq lbl_80C94BDC
/* 80C94BC0  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80C94BC4  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80C94BC8  C0 5D 00 6C */	lfs f2, 0x6c(r29)
/* 80C94BCC  4B 5D BB 74 */	b cLib_chaseF__FPfff
/* 80C94BD0  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94BD4  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80C94BD8  48 00 01 2C */	b lbl_80C94D04
lbl_80C94BDC:
/* 80C94BDC  88 1B 0A 44 */	lbz r0, 0xa44(r27)
/* 80C94BE0  28 00 00 00 */	cmplwi r0, 0
/* 80C94BE4  41 82 00 B4 */	beq lbl_80C94C98
/* 80C94BE8  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C94BEC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80C94BF0  41 82 00 74 */	beq lbl_80C94C64
/* 80C94BF4  7F 63 DB 78 */	mr r3, r27
/* 80C94BF8  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80C94BFC  38 A1 00 08 */	addi r5, r1, 8
/* 80C94C00  48 00 09 5D */	bl getWallAngle__11daObj_Mie_cFsPs
/* 80C94C04  2C 03 00 00 */	cmpwi r3, 0
/* 80C94C08  41 82 00 5C */	beq lbl_80C94C64
/* 80C94C0C  A8 61 00 08 */	lha r3, 8(r1)
/* 80C94C10  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80C94C14  7C 03 00 50 */	subf r0, r3, r0
/* 80C94C18  7C 1C 07 34 */	extsh r28, r0
/* 80C94C1C  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80C94C20  4B 5D 2D 6C */	b cM_rndFX__Ff
/* 80C94C24  FC 00 08 1E */	fctiwz f0, f1
/* 80C94C28  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C94C2C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80C94C30  57 84 08 3C */	slwi r4, r28, 1
/* 80C94C34  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80C94C38  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80C94C3C  7C 04 00 50 */	subf r0, r4, r0
/* 80C94C40  7C 00 2A 14 */	add r0, r0, r5
/* 80C94C44  7C 03 07 34 */	extsh r3, r0
/* 80C94C48  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80C94C4C  7C 00 1A 14 */	add r0, r0, r3
/* 80C94C50  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80C94C54  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80C94C58  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80C94C5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C94C60  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80C94C64:
/* 80C94C64  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C94C68  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80C94C6C  41 82 00 98 */	beq lbl_80C94D04
/* 80C94C70  7F 63 DB 78 */	mr r3, r27
/* 80C94C74  48 00 0A 79 */	bl setSmokePrtcl__11daObj_Mie_cFv
/* 80C94C78  38 00 00 00 */	li r0, 0
/* 80C94C7C  98 1B 0A 44 */	stb r0, 0xa44(r27)
/* 80C94C80  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94C84  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C94C88  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80C94C8C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80C94C90  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80C94C94  48 00 00 70 */	b lbl_80C94D04
lbl_80C94C98:
/* 80C94C98  88 1B 0A 47 */	lbz r0, 0xa47(r27)
/* 80C94C9C  28 00 00 00 */	cmplwi r0, 0
/* 80C94CA0  41 82 00 38 */	beq lbl_80C94CD8
/* 80C94CA4  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C94CA8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80C94CAC  41 82 00 58 */	beq lbl_80C94D04
/* 80C94CB0  7F 63 DB 78 */	mr r3, r27
/* 80C94CB4  48 00 0A 39 */	bl setSmokePrtcl__11daObj_Mie_cFv
/* 80C94CB8  38 00 00 00 */	li r0, 0
/* 80C94CBC  98 1B 0A 47 */	stb r0, 0xa47(r27)
/* 80C94CC0  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94CC4  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C94CC8  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80C94CCC  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80C94CD0  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80C94CD4  48 00 00 30 */	b lbl_80C94D04
lbl_80C94CD8:
/* 80C94CD8  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 80C94CDC  28 00 00 00 */	cmplwi r0, 0
/* 80C94CE0  41 82 00 10 */	beq lbl_80C94CF0
/* 80C94CE4  7F 63 DB 78 */	mr r3, r27
/* 80C94CE8  48 00 0A 05 */	bl setSmokePrtcl__11daObj_Mie_cFv
/* 80C94CEC  48 00 00 18 */	b lbl_80C94D04
lbl_80C94CF0:
/* 80C94CF0  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80C94CF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C94CF8  40 82 00 0C */	bne lbl_80C94D04
/* 80C94CFC  38 00 00 01 */	li r0, 1
/* 80C94D00  98 1B 0A 47 */	stb r0, 0xa47(r27)
lbl_80C94D04:
/* 80C94D04  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 80C94D08  28 00 00 00 */	cmplwi r0, 0
/* 80C94D0C  40 82 00 34 */	bne lbl_80C94D40
/* 80C94D10  88 1B 0A 44 */	lbz r0, 0xa44(r27)
/* 80C94D14  28 00 00 00 */	cmplwi r0, 0
/* 80C94D18  40 82 00 28 */	bne lbl_80C94D40
/* 80C94D1C  88 1B 0A 47 */	lbz r0, 0xa47(r27)
/* 80C94D20  28 00 00 00 */	cmplwi r0, 0
/* 80C94D24  40 82 00 1C */	bne lbl_80C94D40
/* 80C94D28  88 1B 04 9A */	lbz r0, 0x49a(r27)
/* 80C94D2C  60 00 00 04 */	ori r0, r0, 4
/* 80C94D30  98 1B 04 9A */	stb r0, 0x49a(r27)
/* 80C94D34  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 80C94D38  60 00 00 10 */	ori r0, r0, 0x10
/* 80C94D3C  90 1B 05 5C */	stw r0, 0x55c(r27)
lbl_80C94D40:
/* 80C94D40  C0 1B 04 F8 */	lfs f0, 0x4f8(r27)
/* 80C94D44  D0 1B 09 D4 */	stfs f0, 0x9d4(r27)
/* 80C94D48  C0 1B 04 FC */	lfs f0, 0x4fc(r27)
/* 80C94D4C  D0 1B 09 D8 */	stfs f0, 0x9d8(r27)
/* 80C94D50  C0 1B 05 00 */	lfs f0, 0x500(r27)
/* 80C94D54  D0 1B 09 DC */	stfs f0, 0x9dc(r27)
/* 80C94D58  88 1B 0A 43 */	lbz r0, 0xa43(r27)
/* 80C94D5C  28 00 00 00 */	cmplwi r0, 0
/* 80C94D60  41 82 00 2C */	beq lbl_80C94D8C
/* 80C94D64  38 7B 0A 0C */	addi r3, r27, 0xa0c
/* 80C94D68  34 1B 07 50 */	addic. r0, r27, 0x750
/* 80C94D6C  41 82 00 0C */	beq lbl_80C94D78
/* 80C94D70  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80C94D74  48 00 00 08 */	b lbl_80C94D7C
lbl_80C94D78:
/* 80C94D78  C0 3D 00 98 */	lfs f1, 0x98(r29)
lbl_80C94D7C:
/* 80C94D7C  C0 5D 00 9C */	lfs f2, 0x9c(r29)
/* 80C94D80  C0 7D 00 A0 */	lfs f3, 0xa0(r29)
/* 80C94D84  4B 5D AC B8 */	b cLib_addCalc2__FPffff
/* 80C94D88  48 00 00 18 */	b lbl_80C94DA0
lbl_80C94D8C:
/* 80C94D8C  38 7B 0A 0C */	addi r3, r27, 0xa0c
/* 80C94D90  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80C94D94  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 80C94D98  C0 7D 00 A0 */	lfs f3, 0xa0(r29)
/* 80C94D9C  4B 5D AC A0 */	b cLib_addCalc2__FPffff
lbl_80C94DA0:
/* 80C94DA0  A8 1B 0A 10 */	lha r0, 0xa10(r27)
/* 80C94DA4  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80C94DA8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C94DAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C94DB0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C94DB4  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C94DB8  C0 1B 0A 0C */	lfs f0, 0xa0c(r27)
/* 80C94DBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C94DC0  FC 00 00 1E */	fctiwz f0, f0
/* 80C94DC4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C94DC8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C94DCC  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 80C94DD0  3B 83 00 04 */	addi r28, r3, 4
/* 80C94DD4  A8 1B 0A 10 */	lha r0, 0xa10(r27)
/* 80C94DD8  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80C94DDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C94DE0  7C 3C 04 2E */	lfsx f1, r28, r0
/* 80C94DE4  C0 1B 0A 0C */	lfs f0, 0xa0c(r27)
/* 80C94DE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C94DEC  FC 00 00 1E */	fctiwz f0, f0
/* 80C94DF0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C94DF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C94DF8  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 80C94DFC  38 7B 09 EE */	addi r3, r27, 0x9ee
/* 80C94E00  38 80 00 00 */	li r4, 0
/* 80C94E04  38 A0 00 0A */	li r5, 0xa
/* 80C94E08  4B 5D BD 88 */	b cLib_chaseAngleS__FPsss
/* 80C94E0C  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80C94E10  A8 1B 09 EE */	lha r0, 0x9ee(r27)
/* 80C94E14  7C 03 02 14 */	add r0, r3, r0
/* 80C94E18  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80C94E1C  A8 7B 0A 10 */	lha r3, 0xa10(r27)
/* 80C94E20  38 03 00 01 */	addi r0, r3, 1
/* 80C94E24  B0 1B 0A 10 */	sth r0, 0xa10(r27)
/* 80C94E28  38 7B 09 FC */	addi r3, r27, 0x9fc
/* 80C94E2C  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80C94E30  C0 5D 00 9C */	lfs f2, 0x9c(r29)
/* 80C94E34  4B 5D B9 0C */	b cLib_chaseF__FPfff
/* 80C94E38  88 1B 0A 42 */	lbz r0, 0xa42(r27)
/* 80C94E3C  28 00 00 00 */	cmplwi r0, 0
/* 80C94E40  41 82 00 8C */	beq lbl_80C94ECC
/* 80C94E44  80 1B 09 F8 */	lwz r0, 0x9f8(r27)
/* 80C94E48  2C 00 00 00 */	cmpwi r0, 0
/* 80C94E4C  40 82 00 88 */	bne lbl_80C94ED4
/* 80C94E50  C0 3B 07 50 */	lfs f1, 0x750(r27)
/* 80C94E54  EC 41 00 72 */	fmuls f2, f1, f1
/* 80C94E58  C0 1B 07 58 */	lfs f0, 0x758(r27)
/* 80C94E5C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80C94E60  EF E2 00 2A */	fadds f31, f2, f0
/* 80C94E64  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94E68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C94E6C  40 81 00 0C */	ble lbl_80C94E78
/* 80C94E70  FC 00 F8 34 */	frsqrte f0, f31
/* 80C94E74  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80C94E78:
/* 80C94E78  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80C94E7C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80C94E80  40 80 00 54 */	bge lbl_80C94ED4
/* 80C94E84  C0 5B 07 58 */	lfs f2, 0x758(r27)
/* 80C94E88  4B 5D 27 EC */	b cM_atan2s__Fff
/* 80C94E8C  B0 7B 0A 18 */	sth r3, 0xa18(r27)
/* 80C94E90  C0 3B 09 FC */	lfs f1, 0x9fc(r27)
/* 80C94E94  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80C94E98  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80C94E9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C94EA0  D0 1B 09 FC */	stfs f0, 0x9fc(r27)
/* 80C94EA4  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 80C94EA8  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 80C94EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C94EB0  40 80 00 08 */	bge lbl_80C94EB8
/* 80C94EB4  D0 3B 09 FC */	stfs f1, 0x9fc(r27)
lbl_80C94EB8:
/* 80C94EB8  38 00 02 00 */	li r0, 0x200
/* 80C94EBC  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80C94EC0  38 00 00 0A */	li r0, 0xa
/* 80C94EC4  90 1B 09 F8 */	stw r0, 0x9f8(r27)
/* 80C94EC8  48 00 00 0C */	b lbl_80C94ED4
lbl_80C94ECC:
/* 80C94ECC  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94ED0  D0 1B 09 FC */	stfs f0, 0x9fc(r27)
lbl_80C94ED4:
/* 80C94ED4  A8 1B 0A 18 */	lha r0, 0xa18(r27)
/* 80C94ED8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C94EDC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C94EE0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C94EE4  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C94EE8  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 80C94EEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C94EF0  D0 1B 09 E0 */	stfs f0, 0x9e0(r27)
/* 80C94EF4  A8 1B 0A 18 */	lha r0, 0xa18(r27)
/* 80C94EF8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C94EFC  7C 3C 04 2E */	lfsx f1, r28, r0
/* 80C94F00  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 80C94F04  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C94F08  D0 1B 09 E8 */	stfs f0, 0x9e8(r27)
/* 80C94F0C  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C94F10  D0 1B 09 E4 */	stfs f0, 0x9e4(r27)
/* 80C94F14  2C 1E 00 00 */	cmpwi r30, 0
/* 80C94F18  40 82 00 34 */	bne lbl_80C94F4C
/* 80C94F1C  88 1B 0A 40 */	lbz r0, 0xa40(r27)
/* 80C94F20  28 00 00 00 */	cmplwi r0, 0
/* 80C94F24  40 82 00 28 */	bne lbl_80C94F4C
/* 80C94F28  7F 63 DB 78 */	mr r3, r27
/* 80C94F2C  4B 38 56 E0 */	b fopAcM_calcSpeed__FP10fopAc_ac_c
/* 80C94F30  38 7B 04 F8 */	addi r3, r27, 0x4f8
/* 80C94F34  38 9B 09 E0 */	addi r4, r27, 0x9e0
/* 80C94F38  7C 65 1B 78 */	mr r5, r3
/* 80C94F3C  4B 6B 21 54 */	b PSVECAdd
/* 80C94F40  7F 63 DB 78 */	mr r3, r27
/* 80C94F44  38 9B 07 50 */	addi r4, r27, 0x750
/* 80C94F48  4B 38 57 18 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
lbl_80C94F4C:
/* 80C94F4C  88 1B 0A 42 */	lbz r0, 0xa42(r27)
/* 80C94F50  28 00 00 00 */	cmplwi r0, 0
/* 80C94F54  41 82 00 18 */	beq lbl_80C94F6C
/* 80C94F58  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80C94F5C  38 9B 0A 16 */	addi r4, r27, 0xa16
/* 80C94F60  38 BB 0A 08 */	addi r5, r27, 0xa08
/* 80C94F64  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 80C94F68  4B 38 82 8C */	b fopAcM_riverStream__FP4cXyzPsPff
lbl_80C94F6C:
/* 80C94F6C  38 7B 05 78 */	addi r3, r27, 0x578
/* 80C94F70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C94F74  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C94F78  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C94F7C  4B 3E 1B 30 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C94F80  80 1B 06 54 */	lwz r0, 0x654(r27)
/* 80C94F84  90 1B 07 CC */	stw r0, 0x7cc(r27)
/* 80C94F88  80 1B 06 58 */	lwz r0, 0x658(r27)
/* 80C94F8C  90 1B 07 D0 */	stw r0, 0x7d0(r27)
/* 80C94F90  80 1B 06 5C */	lwz r0, 0x65c(r27)
/* 80C94F94  90 1B 07 D4 */	stw r0, 0x7d4(r27)
/* 80C94F98  88 1B 06 60 */	lbz r0, 0x660(r27)
/* 80C94F9C  98 1B 07 D8 */	stb r0, 0x7d8(r27)
/* 80C94FA0  A0 1B 06 68 */	lhz r0, 0x668(r27)
/* 80C94FA4  B0 1B 07 E0 */	sth r0, 0x7e0(r27)
/* 80C94FA8  A0 1B 06 6A */	lhz r0, 0x66a(r27)
/* 80C94FAC  B0 1B 07 E2 */	sth r0, 0x7e2(r27)
/* 80C94FB0  80 1B 06 6C */	lwz r0, 0x66c(r27)
/* 80C94FB4  90 1B 07 E4 */	stw r0, 0x7e4(r27)
/* 80C94FB8  80 1B 06 70 */	lwz r0, 0x670(r27)
/* 80C94FBC  90 1B 07 E8 */	stw r0, 0x7e8(r27)
/* 80C94FC0  C0 1B 06 78 */	lfs f0, 0x678(r27)
/* 80C94FC4  D0 1B 07 F0 */	stfs f0, 0x7f0(r27)
/* 80C94FC8  C0 1B 06 7C */	lfs f0, 0x67c(r27)
/* 80C94FCC  D0 1B 07 F4 */	stfs f0, 0x7f4(r27)
/* 80C94FD0  C0 1B 06 80 */	lfs f0, 0x680(r27)
/* 80C94FD4  D0 1B 07 F8 */	stfs f0, 0x7f8(r27)
/* 80C94FD8  80 1B 06 84 */	lwz r0, 0x684(r27)
/* 80C94FDC  90 1B 07 FC */	stw r0, 0x7fc(r27)
/* 80C94FE0  C0 1B 06 88 */	lfs f0, 0x688(r27)
/* 80C94FE4  D0 1B 08 00 */	stfs f0, 0x800(r27)
/* 80C94FE8  80 1B 06 8C */	lwz r0, 0x68c(r27)
/* 80C94FEC  90 1B 08 04 */	stw r0, 0x804(r27)
/* 80C94FF0  2C 1E 00 00 */	cmpwi r30, 0
/* 80C94FF4  40 82 00 18 */	bne lbl_80C9500C
/* 80C94FF8  88 1B 0A 40 */	lbz r0, 0xa40(r27)
/* 80C94FFC  28 00 00 00 */	cmplwi r0, 0
/* 80C95000  40 82 00 0C */	bne lbl_80C9500C
/* 80C95004  C0 1B 06 10 */	lfs f0, 0x610(r27)
/* 80C95008  D0 1B 0A 00 */	stfs f0, 0xa00(r27)
lbl_80C9500C:
/* 80C9500C  C0 3D 00 64 */	lfs f1, 0x64(r29)
/* 80C95010  C0 1B 0A 00 */	lfs f0, 0xa00(r27)
/* 80C95014  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C95018  41 82 00 24 */	beq lbl_80C9503C
/* 80C9501C  38 7B 07 E0 */	addi r3, r27, 0x7e0
/* 80C95020  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80C95024  4B 4C 05 48 */	b daNpcF_getGroundAngle__FP13cBgS_PolyInfos
/* 80C95028  B0 7B 0A 12 */	sth r3, 0xa12(r27)
/* 80C9502C  7F 63 DB 78 */	mr r3, r27
/* 80C95030  48 00 03 3D */	bl setEnvTevColor__11daObj_Mie_cFv
/* 80C95034  7F 63 DB 78 */	mr r3, r27
/* 80C95038  48 00 03 91 */	bl setRoomNo__11daObj_Mie_cFv
lbl_80C9503C:
/* 80C9503C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C95040  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 80C95044  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C95048  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80C9504C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C95050  D0 1B 05 58 */	stfs f0, 0x558(r27)
/* 80C95054  C0 3B 05 54 */	lfs f1, 0x554(r27)
/* 80C95058  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80C9505C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C95060  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80C95064  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C95068  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 80C9506C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C95070  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 80C95074  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C95078  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 80C9507C  7F 63 DB 78 */	mr r3, r27
/* 80C95080  48 00 03 8D */	bl setMtx__11daObj_Mie_cFv
/* 80C95084  7F 63 DB 78 */	mr r3, r27
/* 80C95088  A8 9B 0A 14 */	lha r4, 0xa14(r27)
/* 80C9508C  3C A0 00 01 */	lis r5, 1
/* 80C95090  48 00 04 2D */	bl calcRollAngle__11daObj_Mie_cFsi
/* 80C95094  B0 7B 0A 14 */	sth r3, 0xa14(r27)
/* 80C95098  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 80C9509C  28 00 00 00 */	cmplwi r0, 0
/* 80C950A0  40 82 00 4C */	bne lbl_80C950EC
/* 80C950A4  88 1B 0A 41 */	lbz r0, 0xa41(r27)
/* 80C950A8  28 00 00 00 */	cmplwi r0, 0
/* 80C950AC  40 82 00 40 */	bne lbl_80C950EC
/* 80C950B0  38 7B 09 2C */	addi r3, r27, 0x92c
/* 80C950B4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C950B8  4B 5D A1 48 */	b SetR__8cM3dGCylFf
/* 80C950BC  38 7B 09 2C */	addi r3, r27, 0x92c
/* 80C950C0  38 9D 00 00 */	addi r4, r29, 0
/* 80C950C4  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80C950C8  4B 5D A1 30 */	b SetH__8cM3dGCylFf
/* 80C950CC  38 7B 09 2C */	addi r3, r27, 0x92c
/* 80C950D0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C950D4  4B 5D A1 08 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C950D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C950DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C950E0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C950E4  38 9B 08 08 */	addi r4, r27, 0x808
/* 80C950E8  4B 5C FA C0 */	b Set__4cCcSFP8cCcD_Obj
lbl_80C950EC:
/* 80C950EC  38 7B 08 08 */	addi r3, r27, 0x808
/* 80C950F0  81 9B 08 44 */	lwz r12, 0x844(r27)
/* 80C950F4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80C950F8  7D 89 03 A6 */	mtctr r12
/* 80C950FC  4E 80 04 21 */	bctrl 
/* 80C95100  30 1E FF FF */	addic r0, r30, -1
/* 80C95104  7C 00 F1 10 */	subfe r0, r0, r30
/* 80C95108  98 1B 0A 46 */	stb r0, 0xa46(r27)
/* 80C9510C  38 7B 09 F4 */	addi r3, r27, 0x9f4
/* 80C95110  48 00 08 A1 */	bl func_80C959B0
/* 80C95114  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80C95118  48 00 08 99 */	bl func_80C959B0
/* 80C9511C  38 60 00 01 */	li r3, 1
/* 80C95120  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C95124  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C95128  39 61 00 50 */	addi r11, r1, 0x50
/* 80C9512C  4B 6C D0 F4 */	b _restgpr_27
/* 80C95130  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C95134  7C 08 03 A6 */	mtlr r0
/* 80C95138  38 21 00 60 */	addi r1, r1, 0x60
/* 80C9513C  4E 80 00 20 */	blr 
