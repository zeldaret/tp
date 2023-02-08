lbl_801108EC:
/* 801108EC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801108F0  7C 08 02 A6 */	mflr r0
/* 801108F4  90 01 00 94 */	stw r0, 0x94(r1)
/* 801108F8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801108FC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80110900  39 61 00 80 */	addi r11, r1, 0x80
/* 80110904  48 25 18 D1 */	bl _savegpr_27
/* 80110908  7C 7F 1B 78 */	mr r31, r3
/* 8011090C  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80110910  3B C3 4B E4 */	addi r30, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80110914  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80110918  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8011091C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80110920  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80110924  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80110928  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8011092C  C0 1F 36 24 */	lfs f0, 0x3624(r31)
/* 80110930  D0 1F 36 30 */	stfs f0, 0x3630(r31)
/* 80110934  C0 1F 36 28 */	lfs f0, 0x3628(r31)
/* 80110938  D0 1F 36 34 */	stfs f0, 0x3634(r31)
/* 8011093C  C0 1F 36 2C */	lfs f0, 0x362c(r31)
/* 80110940  D0 1F 36 38 */	stfs f0, 0x3638(r31)
/* 80110944  C0 1F 36 0C */	lfs f0, 0x360c(r31)
/* 80110948  D0 1F 36 24 */	stfs f0, 0x3624(r31)
/* 8011094C  C0 1F 36 10 */	lfs f0, 0x3610(r31)
/* 80110950  D0 1F 36 28 */	stfs f0, 0x3628(r31)
/* 80110954  C0 1F 36 14 */	lfs f0, 0x3614(r31)
/* 80110958  D0 1F 36 2C */	stfs f0, 0x362c(r31)
/* 8011095C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80110960  38 9F 36 0C */	addi r4, r31, 0x360c
/* 80110964  38 A1 00 50 */	addi r5, r1, 0x50
/* 80110968  48 15 61 CD */	bl __mi__4cXyzCFRC3Vec
/* 8011096C  38 61 00 20 */	addi r3, r1, 0x20
/* 80110970  38 81 00 2C */	addi r4, r1, 0x2c
/* 80110974  38 BF 36 18 */	addi r5, r31, 0x3618
/* 80110978  48 15 61 6D */	bl __pl__4cXyzCFRC3Vec
/* 8011097C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80110980  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80110984  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80110988  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8011098C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80110990  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80110994  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 80110998  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011099C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801109A0  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 801109A4  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 801109A8  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 801109AC  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 801109B0  38 A1 00 38 */	addi r5, r1, 0x38
/* 801109B4  48 23 63 B9 */	bl PSMTXMultVec
/* 801109B8  38 61 00 38 */	addi r3, r1, 0x38
/* 801109BC  48 15 67 6D */	bl atan2sX_Z__4cXyzCFv
/* 801109C0  7C 7D 1B 78 */	mr r29, r3
/* 801109C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801109C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801109CC  7C 1D 00 D0 */	neg r0, r29
/* 801109D0  7C 04 07 34 */	extsh r4, r0
/* 801109D4  4B EF BA 09 */	bl mDoMtx_YrotS__FPA4_fs
/* 801109D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801109DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801109E0  38 81 00 44 */	addi r4, r1, 0x44
/* 801109E4  7C 85 23 78 */	mr r5, r4
/* 801109E8  48 23 63 85 */	bl PSMTXMultVec
/* 801109EC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801109F0  FC 20 00 50 */	fneg f1, f0
/* 801109F4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801109F8  FC 40 00 50 */	fneg f2, f0
/* 801109FC  48 15 6C 79 */	bl cM_atan2s__Fff
/* 80110A00  7C 60 07 34 */	extsh r0, r3
/* 80110A04  2C 00 E8 00 */	cmpwi r0, -6144
/* 80110A08  40 80 00 0C */	bge lbl_80110A14
/* 80110A0C  38 00 E8 00 */	li r0, -6144
/* 80110A10  48 00 00 14 */	b lbl_80110A24
lbl_80110A14:
/* 80110A14  2C 00 18 00 */	cmpwi r0, 0x1800
/* 80110A18  38 00 18 00 */	li r0, 0x1800
/* 80110A1C  41 81 00 08 */	bgt lbl_80110A24
/* 80110A20  7C 60 1B 78 */	mr r0, r3
lbl_80110A24:
/* 80110A24  7C 1B 07 34 */	extsh r27, r0
/* 80110A28  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80110A2C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80110A30  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80110A34  EC 00 00 32 */	fmuls f0, f0, f0
/* 80110A38  EC 41 00 2A */	fadds f2, f1, f0
/* 80110A3C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80110A40  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80110A44  40 81 00 0C */	ble lbl_80110A50
/* 80110A48  FC 00 10 34 */	frsqrte f0, f2
/* 80110A4C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80110A50:
/* 80110A50  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80110A54  48 15 6C 21 */	bl cM_atan2s__Fff
/* 80110A58  7C 60 07 34 */	extsh r0, r3
/* 80110A5C  2C 00 E8 00 */	cmpwi r0, -6144
/* 80110A60  40 80 00 0C */	bge lbl_80110A6C
/* 80110A64  38 00 E8 00 */	li r0, -6144
/* 80110A68  48 00 00 14 */	b lbl_80110A7C
lbl_80110A6C:
/* 80110A6C  2C 00 18 00 */	cmpwi r0, 0x1800
/* 80110A70  38 00 18 00 */	li r0, 0x1800
/* 80110A74  41 81 00 08 */	bgt lbl_80110A7C
/* 80110A78  7C 60 1B 78 */	mr r0, r3
lbl_80110A7C:
/* 80110A7C  7C 1C 07 34 */	extsh r28, r0
/* 80110A80  38 61 00 50 */	addi r3, r1, 0x50
/* 80110A84  4B EF C2 E1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80110A88  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80110A8C  28 00 01 46 */	cmplwi r0, 0x146
/* 80110A90  41 82 00 30 */	beq lbl_80110AC0
/* 80110A94  28 00 01 48 */	cmplwi r0, 0x148
/* 80110A98  40 82 00 10 */	bne lbl_80110AA8
/* 80110A9C  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 80110AA0  2C 00 00 00 */	cmpwi r0, 0
/* 80110AA4  40 82 00 1C */	bne lbl_80110AC0
lbl_80110AA8:
/* 80110AA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80110AAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80110AB0  7F 64 DB 78 */	mr r4, r27
/* 80110AB4  7F A5 EB 78 */	mr r5, r29
/* 80110AB8  7F 86 E3 78 */	mr r6, r28
/* 80110ABC  4B EF B7 E5 */	bl mDoMtx_ZXYrotM__FPA4_fsss
lbl_80110AC0:
/* 80110AC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80110AC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80110AC8  3C 80 80 39 */	lis r4, kandelaarOffset@ha /* 0x80391A20@ha */
/* 80110ACC  38 84 1A 20 */	addi r4, r4, kandelaarOffset@l /* 0x80391A20@l */
/* 80110AD0  38 BF 36 0C */	addi r5, r31, 0x360c
/* 80110AD4  48 23 62 99 */	bl PSMTXMultVec
/* 80110AD8  38 61 00 14 */	addi r3, r1, 0x14
/* 80110ADC  38 9F 36 0C */	addi r4, r31, 0x360c
/* 80110AE0  38 BF 36 24 */	addi r5, r31, 0x3624
/* 80110AE4  48 15 60 51 */	bl __mi__4cXyzCFRC3Vec
/* 80110AE8  38 61 00 08 */	addi r3, r1, 8
/* 80110AEC  38 81 00 14 */	addi r4, r1, 0x14
/* 80110AF0  C0 22 94 D0 */	lfs f1, lit_18847(r2)
/* 80110AF4  48 15 60 91 */	bl __ml__4cXyzCFf
/* 80110AF8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80110AFC  D0 1F 36 18 */	stfs f0, 0x3618(r31)
/* 80110B00  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80110B04  D0 1F 36 1C */	stfs f0, 0x361c(r31)
/* 80110B08  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80110B0C  D0 1F 36 20 */	stfs f0, 0x3620(r31)
/* 80110B10  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80110B14  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80110B18  40 82 00 B0 */	bne lbl_80110BC8
/* 80110B1C  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80110B20  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80110B24  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80110B28  EC 40 00 32 */	fmuls f2, f0, f0
/* 80110B2C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80110B30  EC 20 00 32 */	fmuls f1, f0, f0
/* 80110B34  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80110B38  EC 00 00 32 */	fmuls f0, f0, f0
/* 80110B3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80110B40  EF E2 00 2A */	fadds f31, f2, f0
/* 80110B44  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80110B48  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80110B4C  40 81 00 0C */	ble lbl_80110B58
/* 80110B50  FC 00 F8 34 */	frsqrte f0, f31
/* 80110B54  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80110B58:
/* 80110B58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80110B5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80110B60  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80110B64  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80110B68  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80110B6C  48 23 5D 7D */	bl PSMTXTrans
/* 80110B70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80110B74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80110B78  7F 64 DB 78 */	mr r4, r27
/* 80110B7C  7F A5 EB 78 */	mr r5, r29
/* 80110B80  7F 86 E3 78 */	mr r6, r28
/* 80110B84  4B EF B7 1D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80110B88  FC 20 F8 90 */	fmr f1, f31
/* 80110B8C  FC 40 F8 90 */	fmr f2, f31
/* 80110B90  FC 60 F8 90 */	fmr f3, f31
/* 80110B94  4B EF C2 A5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80110B98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80110B9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80110BA0  80 9F 06 FC */	lwz r4, 0x6fc(r31)
/* 80110BA4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80110BA8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80110BAC  38 84 00 30 */	addi r4, r4, 0x30
/* 80110BB0  48 23 59 01 */	bl PSMTXCopy
/* 80110BB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80110BB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80110BBC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80110BC0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80110BC4  48 23 58 ED */	bl PSMTXCopy
lbl_80110BC8:
/* 80110BC8  38 60 00 01 */	li r3, 1
/* 80110BCC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80110BD0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80110BD4  39 61 00 80 */	addi r11, r1, 0x80
/* 80110BD8  48 25 16 49 */	bl _restgpr_27
/* 80110BDC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80110BE0  7C 08 03 A6 */	mtlr r0
/* 80110BE4  38 21 00 90 */	addi r1, r1, 0x90
/* 80110BE8  4E 80 00 20 */	blr 
