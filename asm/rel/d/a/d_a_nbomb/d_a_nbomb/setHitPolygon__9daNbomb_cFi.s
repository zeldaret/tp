lbl_804C8A88:
/* 804C8A88  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804C8A8C  7C 08 02 A6 */	mflr r0
/* 804C8A90  90 01 00 74 */	stw r0, 0x74(r1)
/* 804C8A94  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804C8A98  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804C8A9C  39 61 00 60 */	addi r11, r1, 0x60
/* 804C8AA0  4B E9 97 3D */	bl _savegpr_29
/* 804C8AA4  7C 7E 1B 78 */	mr r30, r3
/* 804C8AA8  7C 9F 23 79 */	or. r31, r4, r4
/* 804C8AAC  3C 60 80 4D */	lis r3, lit_3767@ha /* 0x804CC340@ha */
/* 804C8AB0  3B A3 C3 40 */	addi r29, r3, lit_3767@l /* 0x804CC340@l */
/* 804C8AB4  40 82 00 28 */	bne lbl_804C8ADC
/* 804C8AB8  38 7E 0B 10 */	addi r3, r30, 0xb10
/* 804C8ABC  38 9E 0A B4 */	addi r4, r30, 0xab4
/* 804C8AC0  4B D9 F6 89 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 804C8AC4  C0 1E 0A D0 */	lfs f0, 0xad0(r30)
/* 804C8AC8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804C8ACC  C0 1E 0A D4 */	lfs f0, 0xad4(r30)
/* 804C8AD0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804C8AD4  C0 1E 0A D8 */	lfs f0, 0xad8(r30)
/* 804C8AD8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_804C8ADC:
/* 804C8ADC  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804CC5E0@ha */
/* 804C8AE0  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804CC5E0@l */
/* 804C8AE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C8AE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C8AEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8AF0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804C8AF4  38 9E 0B 10 */	addi r4, r30, 0xb10
/* 804C8AF8  38 A1 00 34 */	addi r5, r1, 0x34
/* 804C8AFC  4B BA BC 49 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804C8B00  38 7E 0B F0 */	addi r3, r30, 0xbf0
/* 804C8B04  38 81 00 34 */	addi r4, r1, 0x34
/* 804C8B08  4B E7 E6 8D */	bl PSVECDotProduct
/* 804C8B0C  FF E0 08 90 */	fmr f31, f1
/* 804C8B10  FC 00 FA 10 */	fabs f0, f31
/* 804C8B14  FC 20 00 18 */	frsp f1, f0
/* 804C8B18  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 804C8B1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C8B20  41 81 01 28 */	bgt lbl_804C8C48
/* 804C8B24  38 61 00 1C */	addi r3, r1, 0x1c
/* 804C8B28  38 9E 0B F0 */	addi r4, r30, 0xbf0
/* 804C8B2C  38 A1 00 34 */	addi r5, r1, 0x34
/* 804C8B30  4B D9 E1 8D */	bl outprod__4cXyzCFRC3Vec
/* 804C8B34  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804C8B38  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C8B3C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804C8B40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804C8B44  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804C8B48  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804C8B4C  38 61 00 10 */	addi r3, r1, 0x10
/* 804C8B50  38 81 00 28 */	addi r4, r1, 0x28
/* 804C8B54  4B D9 E3 F5 */	bl normalizeZP__4cXyzFv
/* 804C8B58  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 804C8B5C  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 804C8B60  EC 21 00 28 */	fsubs f1, f1, f0
/* 804C8B64  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 804C8B68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C8B6C  40 81 00 0C */	ble lbl_804C8B78
/* 804C8B70  FC 00 08 34 */	frsqrte f0, f1
/* 804C8B74  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804C8B78:
/* 804C8B78  FC 40 F8 90 */	fmr f2, f31
/* 804C8B7C  4B D9 EC 99 */	bl cM_atan2f__Fff
/* 804C8B80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C8B84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C8B88  38 81 00 28 */	addi r4, r1, 0x28
/* 804C8B8C  4B E7 DC ED */	bl PSMTXRotAxisRad
/* 804C8B90  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804C8B94  D0 1E 0B F0 */	stfs f0, 0xbf0(r30)
/* 804C8B98  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804C8B9C  D0 1E 0B F4 */	stfs f0, 0xbf4(r30)
/* 804C8BA0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804C8BA4  D0 1E 0B F8 */	stfs f0, 0xbf8(r30)
/* 804C8BA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C8BAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C8BB0  38 9E 0C 08 */	addi r4, r30, 0xc08
/* 804C8BB4  7C 85 23 78 */	mr r5, r4
/* 804C8BB8  4B E7 E2 95 */	bl PSMTXMultVecSR
/* 804C8BBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C8BC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C8BC4  38 9E 0B FC */	addi r4, r30, 0xbfc
/* 804C8BC8  7C 85 23 78 */	mr r5, r4
/* 804C8BCC  4B E7 E2 81 */	bl PSMTXMultVecSR
/* 804C8BD0  80 1E 04 DC */	lwz r0, 0x4dc(r30)
/* 804C8BD4  90 01 00 08 */	stw r0, 8(r1)
/* 804C8BD8  A0 1E 04 E0 */	lhz r0, 0x4e0(r30)
/* 804C8BDC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 804C8BE0  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 804C8BE4  4B B4 43 61 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804C8BE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C8BEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C8BF0  38 9E 04 DC */	addi r4, r30, 0x4dc
/* 804C8BF4  4B B4 40 0D */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 804C8BF8  2C 1F 00 00 */	cmpwi r31, 0
/* 804C8BFC  41 82 00 4C */	beq lbl_804C8C48
/* 804C8C00  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 804C8C04  A8 61 00 08 */	lha r3, 8(r1)
/* 804C8C08  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 804C8C0C  7C 03 00 50 */	subf r0, r3, r0
/* 804C8C10  7C 04 02 14 */	add r0, r4, r0
/* 804C8C14  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 804C8C18  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804C8C1C  A8 61 00 0A */	lha r3, 0xa(r1)
/* 804C8C20  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 804C8C24  7C 03 00 50 */	subf r0, r3, r0
/* 804C8C28  7C 04 02 14 */	add r0, r4, r0
/* 804C8C2C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 804C8C30  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 804C8C34  A8 61 00 0C */	lha r3, 0xc(r1)
/* 804C8C38  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 804C8C3C  7C 03 00 50 */	subf r0, r3, r0
/* 804C8C40  7C 04 02 14 */	add r0, r4, r0
/* 804C8C44  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
lbl_804C8C48:
/* 804C8C48  2C 1F 00 00 */	cmpwi r31, 0
/* 804C8C4C  40 82 00 4C */	bne lbl_804C8C98
/* 804C8C50  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804C8C54  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 804C8C58  38 A0 00 03 */	li r5, 3
/* 804C8C5C  38 C0 20 00 */	li r6, 0x2000
/* 804C8C60  38 E0 04 00 */	li r7, 0x400
/* 804C8C64  4B DA 78 DD */	bl cLib_addCalcAngleS__FPsssss
/* 804C8C68  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804C8C6C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804C8C70  38 A0 00 03 */	li r5, 3
/* 804C8C74  38 C0 20 00 */	li r6, 0x2000
/* 804C8C78  38 E0 04 00 */	li r7, 0x400
/* 804C8C7C  4B DA 78 C5 */	bl cLib_addCalcAngleS__FPsssss
/* 804C8C80  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 804C8C84  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 804C8C88  38 A0 00 03 */	li r5, 3
/* 804C8C8C  38 C0 20 00 */	li r6, 0x2000
/* 804C8C90  38 E0 04 00 */	li r7, 0x400
/* 804C8C94  4B DA 78 AD */	bl cLib_addCalcAngleS__FPsssss
lbl_804C8C98:
/* 804C8C98  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804C8C9C  4B B4 40 C9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 804C8CA0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804C8CA4  4B B4 42 A1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804C8CA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C8CAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C8CB0  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 804C8CB4  38 84 00 24 */	addi r4, r4, 0x24
/* 804C8CB8  4B E7 D7 F9 */	bl PSMTXCopy
/* 804C8CBC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804C8CC0  38 63 00 24 */	addi r3, r3, 0x24
/* 804C8CC4  38 9E 0A 70 */	addi r4, r30, 0xa70
/* 804C8CC8  4B E7 D8 E9 */	bl PSMTXInverse
/* 804C8CCC  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804CC5E0@ha */
/* 804C8CD0  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804CC5E0@l */
/* 804C8CD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C8CD8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804C8CDC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804C8CE0  39 61 00 60 */	addi r11, r1, 0x60
/* 804C8CE4  4B E9 95 45 */	bl _restgpr_29
/* 804C8CE8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804C8CEC  7C 08 03 A6 */	mtlr r0
/* 804C8CF0  38 21 00 70 */	addi r1, r1, 0x70
/* 804C8CF4  4E 80 00 20 */	blr 
