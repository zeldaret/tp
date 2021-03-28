lbl_80CEB720:
/* 80CEB720  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80CEB724  7C 08 02 A6 */	mflr r0
/* 80CEB728  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80CEB72C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80CEB730  4B 67 6A AC */	b _savegpr_29
/* 80CEB734  7C 7E 1B 78 */	mr r30, r3
/* 80CEB738  3C 80 80 CF */	lis r4, l_bmdIdx@ha
/* 80CEB73C  3B E4 CA B4 */	addi r31, r4, l_bmdIdx@l
/* 80CEB740  80 83 09 0C */	lwz r4, 0x90c(r3)
/* 80CEB744  38 04 00 01 */	addi r0, r4, 1
/* 80CEB748  90 03 09 0C */	stw r0, 0x90c(r3)
/* 80CEB74C  88 03 09 08 */	lbz r0, 0x908(r3)
/* 80CEB750  28 00 00 00 */	cmplwi r0, 0
/* 80CEB754  40 82 00 44 */	bne lbl_80CEB798
/* 80CEB758  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB75C  28 00 00 01 */	cmplwi r0, 1
/* 80CEB760  40 82 00 20 */	bne lbl_80CEB780
/* 80CEB764  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80CEB768  28 00 00 04 */	cmplwi r0, 4
/* 80CEB76C  40 82 00 2C */	bne lbl_80CEB798
/* 80CEB770  48 00 0A F5 */	bl createItem__12daObjStone_cFv
/* 80CEB774  38 00 00 01 */	li r0, 1
/* 80CEB778  98 1E 09 08 */	stb r0, 0x908(r30)
/* 80CEB77C  48 00 00 1C */	b lbl_80CEB798
lbl_80CEB780:
/* 80CEB780  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80CEB784  28 00 00 07 */	cmplwi r0, 7
/* 80CEB788  40 82 00 10 */	bne lbl_80CEB798
/* 80CEB78C  48 00 0A D9 */	bl createItem__12daObjStone_cFv
/* 80CEB790  38 00 00 01 */	li r0, 1
/* 80CEB794  98 1E 09 08 */	stb r0, 0x908(r30)
lbl_80CEB798:
/* 80CEB798  88 1E 09 4E */	lbz r0, 0x94e(r30)
/* 80CEB79C  28 00 00 00 */	cmplwi r0, 0
/* 80CEB7A0  41 82 01 B8 */	beq lbl_80CEB958
/* 80CEB7A4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80CEB7A8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEB7AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CEB7B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CEB7B4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB7B8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEB7BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEB7C0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CEB7C4  C0 7E 04 FC */	lfs f3, 0x4fc(r30)
/* 80CEB7C8  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 80CEB7CC  7C 63 02 14 */	add r3, r3, r0
/* 80CEB7D0  C0 43 00 04 */	lfs f2, 4(r3)
/* 80CEB7D4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80CEB7D8  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80CEB7DC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CEB7E0  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80CEB7E4  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80CEB7E8  FC 00 00 18 */	frsp f0, f0
/* 80CEB7EC  FC 00 00 50 */	fneg f0, f0
/* 80CEB7F0  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB7F4  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB7F8  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80CEB7FC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CEB800  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEB804  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CEB808  FC 00 18 18 */	frsp f0, f3
/* 80CEB80C  FC 00 00 50 */	fneg f0, f0
/* 80CEB810  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEB814  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CEB818  FC 00 10 18 */	frsp f0, f2
/* 80CEB81C  FC 00 00 50 */	fneg f0, f0
/* 80CEB820  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEB824  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CEB828  38 61 00 64 */	addi r3, r1, 0x64
/* 80CEB82C  38 81 00 58 */	addi r4, r1, 0x58
/* 80CEB830  7C 65 1B 78 */	mr r5, r3
/* 80CEB834  4B 65 B8 5C */	b PSVECAdd
/* 80CEB838  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80CEB83C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80CEB840  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80CEB844  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CEB848  EC 81 00 2A */	fadds f4, f1, f0
/* 80CEB84C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80CEB850  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CEB854  40 81 00 58 */	ble lbl_80CEB8AC
/* 80CEB858  FC 00 20 34 */	frsqrte f0, f4
/* 80CEB85C  C8 7F 00 E8 */	lfd f3, 0xe8(r31)
/* 80CEB860  FC 23 00 32 */	fmul f1, f3, f0
/* 80CEB864  C8 5F 00 F0 */	lfd f2, 0xf0(r31)
/* 80CEB868  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEB86C  FC 04 00 32 */	fmul f0, f4, f0
/* 80CEB870  FC 02 00 28 */	fsub f0, f2, f0
/* 80CEB874  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEB878  FC 23 00 32 */	fmul f1, f3, f0
/* 80CEB87C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEB880  FC 04 00 32 */	fmul f0, f4, f0
/* 80CEB884  FC 02 00 28 */	fsub f0, f2, f0
/* 80CEB888  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEB88C  FC 23 00 32 */	fmul f1, f3, f0
/* 80CEB890  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEB894  FC 04 00 32 */	fmul f0, f4, f0
/* 80CEB898  FC 02 00 28 */	fsub f0, f2, f0
/* 80CEB89C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEB8A0  FC 84 00 32 */	fmul f4, f4, f0
/* 80CEB8A4  FC 80 20 18 */	frsp f4, f4
/* 80CEB8A8  48 00 00 88 */	b lbl_80CEB930
lbl_80CEB8AC:
/* 80CEB8AC  C8 1F 00 F8 */	lfd f0, 0xf8(r31)
/* 80CEB8B0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CEB8B4  40 80 00 10 */	bge lbl_80CEB8C4
/* 80CEB8B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CEB8BC  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 80CEB8C0  48 00 00 70 */	b lbl_80CEB930
lbl_80CEB8C4:
/* 80CEB8C4  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80CEB8C8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CEB8CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CEB8D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CEB8D4  7C 03 00 00 */	cmpw r3, r0
/* 80CEB8D8  41 82 00 14 */	beq lbl_80CEB8EC
/* 80CEB8DC  40 80 00 40 */	bge lbl_80CEB91C
/* 80CEB8E0  2C 03 00 00 */	cmpwi r3, 0
/* 80CEB8E4  41 82 00 20 */	beq lbl_80CEB904
/* 80CEB8E8  48 00 00 34 */	b lbl_80CEB91C
lbl_80CEB8EC:
/* 80CEB8EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEB8F0  41 82 00 0C */	beq lbl_80CEB8FC
/* 80CEB8F4  38 00 00 01 */	li r0, 1
/* 80CEB8F8  48 00 00 28 */	b lbl_80CEB920
lbl_80CEB8FC:
/* 80CEB8FC  38 00 00 02 */	li r0, 2
/* 80CEB900  48 00 00 20 */	b lbl_80CEB920
lbl_80CEB904:
/* 80CEB904  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEB908  41 82 00 0C */	beq lbl_80CEB914
/* 80CEB90C  38 00 00 05 */	li r0, 5
/* 80CEB910  48 00 00 10 */	b lbl_80CEB920
lbl_80CEB914:
/* 80CEB914  38 00 00 03 */	li r0, 3
/* 80CEB918  48 00 00 08 */	b lbl_80CEB920
lbl_80CEB91C:
/* 80CEB91C  38 00 00 04 */	li r0, 4
lbl_80CEB920:
/* 80CEB920  2C 00 00 01 */	cmpwi r0, 1
/* 80CEB924  40 82 00 0C */	bne lbl_80CEB930
/* 80CEB928  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CEB92C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_80CEB930:
/* 80CEB930  D0 9E 05 2C */	stfs f4, 0x52c(r30)
/* 80CEB934  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80CEB938  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CEB93C  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 80CEB940  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB944  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB948  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 80CEB94C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB950  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEB954  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80CEB958:
/* 80CEB958  7F C3 F3 78 */	mr r3, r30
/* 80CEB95C  38 9E 07 8C */	addi r4, r30, 0x78c
/* 80CEB960  4B 32 ED 6C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CEB964  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CEB968  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CEB96C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CEB970  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80CEB974  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CEB978  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CEB97C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80CEB980  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEB984  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CEB988  3C 60 80 CF */	lis r3, __vt__8cM3dGPla@ha
/* 80CEB98C  38 03 CE 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CEB990  90 01 00 80 */	stw r0, 0x80(r1)
/* 80CEB994  38 61 00 4C */	addi r3, r1, 0x4c
/* 80CEB998  4B 33 23 24 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80CEB99C  7C 7D 1B 78 */	mr r29, r3
/* 80CEB9A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEB9A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEB9A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CEB9AC  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 80CEB9B0  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 80CEB9B4  38 84 00 14 */	addi r4, r4, 0x14
/* 80CEB9B8  38 A1 00 70 */	addi r5, r1, 0x70
/* 80CEB9BC  4B 38 8D 88 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CEB9C0  3C 80 80 45 */	lis r4, mGroundY__11fopAcM_gc_c@ha
/* 80CEB9C4  C0 24 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r4)
/* 80CEB9C8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80CEB9CC  41 82 02 18 */	beq lbl_80CEBBE4
/* 80CEB9D0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80CEB9D4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CEB9D8  41 82 02 0C */	beq lbl_80CEBBE4
/* 80CEB9DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CEB9E0  41 82 02 04 */	beq lbl_80CEBBE4
/* 80CEB9E4  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80CEB9E8  FC 00 00 1E */	fctiwz f0, f0
/* 80CEB9EC  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80CEB9F0  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80CEB9F4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CEB9F8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CEB9FC  3B A3 00 04 */	addi r29, r3, 4
/* 80CEBA00  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEBA04  7C 7D 04 2E */	lfsx f3, r29, r0
/* 80CEBA08  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80CEBA0C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80CEBA10  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80CEBA14  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80CEBA18  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80CEBA1C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CEBA20  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80CEBA24  40 80 01 C0 */	bge lbl_80CEBBE4
/* 80CEBA28  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80CEBA2C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CEBA30  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CEBA34  FC 20 10 18 */	frsp f1, f2
/* 80CEBA38  FC 40 00 18 */	frsp f2, f0
/* 80CEBA3C  4B 57 BC 38 */	b cM_atan2s__Fff
/* 80CEBA40  C0 7F 01 38 */	lfs f3, 0x138(r31)
/* 80CEBA44  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80CEBA48  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CEBA4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CEBA50  EC 63 00 32 */	fmuls f3, f3, f0
/* 80CEBA54  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CEBA58  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CEBA5C  40 80 00 0C */	bge lbl_80CEBA68
/* 80CEBA60  FC 60 00 90 */	fmr f3, f0
/* 80CEBA64  48 00 00 10 */	b lbl_80CEBA74
lbl_80CEBA68:
/* 80CEBA68  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80CEBA6C  40 81 00 08 */	ble lbl_80CEBA74
/* 80CEBA70  FC 60 08 90 */	fmr f3, f1
lbl_80CEBA74:
/* 80CEBA74  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80CEBA78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEBA7C  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80CEBA80  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEBA84  EC 41 00 32 */	fmuls f2, f1, f0
/* 80CEBA88  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80CEBA8C  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 80CEBA90  7C 04 04 2E */	lfsx f0, r4, r0
/* 80CEBA94  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEBA98  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CEBA9C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80CEBAA0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CEBAA4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80CEBAA8  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80CEBAAC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80CEBAB0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CEBAB4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CEBAB8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CEBABC  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80CEBAC0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CEBAC4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CEBAC8  38 61 00 28 */	addi r3, r1, 0x28
/* 80CEBACC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80CEBAD0  7C 65 1B 78 */	mr r5, r3
/* 80CEBAD4  4B 65 B5 BC */	b PSVECAdd
/* 80CEBAD8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CEBADC  EC 20 00 32 */	fmuls f1, f0, f0
/* 80CEBAE0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CEBAE4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CEBAE8  EC 81 00 2A */	fadds f4, f1, f0
/* 80CEBAEC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80CEBAF0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CEBAF4  40 81 00 58 */	ble lbl_80CEBB4C
/* 80CEBAF8  FC 00 20 34 */	frsqrte f0, f4
/* 80CEBAFC  C8 7F 00 E8 */	lfd f3, 0xe8(r31)
/* 80CEBB00  FC 23 00 32 */	fmul f1, f3, f0
/* 80CEBB04  C8 5F 00 F0 */	lfd f2, 0xf0(r31)
/* 80CEBB08  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEBB0C  FC 04 00 32 */	fmul f0, f4, f0
/* 80CEBB10  FC 02 00 28 */	fsub f0, f2, f0
/* 80CEBB14  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEBB18  FC 23 00 32 */	fmul f1, f3, f0
/* 80CEBB1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEBB20  FC 04 00 32 */	fmul f0, f4, f0
/* 80CEBB24  FC 02 00 28 */	fsub f0, f2, f0
/* 80CEBB28  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEBB2C  FC 23 00 32 */	fmul f1, f3, f0
/* 80CEBB30  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEBB34  FC 04 00 32 */	fmul f0, f4, f0
/* 80CEBB38  FC 02 00 28 */	fsub f0, f2, f0
/* 80CEBB3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEBB40  FC 84 00 32 */	fmul f4, f4, f0
/* 80CEBB44  FC 80 20 18 */	frsp f4, f4
/* 80CEBB48  48 00 00 88 */	b lbl_80CEBBD0
lbl_80CEBB4C:
/* 80CEBB4C  C8 1F 00 F8 */	lfd f0, 0xf8(r31)
/* 80CEBB50  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CEBB54  40 80 00 10 */	bge lbl_80CEBB64
/* 80CEBB58  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CEBB5C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 80CEBB60  48 00 00 70 */	b lbl_80CEBBD0
lbl_80CEBB64:
/* 80CEBB64  D0 81 00 08 */	stfs f4, 8(r1)
/* 80CEBB68  80 81 00 08 */	lwz r4, 8(r1)
/* 80CEBB6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CEBB70  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CEBB74  7C 03 00 00 */	cmpw r3, r0
/* 80CEBB78  41 82 00 14 */	beq lbl_80CEBB8C
/* 80CEBB7C  40 80 00 40 */	bge lbl_80CEBBBC
/* 80CEBB80  2C 03 00 00 */	cmpwi r3, 0
/* 80CEBB84  41 82 00 20 */	beq lbl_80CEBBA4
/* 80CEBB88  48 00 00 34 */	b lbl_80CEBBBC
lbl_80CEBB8C:
/* 80CEBB8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEBB90  41 82 00 0C */	beq lbl_80CEBB9C
/* 80CEBB94  38 00 00 01 */	li r0, 1
/* 80CEBB98  48 00 00 28 */	b lbl_80CEBBC0
lbl_80CEBB9C:
/* 80CEBB9C  38 00 00 02 */	li r0, 2
/* 80CEBBA0  48 00 00 20 */	b lbl_80CEBBC0
lbl_80CEBBA4:
/* 80CEBBA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEBBA8  41 82 00 0C */	beq lbl_80CEBBB4
/* 80CEBBAC  38 00 00 05 */	li r0, 5
/* 80CEBBB0  48 00 00 10 */	b lbl_80CEBBC0
lbl_80CEBBB4:
/* 80CEBBB4  38 00 00 03 */	li r0, 3
/* 80CEBBB8  48 00 00 08 */	b lbl_80CEBBC0
lbl_80CEBBBC:
/* 80CEBBBC  38 00 00 04 */	li r0, 4
lbl_80CEBBC0:
/* 80CEBBC0  2C 00 00 01 */	cmpwi r0, 1
/* 80CEBBC4  40 82 00 0C */	bne lbl_80CEBBD0
/* 80CEBBC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CEBBCC  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_80CEBBD0:
/* 80CEBBD0  D0 9E 05 2C */	stfs f4, 0x52c(r30)
/* 80CEBBD4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80CEBBD8  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80CEBBDC  4B 57 BA 98 */	b cM_atan2s__Fff
/* 80CEBBE0  B0 7E 04 DE */	sth r3, 0x4de(r30)
lbl_80CEBBE4:
/* 80CEBBE4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEBBE8  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80CEBBEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEBBF0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEBBF4  C0 3E 07 94 */	lfs f1, 0x794(r30)
/* 80CEBBF8  C0 1E 07 8C */	lfs f0, 0x78c(r30)
/* 80CEBBFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CEBC00  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80CEBC04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CEBC08  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CEBC0C  38 61 00 10 */	addi r3, r1, 0x10
/* 80CEBC10  4B 65 B5 28 */	b PSVECSquareMag
/* 80CEBC14  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80CEBC18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEBC1C  40 81 00 14 */	ble lbl_80CEBC30
/* 80CEBC20  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEBC24  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80CEBC28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEBC2C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80CEBC30:
/* 80CEBC30  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEBC34  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80CEBC38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEBC3C  40 80 00 0C */	bge lbl_80CEBC48
/* 80CEBC40  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80CEBC44  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80CEBC48:
/* 80CEBC48  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 80CEBC4C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80CEBC50  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80CEBC54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEBC58  40 80 00 18 */	bge lbl_80CEBC70
/* 80CEBC5C  FC 00 0A 10 */	fabs f0, f1
/* 80CEBC60  FC 00 00 18 */	frsp f0, f0
/* 80CEBC64  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80CEBC68  40 81 00 08 */	ble lbl_80CEBC70
/* 80CEBC6C  FC 40 00 90 */	fmr f2, f0
lbl_80CEBC70:
/* 80CEBC70  38 7E 09 40 */	addi r3, r30, 0x940
/* 80CEBC74  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEBC78  54 00 10 3A */	slwi r0, r0, 2
/* 80CEBC7C  38 9F 00 68 */	addi r4, r31, 0x68
/* 80CEBC80  7C 24 04 2E */	lfsx f1, r4, r0
/* 80CEBC84  4B 58 4A BC */	b cLib_chaseF__FPfff
/* 80CEBC88  7F C3 F3 78 */	mr r3, r30
/* 80CEBC8C  38 80 00 00 */	li r4, 0
/* 80CEBC90  48 00 06 AD */	bl calcRotBaseMtx__12daObjStone_cFPs
/* 80CEBC94  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80CEBC98  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEBC9C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CEBCA0  40 82 00 18 */	bne lbl_80CEBCB8
/* 80CEBCA4  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 80CEBCA8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CEBCAC  41 82 00 0C */	beq lbl_80CEBCB8
/* 80CEBCB0  7F C3 F3 78 */	mr r3, r30
/* 80CEBCB4  4B FF F3 35 */	bl init_modeWait__12daObjStone_cFv
lbl_80CEBCB8:
/* 80CEBCB8  3C 60 80 CF */	lis r3, __vt__8cM3dGPla@ha
/* 80CEBCBC  38 03 CE 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CEBCC0  90 01 00 80 */	stw r0, 0x80(r1)
/* 80CEBCC4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80CEBCC8  4B 67 65 60 */	b _restgpr_29
/* 80CEBCCC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80CEBCD0  7C 08 03 A6 */	mtlr r0
/* 80CEBCD4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80CEBCD8  4E 80 00 20 */	blr 
