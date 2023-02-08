lbl_8019ACF8:
/* 8019ACF8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8019ACFC  7C 08 02 A6 */	mflr r0
/* 8019AD00  90 01 00 74 */	stw r0, 0x74(r1)
/* 8019AD04  38 60 00 00 */	li r3, 0
/* 8019AD08  38 80 00 00 */	li r4, 0
/* 8019AD0C  38 A0 02 60 */	li r5, 0x260
/* 8019AD10  38 C0 01 C0 */	li r6, 0x1c0
/* 8019AD14  48 1C 1D 6D */	bl GXSetTexCopySrc
/* 8019AD18  38 60 01 30 */	li r3, 0x130
/* 8019AD1C  38 80 00 E0 */	li r4, 0xe0
/* 8019AD20  38 A0 00 04 */	li r5, 4
/* 8019AD24  38 C0 00 01 */	li r6, 1
/* 8019AD28  48 1C 1E 09 */	bl GXSetTexCopyDst
/* 8019AD2C  80 6D 86 58 */	lwz r3, mZbufferTex__13mDoGph_gInf_c(r13)
/* 8019AD30  38 80 00 00 */	li r4, 0
/* 8019AD34  48 1C 27 39 */	bl GXCopyTex
/* 8019AD38  48 1C 16 3D */	bl GXPixModeSync
/* 8019AD3C  38 61 00 0C */	addi r3, r1, 0xc
/* 8019AD40  80 8D 86 50 */	lwz r4, mFrameBufferTex__13mDoGph_gInf_c(r13)
/* 8019AD44  38 A0 01 30 */	li r5, 0x130
/* 8019AD48  38 C0 00 E0 */	li r6, 0xe0
/* 8019AD4C  80 ED 86 4C */	lwz r7, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 8019AD50  88 E7 00 00 */	lbz r7, 0(r7)
/* 8019AD54  39 00 00 00 */	li r8, 0
/* 8019AD58  39 20 00 00 */	li r9, 0
/* 8019AD5C  39 40 00 00 */	li r10, 0
/* 8019AD60  48 1C 30 E1 */	bl GXInitTexObj
/* 8019AD64  38 61 00 0C */	addi r3, r1, 0xc
/* 8019AD68  38 80 00 01 */	li r4, 1
/* 8019AD6C  38 A0 00 01 */	li r5, 1
/* 8019AD70  C0 22 A1 80 */	lfs f1, lit_3868(r2)
/* 8019AD74  FC 40 08 90 */	fmr f2, f1
/* 8019AD78  FC 60 08 90 */	fmr f3, f1
/* 8019AD7C  38 C0 00 00 */	li r6, 0
/* 8019AD80  38 E0 00 00 */	li r7, 0
/* 8019AD84  39 00 00 00 */	li r8, 0
/* 8019AD88  48 1C 33 4D */	bl GXInitTexObjLOD
/* 8019AD8C  38 61 00 0C */	addi r3, r1, 0xc
/* 8019AD90  38 80 00 00 */	li r4, 0
/* 8019AD94  48 1C 36 81 */	bl GXLoadTexObj
/* 8019AD98  38 60 00 00 */	li r3, 0
/* 8019AD9C  48 1C 2D 95 */	bl GXSetNumChans
/* 8019ADA0  38 60 00 01 */	li r3, 1
/* 8019ADA4  48 1C 10 59 */	bl GXSetNumTexGens
/* 8019ADA8  38 60 00 00 */	li r3, 0
/* 8019ADAC  38 80 00 01 */	li r4, 1
/* 8019ADB0  38 A0 00 04 */	li r5, 4
/* 8019ADB4  38 C0 00 3C */	li r6, 0x3c
/* 8019ADB8  38 E0 00 00 */	li r7, 0
/* 8019ADBC  39 00 00 7D */	li r8, 0x7d
/* 8019ADC0  48 1C 0D BD */	bl GXSetTexCoordGen2
/* 8019ADC4  38 60 00 01 */	li r3, 1
/* 8019ADC8  48 1C 4A C9 */	bl GXSetNumTevStages
/* 8019ADCC  38 60 00 00 */	li r3, 0
/* 8019ADD0  38 80 00 00 */	li r4, 0
/* 8019ADD4  38 A0 00 00 */	li r5, 0
/* 8019ADD8  38 C0 00 FF */	li r6, 0xff
/* 8019ADDC  48 1C 49 19 */	bl GXSetTevOrder
/* 8019ADE0  38 60 00 00 */	li r3, 0
/* 8019ADE4  38 80 00 0F */	li r4, 0xf
/* 8019ADE8  38 A0 00 0F */	li r5, 0xf
/* 8019ADEC  38 C0 00 0F */	li r6, 0xf
/* 8019ADF0  38 E0 00 08 */	li r7, 8
/* 8019ADF4  48 1C 44 31 */	bl GXSetTevColorIn
/* 8019ADF8  38 60 00 00 */	li r3, 0
/* 8019ADFC  38 80 00 00 */	li r4, 0
/* 8019AE00  38 A0 00 00 */	li r5, 0
/* 8019AE04  38 C0 00 00 */	li r6, 0
/* 8019AE08  38 E0 00 01 */	li r7, 1
/* 8019AE0C  39 00 00 00 */	li r8, 0
/* 8019AE10  48 1C 44 9D */	bl GXSetTevColorOp
/* 8019AE14  38 60 00 00 */	li r3, 0
/* 8019AE18  38 80 00 07 */	li r4, 7
/* 8019AE1C  38 A0 00 07 */	li r5, 7
/* 8019AE20  38 C0 00 07 */	li r6, 7
/* 8019AE24  38 E0 00 07 */	li r7, 7
/* 8019AE28  48 1C 44 41 */	bl GXSetTevAlphaIn
/* 8019AE2C  38 60 00 00 */	li r3, 0
/* 8019AE30  38 80 00 00 */	li r4, 0
/* 8019AE34  38 A0 00 00 */	li r5, 0
/* 8019AE38  38 C0 00 00 */	li r6, 0
/* 8019AE3C  38 E0 00 01 */	li r7, 1
/* 8019AE40  39 00 00 00 */	li r8, 0
/* 8019AE44  48 1C 44 D1 */	bl GXSetTevAlphaOp
/* 8019AE48  38 60 00 01 */	li r3, 1
/* 8019AE4C  48 1C 4E 85 */	bl GXSetZCompLoc
/* 8019AE50  38 60 00 00 */	li r3, 0
/* 8019AE54  38 80 00 07 */	li r4, 7
/* 8019AE58  38 A0 00 00 */	li r5, 0
/* 8019AE5C  48 1C 4E 41 */	bl GXSetZMode
/* 8019AE60  38 60 00 00 */	li r3, 0
/* 8019AE64  38 80 00 00 */	li r4, 0
/* 8019AE68  38 A0 00 00 */	li r5, 0
/* 8019AE6C  38 C0 00 07 */	li r6, 7
/* 8019AE70  48 1C 4D 81 */	bl GXSetBlendMode
/* 8019AE74  38 60 00 07 */	li r3, 7
/* 8019AE78  38 80 00 00 */	li r4, 0
/* 8019AE7C  38 A0 00 01 */	li r5, 1
/* 8019AE80  38 C0 00 07 */	li r6, 7
/* 8019AE84  38 E0 00 00 */	li r7, 0
/* 8019AE88  48 1C 47 9D */	bl GXSetAlphaCompare
/* 8019AE8C  80 0D 80 80 */	lwz r0, g_clearColor(r13)
/* 8019AE90  90 01 00 08 */	stw r0, 8(r1)
/* 8019AE94  38 60 00 00 */	li r3, 0
/* 8019AE98  C0 22 A1 80 */	lfs f1, lit_3868(r2)
/* 8019AE9C  FC 40 08 90 */	fmr f2, f1
/* 8019AEA0  FC 60 08 90 */	fmr f3, f1
/* 8019AEA4  FC 80 08 90 */	fmr f4, f1
/* 8019AEA8  38 81 00 08 */	addi r4, r1, 8
/* 8019AEAC  48 1C 4A 0D */	bl GXSetFog
/* 8019AEB0  38 60 00 00 */	li r3, 0
/* 8019AEB4  38 80 00 00 */	li r4, 0
/* 8019AEB8  38 A0 00 00 */	li r5, 0
/* 8019AEBC  48 1C 4C 11 */	bl GXSetFogRangeAdj
/* 8019AEC0  38 60 00 00 */	li r3, 0
/* 8019AEC4  48 1C 1A C1 */	bl GXSetCullMode
/* 8019AEC8  38 60 00 01 */	li r3, 1
/* 8019AECC  48 1C 4F 0D */	bl GXSetDither
/* 8019AED0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8019AED4  C0 22 A1 80 */	lfs f1, lit_3868(r2)
/* 8019AED8  C0 42 A1 84 */	lfs f2, lit_3869(r2)
/* 8019AEDC  FC 60 08 90 */	fmr f3, f1
/* 8019AEE0  FC 80 10 90 */	fmr f4, f2
/* 8019AEE4  FC A0 08 90 */	fmr f5, f1
/* 8019AEE8  C0 C2 A1 88 */	lfs f6, lit_3870(r2)
/* 8019AEEC  48 1A C1 0D */	bl C_MTXOrtho
/* 8019AEF0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8019AEF4  38 80 00 01 */	li r4, 1
/* 8019AEF8  48 1C 51 DD */	bl GXSetProjection
/* 8019AEFC  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 8019AF00  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 8019AF04  38 80 00 00 */	li r4, 0
/* 8019AF08  48 1C 53 45 */	bl GXLoadPosMtxImm
/* 8019AF0C  38 60 00 00 */	li r3, 0
/* 8019AF10  48 1C 53 DD */	bl GXSetCurrentMtx
/* 8019AF14  48 1C 06 79 */	bl GXClearVtxDesc
/* 8019AF18  38 60 00 09 */	li r3, 9
/* 8019AF1C  38 80 00 01 */	li r4, 1
/* 8019AF20  48 1B FF 99 */	bl GXSetVtxDesc
/* 8019AF24  38 60 00 0D */	li r3, 0xd
/* 8019AF28  38 80 00 01 */	li r4, 1
/* 8019AF2C  48 1B FF 8D */	bl GXSetVtxDesc
/* 8019AF30  38 60 00 00 */	li r3, 0
/* 8019AF34  38 80 00 09 */	li r4, 9
/* 8019AF38  38 A0 00 01 */	li r5, 1
/* 8019AF3C  38 C0 00 01 */	li r6, 1
/* 8019AF40  38 E0 00 00 */	li r7, 0
/* 8019AF44  48 1C 06 81 */	bl GXSetVtxAttrFmt
/* 8019AF48  38 60 00 00 */	li r3, 0
/* 8019AF4C  38 80 00 0D */	li r4, 0xd
/* 8019AF50  38 A0 00 01 */	li r5, 1
/* 8019AF54  38 C0 00 01 */	li r6, 1
/* 8019AF58  38 E0 00 00 */	li r7, 0
/* 8019AF5C  48 1C 06 69 */	bl GXSetVtxAttrFmt
/* 8019AF60  38 60 00 80 */	li r3, 0x80
/* 8019AF64  38 80 00 00 */	li r4, 0
/* 8019AF68  38 A0 00 04 */	li r5, 4
/* 8019AF6C  48 1C 17 F9 */	bl GXBegin
/* 8019AF70  38 A0 00 00 */	li r5, 0
/* 8019AF74  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8019AF78  98 A4 80 00 */	stb r5, 0x8000(r4)  /* 0xCC008000@l */
/* 8019AF7C  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8019AF80  38 60 FF FB */	li r3, -5
/* 8019AF84  98 64 80 00 */	stb r3, -0x8000(r4)
/* 8019AF88  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8019AF8C  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8019AF90  38 00 00 01 */	li r0, 1
/* 8019AF94  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8019AF98  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8019AF9C  98 64 80 00 */	stb r3, -0x8000(r4)
/* 8019AFA0  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8019AFA4  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8019AFA8  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8019AFAC  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8019AFB0  98 64 80 00 */	stb r3, -0x8000(r4)
/* 8019AFB4  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8019AFB8  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8019AFBC  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8019AFC0  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8019AFC4  98 64 80 00 */	stb r3, -0x8000(r4)
/* 8019AFC8  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8019AFCC  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8019AFD0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8019AFD4  7C 08 03 A6 */	mtlr r0
/* 8019AFD8  38 21 00 70 */	addi r1, r1, 0x70
/* 8019AFDC  4E 80 00 20 */	blr 
