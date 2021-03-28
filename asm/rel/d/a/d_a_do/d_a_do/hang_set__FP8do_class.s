lbl_8066A5DC:
/* 8066A5DC  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8066A5E0  7C 08 02 A6 */	mflr r0
/* 8066A5E4  90 01 01 14 */	stw r0, 0x114(r1)
/* 8066A5E8  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8066A5EC  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8066A5F0  39 61 01 00 */	addi r11, r1, 0x100
/* 8066A5F4  4B CF 7B DC */	b _savegpr_26
/* 8066A5F8  7C 7B 1B 78 */	mr r27, r3
/* 8066A5FC  3C 60 80 67 */	lis r3, lit_3662@ha
/* 8066A600  3B C3 ED E8 */	addi r30, r3, lit_3662@l
/* 8066A604  38 61 00 74 */	addi r3, r1, 0x74
/* 8066A608  4B A0 D6 60 */	b __ct__11dBgS_LinChkFv
/* 8066A60C  38 61 00 38 */	addi r3, r1, 0x38
/* 8066A610  38 9B 04 BC */	addi r4, r27, 0x4bc
/* 8066A614  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8066A618  4B BF C5 1C */	b __mi__4cXyzCFRC3Vec
/* 8066A61C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8066A620  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8066A624  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8066A628  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8066A62C  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8066A630  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8066A634  4B BF D0 40 */	b cM_atan2s__Fff
/* 8066A638  7C 64 1B 78 */	mr r4, r3
/* 8066A63C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066A640  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066A644  80 63 00 00 */	lwz r3, 0(r3)
/* 8066A648  4B 9A 1D 94 */	b mDoMtx_YrotS__FPA4_fs
/* 8066A64C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066A650  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8066A654  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8066A658  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8066A65C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8066A660  38 61 00 50 */	addi r3, r1, 0x50
/* 8066A664  38 81 00 44 */	addi r4, r1, 0x44
/* 8066A668  4B C0 68 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066A66C  38 61 00 44 */	addi r3, r1, 0x44
/* 8066A670  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8066A674  7C 65 1B 78 */	mr r5, r3
/* 8066A678  4B CD CA 18 */	b PSVECAdd
/* 8066A67C  C0 3B 04 C0 */	lfs f1, 0x4c0(r27)
/* 8066A680  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8066A684  EC 01 00 28 */	fsubs f0, f1, f0
/* 8066A688  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8066A68C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8066A690  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8066A694  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066A698  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8066A69C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8066A6A0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8066A6A4  3B 40 00 00 */	li r26, 0
/* 8066A6A8  3B E0 00 00 */	li r31, 0
/* 8066A6AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066A6B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066A6B4  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8066A6B8  C3 FE 00 18 */	lfs f31, 0x18(r30)
lbl_8066A6BC:
/* 8066A6BC  38 61 00 50 */	addi r3, r1, 0x50
/* 8066A6C0  3B 81 00 5C */	addi r28, r1, 0x5c
/* 8066A6C4  7F 9C FA 14 */	add r28, r28, r31
/* 8066A6C8  7F 84 E3 78 */	mr r4, r28
/* 8066A6CC  4B C0 68 20 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066A6D0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8066A6D4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8066A6D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8066A6DC  7F 83 E3 78 */	mr r3, r28
/* 8066A6E0  38 81 00 44 */	addi r4, r1, 0x44
/* 8066A6E4  7F 85 E3 78 */	mr r5, r28
/* 8066A6E8  4B CD C9 A8 */	b PSVECAdd
/* 8066A6EC  38 61 00 74 */	addi r3, r1, 0x74
/* 8066A6F0  38 81 00 44 */	addi r4, r1, 0x44
/* 8066A6F4  7F 85 E3 78 */	mr r5, r28
/* 8066A6F8  7F 66 DB 78 */	mr r6, r27
/* 8066A6FC  4B A0 D6 68 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8066A700  7F A3 EB 78 */	mr r3, r29
/* 8066A704  38 81 00 74 */	addi r4, r1, 0x74
/* 8066A708  4B A0 9C AC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8066A70C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8066A710  41 82 00 20 */	beq lbl_8066A730
/* 8066A714  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8066A718  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8066A71C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8066A720  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8066A724  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8066A728  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8066A72C  48 00 00 18 */	b lbl_8066A744
lbl_8066A730:
/* 8066A730  38 61 00 74 */	addi r3, r1, 0x74
/* 8066A734  38 80 FF FF */	li r4, -1
/* 8066A738  4B A0 D5 A4 */	b __dt__11dBgS_LinChkFv
/* 8066A73C  38 60 0D CF */	li r3, 0xdcf
/* 8066A740  48 00 00 AC */	b lbl_8066A7EC
lbl_8066A744:
/* 8066A744  3B 5A 00 01 */	addi r26, r26, 1
/* 8066A748  2C 1A 00 02 */	cmpwi r26, 2
/* 8066A74C  3B FF 00 0C */	addi r31, r31, 0xc
/* 8066A750  41 80 FF 6C */	blt lbl_8066A6BC
/* 8066A754  38 61 00 2C */	addi r3, r1, 0x2c
/* 8066A758  3B 81 00 68 */	addi r28, r1, 0x68
/* 8066A75C  7F 84 E3 78 */	mr r4, r28
/* 8066A760  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8066A764  4B BF C3 D0 */	b __mi__4cXyzCFRC3Vec
/* 8066A768  38 61 00 20 */	addi r3, r1, 0x20
/* 8066A76C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8066A770  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 8066A774  4B BF C4 10 */	b __ml__4cXyzCFf
/* 8066A778  38 61 00 14 */	addi r3, r1, 0x14
/* 8066A77C  38 81 00 5C */	addi r4, r1, 0x5c
/* 8066A780  38 A1 00 20 */	addi r5, r1, 0x20
/* 8066A784  4B BF C3 60 */	b __pl__4cXyzCFRC3Vec
/* 8066A788  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8066A78C  D0 1B 06 64 */	stfs f0, 0x664(r27)
/* 8066A790  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8066A794  D0 1B 06 68 */	stfs f0, 0x668(r27)
/* 8066A798  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8066A79C  D0 1B 06 6C */	stfs f0, 0x66c(r27)
/* 8066A7A0  C0 1B 04 C0 */	lfs f0, 0x4c0(r27)
/* 8066A7A4  D0 1B 06 68 */	stfs f0, 0x668(r27)
/* 8066A7A8  38 61 00 08 */	addi r3, r1, 8
/* 8066A7AC  7F 84 E3 78 */	mr r4, r28
/* 8066A7B0  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8066A7B4  4B BF C3 80 */	b __mi__4cXyzCFRC3Vec
/* 8066A7B8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8066A7BC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8066A7C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8066A7C4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8066A7C8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8066A7CC  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8066A7D0  4B BF CE A4 */	b cM_atan2s__Fff
/* 8066A7D4  38 03 40 00 */	addi r0, r3, 0x4000
/* 8066A7D8  7C 1E 07 34 */	extsh r30, r0
/* 8066A7DC  38 61 00 74 */	addi r3, r1, 0x74
/* 8066A7E0  38 80 FF FF */	li r4, -1
/* 8066A7E4  4B A0 D4 F8 */	b __dt__11dBgS_LinChkFv
/* 8066A7E8  7F C3 F3 78 */	mr r3, r30
lbl_8066A7EC:
/* 8066A7EC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8066A7F0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8066A7F4  39 61 01 00 */	addi r11, r1, 0x100
/* 8066A7F8  4B CF 7A 24 */	b _restgpr_26
/* 8066A7FC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8066A800  7C 08 03 A6 */	mtlr r0
/* 8066A804  38 21 01 10 */	addi r1, r1, 0x110
/* 8066A808  4E 80 00 20 */	blr 
