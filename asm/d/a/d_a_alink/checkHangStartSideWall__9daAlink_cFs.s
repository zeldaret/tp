lbl_800FA85C:
/* 800FA85C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800FA860  7C 08 02 A6 */	mflr r0
/* 800FA864  90 01 00 84 */	stw r0, 0x84(r1)
/* 800FA868  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800FA86C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800FA870  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 800FA874  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 800FA878  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 800FA87C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 800FA880  39 61 00 50 */	addi r11, r1, 0x50
/* 800FA884  48 26 79 55 */	bl _savegpr_28
/* 800FA888  7C 7F 1B 78 */	mr r31, r3
/* 800FA88C  7C 83 07 34 */	extsh r3, r4
/* 800FA890  38 03 C0 00 */	addi r0, r3, -16384
/* 800FA894  7C 05 07 34 */	extsh r5, r0
/* 800FA898  3C 63 00 01 */	addis r3, r3, 1
/* 800FA89C  38 03 80 00 */	addi r0, r3, -32768
/* 800FA8A0  7C 1D 07 34 */	extsh r29, r0
/* 800FA8A4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800FA8A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800FA8AC  41 82 00 0C */	beq lbl_800FA8B8
/* 800FA8B0  C0 22 93 BC */	lfs f1, lit_10042(r2)
/* 800FA8B4  48 00 00 08 */	b lbl_800FA8BC
lbl_800FA8B8:
/* 800FA8B8  C0 22 92 9C */	lfs f1, lit_5944(r2)
lbl_800FA8BC:
/* 800FA8BC  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 800FA8C0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FA8C4  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FA8C8  7C 05 04 2E */	lfsx f0, r5, r0
/* 800FA8CC  EF E1 00 32 */	fmuls f31, f1, f0
/* 800FA8D0  38 C5 00 04 */	addi r6, r5, 4
/* 800FA8D4  7C 06 04 2E */	lfsx f0, r6, r0
/* 800FA8D8  EF C1 00 32 */	fmuls f30, f1, f0
/* 800FA8DC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA8E0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA8E4  90 01 00 30 */	stw r0, 0x30(r1)
/* 800FA8E8  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800FA8EC  C0 62 95 48 */	lfs f3, lit_23416(r2)
/* 800FA8F0  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 800FA8F4  7C 06 04 2E */	lfsx f0, r6, r0
/* 800FA8F8  EC 03 00 32 */	fmuls f0, f3, f0
/* 800FA8FC  EC 01 00 2A */	fadds f0, f1, f0
/* 800FA900  EC BE 00 2A */	fadds f5, f30, f0
/* 800FA904  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800FA908  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800FA90C  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800FA910  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FA914  EC 82 00 28 */	fsubs f4, f2, f0
/* 800FA918  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800FA91C  7C 05 04 2E */	lfsx f0, r5, r0
/* 800FA920  EC 03 00 32 */	fmuls f0, f3, f0
/* 800FA924  EC 01 00 2A */	fadds f0, f1, f0
/* 800FA928  EC 5F 00 2A */	fadds f2, f31, f0
/* 800FA92C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800FA930  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 800FA934  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 800FA938  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 800FA93C  EC 01 07 F2 */	fmuls f0, f1, f31
/* 800FA940  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FA944  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FA948  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 800FA94C  EC 01 07 B2 */	fmuls f0, f1, f30
/* 800FA950  EC 05 00 28 */	fsubs f0, f5, f0
/* 800FA954  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FA958  3B 80 00 00 */	li r28, 0
/* 800FA95C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FA960  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FA964  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 800FA968  C3 A2 93 3C */	lfs f29, lit_7808(r2)
lbl_800FA96C:
/* 800FA96C  7F E3 FB 78 */	mr r3, r31
/* 800FA970  38 81 00 14 */	addi r4, r1, 0x14
/* 800FA974  38 A1 00 08 */	addi r5, r1, 8
/* 800FA978  4B FA 78 21 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FA97C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FA980  41 82 00 48 */	beq lbl_800FA9C8
/* 800FA984  7F C3 F3 78 */	mr r3, r30
/* 800FA988  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FA98C  38 A1 00 20 */	addi r5, r1, 0x20
/* 800FA990  4B F7 9D B5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FA994  38 61 00 20 */	addi r3, r1, 0x20
/* 800FA998  48 16 C7 91 */	bl atan2sX_Z__4cXyzCFv
/* 800FA99C  7F A4 EB 78 */	mr r4, r29
/* 800FA9A0  48 17 64 85 */	bl cLib_distanceAngleS__Fss
/* 800FA9A4  2C 03 54 9F */	cmpwi r3, 0x549f
/* 800FA9A8  40 80 00 20 */	bge lbl_800FA9C8
/* 800FA9AC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800FA9B0  EC 00 F8 2A */	fadds f0, f0, f31
/* 800FA9B4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FA9B8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800FA9BC  EC 00 F0 2A */	fadds f0, f0, f30
/* 800FA9C0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FA9C4  48 00 00 7C */	b lbl_800FAA40
lbl_800FA9C8:
/* 800FA9C8  7F E3 FB 78 */	mr r3, r31
/* 800FA9CC  38 81 00 08 */	addi r4, r1, 8
/* 800FA9D0  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FA9D4  4B FA 77 C5 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FA9D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FA9DC  41 82 00 48 */	beq lbl_800FAA24
/* 800FA9E0  7F C3 F3 78 */	mr r3, r30
/* 800FA9E4  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FA9E8  38 A1 00 20 */	addi r5, r1, 0x20
/* 800FA9EC  4B F7 9D 59 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FA9F0  38 61 00 20 */	addi r3, r1, 0x20
/* 800FA9F4  48 16 C7 35 */	bl atan2sX_Z__4cXyzCFv
/* 800FA9F8  7F A4 EB 78 */	mr r4, r29
/* 800FA9FC  48 17 64 29 */	bl cLib_distanceAngleS__Fss
/* 800FAA00  2C 03 54 9F */	cmpwi r3, 0x549f
/* 800FAA04  40 80 00 20 */	bge lbl_800FAA24
/* 800FAA08  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800FAA0C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 800FAA10  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FAA14  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800FAA18  EC 00 F0 28 */	fsubs f0, f0, f30
/* 800FAA1C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FAA20  48 00 00 20 */	b lbl_800FAA40
lbl_800FAA24:
/* 800FAA24  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800FAA28  EC 00 E8 28 */	fsubs f0, f0, f29
/* 800FAA2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FAA30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FAA34  3B 9C 00 01 */	addi r28, r28, 1
/* 800FAA38  2C 1C 00 02 */	cmpwi r28, 2
/* 800FAA3C  41 80 FF 30 */	blt lbl_800FA96C
lbl_800FAA40:
/* 800FAA40  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FAA44  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FAA48  90 01 00 30 */	stw r0, 0x30(r1)
/* 800FAA4C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 800FAA50  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800FAA54  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 800FAA58  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 800FAA5C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 800FAA60  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 800FAA64  39 61 00 50 */	addi r11, r1, 0x50
/* 800FAA68  48 26 77 BD */	bl _restgpr_28
/* 800FAA6C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800FAA70  7C 08 03 A6 */	mtlr r0
/* 800FAA74  38 21 00 80 */	addi r1, r1, 0x80
/* 800FAA78  4E 80 00 20 */	blr 
