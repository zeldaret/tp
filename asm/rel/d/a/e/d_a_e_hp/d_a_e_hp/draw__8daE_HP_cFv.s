lbl_806E6018:
/* 806E6018  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806E601C  7C 08 02 A6 */	mflr r0
/* 806E6020  90 01 00 94 */	stw r0, 0x94(r1)
/* 806E6024  39 61 00 90 */	addi r11, r1, 0x90
/* 806E6028  4B C7 C1 A0 */	b _savegpr_24
/* 806E602C  7C 7F 1B 78 */	mr r31, r3
/* 806E6030  3C 60 80 6F */	lis r3, lit_3905@ha
/* 806E6034  3B C3 A1 F4 */	addi r30, r3, lit_3905@l
/* 806E6038  88 9F 07 7C */	lbz r4, 0x77c(r31)
/* 806E603C  28 04 00 FF */	cmplwi r4, 0xff
/* 806E6040  41 82 00 28 */	beq lbl_806E6068
/* 806E6044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E6048  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E604C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 806E6050  7C 05 07 74 */	extsb r5, r0
/* 806E6054  4B 94 F3 0C */	b isSwitch__10dSv_info_cCFii
/* 806E6058  2C 03 00 00 */	cmpwi r3, 0
/* 806E605C  40 82 00 0C */	bne lbl_806E6068
/* 806E6060  38 60 00 01 */	li r3, 1
/* 806E6064  48 00 04 78 */	b lbl_806E64DC
lbl_806E6068:
/* 806E6068  88 1F 07 8C */	lbz r0, 0x78c(r31)
/* 806E606C  28 00 00 01 */	cmplwi r0, 1
/* 806E6070  40 82 00 18 */	bne lbl_806E6088
/* 806E6074  4B AB 9A 44 */	b dKy_daynight_check__Fv
/* 806E6078  2C 03 00 00 */	cmpwi r3, 0
/* 806E607C  40 82 00 0C */	bne lbl_806E6088
/* 806E6080  38 60 00 01 */	li r3, 1
/* 806E6084  48 00 04 58 */	b lbl_806E64DC
lbl_806E6088:
/* 806E6088  88 1F 05 46 */	lbz r0, 0x546(r31)
/* 806E608C  28 00 00 00 */	cmplwi r0, 0
/* 806E6090  40 82 00 20 */	bne lbl_806E60B0
/* 806E6094  38 00 00 04 */	li r0, 4
/* 806E6098  98 1F 05 46 */	stb r0, 0x546(r31)
/* 806E609C  38 00 00 02 */	li r0, 2
/* 806E60A0  98 1F 04 96 */	stb r0, 0x496(r31)
/* 806E60A4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 806E60A8  60 00 00 04 */	ori r0, r0, 4
/* 806E60AC  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_806E60B0:
/* 806E60B0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806E60B4  83 23 00 04 */	lwz r25, 4(r3)
/* 806E60B8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806E60BC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806E60C0  38 80 00 00 */	li r4, 0
/* 806E60C4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806E60C8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806E60CC  4B AB D6 F8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806E60D0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806E60D4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806E60D8  80 99 00 04 */	lwz r4, 4(r25)
/* 806E60DC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806E60E0  4B AB EC C0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806E60E4  83 39 00 04 */	lwz r25, 4(r25)
/* 806E60E8  3B 00 00 00 */	li r24, 0
/* 806E60EC  48 00 00 48 */	b lbl_806E6134
lbl_806E60F0:
/* 806E60F0  80 79 00 60 */	lwz r3, 0x60(r25)
/* 806E60F4  57 00 13 BA */	rlwinm r0, r24, 2, 0xe, 0x1d
/* 806E60F8  7C 63 00 2E */	lwzx r3, r3, r0
/* 806E60FC  28 03 00 00 */	cmplwi r3, 0
/* 806E6100  41 82 00 30 */	beq lbl_806E6130
/* 806E6104  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 806E6108  38 80 00 03 */	li r4, 3
/* 806E610C  81 83 00 00 */	lwz r12, 0(r3)
/* 806E6110  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806E6114  7D 89 03 A6 */	mtctr r12
/* 806E6118  4E 80 04 21 */	bctrl 
/* 806E611C  C0 1F 07 90 */	lfs f0, 0x790(r31)
/* 806E6120  FC 00 00 1E */	fctiwz f0, f0
/* 806E6124  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806E6128  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 806E612C  98 03 00 03 */	stb r0, 3(r3)
lbl_806E6130:
/* 806E6130  3B 18 00 01 */	addi r24, r24, 1
lbl_806E6134:
/* 806E6134  57 03 04 3E */	clrlwi r3, r24, 0x10
/* 806E6138  A0 19 00 5C */	lhz r0, 0x5c(r25)
/* 806E613C  7C 03 00 40 */	cmplw r3, r0
/* 806E6140  41 80 FF B0 */	blt lbl_806E60F0
/* 806E6144  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 806E6148  2C 00 00 06 */	cmpwi r0, 6
/* 806E614C  41 82 00 40 */	beq lbl_806E618C
/* 806E6150  C0 3F 07 90 */	lfs f1, 0x790(r31)
/* 806E6154  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E6158  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E615C  41 82 00 40 */	beq lbl_806E619C
/* 806E6160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E6164  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 806E6168  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 806E616C  28 00 00 00 */	cmplwi r0, 0
/* 806E6170  41 82 00 1C */	beq lbl_806E618C
/* 806E6174  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 806E6178  83 23 10 18 */	lwz r25, m_midnaActor__9daPy_py_c@l(r3)
/* 806E617C  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 806E6180  4B 93 59 94 */	b fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 806E6184  7C 03 C8 40 */	cmplw r3, r25
/* 806E6188  41 82 00 14 */	beq lbl_806E619C
lbl_806E618C:
/* 806E618C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806E6190  38 80 00 00 */	li r4, 0
/* 806E6194  4B 92 86 2C */	b entryDL__21mDoExt_invisibleModelFP4cXyz
/* 806E6198  48 00 00 0C */	b lbl_806E61A4
lbl_806E619C:
/* 806E619C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E61A0  D0 1F 07 90 */	stfs f0, 0x790(r31)
lbl_806E61A4:
/* 806E61A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806E61A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806E61AC  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 806E61B0  80 84 00 04 */	lwz r4, 4(r4)
/* 806E61B4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806E61B8  4B AB EB E8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806E61BC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806E61C0  4B 92 7B 04 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 806E61C4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806E61C8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806E61CC  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 806E61D0  EC 20 18 2A */	fadds f1, f0, f3
/* 806E61D4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806E61D8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806E61DC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 806E61E0  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 806E61E4  80 7F 07 18 */	lwz r3, 0x718(r31)
/* 806E61E8  38 80 00 01 */	li r4, 1
/* 806E61EC  80 BF 05 C0 */	lwz r5, 0x5c0(r31)
/* 806E61F0  38 C1 00 5C */	addi r6, r1, 0x5c
/* 806E61F4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 806E61F8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 806E61FC  C0 9F 08 84 */	lfs f4, 0x884(r31)
/* 806E6200  38 FF 08 DC */	addi r7, r31, 0x8dc
/* 806E6204  39 1F 01 0C */	addi r8, r31, 0x10c
/* 806E6208  39 20 00 00 */	li r9, 0
/* 806E620C  C0 BE 00 08 */	lfs f5, 8(r30)
/* 806E6210  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806E6214  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806E6218  4B 94 86 F8 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806E621C  90 7F 07 18 */	stw r3, 0x718(r31)
/* 806E6220  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806E6224  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806E6228  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E622C  38 63 00 60 */	addi r3, r3, 0x60
/* 806E6230  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806E6234  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806E6238  4B C6 02 78 */	b PSMTXCopy
/* 806E623C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 806E6240  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806E6244  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E6248  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806E624C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806E6250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E6254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E6258  38 81 00 50 */	addi r4, r1, 0x50
/* 806E625C  38 BF 07 5C */	addi r5, r31, 0x75c
/* 806E6260  4B C6 0B 0C */	b PSMTXMultVec
/* 806E6264  38 7F 07 5C */	addi r3, r31, 0x75c
/* 806E6268  4B 92 6A FC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806E626C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806E6270  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806E6274  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806E6278  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 806E627C  38 84 00 D8 */	addi r4, r4, 0xd8
/* 806E6280  38 BF 07 5C */	addi r5, r31, 0x75c
/* 806E6284  4B B8 08 B0 */	b __mi__4cXyzCFRC3Vec
/* 806E6288  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806E628C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806E6290  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806E6294  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806E6298  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806E629C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806E62A0  38 61 00 50 */	addi r3, r1, 0x50
/* 806E62A4  4B B8 0E 84 */	b atan2sX_Z__4cXyzCFv
/* 806E62A8  7C 64 1B 78 */	mr r4, r3
/* 806E62AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E62B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E62B4  4B 92 61 80 */	b mDoMtx_YrotM__FPA4_fs
/* 806E62B8  38 61 00 50 */	addi r3, r1, 0x50
/* 806E62BC  4B B8 0E 94 */	b atan2sY_XZ__4cXyzCFv
/* 806E62C0  7C 64 07 34 */	extsh r4, r3
/* 806E62C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E62C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E62CC  4B 92 60 D0 */	b mDoMtx_XrotM__FPA4_fs
/* 806E62D0  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806E62D4  38 63 A4 F8 */	addi r3, r3, l_HIO@l
/* 806E62D8  C0 23 00 08 */	lfs f1, 8(r3)
/* 806E62DC  FC 40 08 90 */	fmr f2, f1
/* 806E62E0  FC 60 08 90 */	fmr f3, f1
/* 806E62E4  4B 92 6B 54 */	b scaleM__14mDoMtx_stack_cFfff
/* 806E62E8  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806E62EC  80 83 00 04 */	lwz r4, 4(r3)
/* 806E62F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E62F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E62F8  38 84 00 24 */	addi r4, r4, 0x24
/* 806E62FC  4B C6 01 B4 */	b PSMTXCopy
/* 806E6300  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806E6304  4B 92 A3 A8 */	b modelCalc__14mDoExt_McaMorfFv
/* 806E6308  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806E630C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806E6310  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E6314  38 63 00 60 */	addi r3, r3, 0x60
/* 806E6318  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806E631C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806E6320  4B C6 01 90 */	b PSMTXCopy
/* 806E6324  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E6328  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E632C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806E6330  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806E6334  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806E6338  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806E633C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806E6340  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806E6344  3B A0 00 00 */	li r29, 0
/* 806E6348  3B 80 00 00 */	li r28, 0
/* 806E634C  3B 60 00 00 */	li r27, 0
/* 806E6350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E6354  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806E6358  3C 60 80 6F */	lis r3, particleNmaeDt@ha
/* 806E635C  3B 43 A3 E8 */	addi r26, r3, particleNmaeDt@l
lbl_806E6360:
/* 806E6360  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806E6364  38 00 00 FF */	li r0, 0xff
/* 806E6368  90 01 00 08 */	stw r0, 8(r1)
/* 806E636C  38 80 00 00 */	li r4, 0
/* 806E6370  90 81 00 0C */	stw r4, 0xc(r1)
/* 806E6374  38 00 FF FF */	li r0, -1
/* 806E6378  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E637C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E6380  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E6384  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806E6388  3B 1B 0D D4 */	addi r24, r27, 0xdd4
/* 806E638C  7C 9F C0 2E */	lwzx r4, r31, r24
/* 806E6390  38 A0 00 00 */	li r5, 0
/* 806E6394  7C DA E2 2E */	lhzx r6, r26, r28
/* 806E6398  38 E1 00 50 */	addi r7, r1, 0x50
/* 806E639C  39 00 00 00 */	li r8, 0
/* 806E63A0  39 20 00 00 */	li r9, 0
/* 806E63A4  39 40 00 00 */	li r10, 0
/* 806E63A8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806E63AC  4B 96 71 20 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E63B0  7C 7F C1 2E */	stwx r3, r31, r24
/* 806E63B4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806E63B8  38 63 02 10 */	addi r3, r3, 0x210
/* 806E63BC  7C 9F C0 2E */	lwzx r4, r31, r24
/* 806E63C0  4B 96 55 58 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806E63C4  7C 65 1B 79 */	or. r5, r3, r3
/* 806E63C8  41 82 00 20 */	beq lbl_806E63E8
/* 806E63CC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806E63D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806E63D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E63D8  38 63 00 60 */	addi r3, r3, 0x60
/* 806E63DC  38 85 00 68 */	addi r4, r5, 0x68
/* 806E63E0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 806E63E4  4B B9 A3 FC */	b func_802807E0
lbl_806E63E8:
/* 806E63E8  3B BD 00 01 */	addi r29, r29, 1
/* 806E63EC  2C 1D 00 02 */	cmpwi r29, 2
/* 806E63F0  3B 9C 00 02 */	addi r28, r28, 2
/* 806E63F4  3B 7B 00 04 */	addi r27, r27, 4
/* 806E63F8  41 80 FF 68 */	blt lbl_806E6360
/* 806E63FC  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806E6400  4B 92 A2 80 */	b entryDL__14mDoExt_McaMorfFv
/* 806E6404  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 806E6408  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E640C  41 82 00 90 */	beq lbl_806E649C
/* 806E6410  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806E6414  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806E6418  80 63 00 00 */	lwz r3, 0(r3)
/* 806E641C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806E6420  4B 92 5F BC */	b mDoMtx_YrotS__FPA4_fs
/* 806E6424  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E6428  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806E642C  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 806E6430  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806E6434  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 806E6438  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806E643C  38 61 00 44 */	addi r3, r1, 0x44
/* 806E6440  38 81 00 38 */	addi r4, r1, 0x38
/* 806E6444  4B B8 AA A8 */	b MtxPosition__FP4cXyzP4cXyz
/* 806E6448  38 61 00 20 */	addi r3, r1, 0x20
/* 806E644C  38 81 00 38 */	addi r4, r1, 0x38
/* 806E6450  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806E6454  4B B8 06 90 */	b __pl__4cXyzCFRC3Vec
/* 806E6458  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806E645C  D0 1F 07 38 */	stfs f0, 0x738(r31)
/* 806E6460  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806E6464  D0 1F 07 3C */	stfs f0, 0x73c(r31)
/* 806E6468  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806E646C  D0 1F 07 40 */	stfs f0, 0x740(r31)
/* 806E6470  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 806E6474  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 806E6478  C0 1F 07 3C */	lfs f0, 0x73c(r31)
/* 806E647C  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 806E6480  C0 1F 07 40 */	lfs f0, 0x740(r31)
/* 806E6484  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 806E6488  38 7F 07 A0 */	addi r3, r31, 0x7a0
/* 806E648C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 806E6490  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 806E6494  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 806E6498  4B B8 95 A4 */	b cLib_addCalc2__FPffff
lbl_806E649C:
/* 806E649C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E64A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E64A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806E64A8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806E64AC  81 8C 02 7C */	lwz r12, 0x27c(r12)
/* 806E64B0  7D 89 03 A6 */	mtctr r12
/* 806E64B4  4E 80 04 21 */	bctrl 
/* 806E64B8  2C 03 00 00 */	cmpwi r3, 0
/* 806E64BC  40 82 00 1C */	bne lbl_806E64D8
/* 806E64C0  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 806E64C4  2C 00 00 06 */	cmpwi r0, 6
/* 806E64C8  41 82 00 10 */	beq lbl_806E64D8
/* 806E64CC  7F E3 FB 78 */	mr r3, r31
/* 806E64D0  38 9F 01 0C */	addi r4, r31, 0x10c
/* 806E64D4  4B 93 31 CC */	b drawBallModel__13fopEn_enemy_cFP12dKy_tevstr_c
lbl_806E64D8:
/* 806E64D8  38 60 00 01 */	li r3, 1
lbl_806E64DC:
/* 806E64DC  39 61 00 90 */	addi r11, r1, 0x90
/* 806E64E0  4B C7 BD 34 */	b _restgpr_24
/* 806E64E4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806E64E8  7C 08 03 A6 */	mtlr r0
/* 806E64EC  38 21 00 90 */	addi r1, r1, 0x90
/* 806E64F0  4E 80 00 20 */	blr 
