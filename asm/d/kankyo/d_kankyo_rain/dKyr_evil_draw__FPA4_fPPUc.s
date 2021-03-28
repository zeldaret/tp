lbl_8006E6B0:
/* 8006E6B0  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8006E6B4  7C 08 02 A6 */	mflr r0
/* 8006E6B8  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8006E6BC  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 8006E6C0  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, 0 /* qr0 */
/* 8006E6C4  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 8006E6C8  F3 C1 01 98 */	psq_st f30, 408(r1), 0, 0 /* qr0 */
/* 8006E6CC  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 8006E6D0  F3 A1 01 88 */	psq_st f29, 392(r1), 0, 0 /* qr0 */
/* 8006E6D4  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 8006E6D8  F3 81 01 78 */	psq_st f28, 376(r1), 0, 0 /* qr0 */
/* 8006E6DC  39 61 01 70 */	addi r11, r1, 0x170
/* 8006E6E0  48 2F 3A E1 */	bl _savegpr_22
/* 8006E6E4  7C 78 1B 78 */	mr r24, r3
/* 8006E6E8  7C 99 23 78 */	mr r25, r4
/* 8006E6EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006E6F0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8006E6F4  83 83 10 58 */	lwz r28, 0x1058(r3)
/* 8006E6F8  88 0D 89 CC */	lbz r0, data_80450F4C(r13)
/* 8006E6FC  7C 00 07 75 */	extsb. r0, r0
/* 8006E700  40 82 00 14 */	bne lbl_8006E714
/* 8006E704  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006E708  D0 0D 89 C8 */	stfs f0, rot_11958(r13)
/* 8006E70C  38 00 00 01 */	li r0, 1
/* 8006E710  98 0D 89 CC */	stb r0, data_80450F4C(r13)
lbl_8006E714:
/* 8006E714  3C 60 80 43 */	lis r3, g_Counter@ha
/* 8006E718  80 03 0C D8 */	lwz r0, g_Counter@l(r3)
/* 8006E71C  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8006E720  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8006E724  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8006E728  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8006E72C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8006E730  FC 00 02 10 */	fabs f0, f0
/* 8006E734  FF E0 00 18 */	frsp f31, f0
/* 8006E738  28 1C 00 00 */	cmplwi r28, 0
/* 8006E73C  41 82 09 EC */	beq lbl_8006F128
/* 8006E740  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8006E744  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8006E748  48 2A 1F F5 */	bl reinitGX__6J3DSysFv
/* 8006E74C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8006E750  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8006E754  80 7D 61 B0 */	lwz r3, 0x61b0(r29)
/* 8006E758  28 03 00 00 */	cmplwi r3, 0
/* 8006E75C  41 82 09 CC */	beq lbl_8006F128
/* 8006E760  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006E764  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8006E768  48 2D 7E 49 */	bl PSMTXInverse
/* 8006E76C  48 00 00 08 */	b lbl_8006E774
/* 8006E770  48 00 09 B8 */	b lbl_8006F128
lbl_8006E774:
/* 8006E774  C0 02 8B FC */	lfs f0, lit_12252(r2)
/* 8006E778  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8006E77C  FC 00 00 1E */	fctiwz f0, f0
/* 8006E780  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 8006E784  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8006E788  98 01 00 20 */	stb r0, 0x20(r1)
/* 8006E78C  C0 02 8A 58 */	lfs f0, lit_7209(r2)
/* 8006E790  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8006E794  FC 00 00 1E */	fctiwz f0, f0
/* 8006E798  D8 01 01 30 */	stfd f0, 0x130(r1)
/* 8006E79C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8006E7A0  98 01 00 21 */	stb r0, 0x21(r1)
/* 8006E7A4  C0 02 8C 00 */	lfs f0, lit_12253(r2)
/* 8006E7A8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8006E7AC  FC 00 00 1E */	fctiwz f0, f0
/* 8006E7B0  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 8006E7B4  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 8006E7B8  98 01 00 22 */	stb r0, 0x22(r1)
/* 8006E7BC  38 60 00 00 */	li r3, 0
/* 8006E7C0  98 61 00 23 */	stb r3, 0x23(r1)
/* 8006E7C4  38 00 00 0A */	li r0, 0xa
/* 8006E7C8  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8006E7CC  98 61 00 1D */	stb r3, 0x1d(r1)
/* 8006E7D0  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8006E7D4  38 00 00 FF */	li r0, 0xff
/* 8006E7D8  98 01 00 1F */	stb r0, 0x1f(r1)
/* 8006E7DC  38 61 00 78 */	addi r3, r1, 0x78
/* 8006E7E0  80 99 00 00 */	lwz r4, 0(r25)
/* 8006E7E4  4B FE D2 41 */	bl dKyr_set_btitex__FP9_GXTexObjP7ResTIMG
/* 8006E7E8  C0 2D 89 C8 */	lfs f1, rot_11958(r13)
/* 8006E7EC  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006E7F0  EC 21 00 2A */	fadds f1, f1, f0
/* 8006E7F4  D0 2D 89 C8 */	stfs f1, rot_11958(r13)
/* 8006E7F8  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8006E7FC  38 80 00 5A */	li r4, 0x5a
/* 8006E800  C0 02 8A 60 */	lfs f0, lit_7211(r2)
/* 8006E804  EC 20 00 72 */	fmuls f1, f0, f1
/* 8006E808  48 2D 7E A1 */	bl PSMTXRotRad
/* 8006E80C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8006E810  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8006E814  7C 65 1B 78 */	mr r5, r3
/* 8006E818  48 2D 7C CD */	bl PSMTXConcat
/* 8006E81C  7F 03 C3 78 */	mr r3, r24
/* 8006E820  38 80 00 00 */	li r4, 0
/* 8006E824  48 2F 1A 29 */	bl GXLoadPosMtxImm
/* 8006E828  38 60 00 00 */	li r3, 0
/* 8006E82C  48 2F 1A C1 */	bl GXSetCurrentMtx
/* 8006E830  38 60 00 00 */	li r3, 0
/* 8006E834  38 80 00 09 */	li r4, 9
/* 8006E838  38 A0 00 01 */	li r5, 1
/* 8006E83C  38 C0 00 04 */	li r6, 4
/* 8006E840  38 E0 00 00 */	li r7, 0
/* 8006E844  48 2E CD 81 */	bl GXSetVtxAttrFmt
/* 8006E848  38 60 00 00 */	li r3, 0
/* 8006E84C  38 80 00 0D */	li r4, 0xd
/* 8006E850  38 A0 00 01 */	li r5, 1
/* 8006E854  38 C0 00 03 */	li r6, 3
/* 8006E858  38 E0 00 08 */	li r7, 8
/* 8006E85C  48 2E CD 69 */	bl GXSetVtxAttrFmt
/* 8006E860  48 2E CD 2D */	bl GXClearVtxDesc
/* 8006E864  38 60 00 09 */	li r3, 9
/* 8006E868  38 80 00 01 */	li r4, 1
/* 8006E86C  48 2E C6 4D */	bl GXSetVtxDesc
/* 8006E870  38 60 00 0D */	li r3, 0xd
/* 8006E874  38 80 00 01 */	li r4, 1
/* 8006E878  48 2E C6 41 */	bl GXSetVtxDesc
/* 8006E87C  38 60 00 00 */	li r3, 0
/* 8006E880  48 2E F2 B1 */	bl GXSetNumChans
/* 8006E884  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8006E888  90 01 00 18 */	stw r0, 0x18(r1)
/* 8006E88C  38 60 00 01 */	li r3, 1
/* 8006E890  38 81 00 18 */	addi r4, r1, 0x18
/* 8006E894  48 2F 0A E9 */	bl GXSetTevColor
/* 8006E898  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006E89C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006E8A0  38 60 00 02 */	li r3, 2
/* 8006E8A4  38 81 00 14 */	addi r4, r1, 0x14
/* 8006E8A8  48 2F 0A D5 */	bl GXSetTevColor
/* 8006E8AC  38 60 00 01 */	li r3, 1
/* 8006E8B0  48 2E D5 4D */	bl GXSetNumTexGens
/* 8006E8B4  38 60 00 00 */	li r3, 0
/* 8006E8B8  38 80 00 01 */	li r4, 1
/* 8006E8BC  38 A0 00 04 */	li r5, 4
/* 8006E8C0  38 C0 00 3C */	li r6, 0x3c
/* 8006E8C4  38 E0 00 00 */	li r7, 0
/* 8006E8C8  39 00 00 7D */	li r8, 0x7d
/* 8006E8CC  48 2E D2 B1 */	bl GXSetTexCoordGen2
/* 8006E8D0  38 60 00 01 */	li r3, 1
/* 8006E8D4  48 2F 0F BD */	bl GXSetNumTevStages
/* 8006E8D8  38 60 00 00 */	li r3, 0
/* 8006E8DC  38 80 00 00 */	li r4, 0
/* 8006E8E0  38 A0 00 00 */	li r5, 0
/* 8006E8E4  38 C0 00 FF */	li r6, 0xff
/* 8006E8E8  48 2F 0E 0D */	bl GXSetTevOrder
/* 8006E8EC  38 60 00 00 */	li r3, 0
/* 8006E8F0  38 80 00 04 */	li r4, 4
/* 8006E8F4  38 A0 00 02 */	li r5, 2
/* 8006E8F8  38 C0 00 08 */	li r6, 8
/* 8006E8FC  38 E0 00 0F */	li r7, 0xf
/* 8006E900  48 2F 09 25 */	bl GXSetTevColorIn
/* 8006E904  38 60 00 00 */	li r3, 0
/* 8006E908  38 80 00 00 */	li r4, 0
/* 8006E90C  38 A0 00 00 */	li r5, 0
/* 8006E910  38 C0 00 00 */	li r6, 0
/* 8006E914  38 E0 00 01 */	li r7, 1
/* 8006E918  39 00 00 00 */	li r8, 0
/* 8006E91C  48 2F 09 91 */	bl GXSetTevColorOp
/* 8006E920  38 60 00 00 */	li r3, 0
/* 8006E924  38 80 00 07 */	li r4, 7
/* 8006E928  38 A0 00 04 */	li r5, 4
/* 8006E92C  38 C0 00 01 */	li r6, 1
/* 8006E930  38 E0 00 07 */	li r7, 7
/* 8006E934  48 2F 09 35 */	bl GXSetTevAlphaIn
/* 8006E938  38 60 00 00 */	li r3, 0
/* 8006E93C  38 80 00 00 */	li r4, 0
/* 8006E940  38 A0 00 00 */	li r5, 0
/* 8006E944  38 C0 00 00 */	li r6, 0
/* 8006E948  38 E0 00 01 */	li r7, 1
/* 8006E94C  39 00 00 00 */	li r8, 0
/* 8006E950  48 2F 09 C5 */	bl GXSetTevAlphaOp
/* 8006E954  38 60 00 01 */	li r3, 1
/* 8006E958  38 80 00 04 */	li r4, 4
/* 8006E95C  38 A0 00 05 */	li r5, 5
/* 8006E960  38 C0 00 0F */	li r6, 0xf
/* 8006E964  48 2F 12 8D */	bl GXSetBlendMode
/* 8006E968  38 60 00 04 */	li r3, 4
/* 8006E96C  38 80 00 00 */	li r4, 0
/* 8006E970  38 A0 00 01 */	li r5, 1
/* 8006E974  38 C0 00 04 */	li r6, 4
/* 8006E978  38 E0 00 00 */	li r7, 0
/* 8006E97C  48 2F 0C A9 */	bl GXSetAlphaCompare
/* 8006E980  38 60 00 01 */	li r3, 1
/* 8006E984  48 2F 13 4D */	bl GXSetZCompLoc
/* 8006E988  38 60 00 01 */	li r3, 1
/* 8006E98C  38 80 00 03 */	li r4, 3
/* 8006E990  38 A0 00 00 */	li r5, 0
/* 8006E994  48 2F 13 09 */	bl GXSetZMode
/* 8006E998  38 60 00 00 */	li r3, 0
/* 8006E99C  48 2E DF E9 */	bl GXSetCullMode
/* 8006E9A0  38 60 00 01 */	li r3, 1
/* 8006E9A4  48 2F 1C 2D */	bl GXSetClipMode
/* 8006E9A8  38 60 00 00 */	li r3, 0
/* 8006E9AC  48 2F 07 29 */	bl GXSetNumIndStages
/* 8006E9B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8006E9B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8006E9B8  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 8006E9BC  48 01 6C D5 */	bl Prepare__12dCcMassS_MngFv
/* 8006E9C0  3B 60 00 00 */	li r27, 0
/* 8006E9C4  3A E0 00 00 */	li r23, 0
/* 8006E9C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8006E9CC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8006E9D0  C0 02 88 DC */	lfs f0, lit_5118(r2)
/* 8006E9D4  FF C0 00 50 */	fneg f30, f0
/* 8006E9D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006E9DC  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8006E9E0  48 00 07 14 */	b lbl_8006F0F4
lbl_8006E9E4:
/* 8006E9E4  3B 57 00 1C */	addi r26, r23, 0x1c
/* 8006E9E8  7F 5C D2 14 */	add r26, r28, r26
/* 8006E9EC  82 DE 5D 74 */	lwz r22, 0x5d74(r30)
/* 8006E9F0  C3 9A 00 38 */	lfs f28, 0x38(r26)
/* 8006E9F4  88 1A 00 00 */	lbz r0, 0(r26)
/* 8006E9F8  7C 00 07 75 */	extsb. r0, r0
/* 8006E9FC  41 82 06 F0 */	beq lbl_8006F0EC
/* 8006EA00  38 61 00 30 */	addi r3, r1, 0x30
/* 8006EA04  38 9A 00 10 */	addi r4, r26, 0x10
/* 8006EA08  38 BA 00 04 */	addi r5, r26, 4
/* 8006EA0C  48 1F 80 D9 */	bl __pl__4cXyzCFRC3Vec
/* 8006EA10  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8006EA14  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8006EA18  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8006EA1C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8006EA20  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8006EA24  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8006EA28  C0 02 8B E4 */	lfs f0, lit_11883(r2)
/* 8006EA2C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8006EA30  41 81 06 BC */	bgt lbl_8006F0EC
/* 8006EA34  80 7D 61 B0 */	lwz r3, 0x61b0(r29)
/* 8006EA38  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 8006EA3C  C0 02 88 B8 */	lfs f0, lit_5109(r2)
/* 8006EA40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EA44  40 81 00 40 */	ble lbl_8006EA84
/* 8006EA48  38 61 00 48 */	addi r3, r1, 0x48
/* 8006EA4C  38 81 00 3C */	addi r4, r1, 0x3c
/* 8006EA50  4B FA 68 C1 */	bl mDoLib_project__FP3VecP3Vec
/* 8006EA54  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8006EA58  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8006EA5C  40 81 06 90 */	ble lbl_8006F0EC
/* 8006EA60  C0 02 8B E8 */	lfs f0, lit_11884(r2)
/* 8006EA64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EA68  40 80 06 84 */	bge lbl_8006F0EC
/* 8006EA6C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8006EA70  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8006EA74  40 81 06 78 */	ble lbl_8006F0EC
/* 8006EA78  C0 02 8B EC */	lfs f0, lit_11885(r2)
/* 8006EA7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EA80  40 80 06 6C */	bge lbl_8006F0EC
lbl_8006EA84:
/* 8006EA84  38 76 00 D8 */	addi r3, r22, 0xd8
/* 8006EA88  38 81 00 48 */	addi r4, r1, 0x48
/* 8006EA8C  48 2D 89 11 */	bl PSVECSquareDistance
/* 8006EA90  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006EA94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EA98  40 81 00 58 */	ble lbl_8006EAF0
/* 8006EA9C  FC 00 08 34 */	frsqrte f0, f1
/* 8006EAA0  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006EAA4  FC 44 00 32 */	fmul f2, f4, f0
/* 8006EAA8  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006EAAC  FC 00 00 32 */	fmul f0, f0, f0
/* 8006EAB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8006EAB4  FC 03 00 28 */	fsub f0, f3, f0
/* 8006EAB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8006EABC  FC 44 00 32 */	fmul f2, f4, f0
/* 8006EAC0  FC 00 00 32 */	fmul f0, f0, f0
/* 8006EAC4  FC 01 00 32 */	fmul f0, f1, f0
/* 8006EAC8  FC 03 00 28 */	fsub f0, f3, f0
/* 8006EACC  FC 02 00 32 */	fmul f0, f2, f0
/* 8006EAD0  FC 44 00 32 */	fmul f2, f4, f0
/* 8006EAD4  FC 00 00 32 */	fmul f0, f0, f0
/* 8006EAD8  FC 01 00 32 */	fmul f0, f1, f0
/* 8006EADC  FC 03 00 28 */	fsub f0, f3, f0
/* 8006EAE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8006EAE4  FC 21 00 32 */	fmul f1, f1, f0
/* 8006EAE8  FC 20 08 18 */	frsp f1, f1
/* 8006EAEC  48 00 00 88 */	b lbl_8006EB74
lbl_8006EAF0:
/* 8006EAF0  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8006EAF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EAF8  40 80 00 10 */	bge lbl_8006EB08
/* 8006EAFC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8006EB00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8006EB04  48 00 00 70 */	b lbl_8006EB74
lbl_8006EB08:
/* 8006EB08  D0 21 00 08 */	stfs f1, 8(r1)
/* 8006EB0C  80 81 00 08 */	lwz r4, 8(r1)
/* 8006EB10  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8006EB14  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006EB18  7C 03 00 00 */	cmpw r3, r0
/* 8006EB1C  41 82 00 14 */	beq lbl_8006EB30
/* 8006EB20  40 80 00 40 */	bge lbl_8006EB60
/* 8006EB24  2C 03 00 00 */	cmpwi r3, 0
/* 8006EB28  41 82 00 20 */	beq lbl_8006EB48
/* 8006EB2C  48 00 00 34 */	b lbl_8006EB60
lbl_8006EB30:
/* 8006EB30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006EB34  41 82 00 0C */	beq lbl_8006EB40
/* 8006EB38  38 00 00 01 */	li r0, 1
/* 8006EB3C  48 00 00 28 */	b lbl_8006EB64
lbl_8006EB40:
/* 8006EB40  38 00 00 02 */	li r0, 2
/* 8006EB44  48 00 00 20 */	b lbl_8006EB64
lbl_8006EB48:
/* 8006EB48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006EB4C  41 82 00 0C */	beq lbl_8006EB58
/* 8006EB50  38 00 00 05 */	li r0, 5
/* 8006EB54  48 00 00 10 */	b lbl_8006EB64
lbl_8006EB58:
/* 8006EB58  38 00 00 03 */	li r0, 3
/* 8006EB5C  48 00 00 08 */	b lbl_8006EB64
lbl_8006EB60:
/* 8006EB60  38 00 00 04 */	li r0, 4
lbl_8006EB64:
/* 8006EB64  2C 00 00 01 */	cmpwi r0, 1
/* 8006EB68  40 82 00 0C */	bne lbl_8006EB74
/* 8006EB6C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8006EB70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8006EB74:
/* 8006EB74  C0 02 88 A4 */	lfs f0, lit_5104(r2)
/* 8006EB78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EB7C  40 80 00 5C */	bge lbl_8006EBD8
/* 8006EB80  C0 02 88 7C */	lfs f0, lit_4467(r2)
/* 8006EB84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EB88  40 80 00 0C */	bge lbl_8006EB94
/* 8006EB8C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8006EB90  48 00 00 4C */	b lbl_8006EBDC
lbl_8006EB94:
/* 8006EB94  EC 21 00 28 */	fsubs f1, f1, f0
/* 8006EB98  C0 02 8C 04 */	lfs f0, lit_12254(r2)
/* 8006EB9C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8006EBA0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006EBA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EBA8  40 80 00 0C */	bge lbl_8006EBB4
/* 8006EBAC  FC 20 00 90 */	fmr f1, f0
/* 8006EBB0  48 00 00 14 */	b lbl_8006EBC4
lbl_8006EBB4:
/* 8006EBB4  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006EBB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EBBC  40 81 00 08 */	ble lbl_8006EBC4
/* 8006EBC0  FC 20 00 90 */	fmr f1, f0
lbl_8006EBC4:
/* 8006EBC4  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006EBC8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8006EBCC  EC 21 00 72 */	fmuls f1, f1, f1
/* 8006EBD0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8006EBD4  48 00 00 08 */	b lbl_8006EBDC
lbl_8006EBD8:
/* 8006EBD8  C0 22 88 14 */	lfs f1, lit_4354(r2)
lbl_8006EBDC:
/* 8006EBDC  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 8006EBE0  EC 40 00 72 */	fmuls f2, f0, f1
/* 8006EBE4  EF 9C 00 72 */	fmuls f28, f28, f1
/* 8006EBE8  C0 02 8C 08 */	lfs f0, lit_12255(r2)
/* 8006EBEC  EF 80 07 32 */	fmuls f28, f0, f28
/* 8006EBF0  C0 02 89 E8 */	lfs f0, lit_6721(r2)
/* 8006EBF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8006EBF8  4C 40 13 82 */	cror 2, 0, 2
/* 8006EBFC  41 82 04 F0 */	beq lbl_8006F0EC
/* 8006EC00  C0 02 88 4C */	lfs f0, lit_4368(r2)
/* 8006EC04  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8006EC08  FC 00 00 1E */	fctiwz f0, f0
/* 8006EC0C  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 8006EC10  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 8006EC14  98 01 00 23 */	stb r0, 0x23(r1)
/* 8006EC18  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8006EC1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8006EC20  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8006EC24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8006EC28  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006EC2C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8006EC30  38 61 00 24 */	addi r3, r1, 0x24
/* 8006EC34  4B FF F8 15 */	bl dKyr_near_bosslight_check__F4cXyz
/* 8006EC38  C0 02 8A 44 */	lfs f0, lit_6952(r2)
/* 8006EC3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006EC40  40 80 00 54 */	bge lbl_8006EC94
/* 8006EC44  3C 60 80 43 */	lis r3, g_Counter@ha
/* 8006EC48  80 83 0C D8 */	lwz r4, g_Counter@l(r3)
/* 8006EC4C  57 63 07 7E */	clrlwi r3, r27, 0x1d
/* 8006EC50  38 03 02 59 */	addi r0, r3, 0x259
/* 8006EC54  7C 04 01 D6 */	mullw r0, r4, r0
/* 8006EC58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8006EC5C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8006EC60  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8006EC64  7C 43 04 2E */	lfsx f2, r3, r0
/* 8006EC68  FC 40 12 10 */	fabs f2, f2
/* 8006EC6C  FC A0 10 18 */	frsp f5, f2
/* 8006EC70  C0 82 88 20 */	lfs f4, lit_4357(r2)
/* 8006EC74  C0 62 8B 98 */	lfs f3, lit_10600(r2)
/* 8006EC78  C0 42 88 14 */	lfs f2, lit_4354(r2)
/* 8006EC7C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8006EC80  EC 02 00 28 */	fsubs f0, f2, f0
/* 8006EC84  EC 03 00 32 */	fmuls f0, f3, f0
/* 8006EC88  EC 00 01 72 */	fmuls f0, f0, f5
/* 8006EC8C  EC 24 00 2A */	fadds f1, f4, f0
/* 8006EC90  48 00 00 08 */	b lbl_8006EC98
lbl_8006EC94:
/* 8006EC94  C0 22 87 B8 */	lfs f1, lit_3954(r2)
lbl_8006EC98:
/* 8006EC98  38 7A 00 2C */	addi r3, r26, 0x2c
/* 8006EC9C  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8006ECA0  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8006ECA4  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8006ECA8  48 20 0C D5 */	bl cLib_addCalc__FPfffff
/* 8006ECAC  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8006ECB0  28 03 00 00 */	cmplwi r3, 0
/* 8006ECB4  41 82 00 6C */	beq lbl_8006ED20
/* 8006ECB8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8006ECBC  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 8006ECC0  7D 89 03 A6 */	mtctr r12
/* 8006ECC4  4E 80 04 21 */	bctrl 
/* 8006ECC8  28 03 00 00 */	cmplwi r3, 0
/* 8006ECCC  41 82 00 54 */	beq lbl_8006ED20
/* 8006ECD0  C0 02 89 FC */	lfs f0, lit_6726(r2)
/* 8006ECD4  C0 3A 00 2C */	lfs f1, 0x2c(r26)
/* 8006ECD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ECDC  FC 00 00 1E */	fctiwz f0, f0
/* 8006ECE0  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 8006ECE4  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 8006ECE8  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8006ECEC  C0 02 8A A4 */	lfs f0, lit_7892(r2)
/* 8006ECF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ECF4  FC 00 00 1E */	fctiwz f0, f0
/* 8006ECF8  D8 01 01 30 */	stfd f0, 0x130(r1)
/* 8006ECFC  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8006ED00  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8006ED04  C0 02 8C 0C */	lfs f0, lit_12256(r2)
/* 8006ED08  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ED0C  FC 00 00 1E */	fctiwz f0, f0
/* 8006ED10  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 8006ED14  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8006ED18  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8006ED1C  48 00 00 50 */	b lbl_8006ED6C
lbl_8006ED20:
/* 8006ED20  C0 02 88 DC */	lfs f0, lit_5118(r2)
/* 8006ED24  C0 3A 00 2C */	lfs f1, 0x2c(r26)
/* 8006ED28  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ED2C  FC 00 00 1E */	fctiwz f0, f0
/* 8006ED30  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 8006ED34  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 8006ED38  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8006ED3C  C0 02 89 74 */	lfs f0, lit_5737(r2)
/* 8006ED40  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ED44  FC 00 00 1E */	fctiwz f0, f0
/* 8006ED48  D8 01 01 30 */	stfd f0, 0x130(r1)
/* 8006ED4C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8006ED50  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8006ED54  C0 02 8C 10 */	lfs f0, lit_12257(r2)
/* 8006ED58  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ED5C  FC 00 00 1E */	fctiwz f0, f0
/* 8006ED60  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 8006ED64  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8006ED68  98 01 00 1E */	stb r0, 0x1e(r1)
lbl_8006ED6C:
/* 8006ED6C  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8006ED70  7C 00 07 75 */	extsb. r0, r0
/* 8006ED74  40 82 00 58 */	bne lbl_8006EDCC
/* 8006ED78  C0 7A 00 14 */	lfs f3, 0x14(r26)
/* 8006ED7C  C0 42 87 B8 */	lfs f2, lit_3954(r2)
/* 8006ED80  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8006ED84  40 80 00 48 */	bge lbl_8006EDCC
/* 8006ED88  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006ED8C  C0 02 8C 14 */	lfs f0, lit_12258(r2)
/* 8006ED90  EC 03 00 24 */	fdivs f0, f3, f0
/* 8006ED94  EC 61 00 28 */	fsubs f3, f1, f0
/* 8006ED98  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8006ED9C  40 81 00 0C */	ble lbl_8006EDA8
/* 8006EDA0  FC 60 08 90 */	fmr f3, f1
/* 8006EDA4  48 00 00 10 */	b lbl_8006EDB4
lbl_8006EDA8:
/* 8006EDA8  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8006EDAC  40 80 00 08 */	bge lbl_8006EDB4
/* 8006EDB0  FC 60 10 90 */	fmr f3, f2
lbl_8006EDB4:
/* 8006EDB4  C0 02 88 4C */	lfs f0, lit_4368(r2)
/* 8006EDB8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8006EDBC  FC 00 00 1E */	fctiwz f0, f0
/* 8006EDC0  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 8006EDC4  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 8006EDC8  98 01 00 23 */	stb r0, 0x23(r1)
lbl_8006EDCC:
/* 8006EDCC  57 60 07 3E */	clrlwi r0, r27, 0x1c
/* 8006EDD0  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8006EDD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8006EDD8  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8006EDDC  3C 00 43 30 */	lis r0, 0x4330
/* 8006EDE0  90 01 01 38 */	stw r0, 0x138(r1)
/* 8006EDE4  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 8006EDE8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8006EDEC  C0 02 88 90 */	lfs f0, lit_5099(r2)
/* 8006EDF0  EF A1 00 24 */	fdivs f29, f1, f0
/* 8006EDF4  48 0F 06 31 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 8006EDF8  2C 03 00 00 */	cmpwi r3, 0
/* 8006EDFC  41 82 00 50 */	beq lbl_8006EE4C
/* 8006EE00  EC 1D F8 28 */	fsubs f0, f29, f31
/* 8006EE04  FC 00 02 10 */	fabs f0, f0
/* 8006EE08  C0 22 8C 18 */	lfs f1, lit_12259(r2)
/* 8006EE0C  FC 00 00 18 */	frsp f0, f0
/* 8006EE10  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006EE14  FC 00 00 1E */	fctiwz f0, f0
/* 8006EE18  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 8006EE1C  80 61 01 3C */	lwz r3, 0x13c(r1)
/* 8006EE20  38 03 00 80 */	addi r0, r3, 0x80
/* 8006EE24  98 01 00 20 */	stb r0, 0x20(r1)
/* 8006EE28  38 00 00 80 */	li r0, 0x80
/* 8006EE2C  98 01 00 21 */	stb r0, 0x21(r1)
/* 8006EE30  D8 01 01 30 */	stfd f0, 0x130(r1)
/* 8006EE34  80 61 01 34 */	lwz r3, 0x134(r1)
/* 8006EE38  38 03 00 80 */	addi r0, r3, 0x80
/* 8006EE3C  98 01 00 22 */	stb r0, 0x22(r1)
/* 8006EE40  38 00 00 23 */	li r0, 0x23
/* 8006EE44  98 01 00 23 */	stb r0, 0x23(r1)
/* 8006EE48  48 00 00 84 */	b lbl_8006EECC
lbl_8006EE4C:
/* 8006EE4C  C0 82 87 B8 */	lfs f4, lit_3954(r2)
/* 8006EE50  88 1A 00 00 */	lbz r0, 0(r26)
/* 8006EE54  2C 00 00 02 */	cmpwi r0, 2
/* 8006EE58  40 82 00 10 */	bne lbl_8006EE68
/* 8006EE5C  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006EE60  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 8006EE64  EC 81 00 28 */	fsubs f4, f1, f0
lbl_8006EE68:
/* 8006EE68  EC 1D F8 28 */	fsubs f0, f29, f31
/* 8006EE6C  FC 60 02 10 */	fabs f3, f0
/* 8006EE70  C0 02 88 7C */	lfs f0, lit_4467(r2)
/* 8006EE74  EC 40 01 32 */	fmuls f2, f0, f4
/* 8006EE78  C0 22 88 90 */	lfs f1, lit_5099(r2)
/* 8006EE7C  FC 00 18 18 */	frsp f0, f3
/* 8006EE80  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006EE84  EC 02 08 2A */	fadds f0, f2, f1
/* 8006EE88  FC 00 00 1E */	fctiwz f0, f0
/* 8006EE8C  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 8006EE90  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 8006EE94  98 01 00 20 */	stb r0, 0x20(r1)
/* 8006EE98  C0 02 89 A4 */	lfs f0, lit_6355(r2)
/* 8006EE9C  EC 00 01 32 */	fmuls f0, f0, f4
/* 8006EEA0  FC 00 00 1E */	fctiwz f0, f0
/* 8006EEA4  D8 01 01 30 */	stfd f0, 0x130(r1)
/* 8006EEA8  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8006EEAC  98 01 00 21 */	stb r0, 0x21(r1)
/* 8006EEB0  C0 02 8C 1C */	lfs f0, lit_12260(r2)
/* 8006EEB4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8006EEB8  EC 00 08 2A */	fadds f0, f0, f1
/* 8006EEBC  FC 00 00 1E */	fctiwz f0, f0
/* 8006EEC0  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 8006EEC4  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8006EEC8  98 01 00 22 */	stb r0, 0x22(r1)
lbl_8006EECC:
/* 8006EECC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8006EED0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8006EED4  38 60 00 01 */	li r3, 1
/* 8006EED8  38 81 00 10 */	addi r4, r1, 0x10
/* 8006EEDC  48 2F 04 A1 */	bl GXSetTevColor
/* 8006EEE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006EEE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8006EEE8  38 60 00 02 */	li r3, 2
/* 8006EEEC  38 81 00 0C */	addi r4, r1, 0xc
/* 8006EEF0  48 2F 04 8D */	bl GXSetTevColor
/* 8006EEF4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8006EEF8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8006EEFC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8006EF00  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8006EF04  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006EF08  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8006EF0C  FF A0 E0 50 */	fneg f29, f28
/* 8006EF10  D3 A1 00 60 */	stfs f29, 0x60(r1)
/* 8006EF14  D3 81 00 64 */	stfs f28, 0x64(r1)
/* 8006EF18  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006EF1C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8006EF20  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8006EF24  38 81 00 60 */	addi r4, r1, 0x60
/* 8006EF28  38 A1 00 54 */	addi r5, r1, 0x54
/* 8006EF2C  48 2D 7E 41 */	bl PSMTXMultVec
/* 8006EF30  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8006EF34  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8006EF38  EC 01 00 2A */	fadds f0, f1, f0
/* 8006EF3C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8006EF40  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8006EF44  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8006EF48  EC 01 00 2A */	fadds f0, f1, f0
/* 8006EF4C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8006EF50  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8006EF54  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8006EF58  EC 01 00 2A */	fadds f0, f1, f0
/* 8006EF5C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8006EF60  D3 81 00 60 */	stfs f28, 0x60(r1)
/* 8006EF64  D3 81 00 64 */	stfs f28, 0x64(r1)
/* 8006EF68  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006EF6C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8006EF70  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8006EF74  38 81 00 60 */	addi r4, r1, 0x60
/* 8006EF78  38 A1 00 54 */	addi r5, r1, 0x54
/* 8006EF7C  48 2D 7D F1 */	bl PSMTXMultVec
/* 8006EF80  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8006EF84  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8006EF88  EC 01 00 2A */	fadds f0, f1, f0
/* 8006EF8C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8006EF90  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8006EF94  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8006EF98  EC 01 00 2A */	fadds f0, f1, f0
/* 8006EF9C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8006EFA0  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8006EFA4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8006EFA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8006EFAC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8006EFB0  D3 81 00 60 */	stfs f28, 0x60(r1)
/* 8006EFB4  D3 A1 00 64 */	stfs f29, 0x64(r1)
/* 8006EFB8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006EFBC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8006EFC0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8006EFC4  38 81 00 60 */	addi r4, r1, 0x60
/* 8006EFC8  38 A1 00 54 */	addi r5, r1, 0x54
/* 8006EFCC  48 2D 7D A1 */	bl PSMTXMultVec
/* 8006EFD0  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8006EFD4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8006EFD8  EC 01 00 2A */	fadds f0, f1, f0
/* 8006EFDC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8006EFE0  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8006EFE4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8006EFE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8006EFEC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8006EFF0  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8006EFF4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8006EFF8  EC 01 00 2A */	fadds f0, f1, f0
/* 8006EFFC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8006F000  D3 A1 00 60 */	stfs f29, 0x60(r1)
/* 8006F004  D3 A1 00 64 */	stfs f29, 0x64(r1)
/* 8006F008  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006F00C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8006F010  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8006F014  38 81 00 60 */	addi r4, r1, 0x60
/* 8006F018  38 A1 00 54 */	addi r5, r1, 0x54
/* 8006F01C  48 2D 7D 51 */	bl PSMTXMultVec
/* 8006F020  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8006F024  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8006F028  EC 01 00 2A */	fadds f0, f1, f0
/* 8006F02C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8006F030  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8006F034  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8006F038  EC 01 00 2A */	fadds f0, f1, f0
/* 8006F03C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8006F040  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8006F044  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8006F048  EC 01 00 2A */	fadds f0, f1, f0
/* 8006F04C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8006F050  38 60 00 80 */	li r3, 0x80
/* 8006F054  38 80 00 00 */	li r4, 0
/* 8006F058  38 A0 00 04 */	li r5, 4
/* 8006F05C  48 2E D7 09 */	bl GXBegin
/* 8006F060  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8006F064  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8006F068  D0 04 80 00 */	stfs f0, 0x8000(r4)
/* 8006F06C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8006F070  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F074  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8006F078  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F07C  38 60 00 00 */	li r3, 0
/* 8006F080  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006F084  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006F088  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8006F08C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F090  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8006F094  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F098  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8006F09C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F0A0  38 00 00 FF */	li r0, 0xff
/* 8006F0A4  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006F0A8  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006F0AC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8006F0B0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F0B4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8006F0B8  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F0BC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8006F0C0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F0C4  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006F0C8  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006F0CC  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8006F0D0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F0D4  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8006F0D8  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F0DC  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8006F0E0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006F0E4  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006F0E8  B0 04 80 00 */	sth r0, -0x8000(r4)
lbl_8006F0EC:
/* 8006F0EC  3B 7B 00 01 */	addi r27, r27, 1
/* 8006F0F0  3A F7 00 44 */	addi r23, r23, 0x44
lbl_8006F0F4:
/* 8006F0F4  80 1F 10 54 */	lwz r0, 0x1054(r31)
/* 8006F0F8  7C 1B 00 00 */	cmpw r27, r0
/* 8006F0FC  41 80 F8 E8 */	blt lbl_8006E9E4
/* 8006F100  38 00 00 00 */	li r0, 0
/* 8006F104  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 8006F108  38 60 00 00 */	li r3, 0
/* 8006F10C  48 2F 14 C5 */	bl GXSetClipMode
/* 8006F110  48 0F 03 15 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 8006F114  2C 03 00 00 */	cmpwi r3, 0
/* 8006F118  40 82 00 10 */	bne lbl_8006F128
/* 8006F11C  7F 03 C3 78 */	mr r3, r24
/* 8006F120  7F 24 CB 78 */	mr r4, r25
/* 8006F124  4B FF E9 59 */	bl dKyr_evil_draw2__FPA4_fPPUc
lbl_8006F128:
/* 8006F128  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, 0 /* qr0 */
/* 8006F12C  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 8006F130  E3 C1 01 98 */	psq_l f30, 408(r1), 0, 0 /* qr0 */
/* 8006F134  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 8006F138  E3 A1 01 88 */	psq_l f29, 392(r1), 0, 0 /* qr0 */
/* 8006F13C  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 8006F140  E3 81 01 78 */	psq_l f28, 376(r1), 0, 0 /* qr0 */
/* 8006F144  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 8006F148  39 61 01 70 */	addi r11, r1, 0x170
/* 8006F14C  48 2F 30 C1 */	bl _restgpr_22
/* 8006F150  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8006F154  7C 08 03 A6 */	mtlr r0
/* 8006F158  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8006F15C  4E 80 00 20 */	blr 
