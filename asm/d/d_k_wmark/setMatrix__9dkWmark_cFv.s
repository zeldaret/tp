lbl_802616C4:
/* 802616C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802616C8  7C 08 02 A6 */	mflr r0
/* 802616CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 802616D0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 802616D4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 802616D8  39 61 00 50 */	addi r11, r1, 0x50
/* 802616DC  48 10 0A F5 */	bl _savegpr_26
/* 802616E0  7C 7D 1B 78 */	mr r29, r3
/* 802616E4  C0 43 00 E4 */	lfs f2, 0xe4(r3)
/* 802616E8  C0 22 B5 BC */	lfs f1, lit_3844(r2)
/* 802616EC  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 802616F0  EC 21 00 2A */	fadds f1, f1, f0
/* 802616F4  C0 03 00 DC */	lfs f0, 0xdc(r3)
/* 802616F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802616FC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80261700  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80261704  38 61 00 18 */	addi r3, r1, 0x18
/* 80261708  4B DB C5 B5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8026170C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80261710  41 82 02 28 */	beq lbl_80261938
/* 80261714  C0 0D 87 50 */	lfs f0, mGroundY__11fopAcM_gc_c(r13)
/* 80261718  D0 1D 00 E0 */	stfs f0, 0xe0(r29)
/* 8026171C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80261720  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80261724  90 01 00 34 */	stw r0, 0x34(r1)
/* 80261728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8026172C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80261730  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80261734  7F C3 F3 78 */	mr r3, r30
/* 80261738  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 8026173C  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 80261740  3B E4 00 14 */	addi r31, r4, 0x14
/* 80261744  7F E4 FB 78 */	mr r4, r31
/* 80261748  38 A1 00 24 */	addi r5, r1, 0x24
/* 8026174C  4B E1 2F F9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80261750  38 61 00 24 */	addi r3, r1, 0x24
/* 80261754  48 00 59 D5 */	bl atan2sX_Z__4cXyzCFv
/* 80261758  A8 1D 04 8A */	lha r0, 0x48a(r29)
/* 8026175C  7C 00 18 50 */	subf r0, r0, r3
/* 80261760  7C 1A 07 34 */	extsh r26, r0
/* 80261764  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80261768  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8026176C  C0 02 B5 C0 */	lfs f0, lit_3845(r2)
/* 80261770  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80261774  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80261778  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8026177C  38 61 00 0C */	addi r3, r1, 0xc
/* 80261780  48 0E 59 B9 */	bl PSVECSquareMag
/* 80261784  C0 02 B5 C0 */	lfs f0, lit_3845(r2)
/* 80261788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026178C  40 81 00 58 */	ble lbl_802617E4
/* 80261790  FC 00 08 34 */	frsqrte f0, f1
/* 80261794  C8 82 B5 C8 */	lfd f4, lit_3846(r2)
/* 80261798  FC 44 00 32 */	fmul f2, f4, f0
/* 8026179C  C8 62 B5 D0 */	lfd f3, lit_3847(r2)
/* 802617A0  FC 00 00 32 */	fmul f0, f0, f0
/* 802617A4  FC 01 00 32 */	fmul f0, f1, f0
/* 802617A8  FC 03 00 28 */	fsub f0, f3, f0
/* 802617AC  FC 02 00 32 */	fmul f0, f2, f0
/* 802617B0  FC 44 00 32 */	fmul f2, f4, f0
/* 802617B4  FC 00 00 32 */	fmul f0, f0, f0
/* 802617B8  FC 01 00 32 */	fmul f0, f1, f0
/* 802617BC  FC 03 00 28 */	fsub f0, f3, f0
/* 802617C0  FC 02 00 32 */	fmul f0, f2, f0
/* 802617C4  FC 44 00 32 */	fmul f2, f4, f0
/* 802617C8  FC 00 00 32 */	fmul f0, f0, f0
/* 802617CC  FC 01 00 32 */	fmul f0, f1, f0
/* 802617D0  FC 03 00 28 */	fsub f0, f3, f0
/* 802617D4  FC 02 00 32 */	fmul f0, f2, f0
/* 802617D8  FF E1 00 32 */	fmul f31, f1, f0
/* 802617DC  FF E0 F8 18 */	frsp f31, f31
/* 802617E0  48 00 00 90 */	b lbl_80261870
lbl_802617E4:
/* 802617E4  C8 02 B5 D8 */	lfd f0, lit_3848(r2)
/* 802617E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802617EC  40 80 00 10 */	bge lbl_802617FC
/* 802617F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802617F4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 802617F8  48 00 00 78 */	b lbl_80261870
lbl_802617FC:
/* 802617FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80261800  80 81 00 08 */	lwz r4, 8(r1)
/* 80261804  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80261808  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026180C  7C 03 00 00 */	cmpw r3, r0
/* 80261810  41 82 00 14 */	beq lbl_80261824
/* 80261814  40 80 00 40 */	bge lbl_80261854
/* 80261818  2C 03 00 00 */	cmpwi r3, 0
/* 8026181C  41 82 00 20 */	beq lbl_8026183C
/* 80261820  48 00 00 34 */	b lbl_80261854
lbl_80261824:
/* 80261824  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80261828  41 82 00 0C */	beq lbl_80261834
/* 8026182C  38 00 00 01 */	li r0, 1
/* 80261830  48 00 00 28 */	b lbl_80261858
lbl_80261834:
/* 80261834  38 00 00 02 */	li r0, 2
/* 80261838  48 00 00 20 */	b lbl_80261858
lbl_8026183C:
/* 8026183C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80261840  41 82 00 0C */	beq lbl_8026184C
/* 80261844  38 00 00 05 */	li r0, 5
/* 80261848  48 00 00 10 */	b lbl_80261858
lbl_8026184C:
/* 8026184C  38 00 00 03 */	li r0, 3
/* 80261850  48 00 00 08 */	b lbl_80261858
lbl_80261854:
/* 80261854  38 00 00 04 */	li r0, 4
lbl_80261858:
/* 80261858  2C 00 00 01 */	cmpwi r0, 1
/* 8026185C  40 82 00 10 */	bne lbl_8026186C
/* 80261860  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80261864  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80261868  48 00 00 08 */	b lbl_80261870
lbl_8026186C:
/* 8026186C  FF E0 08 90 */	fmr f31, f1
lbl_80261870:
/* 80261870  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80261874  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80261878  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 8026187C  C0 42 B5 B4 */	lfs f2, lit_3719(r2)
/* 80261880  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80261884  EC 42 00 2A */	fadds f2, f2, f0
/* 80261888  C0 7D 00 E4 */	lfs f3, 0xe4(r29)
/* 8026188C  48 0E 50 5D */	bl PSMTXTrans
/* 80261890  57 5A 04 38 */	rlwinm r26, r26, 0, 0x10, 0x1c
/* 80261894  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80261898  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8026189C  7C 03 D4 2E */	lfsx f0, r3, r26
/* 802618A0  FC 00 00 50 */	fneg f0, f0
/* 802618A4  EC 3F 00 32 */	fmuls f1, f31, f0
/* 802618A8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 802618AC  48 00 5D C9 */	bl cM_atan2s__Fff
/* 802618B0  7C 7B 1B 78 */	mr r27, r3
/* 802618B4  AB 9D 04 8A */	lha r28, 0x48a(r29)
/* 802618B8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 802618BC  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l
/* 802618C0  7C 60 D2 14 */	add r3, r0, r26
/* 802618C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802618C8  EC 3F 00 32 */	fmuls f1, f31, f0
/* 802618CC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 802618D0  48 00 5D A5 */	bl cM_atan2s__Fff
/* 802618D4  7C 64 1B 78 */	mr r4, r3
/* 802618D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 802618DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 802618E0  7F 85 E3 78 */	mr r5, r28
/* 802618E4  7F 66 DB 78 */	mr r6, r27
/* 802618E8  4B DA A9 B9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 802618EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 802618F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 802618F4  80 9D 00 FC */	lwz r4, 0xfc(r29)
/* 802618F8  38 84 00 24 */	addi r4, r4, 0x24
/* 802618FC  48 0E 4B B5 */	bl PSMTXCopy
/* 80261900  7F C3 F3 78 */	mr r3, r30
/* 80261904  7F E4 FB 78 */	mr r4, r31
/* 80261908  4B E1 31 B5 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 8026190C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80261910  41 82 00 10 */	beq lbl_80261920
/* 80261914  38 00 00 01 */	li r0, 1
/* 80261918  B0 1D 04 8C */	sth r0, 0x48c(r29)
/* 8026191C  48 00 00 0C */	b lbl_80261928
lbl_80261920:
/* 80261920  38 00 00 00 */	li r0, 0
/* 80261924  B0 1D 04 8C */	sth r0, 0x48c(r29)
lbl_80261928:
/* 80261928  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8026192C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80261930  90 01 00 34 */	stw r0, 0x34(r1)
/* 80261934  48 00 00 0C */	b lbl_80261940
lbl_80261938:
/* 80261938  38 60 00 00 */	li r3, 0
/* 8026193C  48 00 00 08 */	b lbl_80261944
lbl_80261940:
/* 80261940  38 60 00 01 */	li r3, 1
lbl_80261944:
/* 80261944  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80261948  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8026194C  39 61 00 50 */	addi r11, r1, 0x50
/* 80261950  48 10 08 CD */	bl _restgpr_26
/* 80261954  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80261958  7C 08 03 A6 */	mtlr r0
/* 8026195C  38 21 00 60 */	addi r1, r1, 0x60
/* 80261960  4E 80 00 20 */	blr 
