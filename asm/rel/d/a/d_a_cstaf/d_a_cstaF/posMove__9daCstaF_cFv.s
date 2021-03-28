lbl_804DE698:
/* 804DE698  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804DE69C  7C 08 02 A6 */	mflr r0
/* 804DE6A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804DE6A4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804DE6A8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804DE6AC  39 61 00 50 */	addi r11, r1, 0x50
/* 804DE6B0  4B E8 3B 28 */	b _savegpr_28
/* 804DE6B4  7C 7D 1B 78 */	mr r29, r3
/* 804DE6B8  3C 60 80 4E */	lis r3, lit_3765@ha
/* 804DE6BC  3B C3 F8 B8 */	addi r30, r3, lit_3765@l
/* 804DE6C0  80 1D 07 1C */	lwz r0, 0x71c(r29)
/* 804DE6C4  54 1F DF FE */	rlwinm r31, r0, 0x1b, 0x1f, 0x1f
/* 804DE6C8  80 1D 07 1C */	lwz r0, 0x71c(r29)
/* 804DE6CC  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 804DE6D0  90 1D 07 1C */	stw r0, 0x71c(r29)
/* 804DE6D4  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 804DE6D8  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 804DE6DC  EC 01 00 2A */	fadds f0, f1, f0
/* 804DE6E0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804DE6E4  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 804DE6E8  C0 3D 05 34 */	lfs f1, 0x534(r29)
/* 804DE6EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804DE6F0  40 80 00 08 */	bge lbl_804DE6F8
/* 804DE6F4  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
lbl_804DE6F8:
/* 804DE6F8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 804DE6FC  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 804DE700  EC 01 00 2A */	fadds f0, f1, f0
/* 804DE704  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804DE708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DE70C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DE710  83 83 5D B4 */	lwz r28, 0x5db4(r3)
/* 804DE714  7F 83 E3 78 */	mr r3, r28
/* 804DE718  4B C0 2C 5C */	b getCopyRodControllActor__9daAlink_cFv
/* 804DE71C  7C 03 E8 40 */	cmplw r3, r29
/* 804DE720  40 82 01 04 */	bne lbl_804DE824
/* 804DE724  88 1D 0B 0F */	lbz r0, 0xb0f(r29)
/* 804DE728  28 00 00 00 */	cmplwi r0, 0
/* 804DE72C  40 82 00 0C */	bne lbl_804DE738
/* 804DE730  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 804DE734  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_804DE738:
/* 804DE738  80 1D 07 1C */	lwz r0, 0x71c(r29)
/* 804DE73C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804DE740  41 82 01 00 */	beq lbl_804DE840
/* 804DE744  88 1D 0B 0A */	lbz r0, 0xb0a(r29)
/* 804DE748  28 00 00 03 */	cmplwi r0, 3
/* 804DE74C  41 82 00 F4 */	beq lbl_804DE840
/* 804DE750  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 804DE754  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 804DE758  EC 01 00 2A */	fadds f0, f1, f0
/* 804DE75C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804DE760  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 804DE764  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 804DE768  EC 01 00 2A */	fadds f0, f1, f0
/* 804DE76C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804DE770  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 804DE774  EC 20 00 32 */	fmuls f1, f0, f0
/* 804DE778  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 804DE77C  EC 00 00 32 */	fmuls f0, f0, f0
/* 804DE780  EC 21 00 2A */	fadds f1, f1, f0
/* 804DE784  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804DE788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DE78C  40 81 00 0C */	ble lbl_804DE798
/* 804DE790  FC 00 08 34 */	frsqrte f0, f1
/* 804DE794  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804DE798:
/* 804DE798  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 804DE79C  88 1D 0B 0A */	lbz r0, 0xb0a(r29)
/* 804DE7A0  28 00 00 01 */	cmplwi r0, 1
/* 804DE7A4  40 82 00 9C */	bne lbl_804DE840
/* 804DE7A8  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 804DE7AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804DE7B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804DE7B4  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804DE7B8  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 804DE7BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DE7C0  4C 41 13 82 */	cror 2, 1, 2
/* 804DE7C4  40 82 00 38 */	bne lbl_804DE7FC
/* 804DE7C8  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 804DE7CC  4B D8 89 5C */	b atan2sX_Z__4cXyzCFv
/* 804DE7D0  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 804DE7D4  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804DE7D8  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 804DE7DC  EC 21 00 24 */	fdivs f1, f1, f0
/* 804DE7E0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 804DE7E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DE7E8  40 81 00 08 */	ble lbl_804DE7F0
/* 804DE7EC  FC 20 00 90 */	fmr f1, f0
lbl_804DE7F0:
/* 804DE7F0  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 804DE7F4  EC 20 08 2A */	fadds f1, f0, f1
/* 804DE7F8  48 00 00 10 */	b lbl_804DE808
lbl_804DE7FC:
/* 804DE7FC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804DE800  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 804DE804  C0 3E 00 44 */	lfs f1, 0x44(r30)
lbl_804DE808:
/* 804DE808  38 61 00 0C */	addi r3, r1, 0xc
/* 804DE80C  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 804DE810  4B D9 1F 30 */	b cLib_chaseF__FPfff
/* 804DE814  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804DE818  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 804DE81C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804DE820  48 00 00 20 */	b lbl_804DE840
lbl_804DE824:
/* 804DE824  88 1D 0B 0A */	lbz r0, 0xb0a(r29)
/* 804DE828  28 00 00 00 */	cmplwi r0, 0
/* 804DE82C  40 82 00 14 */	bne lbl_804DE840
/* 804DE830  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804DE834  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 804DE838  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804DE83C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_804DE840:
/* 804DE840  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804DE844  D0 1D 0B 20 */	stfs f0, 0xb20(r29)
/* 804DE848  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 804DE84C  D0 1D 0B 24 */	stfs f0, 0xb24(r29)
/* 804DE850  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804DE854  D0 1D 0B 28 */	stfs f0, 0xb28(r29)
/* 804DE858  38 9D 08 C8 */	addi r4, r29, 0x8c8
/* 804DE85C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804DE860  7C 65 1B 78 */	mr r5, r3
/* 804DE864  4B E6 88 2C */	b PSVECAdd
/* 804DE868  38 7D 08 C8 */	addi r3, r29, 0x8c8
/* 804DE86C  4B D8 50 F0 */	b ClrCcMove__9cCcD_SttsFv
/* 804DE870  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 804DE874  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804DE878  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804DE87C  3B 84 0F 38 */	addi r28, r4, 0xf38
/* 804DE880  7F 84 E3 78 */	mr r4, r28
/* 804DE884  4B B9 82 28 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804DE888  2C 1F 00 00 */	cmpwi r31, 0
/* 804DE88C  41 82 01 E4 */	beq lbl_804DEA70
/* 804DE890  80 1D 07 1C */	lwz r0, 0x71c(r29)
/* 804DE894  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804DE898  40 82 01 D8 */	bne lbl_804DEA70
/* 804DE89C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 804DE8A0  C0 3D 07 88 */	lfs f1, 0x788(r29)
/* 804DE8A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804DE8A8  41 82 01 C8 */	beq lbl_804DEA70
/* 804DE8AC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804DE8B0  EF E1 00 28 */	fsubs f31, f1, f0
/* 804DE8B4  3C 60 80 4E */	lis r3, __vt__8cM3dGPla@ha
/* 804DE8B8  38 03 FA 34 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804DE8BC  90 01 00 38 */	stw r0, 0x38(r1)
/* 804DE8C0  7F 83 E3 78 */	mr r3, r28
/* 804DE8C4  38 9D 07 E0 */	addi r4, r29, 0x7e0
/* 804DE8C8  38 A1 00 28 */	addi r5, r1, 0x28
/* 804DE8CC  4B B9 5E 78 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804DE8D0  38 61 00 28 */	addi r3, r1, 0x28
/* 804DE8D4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 804DE8D8  4B B3 F3 00 */	b fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 804DE8DC  7C 7C 1B 78 */	mr r28, r3
/* 804DE8E0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 804DE8E4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804DE8E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804DE8EC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 804DE8F0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804DE8F4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 804DE8F8  C0 5D 04 C4 */	lfs f2, 0x4c4(r29)
/* 804DE8FC  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 804DE900  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804DE904  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804DE908  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 804DE90C  38 61 00 10 */	addi r3, r1, 0x10
/* 804DE910  38 81 00 1C */	addi r4, r1, 0x1c
/* 804DE914  4B E6 8A 88 */	b PSVECSquareDistance
/* 804DE918  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804DE91C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DE920  40 81 00 58 */	ble lbl_804DE978
/* 804DE924  FC 00 08 34 */	frsqrte f0, f1
/* 804DE928  C8 9E 00 A0 */	lfd f4, 0xa0(r30)
/* 804DE92C  FC 44 00 32 */	fmul f2, f4, f0
/* 804DE930  C8 7E 00 A8 */	lfd f3, 0xa8(r30)
/* 804DE934  FC 00 00 32 */	fmul f0, f0, f0
/* 804DE938  FC 01 00 32 */	fmul f0, f1, f0
/* 804DE93C  FC 03 00 28 */	fsub f0, f3, f0
/* 804DE940  FC 02 00 32 */	fmul f0, f2, f0
/* 804DE944  FC 44 00 32 */	fmul f2, f4, f0
/* 804DE948  FC 00 00 32 */	fmul f0, f0, f0
/* 804DE94C  FC 01 00 32 */	fmul f0, f1, f0
/* 804DE950  FC 03 00 28 */	fsub f0, f3, f0
/* 804DE954  FC 02 00 32 */	fmul f0, f2, f0
/* 804DE958  FC 44 00 32 */	fmul f2, f4, f0
/* 804DE95C  FC 00 00 32 */	fmul f0, f0, f0
/* 804DE960  FC 01 00 32 */	fmul f0, f1, f0
/* 804DE964  FC 03 00 28 */	fsub f0, f3, f0
/* 804DE968  FC 02 00 32 */	fmul f0, f2, f0
/* 804DE96C  FC 21 00 32 */	fmul f1, f1, f0
/* 804DE970  FC 20 08 18 */	frsp f1, f1
/* 804DE974  48 00 00 88 */	b lbl_804DE9FC
lbl_804DE978:
/* 804DE978  C8 1E 00 B0 */	lfd f0, 0xb0(r30)
/* 804DE97C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DE980  40 80 00 10 */	bge lbl_804DE990
/* 804DE984  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804DE988  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804DE98C  48 00 00 70 */	b lbl_804DE9FC
lbl_804DE990:
/* 804DE990  D0 21 00 08 */	stfs f1, 8(r1)
/* 804DE994  80 81 00 08 */	lwz r4, 8(r1)
/* 804DE998  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804DE99C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804DE9A0  7C 03 00 00 */	cmpw r3, r0
/* 804DE9A4  41 82 00 14 */	beq lbl_804DE9B8
/* 804DE9A8  40 80 00 40 */	bge lbl_804DE9E8
/* 804DE9AC  2C 03 00 00 */	cmpwi r3, 0
/* 804DE9B0  41 82 00 20 */	beq lbl_804DE9D0
/* 804DE9B4  48 00 00 34 */	b lbl_804DE9E8
lbl_804DE9B8:
/* 804DE9B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804DE9BC  41 82 00 0C */	beq lbl_804DE9C8
/* 804DE9C0  38 00 00 01 */	li r0, 1
/* 804DE9C4  48 00 00 28 */	b lbl_804DE9EC
lbl_804DE9C8:
/* 804DE9C8  38 00 00 02 */	li r0, 2
/* 804DE9CC  48 00 00 20 */	b lbl_804DE9EC
lbl_804DE9D0:
/* 804DE9D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804DE9D4  41 82 00 0C */	beq lbl_804DE9E0
/* 804DE9D8  38 00 00 05 */	li r0, 5
/* 804DE9DC  48 00 00 10 */	b lbl_804DE9EC
lbl_804DE9E0:
/* 804DE9E0  38 00 00 03 */	li r0, 3
/* 804DE9E4  48 00 00 08 */	b lbl_804DE9EC
lbl_804DE9E8:
/* 804DE9E8  38 00 00 04 */	li r0, 4
lbl_804DE9EC:
/* 804DE9EC  2C 00 00 01 */	cmpwi r0, 1
/* 804DE9F0  40 82 00 0C */	bne lbl_804DE9FC
/* 804DE9F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804DE9F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804DE9FC:
/* 804DE9FC  57 80 04 38 */	rlwinm r0, r28, 0, 0x10, 0x1c
/* 804DEA00  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804DEA04  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804DEA08  7C 03 04 2E */	lfsx f0, r3, r0
/* 804DEA0C  EC 41 00 32 */	fmuls f2, f1, f0
/* 804DEA10  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804DEA14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804DEA18  40 80 00 08 */	bge lbl_804DEA20
/* 804DEA1C  FC 40 00 90 */	fmr f2, f0
lbl_804DEA20:
/* 804DEA20  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 804DEA24  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804DEA28  40 80 00 34 */	bge lbl_804DEA5C
/* 804DEA2C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804DEA30  EC 00 10 28 */	fsubs f0, f0, f2
/* 804DEA34  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804DEA38  4C 41 13 82 */	cror 2, 1, 2
/* 804DEA3C  40 82 00 20 */	bne lbl_804DEA5C
/* 804DEA40  C0 1D 07 88 */	lfs f0, 0x788(r29)
/* 804DEA44  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804DEA48  80 1D 07 1C */	lwz r0, 0x71c(r29)
/* 804DEA4C  60 00 00 20 */	ori r0, r0, 0x20
/* 804DEA50  90 1D 07 1C */	stw r0, 0x71c(r29)
/* 804DEA54  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 804DEA58  48 00 00 0C */	b lbl_804DEA64
lbl_804DEA5C:
/* 804DEA5C  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 804DEA60  D0 1D 0B 1C */	stfs f0, 0xb1c(r29)
lbl_804DEA64:
/* 804DEA64  3C 60 80 4E */	lis r3, __vt__8cM3dGPla@ha
/* 804DEA68  38 03 FA 34 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804DEA6C  90 01 00 38 */	stw r0, 0x38(r1)
lbl_804DEA70:
/* 804DEA70  2C 1F 00 00 */	cmpwi r31, 0
/* 804DEA74  40 82 00 84 */	bne lbl_804DEAF8
/* 804DEA78  80 1D 07 1C */	lwz r0, 0x71c(r29)
/* 804DEA7C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804DEA80  41 82 00 78 */	beq lbl_804DEAF8
/* 804DEA84  C0 3D 0B 1C */	lfs f1, 0xb1c(r29)
/* 804DEA88  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804DEA8C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804DEA90  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 804DEA94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DEA98  4C 41 13 82 */	cror 2, 1, 2
/* 804DEA9C  40 82 00 5C */	bne lbl_804DEAF8
/* 804DEAA0  80 7D 05 A0 */	lwz r3, 0x5a0(r29)
/* 804DEAA4  38 9E 00 24 */	addi r4, r30, 0x24
/* 804DEAA8  88 1D 0B 09 */	lbz r0, 0xb09(r29)
/* 804DEAAC  54 00 18 38 */	slwi r0, r0, 3
/* 804DEAB0  7C 84 02 14 */	add r4, r4, r0
/* 804DEAB4  A0 84 00 06 */	lhz r4, 6(r4)
/* 804DEAB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804DEABC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804DEAC0  3C A5 00 02 */	addis r5, r5, 2
/* 804DEAC4  38 C0 00 80 */	li r6, 0x80
/* 804DEAC8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804DEACC  4B B5 D8 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DEAD0  7C 64 1B 78 */	mr r4, r3
/* 804DEAD4  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 804DEAD8  38 A0 FF FF */	li r5, -1
/* 804DEADC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 804DEAE0  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 804DEAE4  FC 60 08 90 */	fmr f3, f1
/* 804DEAE8  C0 9E 00 C0 */	lfs f4, 0xc0(r30)
/* 804DEAEC  4B B3 23 84 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 804DEAF0  38 00 00 03 */	li r0, 3
/* 804DEAF4  98 1D 0B 0A */	stb r0, 0xb0a(r29)
lbl_804DEAF8:
/* 804DEAF8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804DEAFC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804DEB00  39 61 00 50 */	addi r11, r1, 0x50
/* 804DEB04  4B E8 37 20 */	b _restgpr_28
/* 804DEB08  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804DEB0C  7C 08 03 A6 */	mtlr r0
/* 804DEB10  38 21 00 60 */	addi r1, r1, 0x60
/* 804DEB14  4E 80 00 20 */	blr 
