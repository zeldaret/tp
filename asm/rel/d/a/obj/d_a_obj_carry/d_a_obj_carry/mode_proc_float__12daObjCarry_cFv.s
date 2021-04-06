lbl_80474734:
/* 80474734  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80474738  7C 08 02 A6 */	mflr r0
/* 8047473C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80474740  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80474744  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80474748  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8047474C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80474750  7C 7E 1B 78 */	mr r30, r3
/* 80474754  3C 60 80 48 */	lis r3, l_cyl_info@ha /* 0x8047990C@ha */
/* 80474758  3B E3 99 0C */	addi r31, r3, l_cyl_info@l /* 0x8047990C@l */
/* 8047475C  80 7E 0D C4 */	lwz r3, 0xdc4(r30)
/* 80474760  38 03 00 01 */	addi r0, r3, 1
/* 80474764  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 80474768  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 8047476C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80474770  38 00 00 00 */	li r0, 0
/* 80474774  90 01 00 08 */	stw r0, 8(r1)
/* 80474778  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8047477C  38 9E 06 64 */	addi r4, r30, 0x664
/* 80474780  38 A1 00 30 */	addi r5, r1, 0x30
/* 80474784  38 C1 00 08 */	addi r6, r1, 8
/* 80474788  38 E0 00 00 */	li r7, 0
/* 8047478C  4B BA 92 1D */	bl fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 80474790  2C 03 00 00 */	cmpwi r3, 0
/* 80474794  41 82 00 E4 */	beq lbl_80474878
/* 80474798  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8047479C  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 804747A0  4B DF 2E D5 */	bl cM_atan2s__Fff
/* 804747A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804747A8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804747AC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 804747B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804747B4  7C 64 02 14 */	add r3, r4, r0
/* 804747B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 804747BC  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 804747C0  EC 22 00 32 */	fmuls f1, f2, f0
/* 804747C4  7C 04 04 2E */	lfsx f0, r4, r0
/* 804747C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804747CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804747D0  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 804747D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804747D8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804747DC  38 61 00 0C */	addi r3, r1, 0xc
/* 804747E0  38 81 00 30 */	addi r4, r1, 0x30
/* 804747E4  4B DF 27 65 */	bl normalizeZP__4cXyzFv
/* 804747E8  38 61 00 30 */	addi r3, r1, 0x30
/* 804747EC  7C 64 1B 78 */	mr r4, r3
/* 804747F0  C0 5F 0B 54 */	lfs f2, 0xb54(r31)
/* 804747F4  80 01 00 08 */	lwz r0, 8(r1)
/* 804747F8  C8 3F 0A A0 */	lfd f1, 0xaa0(r31)
/* 804747FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80474800  90 01 00 44 */	stw r0, 0x44(r1)
/* 80474804  3C 00 43 30 */	lis r0, 0x4330
/* 80474808  90 01 00 40 */	stw r0, 0x40(r1)
/* 8047480C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80474810  EC 00 08 28 */	fsubs f0, f0, f1
/* 80474814  EC 22 00 32 */	fmuls f1, f2, f0
/* 80474818  4B ED 28 C1 */	bl PSVECScale
/* 8047481C  38 61 00 24 */	addi r3, r1, 0x24
/* 80474820  38 81 00 30 */	addi r4, r1, 0x30
/* 80474824  7C 65 1B 78 */	mr r5, r3
/* 80474828  4B ED 28 69 */	bl PSVECAdd
/* 8047482C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80474830  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80474834  4B DF 2E 41 */	bl cM_atan2s__Fff
/* 80474838  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 8047483C  C0 5F 0B 30 */	lfs f2, 0xb30(r31)
/* 80474840  80 01 00 08 */	lwz r0, 8(r1)
/* 80474844  C8 3F 0A A0 */	lfd f1, 0xaa0(r31)
/* 80474848  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047484C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80474850  3C 00 43 30 */	lis r0, 0x4330
/* 80474854  90 01 00 48 */	stw r0, 0x48(r1)
/* 80474858  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8047485C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80474860  EC 22 00 32 */	fmuls f1, f2, f0
/* 80474864  C0 1F 0B 08 */	lfs f0, 0xb08(r31)
/* 80474868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047486C  40 80 00 10 */	bge lbl_8047487C
/* 80474870  FC 20 00 90 */	fmr f1, f0
/* 80474874  48 00 00 08 */	b lbl_8047487C
lbl_80474878:
/* 80474878  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
lbl_8047487C:
/* 8047487C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80474880  C0 5F 0B 04 */	lfs f2, 0xb04(r31)
/* 80474884  C0 7F 0B 34 */	lfs f3, 0xb34(r31)
/* 80474888  C0 9F 0B 58 */	lfs f4, 0xb58(r31)
/* 8047488C  4B DF B0 F1 */	bl cLib_addCalc__FPfffff
/* 80474890  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80474894  C0 3F 0A C0 */	lfs f1, 0xac0(r31)
/* 80474898  C0 5F 0B 54 */	lfs f2, 0xb54(r31)
/* 8047489C  4B DF B1 E5 */	bl cLib_addCalc0__FPfff
/* 804748A0  7F C3 F3 78 */	mr r3, r30
/* 804748A4  38 9E 07 8C */	addi r4, r30, 0x78c
/* 804748A8  4B BA 5E 25 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 804748AC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804748B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804748B4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804748B8  38 81 00 1C */	addi r4, r1, 0x1c
/* 804748BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804748C0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804748C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804748C8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804748CC  4B BA 8F C5 */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 804748D0  80 1E 0D C4 */	lwz r0, 0xdc4(r30)
/* 804748D4  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 804748D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804748DC  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804748E0  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804748E4  7C 24 04 2E */	lfsx f1, r4, r0
/* 804748E8  C0 1E 0D C8 */	lfs f0, 0xdc8(r30)
/* 804748EC  EF E0 00 72 */	fmuls f31, f0, f1
/* 804748F0  2C 03 00 00 */	cmpwi r3, 0
/* 804748F4  41 82 00 3C */	beq lbl_80474930
/* 804748F8  7F C3 F3 78 */	mr r3, r30
/* 804748FC  4B FF AD A9 */	bl data__12daObjCarry_cFv
/* 80474900  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80474904  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80474908  EC 00 08 28 */	fsubs f0, f0, f1
/* 8047490C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80474910  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 80474914  C0 3F 0A 78 */	lfs f1, 0xa78(r31)
/* 80474918  C0 5F 0B 04 */	lfs f2, 0xb04(r31)
/* 8047491C  C0 7F 0A C0 */	lfs f3, 0xac0(r31)
/* 80474920  4B DF B1 1D */	bl cLib_addCalc2__FPffff
/* 80474924  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80474928  EC 00 F8 2A */	fadds f0, f0, f31
/* 8047492C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80474930:
/* 80474930  C3 FF 0A 7C */	lfs f31, 0xa7c(r31)
/* 80474934  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80474938  4B C0 FD 21 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 8047493C  28 03 00 00 */	cmplwi r3, 0
/* 80474940  41 82 00 14 */	beq lbl_80474954
/* 80474944  88 1E 0D AC */	lbz r0, 0xdac(r30)
/* 80474948  28 00 00 00 */	cmplwi r0, 0
/* 8047494C  40 82 00 08 */	bne lbl_80474954
/* 80474950  C3 FF 0B 5C */	lfs f31, 0xb5c(r31)
lbl_80474954:
/* 80474954  38 7E 0D 5C */	addi r3, r30, 0xd5c
/* 80474958  FC 20 F8 90 */	fmr f1, f31
/* 8047495C  C0 5F 0B 60 */	lfs f2, 0xb60(r31)
/* 80474960  C0 7F 0A AC */	lfs f3, 0xaac(r31)
/* 80474964  4B DF B0 D9 */	bl cLib_addCalc2__FPffff
/* 80474968  38 7E 0D 60 */	addi r3, r30, 0xd60
/* 8047496C  FC 20 F8 90 */	fmr f1, f31
/* 80474970  C0 5F 0B 60 */	lfs f2, 0xb60(r31)
/* 80474974  C0 7F 0A AC */	lfs f3, 0xaac(r31)
/* 80474978  4B DF B0 C5 */	bl cLib_addCalc2__FPffff
/* 8047497C  80 1E 0D C4 */	lwz r0, 0xdc4(r30)
/* 80474980  1C 00 04 B0 */	mulli r0, r0, 0x4b0
/* 80474984  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80474988  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8047498C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80474990  7C 23 04 2E */	lfsx f1, r3, r0
/* 80474994  C0 1E 0D 5C */	lfs f0, 0xd5c(r30)
/* 80474998  EC 00 00 72 */	fmuls f0, f0, f1
/* 8047499C  FC 00 00 1E */	fctiwz f0, f0
/* 804749A0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804749A4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804749A8  B0 1E 0D 64 */	sth r0, 0xd64(r30)
/* 804749AC  80 1E 0D C4 */	lwz r0, 0xdc4(r30)
/* 804749B0  1C 00 03 20 */	mulli r0, r0, 0x320
/* 804749B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804749B8  7C 23 04 2E */	lfsx f1, r3, r0
/* 804749BC  C0 1E 0D 60 */	lfs f0, 0xd60(r30)
/* 804749C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804749C4  FC 00 00 1E */	fctiwz f0, f0
/* 804749C8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804749CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804749D0  B0 1E 0D 66 */	sth r0, 0xd66(r30)
/* 804749D4  A8 1E 0D 64 */	lha r0, 0xd64(r30)
/* 804749D8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 804749DC  A8 1E 0D 66 */	lha r0, 0xd66(r30)
/* 804749E0  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 804749E4  38 60 00 01 */	li r3, 1
/* 804749E8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804749EC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804749F0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 804749F4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 804749F8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804749FC  7C 08 03 A6 */	mtlr r0
/* 80474A00  38 21 00 70 */	addi r1, r1, 0x70
/* 80474A04  4E 80 00 20 */	blr 
