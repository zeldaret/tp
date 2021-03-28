lbl_8006BE0C:
/* 8006BE0C  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 8006BE10  7C 08 02 A6 */	mflr r0
/* 8006BE14  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 8006BE18  DB E1 01 D0 */	stfd f31, 0x1d0(r1)
/* 8006BE1C  F3 E1 01 D8 */	psq_st f31, 472(r1), 0, 0 /* qr0 */
/* 8006BE20  DB C1 01 C0 */	stfd f30, 0x1c0(r1)
/* 8006BE24  F3 C1 01 C8 */	psq_st f30, 456(r1), 0, 0 /* qr0 */
/* 8006BE28  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 8006BE2C  48 2F 63 A1 */	bl _savegpr_25
/* 8006BE30  7C 7B 1B 78 */	mr r27, r3
/* 8006BE34  7C 9C 23 78 */	mr r28, r4
/* 8006BE38  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006BE3C  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8006BE40  83 BF 0F 28 */	lwz r29, 0xf28(r31)
/* 8006BE44  88 0D 89 B4 */	lbz r0, data_80450F34(r13)
/* 8006BE48  7C 00 07 75 */	extsb. r0, r0
/* 8006BE4C  40 82 00 14 */	bne lbl_8006BE60
/* 8006BE50  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006BE54  D0 0D 89 B0 */	stfs f0, rot_10882(r13)
/* 8006BE58  38 00 00 01 */	li r0, 1
/* 8006BE5C  98 0D 89 B4 */	stb r0, data_80450F34(r13)
lbl_8006BE60:
/* 8006BE60  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8006BE64  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8006BE68  48 2A 48 D5 */	bl reinitGX__6J3DSysFv
/* 8006BE6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8006BE70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8006BE74  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 8006BE78  28 03 00 00 */	cmplwi r3, 0
/* 8006BE7C  41 82 08 EC */	beq lbl_8006C768
/* 8006BE80  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006BE84  38 81 01 5C */	addi r4, r1, 0x15c
/* 8006BE88  48 2D A7 29 */	bl PSMTXInverse
/* 8006BE8C  48 00 00 08 */	b lbl_8006BE94
/* 8006BE90  48 00 08 D8 */	b lbl_8006C768
lbl_8006BE94:
/* 8006BE94  C0 3F 0F 40 */	lfs f1, 0xf40(r31)
/* 8006BE98  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006BE9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006BEA0  4C 40 13 82 */	cror 2, 0, 2
/* 8006BEA4  41 82 08 C4 */	beq lbl_8006C768
/* 8006BEA8  88 1F 0F 3D */	lbz r0, 0xf3d(r31)
/* 8006BEAC  28 00 00 01 */	cmplwi r0, 1
/* 8006BEB0  41 82 00 08 */	beq lbl_8006BEB8
/* 8006BEB4  48 00 08 B4 */	b lbl_8006C768
lbl_8006BEB8:
/* 8006BEB8  38 60 00 01 */	li r3, 1
/* 8006BEBC  48 2F 47 15 */	bl GXSetClipMode
/* 8006BEC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8006BEC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8006BEC8  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8006BECC  2C 00 00 B3 */	cmpwi r0, 0xb3
/* 8006BED0  41 82 00 5C */	beq lbl_8006BF2C
/* 8006BED4  40 80 00 1C */	bge lbl_8006BEF0
/* 8006BED8  2C 00 00 B1 */	cmpwi r0, 0xb1
/* 8006BEDC  41 82 01 28 */	beq lbl_8006C004
/* 8006BEE0  40 80 00 F4 */	bge lbl_8006BFD4
/* 8006BEE4  2C 00 00 B0 */	cmpwi r0, 0xb0
/* 8006BEE8  40 80 00 18 */	bge lbl_8006BF00
/* 8006BEEC  48 00 01 18 */	b lbl_8006C004
lbl_8006BEF0:
/* 8006BEF0  2C 00 00 B5 */	cmpwi r0, 0xb5
/* 8006BEF4  41 82 00 A4 */	beq lbl_8006BF98
/* 8006BEF8  40 80 01 0C */	bge lbl_8006C004
/* 8006BEFC  48 00 00 68 */	b lbl_8006BF64
lbl_8006BF00:
/* 8006BF00  38 60 00 FF */	li r3, 0xff
/* 8006BF04  98 61 00 1C */	stb r3, 0x1c(r1)
/* 8006BF08  98 61 00 1D */	stb r3, 0x1d(r1)
/* 8006BF0C  98 61 00 1E */	stb r3, 0x1e(r1)
/* 8006BF10  98 61 00 18 */	stb r3, 0x18(r1)
/* 8006BF14  38 00 00 78 */	li r0, 0x78
/* 8006BF18  98 01 00 19 */	stb r0, 0x19(r1)
/* 8006BF1C  38 00 00 A8 */	li r0, 0xa8
/* 8006BF20  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8006BF24  98 61 00 1B */	stb r3, 0x1b(r1)
/* 8006BF28  48 00 00 DC */	b lbl_8006C004
lbl_8006BF2C:
/* 8006BF2C  38 60 00 FF */	li r3, 0xff
/* 8006BF30  98 61 00 1C */	stb r3, 0x1c(r1)
/* 8006BF34  38 00 00 A1 */	li r0, 0xa1
/* 8006BF38  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8006BF3C  38 00 00 3B */	li r0, 0x3b
/* 8006BF40  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8006BF44  38 00 00 D6 */	li r0, 0xd6
/* 8006BF48  98 01 00 18 */	stb r0, 0x18(r1)
/* 8006BF4C  38 00 00 60 */	li r0, 0x60
/* 8006BF50  98 01 00 19 */	stb r0, 0x19(r1)
/* 8006BF54  38 00 00 32 */	li r0, 0x32
/* 8006BF58  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8006BF5C  98 61 00 1B */	stb r3, 0x1b(r1)
/* 8006BF60  48 00 00 A4 */	b lbl_8006C004
lbl_8006BF64:
/* 8006BF64  38 60 00 FF */	li r3, 0xff
/* 8006BF68  98 61 00 1C */	stb r3, 0x1c(r1)
/* 8006BF6C  38 00 00 DB */	li r0, 0xdb
/* 8006BF70  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8006BF74  98 61 00 1E */	stb r3, 0x1e(r1)
/* 8006BF78  38 00 00 E4 */	li r0, 0xe4
/* 8006BF7C  98 01 00 18 */	stb r0, 0x18(r1)
/* 8006BF80  38 00 00 AC */	li r0, 0xac
/* 8006BF84  98 01 00 19 */	stb r0, 0x19(r1)
/* 8006BF88  38 00 00 52 */	li r0, 0x52
/* 8006BF8C  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8006BF90  98 61 00 1B */	stb r3, 0x1b(r1)
/* 8006BF94  48 00 00 70 */	b lbl_8006C004
lbl_8006BF98:
/* 8006BF98  38 00 00 D5 */	li r0, 0xd5
/* 8006BF9C  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8006BFA0  38 00 00 CE */	li r0, 0xce
/* 8006BFA4  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8006BFA8  38 00 00 A7 */	li r0, 0xa7
/* 8006BFAC  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8006BFB0  38 00 00 55 */	li r0, 0x55
/* 8006BFB4  98 01 00 18 */	stb r0, 0x18(r1)
/* 8006BFB8  38 00 00 78 */	li r0, 0x78
/* 8006BFBC  98 01 00 19 */	stb r0, 0x19(r1)
/* 8006BFC0  38 00 00 27 */	li r0, 0x27
/* 8006BFC4  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8006BFC8  38 00 00 FF */	li r0, 0xff
/* 8006BFCC  98 01 00 1B */	stb r0, 0x1b(r1)
/* 8006BFD0  48 00 00 34 */	b lbl_8006C004
lbl_8006BFD4:
/* 8006BFD4  38 60 00 FF */	li r3, 0xff
/* 8006BFD8  98 61 00 1C */	stb r3, 0x1c(r1)
/* 8006BFDC  38 00 00 C8 */	li r0, 0xc8
/* 8006BFE0  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8006BFE4  98 61 00 1E */	stb r3, 0x1e(r1)
/* 8006BFE8  38 00 00 44 */	li r0, 0x44
/* 8006BFEC  98 01 00 18 */	stb r0, 0x18(r1)
/* 8006BFF0  38 00 00 1A */	li r0, 0x1a
/* 8006BFF4  98 01 00 19 */	stb r0, 0x19(r1)
/* 8006BFF8  38 00 00 6B */	li r0, 0x6b
/* 8006BFFC  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8006C000  98 61 00 1B */	stb r3, 0x1b(r1)
lbl_8006C004:
/* 8006C004  38 61 00 7C */	addi r3, r1, 0x7c
/* 8006C008  80 9C 00 00 */	lwz r4, 0(r28)
/* 8006C00C  38 A0 00 01 */	li r5, 1
/* 8006C010  4B FE F9 1D */	bl dKyr_set_btitex_common__FP9_GXTexObjP7ResTIMG11_GXTexMapID
/* 8006C014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8006C018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8006C01C  88 03 5D 70 */	lbz r0, 0x5d70(r3)
/* 8006C020  7C 00 07 74 */	extsb r0, r0
/* 8006C024  3B C3 5D 74 */	addi r30, r3, 0x5d74
/* 8006C028  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8006C02C  7F 9E 00 2E */	lwzx r28, r30, r0
/* 8006C030  38 61 00 5C */	addi r3, r1, 0x5c
/* 8006C034  80 8D 86 4C */	lwz r4, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 8006C038  38 A0 00 00 */	li r5, 0
/* 8006C03C  4B FE F8 F1 */	bl dKyr_set_btitex_common__FP9_GXTexObjP7ResTIMG11_GXTexMapID
/* 8006C040  38 61 00 FC */	addi r3, r1, 0xfc
/* 8006C044  C0 3C 00 D0 */	lfs f1, 0xd0(r28)
/* 8006C048  C0 5C 00 D4 */	lfs f2, 0xd4(r28)
/* 8006C04C  C0 62 8B 78 */	lfs f3, lit_10031(r2)
/* 8006C050  FC 80 18 50 */	fneg f4, f3
/* 8006C054  C0 A2 88 3C */	lfs f5, lit_4364(r2)
/* 8006C058  FC C0 28 90 */	fmr f6, f5
/* 8006C05C  48 2D AB BD */	bl C_MTXLightPerspective
/* 8006C060  38 61 00 FC */	addi r3, r1, 0xfc
/* 8006C064  3C 80 80 43 */	lis r4, j3dSys@ha
/* 8006C068  38 84 4A C8 */	addi r4, r4, j3dSys@l
/* 8006C06C  38 A1 00 CC */	addi r5, r1, 0xcc
/* 8006C070  48 2D A4 75 */	bl PSMTXConcat
/* 8006C074  C0 2D 89 B0 */	lfs f1, rot_10882(r13)
/* 8006C078  C0 02 89 78 */	lfs f0, lit_5738(r2)
/* 8006C07C  EC 21 00 2A */	fadds f1, f1, f0
/* 8006C080  D0 2D 89 B0 */	stfs f1, rot_10882(r13)
/* 8006C084  38 61 01 2C */	addi r3, r1, 0x12c
/* 8006C088  38 80 00 5A */	li r4, 0x5a
/* 8006C08C  C0 02 8A 60 */	lfs f0, lit_7211(r2)
/* 8006C090  EC 20 00 72 */	fmuls f1, f0, f1
/* 8006C094  48 2D A6 15 */	bl PSMTXRotRad
/* 8006C098  38 61 01 5C */	addi r3, r1, 0x15c
/* 8006C09C  38 81 01 2C */	addi r4, r1, 0x12c
/* 8006C0A0  7C 65 1B 78 */	mr r5, r3
/* 8006C0A4  48 2D A4 41 */	bl PSMTXConcat
/* 8006C0A8  7F 63 DB 78 */	mr r3, r27
/* 8006C0AC  38 80 00 00 */	li r4, 0
/* 8006C0B0  48 2F 41 9D */	bl GXLoadPosMtxImm
/* 8006C0B4  38 60 00 00 */	li r3, 0
/* 8006C0B8  48 2F 42 35 */	bl GXSetCurrentMtx
/* 8006C0BC  38 61 00 CC */	addi r3, r1, 0xcc
/* 8006C0C0  38 80 00 1E */	li r4, 0x1e
/* 8006C0C4  38 A0 00 00 */	li r5, 0
/* 8006C0C8  48 2F 42 59 */	bl GXLoadTexMtxImm
/* 8006C0CC  38 60 00 00 */	li r3, 0
/* 8006C0D0  38 80 00 09 */	li r4, 9
/* 8006C0D4  38 A0 00 01 */	li r5, 1
/* 8006C0D8  38 C0 00 04 */	li r6, 4
/* 8006C0DC  38 E0 00 00 */	li r7, 0
/* 8006C0E0  48 2E F4 E5 */	bl GXSetVtxAttrFmt
/* 8006C0E4  38 60 00 00 */	li r3, 0
/* 8006C0E8  38 80 00 0D */	li r4, 0xd
/* 8006C0EC  38 A0 00 01 */	li r5, 1
/* 8006C0F0  38 C0 00 03 */	li r6, 3
/* 8006C0F4  38 E0 00 08 */	li r7, 8
/* 8006C0F8  48 2E F4 CD */	bl GXSetVtxAttrFmt
/* 8006C0FC  38 60 00 00 */	li r3, 0
/* 8006C100  38 80 00 0E */	li r4, 0xe
/* 8006C104  38 A0 00 01 */	li r5, 1
/* 8006C108  38 C0 00 03 */	li r6, 3
/* 8006C10C  38 E0 00 08 */	li r7, 8
/* 8006C110  48 2E F4 B5 */	bl GXSetVtxAttrFmt
/* 8006C114  48 2E F4 79 */	bl GXClearVtxDesc
/* 8006C118  38 60 00 09 */	li r3, 9
/* 8006C11C  38 80 00 01 */	li r4, 1
/* 8006C120  48 2E ED 99 */	bl GXSetVtxDesc
/* 8006C124  38 60 00 0D */	li r3, 0xd
/* 8006C128  38 80 00 01 */	li r4, 1
/* 8006C12C  48 2E ED 8D */	bl GXSetVtxDesc
/* 8006C130  38 60 00 0E */	li r3, 0xe
/* 8006C134  38 80 00 01 */	li r4, 1
/* 8006C138  48 2E ED 81 */	bl GXSetVtxDesc
/* 8006C13C  38 60 00 01 */	li r3, 1
/* 8006C140  48 2F 19 F1 */	bl GXSetNumChans
/* 8006C144  38 60 00 00 */	li r3, 0
/* 8006C148  38 80 00 00 */	li r4, 0
/* 8006C14C  38 A0 00 00 */	li r5, 0
/* 8006C150  38 C0 00 00 */	li r6, 0
/* 8006C154  38 E0 00 00 */	li r7, 0
/* 8006C158  39 00 00 02 */	li r8, 2
/* 8006C15C  39 20 00 02 */	li r9, 2
/* 8006C160  48 2F 1A 0D */	bl GXSetChanCtrl
/* 8006C164  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006C168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C16C  38 60 00 01 */	li r3, 1
/* 8006C170  38 81 00 14 */	addi r4, r1, 0x14
/* 8006C174  48 2F 32 09 */	bl GXSetTevColor
/* 8006C178  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8006C17C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8006C180  38 60 00 02 */	li r3, 2
/* 8006C184  38 81 00 10 */	addi r4, r1, 0x10
/* 8006C188  48 2F 31 F5 */	bl GXSetTevColor
/* 8006C18C  38 60 00 02 */	li r3, 2
/* 8006C190  48 2E FC 6D */	bl GXSetNumTexGens
/* 8006C194  38 60 00 00 */	li r3, 0
/* 8006C198  38 80 00 00 */	li r4, 0
/* 8006C19C  38 A0 00 00 */	li r5, 0
/* 8006C1A0  38 C0 00 1E */	li r6, 0x1e
/* 8006C1A4  38 E0 00 00 */	li r7, 0
/* 8006C1A8  39 00 00 7D */	li r8, 0x7d
/* 8006C1AC  48 2E F9 D1 */	bl GXSetTexCoordGen2
/* 8006C1B0  38 60 00 01 */	li r3, 1
/* 8006C1B4  38 80 00 01 */	li r4, 1
/* 8006C1B8  38 A0 00 05 */	li r5, 5
/* 8006C1BC  38 C0 00 3C */	li r6, 0x3c
/* 8006C1C0  38 E0 00 00 */	li r7, 0
/* 8006C1C4  39 00 00 7D */	li r8, 0x7d
/* 8006C1C8  48 2E F9 B5 */	bl GXSetTexCoordGen2
/* 8006C1CC  38 60 00 02 */	li r3, 2
/* 8006C1D0  48 2F 36 C1 */	bl GXSetNumTevStages
/* 8006C1D4  38 60 00 00 */	li r3, 0
/* 8006C1D8  38 80 00 00 */	li r4, 0
/* 8006C1DC  38 A0 00 00 */	li r5, 0
/* 8006C1E0  38 C0 00 04 */	li r6, 4
/* 8006C1E4  48 2F 35 11 */	bl GXSetTevOrder
/* 8006C1E8  38 60 00 00 */	li r3, 0
/* 8006C1EC  38 80 00 0F */	li r4, 0xf
/* 8006C1F0  38 A0 00 08 */	li r5, 8
/* 8006C1F4  38 C0 00 02 */	li r6, 2
/* 8006C1F8  38 E0 00 04 */	li r7, 4
/* 8006C1FC  48 2F 30 29 */	bl GXSetTevColorIn
/* 8006C200  38 60 00 00 */	li r3, 0
/* 8006C204  38 80 00 00 */	li r4, 0
/* 8006C208  38 A0 00 00 */	li r5, 0
/* 8006C20C  38 C0 00 00 */	li r6, 0
/* 8006C210  38 E0 00 01 */	li r7, 1
/* 8006C214  39 00 00 00 */	li r8, 0
/* 8006C218  48 2F 30 95 */	bl GXSetTevColorOp
/* 8006C21C  38 60 00 00 */	li r3, 0
/* 8006C220  38 80 00 04 */	li r4, 4
/* 8006C224  38 A0 00 07 */	li r5, 7
/* 8006C228  38 C0 00 07 */	li r6, 7
/* 8006C22C  38 E0 00 07 */	li r7, 7
/* 8006C230  48 2F 30 39 */	bl GXSetTevAlphaIn
/* 8006C234  38 60 00 00 */	li r3, 0
/* 8006C238  38 80 00 00 */	li r4, 0
/* 8006C23C  38 A0 00 00 */	li r5, 0
/* 8006C240  38 C0 00 00 */	li r6, 0
/* 8006C244  38 E0 00 01 */	li r7, 1
/* 8006C248  39 00 00 00 */	li r8, 0
/* 8006C24C  48 2F 30 C9 */	bl GXSetTevAlphaOp
/* 8006C250  38 60 00 01 */	li r3, 1
/* 8006C254  38 80 00 01 */	li r4, 1
/* 8006C258  38 A0 00 01 */	li r5, 1
/* 8006C25C  38 C0 00 04 */	li r6, 4
/* 8006C260  48 2F 34 95 */	bl GXSetTevOrder
/* 8006C264  38 60 00 01 */	li r3, 1
/* 8006C268  38 80 00 00 */	li r4, 0
/* 8006C26C  38 A0 00 0F */	li r5, 0xf
/* 8006C270  38 C0 00 0F */	li r6, 0xf
/* 8006C274  38 E0 00 0F */	li r7, 0xf
/* 8006C278  48 2F 2F AD */	bl GXSetTevColorIn
/* 8006C27C  38 60 00 01 */	li r3, 1
/* 8006C280  38 80 00 00 */	li r4, 0
/* 8006C284  38 A0 00 00 */	li r5, 0
/* 8006C288  38 C0 00 00 */	li r6, 0
/* 8006C28C  38 E0 00 00 */	li r7, 0
/* 8006C290  39 00 00 00 */	li r8, 0
/* 8006C294  48 2F 30 19 */	bl GXSetTevColorOp
/* 8006C298  38 60 00 01 */	li r3, 1
/* 8006C29C  38 80 00 07 */	li r4, 7
/* 8006C2A0  38 A0 00 01 */	li r5, 1
/* 8006C2A4  38 C0 00 04 */	li r6, 4
/* 8006C2A8  38 E0 00 07 */	li r7, 7
/* 8006C2AC  48 2F 2F BD */	bl GXSetTevAlphaIn
/* 8006C2B0  38 60 00 01 */	li r3, 1
/* 8006C2B4  38 80 00 00 */	li r4, 0
/* 8006C2B8  38 A0 00 00 */	li r5, 0
/* 8006C2BC  38 C0 00 00 */	li r6, 0
/* 8006C2C0  38 E0 00 00 */	li r7, 0
/* 8006C2C4  39 00 00 00 */	li r8, 0
/* 8006C2C8  48 2F 30 4D */	bl GXSetTevAlphaOp
/* 8006C2CC  38 60 00 01 */	li r3, 1
/* 8006C2D0  38 80 00 04 */	li r4, 4
/* 8006C2D4  38 A0 00 05 */	li r5, 5
/* 8006C2D8  38 C0 00 03 */	li r6, 3
/* 8006C2DC  48 2F 39 15 */	bl GXSetBlendMode
/* 8006C2E0  38 60 00 07 */	li r3, 7
/* 8006C2E4  38 80 00 00 */	li r4, 0
/* 8006C2E8  38 A0 00 01 */	li r5, 1
/* 8006C2EC  38 C0 00 07 */	li r6, 7
/* 8006C2F0  38 E0 00 00 */	li r7, 0
/* 8006C2F4  48 2F 33 31 */	bl GXSetAlphaCompare
/* 8006C2F8  38 60 00 01 */	li r3, 1
/* 8006C2FC  48 2F 39 D5 */	bl GXSetZCompLoc
/* 8006C300  38 60 00 01 */	li r3, 1
/* 8006C304  38 80 00 03 */	li r4, 3
/* 8006C308  38 A0 00 00 */	li r5, 0
/* 8006C30C  48 2F 39 91 */	bl GXSetZMode
/* 8006C310  38 60 00 00 */	li r3, 0
/* 8006C314  48 2F 06 71 */	bl GXSetCullMode
/* 8006C318  38 60 00 01 */	li r3, 1
/* 8006C31C  48 2F 42 B5 */	bl GXSetClipMode
/* 8006C320  38 60 00 00 */	li r3, 0
/* 8006C324  48 2F 2D B1 */	bl GXSetNumIndStages
/* 8006C328  3B 80 00 00 */	li r28, 0
/* 8006C32C  3B 60 00 00 */	li r27, 0
lbl_8006C330:
/* 8006C330  3B 5B 00 14 */	addi r26, r27, 0x14
/* 8006C334  7F 5D D2 14 */	add r26, r29, r26
/* 8006C338  83 3E 00 00 */	lwz r25, 0(r30)
/* 8006C33C  C3 DA 00 2C */	lfs f30, 0x2c(r26)
/* 8006C340  88 1A 00 00 */	lbz r0, 0(r26)
/* 8006C344  28 00 00 00 */	cmplwi r0, 0
/* 8006C348  41 82 04 00 */	beq lbl_8006C748
/* 8006C34C  28 00 00 01 */	cmplwi r0, 1
/* 8006C350  41 82 03 F8 */	beq lbl_8006C748
/* 8006C354  28 00 00 0B */	cmplwi r0, 0xb
/* 8006C358  41 82 03 F0 */	beq lbl_8006C748
/* 8006C35C  38 61 00 20 */	addi r3, r1, 0x20
/* 8006C360  38 9A 00 10 */	addi r4, r26, 0x10
/* 8006C364  38 BA 00 04 */	addi r5, r26, 4
/* 8006C368  48 1F A7 7D */	bl __pl__4cXyzCFRC3Vec
/* 8006C36C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8006C370  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8006C374  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8006C378  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8006C37C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8006C380  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8006C384  38 79 00 D8 */	addi r3, r25, 0xd8
/* 8006C388  38 81 00 2C */	addi r4, r1, 0x2c
/* 8006C38C  48 2D B0 11 */	bl PSVECSquareDistance
/* 8006C390  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006C394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006C398  40 81 00 58 */	ble lbl_8006C3F0
/* 8006C39C  FC 00 08 34 */	frsqrte f0, f1
/* 8006C3A0  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006C3A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8006C3A8  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006C3AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8006C3B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8006C3B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8006C3B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8006C3BC  FC 44 00 32 */	fmul f2, f4, f0
/* 8006C3C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8006C3C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8006C3C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8006C3CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8006C3D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8006C3D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8006C3D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8006C3DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8006C3E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8006C3E4  FC 21 00 32 */	fmul f1, f1, f0
/* 8006C3E8  FC 20 08 18 */	frsp f1, f1
/* 8006C3EC  48 00 00 88 */	b lbl_8006C474
lbl_8006C3F0:
/* 8006C3F0  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8006C3F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006C3F8  40 80 00 10 */	bge lbl_8006C408
/* 8006C3FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8006C400  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8006C404  48 00 00 70 */	b lbl_8006C474
lbl_8006C408:
/* 8006C408  D0 21 00 08 */	stfs f1, 8(r1)
/* 8006C40C  80 81 00 08 */	lwz r4, 8(r1)
/* 8006C410  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8006C414  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006C418  7C 03 00 00 */	cmpw r3, r0
/* 8006C41C  41 82 00 14 */	beq lbl_8006C430
/* 8006C420  40 80 00 40 */	bge lbl_8006C460
/* 8006C424  2C 03 00 00 */	cmpwi r3, 0
/* 8006C428  41 82 00 20 */	beq lbl_8006C448
/* 8006C42C  48 00 00 34 */	b lbl_8006C460
lbl_8006C430:
/* 8006C430  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006C434  41 82 00 0C */	beq lbl_8006C440
/* 8006C438  38 00 00 01 */	li r0, 1
/* 8006C43C  48 00 00 28 */	b lbl_8006C464
lbl_8006C440:
/* 8006C440  38 00 00 02 */	li r0, 2
/* 8006C444  48 00 00 20 */	b lbl_8006C464
lbl_8006C448:
/* 8006C448  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006C44C  41 82 00 0C */	beq lbl_8006C458
/* 8006C450  38 00 00 05 */	li r0, 5
/* 8006C454  48 00 00 10 */	b lbl_8006C464
lbl_8006C458:
/* 8006C458  38 00 00 03 */	li r0, 3
/* 8006C45C  48 00 00 08 */	b lbl_8006C464
lbl_8006C460:
/* 8006C460  38 00 00 04 */	li r0, 4
lbl_8006C464:
/* 8006C464  2C 00 00 01 */	cmpwi r0, 1
/* 8006C468  40 82 00 0C */	bne lbl_8006C474
/* 8006C46C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8006C470  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8006C474:
/* 8006C474  C0 02 87 F8 */	lfs f0, lit_4111(r2)
/* 8006C478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006C47C  40 80 00 48 */	bge lbl_8006C4C4
/* 8006C480  C0 42 8A B8 */	lfs f2, lit_8213(r2)
/* 8006C484  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8006C488  40 80 00 0C */	bge lbl_8006C494
/* 8006C48C  C0 82 87 B8 */	lfs f4, lit_3954(r2)
/* 8006C490  48 00 00 38 */	b lbl_8006C4C8
lbl_8006C494:
/* 8006C494  EC 01 10 28 */	fsubs f0, f1, f2
/* 8006C498  EC 80 10 24 */	fdivs f4, f0, f2
/* 8006C49C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006C4A0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8006C4A4  40 80 00 0C */	bge lbl_8006C4B0
/* 8006C4A8  FC 80 00 90 */	fmr f4, f0
/* 8006C4AC  48 00 00 1C */	b lbl_8006C4C8
lbl_8006C4B0:
/* 8006C4B0  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006C4B4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8006C4B8  40 81 00 10 */	ble lbl_8006C4C8
/* 8006C4BC  FC 80 00 90 */	fmr f4, f0
/* 8006C4C0  48 00 00 08 */	b lbl_8006C4C8
lbl_8006C4C4:
/* 8006C4C4  C0 82 88 14 */	lfs f4, lit_4354(r2)
lbl_8006C4C8:
/* 8006C4C8  C0 5A 00 28 */	lfs f2, 0x28(r26)
/* 8006C4CC  C0 3A 00 24 */	lfs f1, 0x24(r26)
/* 8006C4D0  C0 7F 0F 40 */	lfs f3, 0xf40(r31)
/* 8006C4D4  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8006C4D8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8006C4DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006C4E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006C4E4  EC 24 00 32 */	fmuls f1, f4, f0
/* 8006C4E8  88 1A 00 00 */	lbz r0, 0(r26)
/* 8006C4EC  28 00 00 00 */	cmplwi r0, 0
/* 8006C4F0  41 82 02 58 */	beq lbl_8006C748
/* 8006C4F4  C0 02 89 E8 */	lfs f0, lit_6721(r2)
/* 8006C4F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006C4FC  4C 40 13 82 */	cror 2, 0, 2
/* 8006C500  41 82 02 48 */	beq lbl_8006C748
/* 8006C504  C0 02 88 4C */	lfs f0, lit_4368(r2)
/* 8006C508  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006C50C  FC 00 00 1E */	fctiwz f0, f0
/* 8006C510  D8 01 01 90 */	stfd f0, 0x190(r1)
/* 8006C514  80 01 01 94 */	lwz r0, 0x194(r1)
/* 8006C518  98 01 00 1F */	stb r0, 0x1f(r1)
/* 8006C51C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006C520  90 01 00 0C */	stw r0, 0xc(r1)
/* 8006C524  38 60 00 01 */	li r3, 1
/* 8006C528  38 81 00 0C */	addi r4, r1, 0xc
/* 8006C52C  48 2F 2E 51 */	bl GXSetTevColor
/* 8006C530  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8006C534  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8006C538  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8006C53C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8006C540  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8006C544  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8006C548  FF E0 F0 50 */	fneg f31, f30
/* 8006C54C  D3 E1 00 44 */	stfs f31, 0x44(r1)
/* 8006C550  D3 C1 00 48 */	stfs f30, 0x48(r1)
/* 8006C554  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006C558  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8006C55C  38 61 01 5C */	addi r3, r1, 0x15c
/* 8006C560  38 81 00 44 */	addi r4, r1, 0x44
/* 8006C564  38 A1 00 38 */	addi r5, r1, 0x38
/* 8006C568  48 2D A8 05 */	bl PSMTXMultVec
/* 8006C56C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8006C570  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8006C574  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C578  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8006C57C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8006C580  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8006C584  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C588  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8006C58C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8006C590  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8006C594  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C598  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8006C59C  D3 C1 00 44 */	stfs f30, 0x44(r1)
/* 8006C5A0  D3 C1 00 48 */	stfs f30, 0x48(r1)
/* 8006C5A4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006C5A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8006C5AC  38 61 01 5C */	addi r3, r1, 0x15c
/* 8006C5B0  38 81 00 44 */	addi r4, r1, 0x44
/* 8006C5B4  38 A1 00 38 */	addi r5, r1, 0x38
/* 8006C5B8  48 2D A7 B5 */	bl PSMTXMultVec
/* 8006C5BC  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8006C5C0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8006C5C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C5C8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8006C5CC  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8006C5D0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8006C5D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C5D8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8006C5DC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8006C5E0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8006C5E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C5E8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8006C5EC  D3 C1 00 44 */	stfs f30, 0x44(r1)
/* 8006C5F0  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 8006C5F4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006C5F8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8006C5FC  38 61 01 5C */	addi r3, r1, 0x15c
/* 8006C600  38 81 00 44 */	addi r4, r1, 0x44
/* 8006C604  38 A1 00 38 */	addi r5, r1, 0x38
/* 8006C608  48 2D A7 65 */	bl PSMTXMultVec
/* 8006C60C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8006C610  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8006C614  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C618  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8006C61C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8006C620  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8006C624  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C628  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8006C62C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8006C630  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8006C634  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C638  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8006C63C  D3 E1 00 44 */	stfs f31, 0x44(r1)
/* 8006C640  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 8006C644  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006C648  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8006C64C  38 61 01 5C */	addi r3, r1, 0x15c
/* 8006C650  38 81 00 44 */	addi r4, r1, 0x44
/* 8006C654  38 A1 00 38 */	addi r5, r1, 0x38
/* 8006C658  48 2D A7 15 */	bl PSMTXMultVec
/* 8006C65C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8006C660  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8006C664  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C668  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8006C66C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8006C670  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8006C674  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C678  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8006C67C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8006C680  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8006C684  EC 01 00 2A */	fadds f0, f1, f0
/* 8006C688  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8006C68C  38 60 00 80 */	li r3, 0x80
/* 8006C690  38 80 00 00 */	li r4, 0
/* 8006C694  38 A0 00 04 */	li r5, 4
/* 8006C698  48 2F 00 CD */	bl GXBegin
/* 8006C69C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8006C6A0  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8006C6A4  D0 04 80 00 */	stfs f0, 0x8000(r4)
/* 8006C6A8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8006C6AC  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C6B0  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8006C6B4  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C6B8  38 60 00 00 */	li r3, 0
/* 8006C6BC  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006C6C0  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006C6C4  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006C6C8  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006C6CC  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8006C6D0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C6D4  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8006C6D8  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C6DC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8006C6E0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C6E4  38 00 00 FF */	li r0, 0xff
/* 8006C6E8  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006C6EC  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006C6F0  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006C6F4  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006C6F8  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8006C6FC  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C700  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8006C704  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C708  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8006C70C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C710  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006C714  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006C718  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006C71C  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006C720  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8006C724  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C728  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8006C72C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C730  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8006C734  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006C738  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006C73C  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006C740  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006C744  B0 04 80 00 */	sth r0, -0x8000(r4)
lbl_8006C748:
/* 8006C748  3B 9C 00 01 */	addi r28, r28, 1
/* 8006C74C  2C 1C 07 D0 */	cmpwi r28, 0x7d0
/* 8006C750  3B 7B 00 30 */	addi r27, r27, 0x30
/* 8006C754  41 80 FB DC */	blt lbl_8006C330
/* 8006C758  38 60 00 00 */	li r3, 0
/* 8006C75C  48 2F 3E 75 */	bl GXSetClipMode
/* 8006C760  38 00 00 00 */	li r0, 0
/* 8006C764  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
lbl_8006C768:
/* 8006C768  E3 E1 01 D8 */	psq_l f31, 472(r1), 0, 0 /* qr0 */
/* 8006C76C  CB E1 01 D0 */	lfd f31, 0x1d0(r1)
/* 8006C770  E3 C1 01 C8 */	psq_l f30, 456(r1), 0, 0 /* qr0 */
/* 8006C774  CB C1 01 C0 */	lfd f30, 0x1c0(r1)
/* 8006C778  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 8006C77C  48 2F 5A 9D */	bl _restgpr_25
/* 8006C780  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 8006C784  7C 08 03 A6 */	mtlr r0
/* 8006C788  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 8006C78C  4E 80 00 20 */	blr 
