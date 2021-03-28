lbl_80948828:
/* 80948828  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8094882C  7C 08 02 A6 */	mflr r0
/* 80948830  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80948834  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80948838  4B A1 99 A4 */	b _savegpr_29
/* 8094883C  7C 7D 1B 78 */	mr r29, r3
/* 80948840  3C 60 80 95 */	lis r3, mCcDSph__8daMyna_c@ha
/* 80948844  3B E3 B1 B0 */	addi r31, r3, mCcDSph__8daMyna_c@l
/* 80948848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8094884C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80948850  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80948854  38 61 00 3C */	addi r3, r1, 0x3c
/* 80948858  48 00 21 AD */	bl getHeadTopPos__9daPy_py_cCFv
/* 8094885C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80948860  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80948864  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80948868  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8094886C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80948870  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80948874  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 80948878  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 8094887C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80948880  EC 01 00 2A */	fadds f0, f1, f0
/* 80948884  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80948888  C0 1D 08 5C */	lfs f0, 0x85c(r29)
/* 8094888C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80948890  C0 1D 08 60 */	lfs f0, 0x860(r29)
/* 80948894  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80948898  C0 1D 08 64 */	lfs f0, 0x864(r29)
/* 8094889C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 809488A0  38 61 00 30 */	addi r3, r1, 0x30
/* 809488A4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809488A8  38 A1 00 60 */	addi r5, r1, 0x60
/* 809488AC  4B 91 E2 88 */	b __mi__4cXyzCFRC3Vec
/* 809488B0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 809488B4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809488B8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809488BC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809488C0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 809488C4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809488C8  38 61 00 24 */	addi r3, r1, 0x24
/* 809488CC  38 81 00 6C */	addi r4, r1, 0x6c
/* 809488D0  38 A1 00 60 */	addi r5, r1, 0x60
/* 809488D4  4B 91 E2 60 */	b __mi__4cXyzCFRC3Vec
/* 809488D8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 809488DC  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 809488E0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 809488E4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 809488E8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809488EC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 809488F0  EC 21 00 72 */	fmuls f1, f1, f1
/* 809488F4  EC 00 00 32 */	fmuls f0, f0, f0
/* 809488F8  EC 41 00 2A */	fadds f2, f1, f0
/* 809488FC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80948900  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80948904  40 81 00 0C */	ble lbl_80948910
/* 80948908  FC 00 10 34 */	frsqrte f0, f2
/* 8094890C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80948910:
/* 80948910  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80948914  4B 91 ED 60 */	b cM_atan2s__Fff
/* 80948918  7C 03 00 D0 */	neg r0, r3
/* 8094891C  7C 1E 07 34 */	extsh r30, r0
/* 80948920  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80948924  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80948928  4B 91 ED 4C */	b cM_atan2s__Fff
/* 8094892C  7C 64 1B 78 */	mr r4, r3
/* 80948930  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80948934  38 A0 00 04 */	li r5, 4
/* 80948938  38 C0 7F FF */	li r6, 0x7fff
/* 8094893C  38 E0 05 DC */	li r7, 0x5dc
/* 80948940  4B 92 7C 00 */	b cLib_addCalcAngleS__FPsssss
/* 80948944  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80948948  7F C4 F3 78 */	mr r4, r30
/* 8094894C  38 A0 00 04 */	li r5, 4
/* 80948950  38 C0 7F FF */	li r6, 0x7fff
/* 80948954  38 E0 05 DC */	li r7, 0x5dc
/* 80948958  4B 92 7B E8 */	b cLib_addCalcAngleS__FPsssss
/* 8094895C  38 61 00 60 */	addi r3, r1, 0x60
/* 80948960  38 81 00 6C */	addi r4, r1, 0x6c
/* 80948964  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80948968  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8094896C  4B 92 78 0C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80948970  38 61 00 18 */	addi r3, r1, 0x18
/* 80948974  38 81 00 6C */	addi r4, r1, 0x6c
/* 80948978  38 A1 00 60 */	addi r5, r1, 0x60
/* 8094897C  4B 91 E1 B8 */	b __mi__4cXyzCFRC3Vec
/* 80948980  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80948984  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80948988  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8094898C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80948990  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80948994  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80948998  38 61 00 0C */	addi r3, r1, 0xc
/* 8094899C  38 81 00 60 */	addi r4, r1, 0x60
/* 809489A0  38 A1 00 54 */	addi r5, r1, 0x54
/* 809489A4  4B 91 E1 40 */	b __pl__4cXyzCFRC3Vec
/* 809489A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809489AC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 809489B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809489B4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 809489B8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809489BC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 809489C0  38 61 00 48 */	addi r3, r1, 0x48
/* 809489C4  4B 9F E7 74 */	b PSVECSquareMag
/* 809489C8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 809489CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809489D0  40 81 00 58 */	ble lbl_80948A28
/* 809489D4  FC 00 08 34 */	frsqrte f0, f1
/* 809489D8  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 809489DC  FC 44 00 32 */	fmul f2, f4, f0
/* 809489E0  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 809489E4  FC 00 00 32 */	fmul f0, f0, f0
/* 809489E8  FC 01 00 32 */	fmul f0, f1, f0
/* 809489EC  FC 03 00 28 */	fsub f0, f3, f0
/* 809489F0  FC 02 00 32 */	fmul f0, f2, f0
/* 809489F4  FC 44 00 32 */	fmul f2, f4, f0
/* 809489F8  FC 00 00 32 */	fmul f0, f0, f0
/* 809489FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80948A00  FC 03 00 28 */	fsub f0, f3, f0
/* 80948A04  FC 02 00 32 */	fmul f0, f2, f0
/* 80948A08  FC 44 00 32 */	fmul f2, f4, f0
/* 80948A0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80948A10  FC 01 00 32 */	fmul f0, f1, f0
/* 80948A14  FC 03 00 28 */	fsub f0, f3, f0
/* 80948A18  FC 02 00 32 */	fmul f0, f2, f0
/* 80948A1C  FC 21 00 32 */	fmul f1, f1, f0
/* 80948A20  FC 20 08 18 */	frsp f1, f1
/* 80948A24  48 00 00 88 */	b lbl_80948AAC
lbl_80948A28:
/* 80948A28  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 80948A2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80948A30  40 80 00 10 */	bge lbl_80948A40
/* 80948A34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80948A38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80948A3C  48 00 00 70 */	b lbl_80948AAC
lbl_80948A40:
/* 80948A40  D0 21 00 08 */	stfs f1, 8(r1)
/* 80948A44  80 81 00 08 */	lwz r4, 8(r1)
/* 80948A48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80948A4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80948A50  7C 03 00 00 */	cmpw r3, r0
/* 80948A54  41 82 00 14 */	beq lbl_80948A68
/* 80948A58  40 80 00 40 */	bge lbl_80948A98
/* 80948A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80948A60  41 82 00 20 */	beq lbl_80948A80
/* 80948A64  48 00 00 34 */	b lbl_80948A98
lbl_80948A68:
/* 80948A68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80948A6C  41 82 00 0C */	beq lbl_80948A78
/* 80948A70  38 00 00 01 */	li r0, 1
/* 80948A74  48 00 00 28 */	b lbl_80948A9C
lbl_80948A78:
/* 80948A78  38 00 00 02 */	li r0, 2
/* 80948A7C  48 00 00 20 */	b lbl_80948A9C
lbl_80948A80:
/* 80948A80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80948A84  41 82 00 0C */	beq lbl_80948A90
/* 80948A88  38 00 00 05 */	li r0, 5
/* 80948A8C  48 00 00 10 */	b lbl_80948A9C
lbl_80948A90:
/* 80948A90  38 00 00 03 */	li r0, 3
/* 80948A94  48 00 00 08 */	b lbl_80948A9C
lbl_80948A98:
/* 80948A98  38 00 00 04 */	li r0, 4
lbl_80948A9C:
/* 80948A9C  2C 00 00 01 */	cmpwi r0, 1
/* 80948AA0  40 82 00 0C */	bne lbl_80948AAC
/* 80948AA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80948AA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80948AAC:
/* 80948AAC  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 80948AB0  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 80948AB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80948AB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80948ABC  7C 00 00 26 */	mfcr r0
/* 80948AC0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80948AC4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80948AC8  4B A1 97 60 */	b _restgpr_29
/* 80948ACC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80948AD0  7C 08 03 A6 */	mtlr r0
/* 80948AD4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80948AD8  4E 80 00 20 */	blr 
