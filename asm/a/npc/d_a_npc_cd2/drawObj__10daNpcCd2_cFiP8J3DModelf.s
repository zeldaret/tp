lbl_80158FF0:
/* 80158FF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80158FF4  7C 08 02 A6 */	mflr r0
/* 80158FF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80158FFC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80159000  39 61 00 18 */	addi r11, r1, 0x18
/* 80159004  48 20 91 D9 */	bl _savegpr_29
/* 80159008  7C 7D 1B 78 */	mr r29, r3
/* 8015900C  7C 9E 23 78 */	mr r30, r4
/* 80159010  7C BF 2B 79 */	or. r31, r5, r5
/* 80159014  FF E0 08 90 */	fmr f31, f1
/* 80159018  40 82 00 0C */	bne lbl_80159024
/* 8015901C  38 60 00 00 */	li r3, 0
/* 80159020  48 00 00 C0 */	b lbl_801590E0
lbl_80159024:
/* 80159024  88 1D 0A C6 */	lbz r0, 0xac6(r29)
/* 80159028  28 00 00 00 */	cmplwi r0, 0
/* 8015902C  41 82 00 18 */	beq lbl_80159044
/* 80159030  48 00 63 F5 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 80159034  2C 03 00 00 */	cmpwi r3, 0
/* 80159038  40 82 00 0C */	bne lbl_80159044
/* 8015903C  38 60 00 00 */	li r3, 0
/* 80159040  48 00 00 A0 */	b lbl_801590E0
lbl_80159044:
/* 80159044  7F A3 EB 78 */	mr r3, r29
/* 80159048  4B FF F0 61 */	bl isM___10daNpcCd2_cFv
/* 8015904C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80159050  7C 05 00 34 */	cntlzw r5, r0
/* 80159054  57 C4 18 38 */	slwi r4, r30, 3
/* 80159058  3C 60 80 39 */	lis r3, a_jntNumTbl@ha
/* 8015905C  38 03 3B 08 */	addi r0, r3, a_jntNumTbl@l
/* 80159060  7C 60 22 14 */	add r3, r0, r4
/* 80159064  54 A0 E8 FA */	rlwinm r0, r5, 0x1d, 3, 0x1d
/* 80159068  7F C3 00 2E */	lwzx r30, r3, r0
/* 8015906C  28 1F 00 00 */	cmplwi r31, 0
/* 80159070  41 82 00 6C */	beq lbl_801590DC
/* 80159074  2C 1E 00 00 */	cmpwi r30, 0
/* 80159078  41 80 00 64 */	blt lbl_801590DC
/* 8015907C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80159080  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80159084  80 9F 00 04 */	lwz r4, 4(r31)
/* 80159088  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8015908C  48 04 BD 15 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80159090  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80159094  80 63 00 04 */	lwz r3, 4(r3)
/* 80159098  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8015909C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801590A0  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 801590A4  7C 63 02 14 */	add r3, r3, r0
/* 801590A8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 801590AC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 801590B0  48 1E D4 01 */	bl PSMTXCopy
/* 801590B4  FC 20 F8 90 */	fmr f1, f31
/* 801590B8  FC 40 F8 90 */	fmr f2, f31
/* 801590BC  FC 60 F8 90 */	fmr f3, f31
/* 801590C0  4B EB 3D 79 */	bl scaleM__14mDoMtx_stack_cFfff
/* 801590C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801590C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801590CC  38 9F 00 24 */	addi r4, r31, 0x24
/* 801590D0  48 1E D3 E1 */	bl PSMTXCopy
/* 801590D4  7F E3 FB 78 */	mr r3, r31
/* 801590D8  4B EB 4B ED */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_801590DC:
/* 801590DC  38 60 00 01 */	li r3, 1
lbl_801590E0:
/* 801590E0  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801590E4  39 61 00 18 */	addi r11, r1, 0x18
/* 801590E8  48 20 91 41 */	bl _restgpr_29
/* 801590EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801590F0  7C 08 03 A6 */	mtlr r0
/* 801590F4  38 21 00 20 */	addi r1, r1, 0x20
/* 801590F8  4E 80 00 20 */	blr 
