lbl_8087667C:
/* 8087667C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80876680  7C 08 02 A6 */	mflr r0
/* 80876684  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80876688  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8087668C  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 80876690  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 80876694  3C 80 80 88 */	lis r4, __THPJpegNaturalOrder@ha
/* 80876698  3B E4 90 34 */	addi r31, r4, __THPJpegNaturalOrder@l
/* 8087669C  A3 C3 00 04 */	lhz r30, 4(r3)
/* 808766A0  A3 A3 00 06 */	lhz r29, 6(r3)
/* 808766A4  38 60 00 00 */	li r3, 0
/* 808766A8  38 80 00 00 */	li r4, 0
/* 808766AC  4B AE 96 58 */	b GXSetPixelFmt
/* 808766B0  38 61 00 50 */	addi r3, r1, 0x50
/* 808766B4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 808766B8  C8 9F 00 D8 */	lfd f4, 0xd8(r31)
/* 808766BC  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 808766C0  90 01 00 94 */	stw r0, 0x94(r1)
/* 808766C4  3C 80 43 30 */	lis r4, 0x4330
/* 808766C8  90 81 00 90 */	stw r4, 0x90(r1)
/* 808766CC  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 808766D0  EC 00 20 28 */	fsubs f0, f0, f4
/* 808766D4  EC 40 08 28 */	fsubs f2, f0, f1
/* 808766D8  FC 60 08 90 */	fmr f3, f1
/* 808766DC  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 808766E0  90 01 00 9C */	stw r0, 0x9c(r1)
/* 808766E4  90 81 00 98 */	stw r4, 0x98(r1)
/* 808766E8  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 808766EC  EC 80 20 28 */	fsubs f4, f0, f4
/* 808766F0  FC A0 08 90 */	fmr f5, f1
/* 808766F4  C0 DF 00 CC */	lfs f6, 0xcc(r31)
/* 808766F8  4B AD 09 00 */	b C_MTXOrtho
/* 808766FC  38 61 00 50 */	addi r3, r1, 0x50
/* 80876700  38 80 00 01 */	li r4, 1
/* 80876704  4B AE 99 D0 */	b GXSetProjection
/* 80876708  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8087670C  FC 40 08 90 */	fmr f2, f1
/* 80876710  C8 9F 00 D8 */	lfd f4, 0xd8(r31)
/* 80876714  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 80876718  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8087671C  3C 60 43 30 */	lis r3, 0x4330
/* 80876720  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 80876724  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 80876728  EC 60 20 28 */	fsubs f3, f0, f4
/* 8087672C  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 80876730  90 01 00 AC */	stw r0, 0xac(r1)
/* 80876734  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 80876738  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8087673C  EC 80 20 28 */	fsubs f4, f0, f4
/* 80876740  FC A0 08 90 */	fmr f5, f1
/* 80876744  C0 DF 00 D0 */	lfs f6, 0xd0(r31)
/* 80876748  4B AE 9D 1C */	b GXSetViewport
/* 8087674C  38 60 00 00 */	li r3, 0
/* 80876750  38 80 00 00 */	li r4, 0
/* 80876754  7F C5 F3 78 */	mr r5, r30
/* 80876758  7F A6 EB 78 */	mr r6, r29
/* 8087675C  4B AE 9D 74 */	b GXSetScissor
/* 80876760  38 61 00 20 */	addi r3, r1, 0x20
/* 80876764  4B AC FD 20 */	b PSMTXIdentity
/* 80876768  38 61 00 20 */	addi r3, r1, 0x20
/* 8087676C  38 80 00 00 */	li r4, 0
/* 80876770  4B AE 9A DC */	b GXLoadPosMtxImm
/* 80876774  38 60 00 00 */	li r3, 0
/* 80876778  4B AE 9B 74 */	b GXSetCurrentMtx
/* 8087677C  38 60 00 01 */	li r3, 1
/* 80876780  4B AE 95 50 */	b GXSetZCompLoc
/* 80876784  38 60 00 01 */	li r3, 1
/* 80876788  38 80 00 07 */	li r4, 7
/* 8087678C  38 A0 00 00 */	li r5, 0
/* 80876790  4B AE 95 0C */	b GXSetZMode
/* 80876794  38 60 00 00 */	li r3, 0
/* 80876798  38 80 00 01 */	li r4, 1
/* 8087679C  38 A0 00 00 */	li r5, 0
/* 808767A0  38 C0 00 00 */	li r6, 0
/* 808767A4  4B AE 94 4C */	b GXSetBlendMode
/* 808767A8  38 60 00 07 */	li r3, 7
/* 808767AC  38 80 00 00 */	li r4, 0
/* 808767B0  38 A0 00 01 */	li r5, 1
/* 808767B4  38 C0 00 07 */	li r6, 7
/* 808767B8  38 E0 00 00 */	li r7, 0
/* 808767BC  4B AE 8E 68 */	b GXSetAlphaCompare
/* 808767C0  3C 60 80 45 */	lis r3, g_clearColor@ha
/* 808767C4  80 03 06 00 */	lwz r0, g_clearColor@l(r3)
/* 808767C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808767CC  38 60 00 00 */	li r3, 0
/* 808767D0  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 808767D4  FC 40 08 90 */	fmr f2, f1
/* 808767D8  FC 60 08 90 */	fmr f3, f1
/* 808767DC  FC 80 08 90 */	fmr f4, f1
/* 808767E0  38 81 00 14 */	addi r4, r1, 0x14
/* 808767E4  4B AE 90 D4 */	b GXSetFog
/* 808767E8  38 60 00 00 */	li r3, 0
/* 808767EC  38 80 00 00 */	li r4, 0
/* 808767F0  38 A0 00 00 */	li r5, 0
/* 808767F4  4B AE 92 D8 */	b GXSetFogRangeAdj
/* 808767F8  38 60 00 00 */	li r3, 0
/* 808767FC  4B AE 61 88 */	b GXSetCullMode
/* 80876800  38 60 00 01 */	li r3, 1
/* 80876804  4B AE 95 D4 */	b GXSetDither
/* 80876808  38 60 00 01 */	li r3, 1
/* 8087680C  4B AE 94 38 */	b GXSetColorUpdate
/* 80876810  38 60 00 00 */	li r3, 0
/* 80876814  4B AE 94 5C */	b GXSetAlphaUpdate
/* 80876818  38 60 00 00 */	li r3, 0
/* 8087681C  4B AE 88 B8 */	b GXSetNumIndStages
/* 80876820  38 60 00 00 */	li r3, 0
/* 80876824  4B AE 73 0C */	b GXSetNumChans
/* 80876828  38 60 00 02 */	li r3, 2
/* 8087682C  4B AE 55 D0 */	b GXSetNumTexGens
/* 80876830  38 60 00 00 */	li r3, 0
/* 80876834  38 80 00 01 */	li r4, 1
/* 80876838  38 A0 00 04 */	li r5, 4
/* 8087683C  38 C0 00 3C */	li r6, 0x3c
/* 80876840  48 00 03 69 */	bl GXSetTexCoordGen
/* 80876844  38 60 00 01 */	li r3, 1
/* 80876848  38 80 00 01 */	li r4, 1
/* 8087684C  38 A0 00 04 */	li r5, 4
/* 80876850  38 C0 00 3C */	li r6, 0x3c
/* 80876854  48 00 03 55 */	bl GXSetTexCoordGen
/* 80876858  4B AE 7E 0C */	b GXInvalidateTexAll
/* 8087685C  4B AE 4D 30 */	b GXClearVtxDesc
/* 80876860  38 60 00 09 */	li r3, 9
/* 80876864  38 80 00 01 */	li r4, 1
/* 80876868  4B AE 46 50 */	b GXSetVtxDesc
/* 8087686C  38 60 00 0D */	li r3, 0xd
/* 80876870  38 80 00 01 */	li r4, 1
/* 80876874  4B AE 46 44 */	b GXSetVtxDesc
/* 80876878  38 60 00 07 */	li r3, 7
/* 8087687C  38 80 00 09 */	li r4, 9
/* 80876880  38 A0 00 01 */	li r5, 1
/* 80876884  38 C0 00 03 */	li r6, 3
/* 80876888  38 E0 00 00 */	li r7, 0
/* 8087688C  4B AE 4D 38 */	b GXSetVtxAttrFmt
/* 80876890  38 60 00 07 */	li r3, 7
/* 80876894  38 80 00 0D */	li r4, 0xd
/* 80876898  38 A0 00 01 */	li r5, 1
/* 8087689C  38 C0 00 02 */	li r6, 2
/* 808768A0  38 E0 00 00 */	li r7, 0
/* 808768A4  4B AE 4D 20 */	b GXSetVtxAttrFmt
/* 808768A8  38 60 00 04 */	li r3, 4
/* 808768AC  4B AE 8F E4 */	b GXSetNumTevStages
/* 808768B0  38 60 00 00 */	li r3, 0
/* 808768B4  38 80 00 01 */	li r4, 1
/* 808768B8  38 A0 00 01 */	li r5, 1
/* 808768BC  38 C0 00 FF */	li r6, 0xff
/* 808768C0  4B AE 8E 34 */	b GXSetTevOrder
/* 808768C4  38 60 00 00 */	li r3, 0
/* 808768C8  38 80 00 0F */	li r4, 0xf
/* 808768CC  38 A0 00 08 */	li r5, 8
/* 808768D0  38 C0 00 0E */	li r6, 0xe
/* 808768D4  38 E0 00 02 */	li r7, 2
/* 808768D8  4B AE 89 4C */	b GXSetTevColorIn
/* 808768DC  38 60 00 00 */	li r3, 0
/* 808768E0  38 80 00 00 */	li r4, 0
/* 808768E4  38 A0 00 00 */	li r5, 0
/* 808768E8  38 C0 00 00 */	li r6, 0
/* 808768EC  38 E0 00 00 */	li r7, 0
/* 808768F0  39 00 00 00 */	li r8, 0
/* 808768F4  4B AE 89 B8 */	b GXSetTevColorOp
/* 808768F8  38 60 00 00 */	li r3, 0
/* 808768FC  38 80 00 07 */	li r4, 7
/* 80876900  38 A0 00 04 */	li r5, 4
/* 80876904  38 C0 00 06 */	li r6, 6
/* 80876908  38 E0 00 01 */	li r7, 1
/* 8087690C  4B AE 89 5C */	b GXSetTevAlphaIn
/* 80876910  38 60 00 00 */	li r3, 0
/* 80876914  38 80 00 01 */	li r4, 1
/* 80876918  38 A0 00 00 */	li r5, 0
/* 8087691C  38 C0 00 00 */	li r6, 0
/* 80876920  38 E0 00 00 */	li r7, 0
/* 80876924  39 00 00 00 */	li r8, 0
/* 80876928  4B AE 89 EC */	b GXSetTevAlphaOp
/* 8087692C  38 60 00 00 */	li r3, 0
/* 80876930  38 80 00 0C */	li r4, 0xc
/* 80876934  4B AE 8B 70 */	b GXSetTevKColorSel
/* 80876938  38 60 00 00 */	li r3, 0
/* 8087693C  38 80 00 1C */	li r4, 0x1c
/* 80876940  4B AE 8B C0 */	b GXSetTevKAlphaSel
/* 80876944  38 60 00 00 */	li r3, 0
/* 80876948  38 80 00 00 */	li r4, 0
/* 8087694C  38 A0 00 00 */	li r5, 0
/* 80876950  4B AE 8C 0C */	b GXSetTevSwapMode
/* 80876954  38 60 00 01 */	li r3, 1
/* 80876958  38 80 00 01 */	li r4, 1
/* 8087695C  38 A0 00 02 */	li r5, 2
/* 80876960  38 C0 00 FF */	li r6, 0xff
/* 80876964  4B AE 8D 90 */	b GXSetTevOrder
/* 80876968  38 60 00 01 */	li r3, 1
/* 8087696C  38 80 00 0F */	li r4, 0xf
/* 80876970  38 A0 00 08 */	li r5, 8
/* 80876974  38 C0 00 0E */	li r6, 0xe
/* 80876978  38 E0 00 00 */	li r7, 0
/* 8087697C  4B AE 88 A8 */	b GXSetTevColorIn
/* 80876980  38 60 00 01 */	li r3, 1
/* 80876984  38 80 00 00 */	li r4, 0
/* 80876988  38 A0 00 00 */	li r5, 0
/* 8087698C  38 C0 00 01 */	li r6, 1
/* 80876990  38 E0 00 00 */	li r7, 0
/* 80876994  39 00 00 00 */	li r8, 0
/* 80876998  4B AE 89 14 */	b GXSetTevColorOp
/* 8087699C  38 60 00 01 */	li r3, 1
/* 808769A0  38 80 00 07 */	li r4, 7
/* 808769A4  38 A0 00 04 */	li r5, 4
/* 808769A8  38 C0 00 06 */	li r6, 6
/* 808769AC  38 E0 00 00 */	li r7, 0
/* 808769B0  4B AE 88 B8 */	b GXSetTevAlphaIn
/* 808769B4  38 60 00 01 */	li r3, 1
/* 808769B8  38 80 00 01 */	li r4, 1
/* 808769BC  38 A0 00 00 */	li r5, 0
/* 808769C0  38 C0 00 00 */	li r6, 0
/* 808769C4  38 E0 00 00 */	li r7, 0
/* 808769C8  39 00 00 00 */	li r8, 0
/* 808769CC  4B AE 89 48 */	b GXSetTevAlphaOp
/* 808769D0  38 60 00 01 */	li r3, 1
/* 808769D4  38 80 00 0D */	li r4, 0xd
/* 808769D8  4B AE 8A CC */	b GXSetTevKColorSel
/* 808769DC  38 60 00 01 */	li r3, 1
/* 808769E0  38 80 00 1D */	li r4, 0x1d
/* 808769E4  4B AE 8B 1C */	b GXSetTevKAlphaSel
/* 808769E8  38 60 00 01 */	li r3, 1
/* 808769EC  38 80 00 00 */	li r4, 0
/* 808769F0  38 A0 00 00 */	li r5, 0
/* 808769F4  4B AE 8B 68 */	b GXSetTevSwapMode
/* 808769F8  38 60 00 02 */	li r3, 2
/* 808769FC  38 80 00 00 */	li r4, 0
/* 80876A00  38 A0 00 00 */	li r5, 0
/* 80876A04  38 C0 00 FF */	li r6, 0xff
/* 80876A08  4B AE 8C EC */	b GXSetTevOrder
/* 80876A0C  38 60 00 02 */	li r3, 2
/* 80876A10  38 80 00 0F */	li r4, 0xf
/* 80876A14  38 A0 00 08 */	li r5, 8
/* 80876A18  38 C0 00 0C */	li r6, 0xc
/* 80876A1C  38 E0 00 00 */	li r7, 0
/* 80876A20  4B AE 88 04 */	b GXSetTevColorIn
/* 80876A24  38 60 00 02 */	li r3, 2
/* 80876A28  38 80 00 00 */	li r4, 0
/* 80876A2C  38 A0 00 00 */	li r5, 0
/* 80876A30  38 C0 00 00 */	li r6, 0
/* 80876A34  38 E0 00 01 */	li r7, 1
/* 80876A38  39 00 00 00 */	li r8, 0
/* 80876A3C  4B AE 88 70 */	b GXSetTevColorOp
/* 80876A40  38 60 00 02 */	li r3, 2
/* 80876A44  38 80 00 04 */	li r4, 4
/* 80876A48  38 A0 00 07 */	li r5, 7
/* 80876A4C  38 C0 00 07 */	li r6, 7
/* 80876A50  38 E0 00 00 */	li r7, 0
/* 80876A54  4B AE 88 14 */	b GXSetTevAlphaIn
/* 80876A58  38 60 00 02 */	li r3, 2
/* 80876A5C  38 80 00 00 */	li r4, 0
/* 80876A60  38 A0 00 00 */	li r5, 0
/* 80876A64  38 C0 00 00 */	li r6, 0
/* 80876A68  38 E0 00 01 */	li r7, 1
/* 80876A6C  39 00 00 00 */	li r8, 0
/* 80876A70  4B AE 88 A4 */	b GXSetTevAlphaOp
/* 80876A74  38 60 00 02 */	li r3, 2
/* 80876A78  38 80 00 00 */	li r4, 0
/* 80876A7C  38 A0 00 00 */	li r5, 0
/* 80876A80  4B AE 8A DC */	b GXSetTevSwapMode
/* 80876A84  38 60 00 03 */	li r3, 3
/* 80876A88  38 80 00 FF */	li r4, 0xff
/* 80876A8C  38 A0 00 FF */	li r5, 0xff
/* 80876A90  38 C0 00 FF */	li r6, 0xff
/* 80876A94  4B AE 8C 60 */	b GXSetTevOrder
/* 80876A98  38 60 00 03 */	li r3, 3
/* 80876A9C  38 80 00 01 */	li r4, 1
/* 80876AA0  38 A0 00 00 */	li r5, 0
/* 80876AA4  38 C0 00 0E */	li r6, 0xe
/* 80876AA8  38 E0 00 0F */	li r7, 0xf
/* 80876AAC  4B AE 87 78 */	b GXSetTevColorIn
/* 80876AB0  38 60 00 03 */	li r3, 3
/* 80876AB4  38 80 00 00 */	li r4, 0
/* 80876AB8  38 A0 00 00 */	li r5, 0
/* 80876ABC  38 C0 00 00 */	li r6, 0
/* 80876AC0  38 E0 00 01 */	li r7, 1
/* 80876AC4  39 00 00 00 */	li r8, 0
/* 80876AC8  4B AE 87 E4 */	b GXSetTevColorOp
/* 80876ACC  38 60 00 03 */	li r3, 3
/* 80876AD0  38 80 00 07 */	li r4, 7
/* 80876AD4  38 A0 00 07 */	li r5, 7
/* 80876AD8  38 C0 00 07 */	li r6, 7
/* 80876ADC  38 E0 00 07 */	li r7, 7
/* 80876AE0  4B AE 87 88 */	b GXSetTevAlphaIn
/* 80876AE4  38 60 00 03 */	li r3, 3
/* 80876AE8  38 80 00 00 */	li r4, 0
/* 80876AEC  38 A0 00 00 */	li r5, 0
/* 80876AF0  38 C0 00 00 */	li r6, 0
/* 80876AF4  38 E0 00 01 */	li r7, 1
/* 80876AF8  39 00 00 00 */	li r8, 0
/* 80876AFC  4B AE 88 18 */	b GXSetTevAlphaOp
/* 80876B00  38 60 00 03 */	li r3, 3
/* 80876B04  38 80 00 00 */	li r4, 0
/* 80876B08  38 A0 00 00 */	li r5, 0
/* 80876B0C  4B AE 8A 50 */	b GXSetTevSwapMode
/* 80876B10  38 60 00 03 */	li r3, 3
/* 80876B14  38 80 00 0E */	li r4, 0xe
/* 80876B18  4B AE 89 8C */	b GXSetTevKColorSel
/* 80876B1C  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 80876B20  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80876B24  90 61 00 18 */	stw r3, 0x18(r1)
/* 80876B28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80876B2C  38 60 00 01 */	li r3, 1
/* 80876B30  38 81 00 18 */	addi r4, r1, 0x18
/* 80876B34  4B AE 88 A8 */	b GXSetTevColorS10
/* 80876B38  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 80876B3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80876B40  38 60 00 00 */	li r3, 0
/* 80876B44  38 81 00 10 */	addi r4, r1, 0x10
/* 80876B48  4B AE 88 F8 */	b GXSetTevKColor
/* 80876B4C  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80876B50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80876B54  38 60 00 01 */	li r3, 1
/* 80876B58  38 81 00 0C */	addi r4, r1, 0xc
/* 80876B5C  4B AE 88 E4 */	b GXSetTevKColor
/* 80876B60  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80876B64  90 01 00 08 */	stw r0, 8(r1)
/* 80876B68  38 60 00 02 */	li r3, 2
/* 80876B6C  38 81 00 08 */	addi r4, r1, 8
/* 80876B70  4B AE 88 D0 */	b GXSetTevKColor
/* 80876B74  38 60 00 00 */	li r3, 0
/* 80876B78  38 80 00 00 */	li r4, 0
/* 80876B7C  38 A0 00 01 */	li r5, 1
/* 80876B80  38 C0 00 02 */	li r6, 2
/* 80876B84  38 E0 00 03 */	li r7, 3
/* 80876B88  4B AE 8A 1C */	b GXSetTevSwapModeTable
/* 80876B8C  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 80876B90  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 80876B94  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 80876B98  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80876B9C  7C 08 03 A6 */	mtlr r0
/* 80876BA0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80876BA4  4E 80 00 20 */	blr 
