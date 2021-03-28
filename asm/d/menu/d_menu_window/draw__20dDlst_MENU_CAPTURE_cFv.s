lbl_801FDFCC:
/* 801FDFCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801FDFD0  7C 08 02 A6 */	mflr r0
/* 801FDFD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 801FDFD8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801FDFDC  7C 7F 1B 78 */	mr r31, r3
/* 801FDFE0  88 03 00 04 */	lbz r0, 4(r3)
/* 801FDFE4  28 00 00 01 */	cmplwi r0, 1
/* 801FDFE8  40 82 00 5C */	bne lbl_801FE044
/* 801FDFEC  38 00 00 03 */	li r0, 3
/* 801FDFF0  98 1F 00 04 */	stb r0, 4(r31)
/* 801FDFF4  38 00 00 01 */	li r0, 1
/* 801FDFF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FDFFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801FE000  98 03 5E B5 */	stb r0, 0x5eb5(r3)
/* 801FE004  38 60 00 00 */	li r3, 0
/* 801FE008  38 80 00 00 */	li r4, 0
/* 801FE00C  38 A0 02 60 */	li r5, 0x260
/* 801FE010  38 C0 01 C0 */	li r6, 0x1c0
/* 801FE014  48 15 EA 6D */	bl GXSetTexCopySrc
/* 801FE018  38 60 01 30 */	li r3, 0x130
/* 801FE01C  38 80 00 E0 */	li r4, 0xe0
/* 801FE020  80 AD 86 4C */	lwz r5, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 801FE024  88 A5 00 00 */	lbz r5, 0(r5)
/* 801FE028  38 C0 00 01 */	li r6, 1
/* 801FE02C  48 15 EB 05 */	bl GXSetTexCopyDst
/* 801FE030  80 6D 86 50 */	lwz r3, mFrameBufferTex__13mDoGph_gInf_c(r13)
/* 801FE034  38 80 00 00 */	li r4, 0
/* 801FE038  48 15 F4 35 */	bl GXCopyTex
/* 801FE03C  48 15 E3 39 */	bl GXPixModeSync
/* 801FE040  48 00 02 94 */	b lbl_801FE2D4
lbl_801FE044:
/* 801FE044  38 61 00 14 */	addi r3, r1, 0x14
/* 801FE048  80 8D 86 50 */	lwz r4, mFrameBufferTex__13mDoGph_gInf_c(r13)
/* 801FE04C  38 A0 01 30 */	li r5, 0x130
/* 801FE050  38 C0 00 E0 */	li r6, 0xe0
/* 801FE054  80 ED 86 4C */	lwz r7, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 801FE058  88 E7 00 00 */	lbz r7, 0(r7)
/* 801FE05C  39 00 00 00 */	li r8, 0
/* 801FE060  39 20 00 00 */	li r9, 0
/* 801FE064  39 40 00 00 */	li r10, 0
/* 801FE068  48 15 FD D9 */	bl GXInitTexObj
/* 801FE06C  38 61 00 14 */	addi r3, r1, 0x14
/* 801FE070  38 80 00 01 */	li r4, 1
/* 801FE074  38 A0 00 01 */	li r5, 1
/* 801FE078  C0 22 AA C0 */	lfs f1, lit_4152(r2)
/* 801FE07C  FC 40 08 90 */	fmr f2, f1
/* 801FE080  FC 60 08 90 */	fmr f3, f1
/* 801FE084  38 C0 00 00 */	li r6, 0
/* 801FE088  38 E0 00 00 */	li r7, 0
/* 801FE08C  39 00 00 00 */	li r8, 0
/* 801FE090  48 16 00 45 */	bl GXInitTexObjLOD
/* 801FE094  38 61 00 14 */	addi r3, r1, 0x14
/* 801FE098  38 80 00 00 */	li r4, 0
/* 801FE09C  48 16 03 79 */	bl GXLoadTexObj
/* 801FE0A0  38 60 00 00 */	li r3, 0
/* 801FE0A4  48 15 FA 8D */	bl GXSetNumChans
/* 801FE0A8  38 60 00 01 */	li r3, 1
/* 801FE0AC  48 15 DD 51 */	bl GXSetNumTexGens
/* 801FE0B0  38 60 00 00 */	li r3, 0
/* 801FE0B4  38 80 00 01 */	li r4, 1
/* 801FE0B8  38 A0 00 04 */	li r5, 4
/* 801FE0BC  38 C0 00 3C */	li r6, 0x3c
/* 801FE0C0  38 E0 00 00 */	li r7, 0
/* 801FE0C4  39 00 00 7D */	li r8, 0x7d
/* 801FE0C8  48 15 DA B5 */	bl GXSetTexCoordGen2
/* 801FE0CC  38 60 00 01 */	li r3, 1
/* 801FE0D0  48 16 17 C1 */	bl GXSetNumTevStages
/* 801FE0D4  38 60 00 00 */	li r3, 0
/* 801FE0D8  38 80 00 00 */	li r4, 0
/* 801FE0DC  38 A0 00 00 */	li r5, 0
/* 801FE0E0  38 C0 00 FF */	li r6, 0xff
/* 801FE0E4  48 16 16 11 */	bl GXSetTevOrder
/* 801FE0E8  38 60 00 00 */	li r3, 0
/* 801FE0EC  38 80 00 0F */	li r4, 0xf
/* 801FE0F0  38 A0 00 0F */	li r5, 0xf
/* 801FE0F4  38 C0 00 0F */	li r6, 0xf
/* 801FE0F8  38 E0 00 08 */	li r7, 8
/* 801FE0FC  48 16 11 29 */	bl GXSetTevColorIn
/* 801FE100  38 60 00 00 */	li r3, 0
/* 801FE104  38 80 00 00 */	li r4, 0
/* 801FE108  38 A0 00 00 */	li r5, 0
/* 801FE10C  38 C0 00 00 */	li r6, 0
/* 801FE110  38 E0 00 01 */	li r7, 1
/* 801FE114  39 00 00 00 */	li r8, 0
/* 801FE118  48 16 11 95 */	bl GXSetTevColorOp
/* 801FE11C  80 02 D1 88 */	lwz r0, lit_4115(r2)
/* 801FE120  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FE124  88 1F 00 05 */	lbz r0, 5(r31)
/* 801FE128  98 01 00 13 */	stb r0, 0x13(r1)
/* 801FE12C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801FE130  90 01 00 0C */	stw r0, 0xc(r1)
/* 801FE134  38 60 00 01 */	li r3, 1
/* 801FE138  38 81 00 0C */	addi r4, r1, 0xc
/* 801FE13C  48 16 12 41 */	bl GXSetTevColor
/* 801FE140  38 60 00 00 */	li r3, 0
/* 801FE144  38 80 00 07 */	li r4, 7
/* 801FE148  38 A0 00 07 */	li r5, 7
/* 801FE14C  38 C0 00 07 */	li r6, 7
/* 801FE150  38 E0 00 01 */	li r7, 1
/* 801FE154  48 16 11 15 */	bl GXSetTevAlphaIn
/* 801FE158  38 60 00 00 */	li r3, 0
/* 801FE15C  38 80 00 00 */	li r4, 0
/* 801FE160  38 A0 00 00 */	li r5, 0
/* 801FE164  38 C0 00 00 */	li r6, 0
/* 801FE168  38 E0 00 01 */	li r7, 1
/* 801FE16C  39 00 00 00 */	li r8, 0
/* 801FE170  48 16 11 A5 */	bl GXSetTevAlphaOp
/* 801FE174  38 60 00 01 */	li r3, 1
/* 801FE178  48 16 1B 59 */	bl GXSetZCompLoc
/* 801FE17C  38 60 00 00 */	li r3, 0
/* 801FE180  38 80 00 07 */	li r4, 7
/* 801FE184  38 A0 00 00 */	li r5, 0
/* 801FE188  48 16 1B 15 */	bl GXSetZMode
/* 801FE18C  38 60 00 01 */	li r3, 1
/* 801FE190  38 80 00 04 */	li r4, 4
/* 801FE194  38 A0 00 05 */	li r5, 5
/* 801FE198  38 C0 00 07 */	li r6, 7
/* 801FE19C  48 16 1A 55 */	bl GXSetBlendMode
/* 801FE1A0  38 60 00 07 */	li r3, 7
/* 801FE1A4  38 80 00 00 */	li r4, 0
/* 801FE1A8  38 A0 00 01 */	li r5, 1
/* 801FE1AC  38 C0 00 07 */	li r6, 7
/* 801FE1B0  38 E0 00 00 */	li r7, 0
/* 801FE1B4  48 16 14 71 */	bl GXSetAlphaCompare
/* 801FE1B8  80 0D 80 80 */	lwz r0, g_clearColor(r13)
/* 801FE1BC  90 01 00 08 */	stw r0, 8(r1)
/* 801FE1C0  38 60 00 00 */	li r3, 0
/* 801FE1C4  C0 22 AA C0 */	lfs f1, lit_4152(r2)
/* 801FE1C8  FC 40 08 90 */	fmr f2, f1
/* 801FE1CC  FC 60 08 90 */	fmr f3, f1
/* 801FE1D0  FC 80 08 90 */	fmr f4, f1
/* 801FE1D4  38 81 00 08 */	addi r4, r1, 8
/* 801FE1D8  48 16 16 E1 */	bl GXSetFog
/* 801FE1DC  38 60 00 00 */	li r3, 0
/* 801FE1E0  38 80 00 00 */	li r4, 0
/* 801FE1E4  38 A0 00 00 */	li r5, 0
/* 801FE1E8  48 16 18 E5 */	bl GXSetFogRangeAdj
/* 801FE1EC  38 60 00 00 */	li r3, 0
/* 801FE1F0  48 15 E7 95 */	bl GXSetCullMode
/* 801FE1F4  38 60 00 01 */	li r3, 1
/* 801FE1F8  48 16 1B E1 */	bl GXSetDither
/* 801FE1FC  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha
/* 801FE200  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l
/* 801FE204  38 80 00 00 */	li r4, 0
/* 801FE208  48 16 20 45 */	bl GXLoadPosMtxImm
/* 801FE20C  38 60 00 00 */	li r3, 0
/* 801FE210  48 16 20 DD */	bl GXSetCurrentMtx
/* 801FE214  48 15 D3 79 */	bl GXClearVtxDesc
/* 801FE218  38 60 00 09 */	li r3, 9
/* 801FE21C  38 80 00 01 */	li r4, 1
/* 801FE220  48 15 CC 99 */	bl GXSetVtxDesc
/* 801FE224  38 60 00 0D */	li r3, 0xd
/* 801FE228  38 80 00 01 */	li r4, 1
/* 801FE22C  48 15 CC 8D */	bl GXSetVtxDesc
/* 801FE230  38 60 00 00 */	li r3, 0
/* 801FE234  38 80 00 09 */	li r4, 9
/* 801FE238  38 A0 00 01 */	li r5, 1
/* 801FE23C  38 C0 00 03 */	li r6, 3
/* 801FE240  38 E0 00 00 */	li r7, 0
/* 801FE244  48 15 D3 81 */	bl GXSetVtxAttrFmt
/* 801FE248  38 60 00 00 */	li r3, 0
/* 801FE24C  38 80 00 0D */	li r4, 0xd
/* 801FE250  38 A0 00 01 */	li r5, 1
/* 801FE254  38 C0 00 01 */	li r6, 1
/* 801FE258  38 E0 00 00 */	li r7, 0
/* 801FE25C  48 15 D3 69 */	bl GXSetVtxAttrFmt
/* 801FE260  38 60 00 80 */	li r3, 0x80
/* 801FE264  38 80 00 00 */	li r4, 0
/* 801FE268  38 A0 00 04 */	li r5, 4
/* 801FE26C  48 15 E4 F9 */	bl GXBegin
/* 801FE270  38 A0 00 00 */	li r5, 0
/* 801FE274  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 801FE278  B0 A4 80 00 */	sth r5, 0x8000(r4)
/* 801FE27C  B0 A4 80 00 */	sth r5, -0x8000(r4)
/* 801FE280  B0 A4 80 00 */	sth r5, -0x8000(r4)
/* 801FE284  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801FE288  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801FE28C  38 00 02 60 */	li r0, 0x260
/* 801FE290  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 801FE294  B0 A4 80 00 */	sth r5, -0x8000(r4)
/* 801FE298  B0 A4 80 00 */	sth r5, -0x8000(r4)
/* 801FE29C  38 60 00 01 */	li r3, 1
/* 801FE2A0  98 64 80 00 */	stb r3, -0x8000(r4)
/* 801FE2A4  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801FE2A8  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 801FE2AC  38 00 01 C0 */	li r0, 0x1c0
/* 801FE2B0  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 801FE2B4  B0 A4 80 00 */	sth r5, -0x8000(r4)
/* 801FE2B8  98 64 80 00 */	stb r3, -0x8000(r4)
/* 801FE2BC  98 64 80 00 */	stb r3, -0x8000(r4)
/* 801FE2C0  B0 A4 80 00 */	sth r5, -0x8000(r4)
/* 801FE2C4  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 801FE2C8  B0 A4 80 00 */	sth r5, -0x8000(r4)
/* 801FE2CC  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801FE2D0  98 64 80 00 */	stb r3, -0x8000(r4)
lbl_801FE2D4:
/* 801FE2D4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801FE2D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801FE2DC  7C 08 03 A6 */	mtlr r0
/* 801FE2E0  38 21 00 40 */	addi r1, r1, 0x40
/* 801FE2E4  4E 80 00 20 */	blr 
