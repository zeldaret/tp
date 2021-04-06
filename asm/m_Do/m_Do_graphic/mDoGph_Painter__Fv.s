lbl_8000A604:
/* 8000A604  94 21 FC 20 */	stwu r1, -0x3e0(r1)
/* 8000A608  7C 08 02 A6 */	mflr r0
/* 8000A60C  90 01 03 E4 */	stw r0, 0x3e4(r1)
/* 8000A610  DB E1 03 D0 */	stfd f31, 0x3d0(r1)
/* 8000A614  F3 E1 03 D8 */	psq_st f31, 984(r1), 0, 0 /* qr0 */
/* 8000A618  DB C1 03 C0 */	stfd f30, 0x3c0(r1)
/* 8000A61C  F3 C1 03 C8 */	psq_st f30, 968(r1), 0, 0 /* qr0 */
/* 8000A620  39 61 03 C0 */	addi r11, r1, 0x3c0
/* 8000A624  48 35 7B 99 */	bl _savegpr_21
/* 8000A628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A62C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A630  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000A634  28 03 00 00 */	cmplwi r3, 0
/* 8000A638  41 82 00 08 */	beq lbl_8000A640
/* 8000A63C  48 04 1A F9 */	bl calcMenu__13dPa_control_cFv
lbl_8000A640:
/* 8000A640  80 0D 86 48 */	lwz r0, mFader__13mDoGph_gInf_c(r13)
/* 8000A644  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8000A648  90 03 00 04 */	stw r0, 4(r3)
/* 8000A64C  80 0D 80 10 */	lwz r0, mBackColor__13mDoGph_gInf_c(r13)
/* 8000A650  90 01 00 08 */	stw r0, 8(r1)
/* 8000A654  88 01 00 08 */	lbz r0, 8(r1)
/* 8000A658  98 01 00 10 */	stb r0, 0x10(r1)
/* 8000A65C  88 01 00 09 */	lbz r0, 9(r1)
/* 8000A660  98 01 00 11 */	stb r0, 0x11(r1)
/* 8000A664  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8000A668  98 01 00 12 */	stb r0, 0x12(r1)
/* 8000A66C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8000A670  98 01 00 13 */	stb r0, 0x13(r1)
/* 8000A674  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8000A678  90 01 00 0C */	stw r0, 0xc(r1)
/* 8000A67C  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8000A680  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8000A684  98 03 00 08 */	stb r0, 8(r3)
/* 8000A688  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8000A68C  98 03 00 09 */	stb r0, 9(r3)
/* 8000A690  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8000A694  98 03 00 0A */	stb r0, 0xa(r3)
/* 8000A698  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8000A69C  98 03 00 0B */	stb r0, 0xb(r3)
/* 8000A6A0  4B FF D8 F1 */	bl beginRender__13mDoGph_gInf_cFv
/* 8000A6A4  38 60 00 00 */	li r3, 0
/* 8000A6A8  48 35 55 C9 */	bl GXSetAlphaUpdate
/* 8000A6AC  88 0D 80 80 */	lbz r0, g_clearColor(r13)
/* 8000A6B0  98 0D 80 10 */	stb r0, mBackColor__13mDoGph_gInf_c(r13)
/* 8000A6B4  38 8D 80 80 */	la r4, g_clearColor(r13) /* 80450600-_SDA_BASE_ */
/* 8000A6B8  88 04 00 01 */	lbz r0, 1(r4)
/* 8000A6BC  38 6D 80 10 */	la r3, mBackColor__13mDoGph_gInf_c(r13) /* 80450590-_SDA_BASE_ */
/* 8000A6C0  98 03 00 01 */	stb r0, 1(r3)
/* 8000A6C4  88 04 00 02 */	lbz r0, 2(r4)
/* 8000A6C8  98 03 00 02 */	stb r0, 2(r3)
/* 8000A6CC  88 04 00 03 */	lbz r0, 3(r4)
/* 8000A6D0  98 03 00 03 */	stb r0, 3(r3)
/* 8000A6D4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000A6D8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000A6DC  48 30 59 E1 */	bl drawInit__6J3DSysFv
/* 8000A6E0  38 60 00 01 */	li r3, 1
/* 8000A6E4  48 35 56 F5 */	bl GXSetDither
/* 8000A6E8  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8000A6EC  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 8000A6F0  FC 40 08 90 */	fmr f2, f1
/* 8000A6F4  C0 62 80 AC */	lfs f3, lit_4481(r2)
/* 8000A6F8  C0 82 80 A8 */	lfs f4, lit_4480(r2)
/* 8000A6FC  C0 A2 80 D8 */	lfs f5, lit_5023(r2)
/* 8000A700  C0 C2 80 3C */	lfs f6, lit_4063(r2)
/* 8000A704  48 2D EF CD */	bl __ct__13J2DOrthoGraphFffffff
/* 8000A708  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 8000A70C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8000A710  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8000A714  C0 02 80 AC */	lfs f0, lit_4481(r2)
/* 8000A718  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8000A71C  C0 02 80 A8 */	lfs f0, lit_4480(r2)
/* 8000A720  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8000A724  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8000A728  38 81 00 38 */	addi r4, r1, 0x38
/* 8000A72C  C0 22 80 D8 */	lfs f1, lit_5023(r2)
/* 8000A730  C0 42 80 3C */	lfs f2, lit_4063(r2)
/* 8000A734  48 2D F0 D9 */	bl func_802E980C
/* 8000A738  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8000A73C  48 2D F0 79 */	bl setPort__13J2DOrthoGraphFv
/* 8000A740  38 01 02 A8 */	addi r0, r1, 0x2a8
/* 8000A744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A748  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A74C  90 05 5F 50 */	stw r0, 0x5f50(r5)
/* 8000A750  3B E5 5F 64 */	addi r31, r5, 0x5f64
/* 8000A754  7F E3 FB 78 */	mr r3, r31
/* 8000A758  38 9F 00 54 */	addi r4, r31, 0x54
/* 8000A75C  80 A5 5F C8 */	lwz r5, 0x5fc8(r5)
/* 8000A760  48 04 C0 65 */	bl draw__12dDlst_list_cFPP12dDlst_base_cPP12dDlst_base_c
/* 8000A764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A768  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A76C  88 1A 5D 44 */	lbz r0, 0x5d44(r26)
/* 8000A770  2C 00 00 00 */	cmpwi r0, 0
/* 8000A774  41 82 07 84 */	beq lbl_8000AEF8
/* 8000A778  3A BA 5D 48 */	addi r21, r26, 0x5d48
/* 8000A77C  88 1A 5D 70 */	lbz r0, 0x5d70(r26)
/* 8000A780  7C 00 07 74 */	extsb r0, r0
/* 8000A784  1F 60 00 38 */	mulli r27, r0, 0x38
/* 8000A788  7C 7A DA 14 */	add r3, r26, r27
/* 8000A78C  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8000A790  28 1E 00 00 */	cmplwi r30, 0
/* 8000A794  41 82 07 64 */	beq lbl_8000AEF8
/* 8000A798  3B 3A 61 C0 */	addi r25, r26, 0x61c0
/* 8000A79C  7F 23 CB 78 */	mr r3, r25
/* 8000A7A0  38 9E 01 40 */	addi r4, r30, 0x140
/* 8000A7A4  48 04 B0 25 */	bl imageDraw__21dDlst_shadowControl_cFPA4_f
/* 8000A7A8  7E BD AB 78 */	mr r29, r21
/* 8000A7AC  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 8000A7B0  C0 15 00 00 */	lfs f0, 0(r21)
/* 8000A7B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8000A7B8  40 82 00 10 */	bne lbl_8000A7C8
/* 8000A7BC  C0 15 00 04 */	lfs f0, 4(r21)
/* 8000A7C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8000A7C4  41 82 00 54 */	beq lbl_8000A818
lbl_8000A7C8:
/* 8000A7C8  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 8000A7CC  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 8000A7D0  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 8000A7D4  C0 02 80 AC */	lfs f0, lit_4481(r2)
/* 8000A7D8  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 8000A7DC  C0 02 80 A8 */	lfs f0, lit_4480(r2)
/* 8000A7E0  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 8000A7E4  C0 15 00 10 */	lfs f0, 0x10(r21)
/* 8000A7E8  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 8000A7EC  C0 15 00 14 */	lfs f0, 0x14(r21)
/* 8000A7F0  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 8000A7F4  C0 15 00 18 */	lfs f0, 0x18(r21)
/* 8000A7F8  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 8000A7FC  C0 15 00 1C */	lfs f0, 0x1c(r21)
/* 8000A800  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 8000A804  C0 15 00 20 */	lfs f0, 0x20(r21)
/* 8000A808  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 8000A80C  C0 15 00 24 */	lfs f0, 0x24(r21)
/* 8000A810  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8000A814  3B A1 01 60 */	addi r29, r1, 0x160
lbl_8000A818:
/* 8000A818  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8000A81C  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8000A820  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8000A824  C0 9D 00 0C */	lfs f4, 0xc(r29)
/* 8000A828  C0 BD 00 10 */	lfs f5, 0x10(r29)
/* 8000A82C  C0 DD 00 14 */	lfs f6, 0x14(r29)
/* 8000A830  48 35 5C 35 */	bl GXSetViewport
/* 8000A834  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8000A838  48 35 78 75 */	bl __cvt_fp2unsigned
/* 8000A83C  7C 76 1B 78 */	mr r22, r3
/* 8000A840  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8000A844  48 35 78 69 */	bl __cvt_fp2unsigned
/* 8000A848  7C 77 1B 78 */	mr r23, r3
/* 8000A84C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8000A850  48 35 78 5D */	bl __cvt_fp2unsigned
/* 8000A854  7C 78 1B 78 */	mr r24, r3
/* 8000A858  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8000A85C  48 35 78 51 */	bl __cvt_fp2unsigned
/* 8000A860  7F 04 C3 78 */	mr r4, r24
/* 8000A864  7E E5 BB 78 */	mr r5, r23
/* 8000A868  7E C6 B3 78 */	mr r6, r22
/* 8000A86C  48 35 5C 65 */	bl GXSetScissor
/* 8000A870  C3 DE 00 D4 */	lfs f30, 0xd4(r30)
/* 8000A874  C3 FE 00 D0 */	lfs f31, 0xd0(r30)
/* 8000A878  38 7E 01 40 */	addi r3, r30, 0x140
/* 8000A87C  38 81 02 48 */	addi r4, r1, 0x248
/* 8000A880  48 33 BC 31 */	bl PSMTXCopy
/* 8000A884  38 61 02 78 */	addi r3, r1, 0x278
/* 8000A888  FC 20 F8 90 */	fmr f1, f31
/* 8000A88C  FC 40 F0 90 */	fmr f2, f30
/* 8000A890  C0 62 80 DC */	lfs f3, lit_5024(r2)
/* 8000A894  C0 82 80 E0 */	lfs f4, lit_5025(r2)
/* 8000A898  FC A0 18 90 */	fmr f5, f3
/* 8000A89C  FC C0 18 90 */	fmr f6, f3
/* 8000A8A0  48 33 C3 79 */	bl C_MTXLightPerspective
/* 8000A8A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A8A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A8AC  92 A3 5F 44 */	stw r21, 0x5f44(r3)
/* 8000A8B0  93 C3 5F 48 */	stw r30, 0x5f48(r3)
/* 8000A8B4  93 A3 5F 4C */	stw r29, 0x5f4c(r3)
/* 8000A8B8  38 7E 01 00 */	addi r3, r30, 0x100
/* 8000A8BC  38 80 00 00 */	li r4, 0
/* 8000A8C0  48 35 58 15 */	bl GXSetProjection
/* 8000A8C4  48 32 F4 35 */	bl PPCSync
/* 8000A8C8  38 7E 01 40 */	addi r3, r30, 0x140
/* 8000A8CC  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 8000A8D0  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 8000A8D4  48 33 BB DD */	bl PSMTXCopy
/* 8000A8D8  48 19 B7 E5 */	bl dKy_setLight__Fv
/* 8000A8DC  7F E3 FB 78 */	mr r3, r31
/* 8000A8E0  80 9F 00 00 */	lwz r4, 0(r31)
/* 8000A8E4  48 04 BD F1 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A8E8  7F E3 FB 78 */	mr r3, r31
/* 8000A8EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A8F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A8F4  80 84 5F 68 */	lwz r4, 0x5f68(r4)
/* 8000A8F8  48 04 BE 19 */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A8FC  38 60 00 00 */	li r3, 0
/* 8000A900  48 35 5C D1 */	bl GXSetClipMode
/* 8000A904  7F E3 FB 78 */	mr r3, r31
/* 8000A908  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A90C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A910  80 84 5F 70 */	lwz r4, 0x5f70(r4)
/* 8000A914  48 04 BD C1 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A918  7F E3 FB 78 */	mr r3, r31
/* 8000A91C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A920  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A924  80 84 5F 78 */	lwz r4, 0x5f78(r4)
/* 8000A928  48 04 BD AD */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A92C  7F E3 FB 78 */	mr r3, r31
/* 8000A930  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A934  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A938  80 84 5F B0 */	lwz r4, 0x5fb0(r4)
/* 8000A93C  48 04 BD 99 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A940  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000A944  28 03 00 00 */	cmplwi r3, 0
/* 8000A948  41 82 00 10 */	beq lbl_8000A958
/* 8000A94C  38 81 02 48 */	addi r4, r1, 0x248
/* 8000A950  38 A0 00 07 */	li r5, 7
/* 8000A954  48 04 18 35 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000A958:
/* 8000A958  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000A95C  28 03 00 00 */	cmplwi r3, 0
/* 8000A960  41 82 00 10 */	beq lbl_8000A970
/* 8000A964  38 81 02 48 */	addi r4, r1, 0x248
/* 8000A968  38 A0 00 05 */	li r5, 5
/* 8000A96C  48 04 18 1D */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000A970:
/* 8000A970  7F 23 CB 78 */	mr r3, r25
/* 8000A974  38 9E 01 40 */	addi r4, r30, 0x140
/* 8000A978  48 04 B0 9D */	bl draw__21dDlst_shadowControl_cFPA4_f
/* 8000A97C  7F E3 FB 78 */	mr r3, r31
/* 8000A980  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A984  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A988  80 84 5F 80 */	lwz r4, 0x5f80(r4)
/* 8000A98C  48 04 BD 49 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A990  7F E3 FB 78 */	mr r3, r31
/* 8000A994  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A998  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A99C  80 84 5F 88 */	lwz r4, 0x5f88(r4)
/* 8000A9A0  48 04 BD 35 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A9A4  7F E3 FB 78 */	mr r3, r31
/* 8000A9A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A9AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A9B0  80 84 5F 90 */	lwz r4, 0x5f90(r4)
/* 8000A9B4  48 04 BD 21 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A9B8  7F E3 FB 78 */	mr r3, r31
/* 8000A9BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A9C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A9C4  80 84 5F 74 */	lwz r4, 0x5f74(r4)
/* 8000A9C8  48 04 BD 49 */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A9CC  7F E3 FB 78 */	mr r3, r31
/* 8000A9D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A9D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A9D8  80 84 5F 7C */	lwz r4, 0x5f7c(r4)
/* 8000A9DC  48 04 BD 35 */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000A9E0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000A9E4  28 03 00 00 */	cmplwi r3, 0
/* 8000A9E8  41 82 00 10 */	beq lbl_8000A9F8
/* 8000A9EC  38 81 02 48 */	addi r4, r1, 0x248
/* 8000A9F0  38 A0 00 06 */	li r5, 6
/* 8000A9F4  48 04 17 95 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000A9F8:
/* 8000A9F8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000A9FC  28 03 00 00 */	cmplwi r3, 0
/* 8000AA00  41 82 00 10 */	beq lbl_8000AA10
/* 8000AA04  38 81 02 48 */	addi r4, r1, 0x248
/* 8000AA08  38 A0 00 04 */	li r5, 4
/* 8000AA0C  48 04 17 7D */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AA10:
/* 8000AA10  7F E3 FB 78 */	mr r3, r31
/* 8000AA14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AA18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AA1C  80 84 5F 84 */	lwz r4, 0x5f84(r4)
/* 8000AA20  48 04 BC F1 */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000AA24  7F E3 FB 78 */	mr r3, r31
/* 8000AA28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AA2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AA30  80 84 5F 8C */	lwz r4, 0x5f8c(r4)
/* 8000AA34  48 04 BC DD */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000AA38  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000AA3C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000AA40  48 30 5C FD */	bl reinitGX__6J3DSysFv
/* 8000AA44  38 60 00 00 */	li r3, 0
/* 8000AA48  48 35 5B 89 */	bl GXSetClipMode
/* 8000AA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AA50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AA54  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 8000AA58  28 00 00 00 */	cmplwi r0, 0
/* 8000AA5C  40 82 04 9C */	bne lbl_8000AEF8
/* 8000AA60  7F C3 F3 78 */	mr r3, r30
/* 8000AA64  4B FF F8 2D */	bl motionBlure__FP10view_class
/* 8000AA68  7F C3 F3 78 */	mr r3, r30
/* 8000AA6C  7F A4 EB 78 */	mr r4, r29
/* 8000AA70  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AA74  38 05 61 C0 */	addi r0, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AA78  7F 60 DA 14 */	add r27, r0, r27
/* 8000AA7C  C4 1B 5D 84 */	lfsu f0, 0x5d84(r27)
/* 8000AA80  FC 00 00 1E */	fctiwz f0, f0
/* 8000AA84  D8 01 03 80 */	stfd f0, 0x380(r1)
/* 8000AA88  80 A1 03 84 */	lwz r5, 0x384(r1)
/* 8000AA8C  4B FF DB A5 */	bl drawDepth2__FP10view_classP15view_port_classi
/* 8000AA90  48 35 3B D5 */	bl GXInvalidateTexAll
/* 8000AA94  38 60 00 00 */	li r3, 0
/* 8000AA98  48 35 5B 39 */	bl GXSetClipMode
/* 8000AA9C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8000AAA0  3B 23 CA 54 */	addi r25, r3, g_env_light@l /* 0x8042CA54@l */
/* 8000AAA4  88 19 12 FA */	lbz r0, 0x12fa(r25)
/* 8000AAA8  28 00 00 00 */	cmplwi r0, 0
/* 8000AAAC  40 82 00 2C */	bne lbl_8000AAD8
/* 8000AAB0  7F E3 FB 78 */	mr r3, r31
/* 8000AAB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AAB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AABC  80 84 5F A0 */	lwz r4, 0x5fa0(r4)
/* 8000AAC0  48 04 BC 15 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000AAC4  7F E3 FB 78 */	mr r3, r31
/* 8000AAC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AACC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AAD0  80 84 5F A4 */	lwz r4, 0x5fa4(r4)
/* 8000AAD4  48 04 BC 3D */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
lbl_8000AAD8:
/* 8000AAD8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AADC  28 03 00 00 */	cmplwi r3, 0
/* 8000AAE0  41 82 00 10 */	beq lbl_8000AAF0
/* 8000AAE4  38 81 02 48 */	addi r4, r1, 0x248
/* 8000AAE8  38 A0 00 0B */	li r5, 0xb
/* 8000AAEC  48 04 16 9D */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AAF0:
/* 8000AAF0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AAF4  28 03 00 00 */	cmplwi r3, 0
/* 8000AAF8  41 82 00 10 */	beq lbl_8000AB08
/* 8000AAFC  38 81 02 48 */	addi r4, r1, 0x248
/* 8000AB00  38 A0 00 03 */	li r5, 3
/* 8000AB04  48 04 16 85 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AB08:
/* 8000AB08  7F E3 FB 78 */	mr r3, r31
/* 8000AB0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AB10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AB14  80 84 5F A8 */	lwz r4, 0x5fa8(r4)
/* 8000AB18  48 04 BB F9 */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000AB1C  38 60 00 00 */	li r3, 0
/* 8000AB20  48 35 5A B1 */	bl GXSetClipMode
/* 8000AB24  7F E3 FB 78 */	mr r3, r31
/* 8000AB28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AB2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AB30  80 84 5F 94 */	lwz r4, 0x5f94(r4)
/* 8000AB34  48 04 BB A1 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000AB38  38 60 00 00 */	li r3, 0
/* 8000AB3C  48 35 5A 95 */	bl GXSetClipMode
/* 8000AB40  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AB44  28 03 00 00 */	cmplwi r3, 0
/* 8000AB48  41 82 00 10 */	beq lbl_8000AB58
/* 8000AB4C  38 81 02 48 */	addi r4, r1, 0x248
/* 8000AB50  38 A0 00 08 */	li r5, 8
/* 8000AB54  48 04 16 35 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AB58:
/* 8000AB58  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AB5C  28 03 00 00 */	cmplwi r3, 0
/* 8000AB60  41 82 00 10 */	beq lbl_8000AB70
/* 8000AB64  38 81 02 48 */	addi r4, r1, 0x248
/* 8000AB68  38 A0 00 00 */	li r5, 0
/* 8000AB6C  48 04 16 1D */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AB70:
/* 8000AB70  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AB74  28 03 00 00 */	cmplwi r3, 0
/* 8000AB78  41 82 00 10 */	beq lbl_8000AB88
/* 8000AB7C  38 81 02 48 */	addi r4, r1, 0x248
/* 8000AB80  38 A0 00 09 */	li r5, 9
/* 8000AB84  48 04 16 05 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AB88:
/* 8000AB88  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AB8C  28 03 00 00 */	cmplwi r3, 0
/* 8000AB90  41 82 00 10 */	beq lbl_8000ABA0
/* 8000AB94  38 81 02 48 */	addi r4, r1, 0x248
/* 8000AB98  38 A0 00 01 */	li r5, 1
/* 8000AB9C  48 04 15 ED */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000ABA0:
/* 8000ABA0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000ABA4  28 03 00 00 */	cmplwi r3, 0
/* 8000ABA8  41 82 00 10 */	beq lbl_8000ABB8
/* 8000ABAC  38 81 02 48 */	addi r4, r1, 0x248
/* 8000ABB0  38 A0 00 0A */	li r5, 0xa
/* 8000ABB4  48 04 15 D5 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000ABB8:
/* 8000ABB8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000ABBC  28 03 00 00 */	cmplwi r3, 0
/* 8000ABC0  41 82 00 10 */	beq lbl_8000ABD0
/* 8000ABC4  38 81 02 48 */	addi r4, r1, 0x248
/* 8000ABC8  38 A0 00 02 */	li r5, 2
/* 8000ABCC  48 04 15 BD */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000ABD0:
/* 8000ABD0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000ABD4  28 03 00 00 */	cmplwi r3, 0
/* 8000ABD8  41 82 00 10 */	beq lbl_8000ABE8
/* 8000ABDC  38 81 02 48 */	addi r4, r1, 0x248
/* 8000ABE0  38 A0 00 0C */	li r5, 0xc
/* 8000ABE4  48 04 15 A5 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000ABE8:
/* 8000ABE8  7F C3 F3 78 */	mr r3, r30
/* 8000ABEC  7F A4 EB 78 */	mr r4, r29
/* 8000ABF0  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8000ABF4  FC 00 00 1E */	fctiwz f0, f0
/* 8000ABF8  D8 01 03 80 */	stfd f0, 0x380(r1)
/* 8000ABFC  80 A1 03 84 */	lwz r5, 0x384(r1)
/* 8000AC00  4B FF F5 61 */	bl retry_captue_frame__FP10view_classP15view_port_classi
/* 8000AC04  38 60 00 00 */	li r3, 0
/* 8000AC08  48 35 59 C9 */	bl GXSetClipMode
/* 8000AC0C  88 19 12 FA */	lbz r0, 0x12fa(r25)
/* 8000AC10  28 00 00 01 */	cmplwi r0, 1
/* 8000AC14  40 82 00 2C */	bne lbl_8000AC40
/* 8000AC18  7F E3 FB 78 */	mr r3, r31
/* 8000AC1C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AC20  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AC24  80 84 5F A0 */	lwz r4, 0x5fa0(r4)
/* 8000AC28  48 04 BA AD */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000AC2C  7F E3 FB 78 */	mr r3, r31
/* 8000AC30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AC34  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AC38  80 84 5F A4 */	lwz r4, 0x5fa4(r4)
/* 8000AC3C  48 04 BA D5 */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
lbl_8000AC40:
/* 8000AC40  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AC44  28 03 00 00 */	cmplwi r3, 0
/* 8000AC48  41 82 00 10 */	beq lbl_8000AC58
/* 8000AC4C  38 81 02 48 */	addi r4, r1, 0x248
/* 8000AC50  38 A0 00 0D */	li r5, 0xd
/* 8000AC54  48 04 15 35 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AC58:
/* 8000AC58  38 60 00 00 */	li r3, 0
/* 8000AC5C  48 35 59 75 */	bl GXSetClipMode
/* 8000AC60  7F E3 FB 78 */	mr r3, r31
/* 8000AC64  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AC68  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AC6C  80 84 5F 6C */	lwz r4, 0x5f6c(r4)
/* 8000AC70  48 04 BA 65 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000AC74  3B 3A 4E 00 */	addi r25, r26, 0x4e00
/* 8000AC78  7F 23 CB 78 */	mr r3, r25
/* 8000AC7C  3C 80 80 37 */	lis r4, m_Do_m_Do_graphic__stringBase0@ha /* 0x80373DD0@ha */
/* 8000AC80  38 84 3D D0 */	addi r4, r4, m_Do_m_Do_graphic__stringBase0@l /* 0x80373DD0@l */
/* 8000AC84  48 35 DD 11 */	bl strcmp
/* 8000AC88  2C 03 00 00 */	cmpwi r3, 0
/* 8000AC8C  40 82 00 20 */	bne lbl_8000ACAC
/* 8000AC90  7F C3 F3 78 */	mr r3, r30
/* 8000AC94  7F A4 EB 78 */	mr r4, r29
/* 8000AC98  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8000AC9C  FC 00 00 1E */	fctiwz f0, f0
/* 8000ACA0  D8 01 03 80 */	stfd f0, 0x380(r1)
/* 8000ACA4  80 A1 03 84 */	lwz r5, 0x384(r1)
/* 8000ACA8  4B FF F4 B9 */	bl retry_captue_frame__FP10view_classP15view_port_classi
lbl_8000ACAC:
/* 8000ACAC  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 8000ACB0  FC 40 08 90 */	fmr f2, f1
/* 8000ACB4  C0 62 80 AC */	lfs f3, lit_4481(r2)
/* 8000ACB8  C0 82 80 A8 */	lfs f4, lit_4480(r2)
/* 8000ACBC  FC A0 08 90 */	fmr f5, f1
/* 8000ACC0  C0 C2 80 3C */	lfs f6, lit_4063(r2)
/* 8000ACC4  48 35 57 A1 */	bl GXSetViewport
/* 8000ACC8  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8000ACCC  C0 22 80 4C */	lfs f1, lit_4423(r2)
/* 8000ACD0  C0 42 80 E4 */	lfs f2, lit_5026(r2)
/* 8000ACD4  C0 62 80 3C */	lfs f3, lit_4063(r2)
/* 8000ACD8  C0 82 80 E8 */	lfs f4, lit_5027(r2)
/* 8000ACDC  48 33 C2 4D */	bl C_MTXPerspective
/* 8000ACE0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8000ACE4  38 80 00 00 */	li r4, 0
/* 8000ACE8  48 35 53 ED */	bl GXSetProjection
/* 8000ACEC  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 8000ACF0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8000ACF4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8000ACF8  C0 02 80 EC */	lfs f0, lit_5028(r2)
/* 8000ACFC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8000AD00  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8000AD04  C0 02 80 3C */	lfs f0, lit_4063(r2)
/* 8000AD08  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8000AD0C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8000AD10  38 61 01 30 */	addi r3, r1, 0x130
/* 8000AD14  38 81 00 54 */	addi r4, r1, 0x54
/* 8000AD18  3C A0 80 43 */	lis r5, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8000AD1C  38 A5 0C F4 */	addi r5, r5, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8000AD20  38 C1 00 48 */	addi r6, r1, 0x48
/* 8000AD24  38 E0 00 00 */	li r7, 0
/* 8000AD28  48 00 19 E9 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 8000AD2C  38 61 01 30 */	addi r3, r1, 0x130
/* 8000AD30  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 8000AD34  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 8000AD38  48 33 B7 79 */	bl PSMTXCopy
/* 8000AD3C  7F E3 FB 78 */	mr r3, r31
/* 8000AD40  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AD44  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AD48  80 84 5F AC */	lwz r4, 0x5fac(r4)
/* 8000AD4C  48 04 B9 C5 */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000AD50  38 7E 01 40 */	addi r3, r30, 0x140
/* 8000AD54  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 8000AD58  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 8000AD5C  48 33 B7 55 */	bl PSMTXCopy
/* 8000AD60  38 7E 01 00 */	addi r3, r30, 0x100
/* 8000AD64  38 80 00 00 */	li r4, 0
/* 8000AD68  48 35 53 6D */	bl GXSetProjection
/* 8000AD6C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000AD70  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000AD74  48 30 59 C9 */	bl reinitGX__6J3DSysFv
/* 8000AD78  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8000AD7C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8000AD80  88 03 12 D8 */	lbz r0, 0x12d8(r3)
/* 8000AD84  28 00 00 00 */	cmplwi r0, 0
/* 8000AD88  40 82 00 20 */	bne lbl_8000ADA8
/* 8000AD8C  7F 23 CB 78 */	mr r3, r25
/* 8000AD90  3C 80 80 37 */	lis r4, m_Do_m_Do_graphic__stringBase0@ha /* 0x80373DD0@ha */
/* 8000AD94  38 84 3D D0 */	addi r4, r4, m_Do_m_Do_graphic__stringBase0@l /* 0x80373DD0@l */
/* 8000AD98  38 84 00 08 */	addi r4, r4, 8
/* 8000AD9C  48 35 DB F9 */	bl strcmp
/* 8000ADA0  2C 03 00 00 */	cmpwi r3, 0
/* 8000ADA4  40 82 00 48 */	bne lbl_8000ADEC
lbl_8000ADA8:
/* 8000ADA8  3C 60 80 3E */	lis r3, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 8000ADAC  38 63 D4 28 */	addi r3, r3, m_bloom__13mDoGph_gInf_c@l /* 0x803DD428@l */
/* 8000ADB0  88 83 00 08 */	lbz r4, 8(r3)
/* 8000ADB4  80 03 00 04 */	lwz r0, 4(r3)
/* 8000ADB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000ADBC  88 01 00 17 */	lbz r0, 0x17(r1)
/* 8000ADC0  28 00 00 00 */	cmplwi r0, 0
/* 8000ADC4  40 82 00 0C */	bne lbl_8000ADD0
/* 8000ADC8  28 04 00 00 */	cmplwi r4, 0
/* 8000ADCC  41 82 00 20 */	beq lbl_8000ADEC
lbl_8000ADD0:
/* 8000ADD0  7F C3 F3 78 */	mr r3, r30
/* 8000ADD4  7F A4 EB 78 */	mr r4, r29
/* 8000ADD8  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8000ADDC  FC 00 00 1E */	fctiwz f0, f0
/* 8000ADE0  D8 01 03 80 */	stfd f0, 0x380(r1)
/* 8000ADE4  80 A1 03 84 */	lwz r5, 0x384(r1)
/* 8000ADE8  4B FF F3 79 */	bl retry_captue_frame__FP10view_classP15view_port_classi
lbl_8000ADEC:
/* 8000ADEC  3C 60 80 3E */	lis r3, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 8000ADF0  38 63 D4 28 */	addi r3, r3, m_bloom__13mDoGph_gInf_c@l /* 0x803DD428@l */
/* 8000ADF4  4B FF E8 5D */	bl draw__Q213mDoGph_gInf_c7bloom_cFv
/* 8000ADF8  38 7E 01 40 */	addi r3, r30, 0x140
/* 8000ADFC  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 8000AE00  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 8000AE04  48 33 B6 AD */	bl PSMTXCopy
/* 8000AE08  38 7E 01 00 */	addi r3, r30, 0x100
/* 8000AE0C  38 80 00 00 */	li r4, 0
/* 8000AE10  48 35 52 C5 */	bl GXSetProjection
/* 8000AE14  7F E3 FB 78 */	mr r3, r31
/* 8000AE18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AE1C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AE20  80 84 5F B4 */	lwz r4, 0x5fb4(r4)
/* 8000AE24  48 04 B8 B1 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 8000AE28  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 8000AE2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8000AE30  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8000AE34  C0 02 80 AC */	lfs f0, lit_4481(r2)
/* 8000AE38  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8000AE3C  C0 02 80 A8 */	lfs f0, lit_4480(r2)
/* 8000AE40  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8000AE44  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8000AE48  38 81 00 28 */	addi r4, r1, 0x28
/* 8000AE4C  C0 22 80 E8 */	lfs f1, lit_5027(r2)
/* 8000AE50  C0 42 80 F0 */	lfs f2, lit_5029(r2)
/* 8000AE54  48 2D E9 B9 */	bl func_802E980C
/* 8000AE58  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8000AE5C  48 2D E9 59 */	bl setPort__13J2DOrthoGraphFv
/* 8000AE60  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8000AE64  C0 22 80 F4 */	lfs f1, lit_5030(r2)
/* 8000AE68  C0 42 80 F8 */	lfs f2, lit_5031(r2)
/* 8000AE6C  C0 62 80 38 */	lfs f3, lit_4062(r2)
/* 8000AE70  48 33 BA 79 */	bl PSMTXTrans
/* 8000AE74  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8000AE78  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 8000AE7C  48 33 B6 35 */	bl PSMTXCopy
/* 8000AE80  38 61 02 18 */	addi r3, r1, 0x218
/* 8000AE84  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 8000AE88  C0 42 80 A8 */	lfs f2, lit_4480(r2)
/* 8000AE8C  FC 60 08 90 */	fmr f3, f1
/* 8000AE90  C0 82 80 AC */	lfs f4, lit_4481(r2)
/* 8000AE94  C0 A2 80 DC */	lfs f5, lit_5024(r2)
/* 8000AE98  FC C0 28 90 */	fmr f6, f5
/* 8000AE9C  FC E0 28 90 */	fmr f7, f5
/* 8000AEA0  FD 00 28 90 */	fmr f8, f5
/* 8000AEA4  48 33 BE 41 */	bl C_MTXLightOrtho
/* 8000AEA8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AEAC  28 03 00 00 */	cmplwi r3, 0
/* 8000AEB0  41 82 00 10 */	beq lbl_8000AEC0
/* 8000AEB4  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 8000AEB8  38 A0 00 0E */	li r5, 0xe
/* 8000AEBC  48 04 12 CD */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AEC0:
/* 8000AEC0  7F C3 F3 78 */	mr r3, r30
/* 8000AEC4  7F A4 EB 78 */	mr r4, r29
/* 8000AEC8  4B FF E2 F9 */	bl trimming__FP10view_classP15view_port_class
/* 8000AECC  7F 23 CB 78 */	mr r3, r25
/* 8000AED0  3C 80 80 37 */	lis r4, m_Do_m_Do_graphic__stringBase0@ha /* 0x80373DD0@ha */
/* 8000AED4  38 84 3D D0 */	addi r4, r4, m_Do_m_Do_graphic__stringBase0@l /* 0x80373DD0@l */
/* 8000AED8  38 84 00 0F */	addi r4, r4, 0xf
/* 8000AEDC  48 35 DA B9 */	bl strcmp
/* 8000AEE0  2C 03 00 00 */	cmpwi r3, 0
/* 8000AEE4  41 82 00 14 */	beq lbl_8000AEF8
/* 8000AEE8  88 0D 86 66 */	lbz r0, struct_80450BE4+0x2(r13)
/* 8000AEEC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8000AEF0  40 82 00 08 */	bne lbl_8000AEF8
/* 8000AEF4  4B FF D4 3D */	bl calcFade__13mDoGph_gInf_cFv
lbl_8000AEF8:
/* 8000AEF8  38 60 00 00 */	li r3, 0
/* 8000AEFC  48 35 56 D5 */	bl GXSetClipMode
/* 8000AF00  48 04 BA 01 */	bl calcWipe__12dDlst_list_cFv
/* 8000AF04  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000AF08  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000AF0C  48 30 58 31 */	bl reinitGX__6J3DSysFv
/* 8000AF10  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 8000AF14  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8000AF18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8000AF1C  C0 02 80 AC */	lfs f0, lit_4481(r2)
/* 8000AF20  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8000AF24  C0 02 80 A8 */	lfs f0, lit_4480(r2)
/* 8000AF28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8000AF2C  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8000AF30  38 81 00 18 */	addi r4, r1, 0x18
/* 8000AF34  C0 22 80 E8 */	lfs f1, lit_5027(r2)
/* 8000AF38  C0 42 80 F0 */	lfs f2, lit_5029(r2)
/* 8000AF3C  48 2D E8 D1 */	bl func_802E980C
/* 8000AF40  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8000AF44  48 2D E8 71 */	bl setPort__13J2DOrthoGraphFv
/* 8000AF48  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000AF4C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000AF50  38 81 00 90 */	addi r4, r1, 0x90
/* 8000AF54  48 33 B5 5D */	bl PSMTXCopy
/* 8000AF58  38 61 00 60 */	addi r3, r1, 0x60
/* 8000AF5C  C0 22 80 F4 */	lfs f1, lit_5030(r2)
/* 8000AF60  C0 42 80 F8 */	lfs f2, lit_5031(r2)
/* 8000AF64  C0 62 80 38 */	lfs f3, lit_4062(r2)
/* 8000AF68  48 33 B9 81 */	bl PSMTXTrans
/* 8000AF6C  38 61 00 60 */	addi r3, r1, 0x60
/* 8000AF70  38 81 01 88 */	addi r4, r1, 0x188
/* 8000AF74  48 33 B5 3D */	bl PSMTXCopy
/* 8000AF78  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 8000AF7C  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 8000AF80  C0 42 80 A8 */	lfs f2, lit_4480(r2)
/* 8000AF84  FC 60 08 90 */	fmr f3, f1
/* 8000AF88  C0 82 80 AC */	lfs f4, lit_4481(r2)
/* 8000AF8C  C0 A2 80 DC */	lfs f5, lit_5024(r2)
/* 8000AF90  FC C0 28 90 */	fmr f6, f5
/* 8000AF94  FC E0 28 90 */	fmr f7, f5
/* 8000AF98  FD 00 28 90 */	fmr f8, f5
/* 8000AF9C  48 33 BD 49 */	bl C_MTXLightOrtho
/* 8000AFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AFA4  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AFA8  88 19 5E B5 */	lbz r0, 0x5eb5(r25)
/* 8000AFAC  28 00 00 00 */	cmplwi r0, 0
/* 8000AFB0  40 82 00 1C */	bne lbl_8000AFCC
/* 8000AFB4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AFB8  28 03 00 00 */	cmplwi r3, 0
/* 8000AFBC  41 82 00 10 */	beq lbl_8000AFCC
/* 8000AFC0  38 81 01 88 */	addi r4, r1, 0x188
/* 8000AFC4  38 A0 00 10 */	li r5, 0x10
/* 8000AFC8  48 04 11 C1 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AFCC:
/* 8000AFCC  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000AFD0  28 03 00 00 */	cmplwi r3, 0
/* 8000AFD4  41 82 00 10 */	beq lbl_8000AFE4
/* 8000AFD8  38 81 01 88 */	addi r4, r1, 0x188
/* 8000AFDC  38 A0 00 12 */	li r5, 0x12
/* 8000AFE0  48 04 11 A9 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000AFE4:
/* 8000AFE4  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8000AFE8  48 2D E7 CD */	bl setPort__13J2DOrthoGraphFv
/* 8000AFEC  7F E3 FB 78 */	mr r3, r31
/* 8000AFF0  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 8000AFF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000AFF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000AFFC  80 A5 61 18 */	lwz r5, 0x6118(r5)
/* 8000B000  48 04 B7 C5 */	bl draw__12dDlst_list_cFPP12dDlst_base_cPP12dDlst_base_c
/* 8000B004  4B FF F5 89 */	bl drawItem3D__Fv
/* 8000B008  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8000B00C  48 2D E7 A9 */	bl setPort__13J2DOrthoGraphFv
/* 8000B010  7F E3 FB 78 */	mr r3, r31
/* 8000B014  38 9F 00 6C */	addi r4, r31, 0x6c
/* 8000B018  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000B01C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000B020  80 A5 60 10 */	lwz r5, 0x6010(r5)
/* 8000B024  48 04 B7 A1 */	bl draw__12dDlst_list_cFPP12dDlst_base_cPP12dDlst_base_c
/* 8000B028  7F E3 FB 78 */	mr r3, r31
/* 8000B02C  38 9F 01 BC */	addi r4, r31, 0x1bc
/* 8000B030  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000B034  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000B038  80 A5 61 A0 */	lwz r5, 0x61a0(r5)
/* 8000B03C  48 04 B7 89 */	bl draw__12dDlst_list_cFPP12dDlst_base_cPP12dDlst_base_c
/* 8000B040  88 19 5E B5 */	lbz r0, 0x5eb5(r25)
/* 8000B044  28 00 00 00 */	cmplwi r0, 0
/* 8000B048  40 82 00 1C */	bne lbl_8000B064
/* 8000B04C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000B050  28 03 00 00 */	cmplwi r3, 0
/* 8000B054  41 82 00 10 */	beq lbl_8000B064
/* 8000B058  38 81 01 88 */	addi r4, r1, 0x188
/* 8000B05C  38 A0 00 0F */	li r5, 0xf
/* 8000B060  48 04 11 29 */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000B064:
/* 8000B064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000B068  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000B06C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8000B070  3C 80 80 37 */	lis r4, m_Do_m_Do_graphic__stringBase0@ha /* 0x80373DD0@ha */
/* 8000B074  38 84 3D D0 */	addi r4, r4, m_Do_m_Do_graphic__stringBase0@l /* 0x80373DD0@l */
/* 8000B078  38 84 00 0F */	addi r4, r4, 0xf
/* 8000B07C  48 35 D9 19 */	bl strcmp
/* 8000B080  2C 03 00 00 */	cmpwi r3, 0
/* 8000B084  41 82 00 10 */	beq lbl_8000B094
/* 8000B088  88 0D 86 66 */	lbz r0, struct_80450BE4+0x2(r13)
/* 8000B08C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8000B090  41 82 00 08 */	beq lbl_8000B098
lbl_8000B094:
/* 8000B094  4B FF D2 9D */	bl calcFade__13mDoGph_gInf_cFv
lbl_8000B098:
/* 8000B098  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8000B09C  28 03 00 00 */	cmplwi r3, 0
/* 8000B0A0  41 82 00 10 */	beq lbl_8000B0B0
/* 8000B0A4  38 81 01 88 */	addi r4, r1, 0x188
/* 8000B0A8  38 A0 00 11 */	li r5, 0x11
/* 8000B0AC  48 04 10 DD */	bl draw__13dPa_control_cFP11JPADrawInfoUc
lbl_8000B0B0:
/* 8000B0B0  38 61 00 90 */	addi r3, r1, 0x90
/* 8000B0B4  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 8000B0B8  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 8000B0BC  48 33 B3 F5 */	bl PSMTXCopy
/* 8000B0C0  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8000B0C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8000B0C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8000B0CC  7D 89 03 A6 */	mtctr r12
/* 8000B0D0  4E 80 04 21 */	bctrl 
/* 8000B0D4  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha /* 0x803CC9E0@ha */
/* 8000B0D8  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l /* 0x803CC9E0@l */
/* 8000B0DC  90 01 02 A8 */	stw r0, 0x2a8(r1)
/* 8000B0E0  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha /* 0x803CC9B8@ha */
/* 8000B0E4  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l /* 0x803CC9B8@l */
/* 8000B0E8  90 01 02 A8 */	stw r0, 0x2a8(r1)
/* 8000B0EC  38 60 00 01 */	li r3, 1
/* 8000B0F0  E3 E1 03 D8 */	psq_l f31, 984(r1), 0, 0 /* qr0 */
/* 8000B0F4  CB E1 03 D0 */	lfd f31, 0x3d0(r1)
/* 8000B0F8  E3 C1 03 C8 */	psq_l f30, 968(r1), 0, 0 /* qr0 */
/* 8000B0FC  CB C1 03 C0 */	lfd f30, 0x3c0(r1)
/* 8000B100  39 61 03 C0 */	addi r11, r1, 0x3c0
/* 8000B104  48 35 71 05 */	bl _restgpr_21
/* 8000B108  80 01 03 E4 */	lwz r0, 0x3e4(r1)
/* 8000B10C  7C 08 03 A6 */	mtlr r0
/* 8000B110  38 21 03 E0 */	addi r1, r1, 0x3e0
/* 8000B114  4E 80 00 20 */	blr 
