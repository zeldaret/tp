lbl_802047E8:
/* 802047E8  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 802047EC  7C 08 02 A6 */	mflr r0
/* 802047F0  90 01 02 14 */	stw r0, 0x214(r1)
/* 802047F4  DB E1 02 00 */	stfd f31, 0x200(r1)
/* 802047F8  F3 E1 02 08 */	psq_st f31, 520(r1), 0, 0 /* qr0 */
/* 802047FC  39 61 02 00 */	addi r11, r1, 0x200
/* 80204800  48 15 D9 C9 */	bl _savegpr_24
/* 80204804  7C 7F 1B 78 */	mr r31, r3
/* 80204808  38 60 01 18 */	li r3, 0x118
/* 8020480C  48 0C A4 41 */	bl __nw__FUl
/* 80204810  7C 60 1B 79 */	or. r0, r3, r3
/* 80204814  41 82 00 0C */	beq lbl_80204820
/* 80204818  48 0F 3C 81 */	bl __ct__9J2DScreenFv
/* 8020481C  7C 60 1B 78 */	mr r0, r3
lbl_80204820:
/* 80204820  90 1F 00 08 */	stw r0, 8(r31)
/* 80204824  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204828  3C 80 80 3A */	lis r4, d_meter_d_meter_button__stringBase0@ha
/* 8020482C  38 84 80 E8 */	addi r4, r4, d_meter_d_meter_button__stringBase0@l
/* 80204830  3C A0 00 02 */	lis r5, 2
/* 80204834  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 80204838  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 8020483C  80 C6 5C 9C */	lwz r6, 0x5c9c(r6)
/* 80204840  48 0F 3E 09 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80204844  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204848  48 05 08 A1 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8020484C  38 00 00 00 */	li r0, 0
/* 80204850  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80204854  38 60 00 6C */	li r3, 0x6c
/* 80204858  48 0C A3 F5 */	bl __nw__FUl
/* 8020485C  7C 60 1B 79 */	or. r0, r3, r3
/* 80204860  41 82 00 24 */	beq lbl_80204884
/* 80204864  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204868  3C A0 66 6F */	lis r5, 0x666F /* 0x666F5F6E@ha */
/* 8020486C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x666F5F6E@l */
/* 80204870  38 A0 69 6E */	li r5, 0x696e
/* 80204874  38 E0 00 00 */	li r7, 0
/* 80204878  39 00 00 00 */	li r8, 0
/* 8020487C  48 04 F1 09 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204880  7C 60 1B 78 */	mr r0, r3
lbl_80204884:
/* 80204884  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80204888  38 60 00 00 */	li r3, 0
/* 8020488C  38 80 00 00 */	li r4, 0
/* 80204890  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80204894  7C 85 23 78 */	mr r5, r4
/* 80204898  38 00 00 16 */	li r0, 0x16
/* 8020489C  7C 09 03 A6 */	mtctr r0
lbl_802048A0:
/* 802048A0  7C DF 22 14 */	add r6, r31, r4
/* 802048A4  D0 06 01 8C */	stfs f0, 0x18c(r6)
/* 802048A8  38 03 04 84 */	addi r0, r3, 0x484
/* 802048AC  7C BF 03 2E */	sthx r5, r31, r0
/* 802048B0  D0 06 03 04 */	stfs f0, 0x304(r6)
/* 802048B4  D0 06 01 EC */	stfs f0, 0x1ec(r6)
/* 802048B8  D0 06 02 44 */	stfs f0, 0x244(r6)
/* 802048BC  38 63 00 02 */	addi r3, r3, 2
/* 802048C0  38 84 00 04 */	addi r4, r4, 4
/* 802048C4  42 00 FF DC */	bdnz lbl_802048A0
/* 802048C8  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802048CC  D0 1F 02 A4 */	stfs f0, 0x2a4(r31)
/* 802048D0  D0 1F 02 A8 */	stfs f0, 0x2a8(r31)
/* 802048D4  38 60 00 00 */	li r3, 0
/* 802048D8  38 00 00 02 */	li r0, 2
/* 802048DC  7C 09 03 A6 */	mtctr r0
lbl_802048E0:
/* 802048E0  7C 9F 1A 14 */	add r4, r31, r3
/* 802048E4  D0 04 01 E4 */	stfs f0, 0x1e4(r4)
/* 802048E8  D0 04 02 9C */	stfs f0, 0x29c(r4)
/* 802048EC  38 63 00 04 */	addi r3, r3, 4
/* 802048F0  42 00 FF F0 */	bdnz lbl_802048E0
/* 802048F4  38 00 00 00 */	li r0, 0
/* 802048F8  B0 1F 04 B0 */	sth r0, 0x4b0(r31)
/* 802048FC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80204900  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 80204904  C0 22 AD 70 */	lfs f1, lit_5628(r2)
/* 80204908  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8020490C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80204910  EC 22 00 2A */	fadds f1, f2, f0
/* 80204914  C0 02 AD 74 */	lfs f0, lit_5629(r2)
/* 80204918  EC 00 08 28 */	fsubs f0, f0, f1
/* 8020491C  D0 1F 02 F0 */	stfs f0, 0x2f0(r31)
/* 80204920  7F E3 FB 78 */	mr r3, r31
/* 80204924  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80204928  C0 3F 02 F0 */	lfs f1, 0x2f0(r31)
/* 8020492C  C0 42 AD 48 */	lfs f2, lit_4146(r2)
/* 80204930  38 A0 00 FF */	li r5, 0xff
/* 80204934  48 00 65 35 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 80204938  38 60 00 6C */	li r3, 0x6c
/* 8020493C  48 0C A3 11 */	bl __nw__FUl
/* 80204940  7C 60 1B 79 */	or. r0, r3, r3
/* 80204944  41 82 00 24 */	beq lbl_80204968
/* 80204948  80 9F 00 08 */	lwz r4, 8(r31)
/* 8020494C  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80204950  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80204954  38 A0 61 62 */	li r5, 0x6162
/* 80204958  38 E0 00 02 */	li r7, 2
/* 8020495C  39 00 00 00 */	li r8, 0
/* 80204960  48 04 F0 25 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204964  7C 60 1B 78 */	mr r0, r3
lbl_80204968:
/* 80204968  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8020496C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80204970  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204974  48 05 0E 5D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204978  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8020497C  48 05 0C 4D */	bl show__13CPaneMgrAlphaFv
/* 80204980  38 60 00 6C */	li r3, 0x6c
/* 80204984  48 0C A2 C9 */	bl __nw__FUl
/* 80204988  7C 60 1B 79 */	or. r0, r3, r3
/* 8020498C  41 82 00 24 */	beq lbl_802049B0
/* 80204990  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204994  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80204998  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 8020499C  38 A0 62 62 */	li r5, 0x6262
/* 802049A0  38 E0 00 02 */	li r7, 2
/* 802049A4  39 00 00 00 */	li r8, 0
/* 802049A8  48 04 EF DD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802049AC  7C 60 1B 78 */	mr r0, r3
lbl_802049B0:
/* 802049B0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802049B4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802049B8  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 802049BC  48 05 0E 15 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802049C0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802049C4  48 05 0C 05 */	bl show__13CPaneMgrAlphaFv
/* 802049C8  38 60 00 6C */	li r3, 0x6c
/* 802049CC  48 0C A2 81 */	bl __nw__FUl
/* 802049D0  7C 60 1B 79 */	or. r0, r3, r3
/* 802049D4  41 82 00 24 */	beq lbl_802049F8
/* 802049D8  80 9F 00 08 */	lwz r4, 8(r31)
/* 802049DC  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 802049E0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 802049E4  38 A0 72 62 */	li r5, 0x7262
/* 802049E8  38 E0 00 02 */	li r7, 2
/* 802049EC  39 00 00 00 */	li r8, 0
/* 802049F0  48 04 EF 95 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802049F4  7C 60 1B 78 */	mr r0, r3
lbl_802049F8:
/* 802049F8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802049FC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80204A00  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204A04  48 05 0D CD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204A08  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80204A0C  48 05 0B BD */	bl show__13CPaneMgrAlphaFv
/* 80204A10  38 60 00 6C */	li r3, 0x6c
/* 80204A14  48 0C A2 39 */	bl __nw__FUl
/* 80204A18  7C 60 1B 79 */	or. r0, r3, r3
/* 80204A1C  41 82 00 24 */	beq lbl_80204A40
/* 80204A20  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204A24  3C A0 64 6F */	lis r5, 0x646F /* 0x646F6E61@ha */
/* 80204A28  38 C5 6E 61 */	addi r6, r5, 0x6E61 /* 0x646F6E61@l */
/* 80204A2C  38 A0 6D 69 */	li r5, 0x6d69
/* 80204A30  38 E0 00 00 */	li r7, 0
/* 80204A34  39 00 00 00 */	li r8, 0
/* 80204A38  48 04 EF 4D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204A3C  7C 60 1B 78 */	mr r0, r3
lbl_80204A40:
/* 80204A40  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 80204A44  38 60 00 00 */	li r3, 0
/* 80204A48  38 80 00 00 */	li r4, 0
/* 80204A4C  38 00 00 04 */	li r0, 4
/* 80204A50  7C 09 03 A6 */	mtctr r0
lbl_80204A54:
/* 80204A54  38 03 00 FC */	addi r0, r3, 0xfc
/* 80204A58  7C 9F 01 2E */	stwx r4, r31, r0
/* 80204A5C  38 63 00 04 */	addi r3, r3, 4
/* 80204A60  42 00 FF F4 */	bdnz lbl_80204A54
/* 80204A64  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204A68  3C 80 7A 62 */	lis r4, 0x7A62 /* 0x7A62746E@ha */
/* 80204A6C  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x7A62746E@l */
/* 80204A70  38 A0 00 00 */	li r5, 0
/* 80204A74  81 83 00 00 */	lwz r12, 0(r3)
/* 80204A78  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204A7C  7D 89 03 A6 */	mtctr r12
/* 80204A80  4E 80 04 21 */	bctrl 
/* 80204A84  38 00 00 01 */	li r0, 1
/* 80204A88  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204A8C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204A90  3C 80 62 74 */	lis r4, 0x6274 /* 0x62746E6C@ha */
/* 80204A94  38 C4 6E 6C */	addi r6, r4, 0x6E6C /* 0x62746E6C@l */
/* 80204A98  38 A0 7A 5F */	li r5, 0x7a5f
/* 80204A9C  81 83 00 00 */	lwz r12, 0(r3)
/* 80204AA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204AA4  7D 89 03 A6 */	mtctr r12
/* 80204AA8  4E 80 04 21 */	bctrl 
/* 80204AAC  38 00 00 01 */	li r0, 1
/* 80204AB0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204AB4  38 60 00 6C */	li r3, 0x6c
/* 80204AB8  48 0C A1 95 */	bl __nw__FUl
/* 80204ABC  7C 60 1B 79 */	or. r0, r3, r3
/* 80204AC0  41 82 00 24 */	beq lbl_80204AE4
/* 80204AC4  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204AC8  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80204ACC  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80204AD0  38 A0 7A 62 */	li r5, 0x7a62
/* 80204AD4  38 E0 00 02 */	li r7, 2
/* 80204AD8  39 00 00 00 */	li r8, 0
/* 80204ADC  48 04 EE A9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204AE0  7C 60 1B 78 */	mr r0, r3
lbl_80204AE4:
/* 80204AE4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80204AE8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80204AEC  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204AF0  48 05 0C E1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204AF4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80204AF8  48 05 0A D1 */	bl show__13CPaneMgrAlphaFv
/* 80204AFC  38 60 00 6C */	li r3, 0x6c
/* 80204B00  48 0C A1 4D */	bl __nw__FUl
/* 80204B04  7C 60 1B 79 */	or. r0, r3, r3
/* 80204B08  41 82 00 28 */	beq lbl_80204B30
/* 80204B0C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204B10  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80204B14  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80204B18  3C A0 00 61 */	lis r5, 0x0061 /* 0x00617362@ha */
/* 80204B1C  38 A5 73 62 */	addi r5, r5, 0x7362 /* 0x00617362@l */
/* 80204B20  38 E0 00 02 */	li r7, 2
/* 80204B24  39 00 00 00 */	li r8, 0
/* 80204B28  48 04 EE 5D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204B2C  7C 60 1B 78 */	mr r0, r3
lbl_80204B30:
/* 80204B30  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80204B34  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80204B38  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204B3C  48 05 0C 95 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204B40  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80204B44  48 05 0A 85 */	bl show__13CPaneMgrAlphaFv
/* 80204B48  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204B4C  3C 80 5F 6C */	lis r4, 0x5F6C /* 0x5F6C5F6E@ha */
/* 80204B50  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6C5F6E@l */
/* 80204B54  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80204B58  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80204B5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80204B60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204B64  7D 89 03 A6 */	mtctr r12
/* 80204B68  4E 80 04 21 */	bctrl 
/* 80204B6C  38 00 00 00 */	li r0, 0
/* 80204B70  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204B74  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204B78  3C 80 5F 75 */	lis r4, 0x5F75 /* 0x5F755F6E@ha */
/* 80204B7C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F755F6E@l */
/* 80204B80  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80204B84  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80204B88  81 83 00 00 */	lwz r12, 0(r3)
/* 80204B8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204B90  7D 89 03 A6 */	mtctr r12
/* 80204B94  4E 80 04 21 */	bctrl 
/* 80204B98  38 00 00 00 */	li r0, 0
/* 80204B9C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204BA0  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204BA4  3C 80 5F 64 */	lis r4, 0x5F64 /* 0x5F645F6E@ha */
/* 80204BA8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F645F6E@l */
/* 80204BAC  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80204BB0  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80204BB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80204BB8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204BBC  7D 89 03 A6 */	mtctr r12
/* 80204BC0  4E 80 04 21 */	bctrl 
/* 80204BC4  38 00 00 00 */	li r0, 0
/* 80204BC8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204BCC  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204BD0  3C 80 5F 72 */	lis r4, 0x5F72 /* 0x5F725F6E@ha */
/* 80204BD4  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F725F6E@l */
/* 80204BD8  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80204BDC  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80204BE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80204BE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204BE8  7D 89 03 A6 */	mtctr r12
/* 80204BEC  4E 80 04 21 */	bctrl 
/* 80204BF0  38 00 00 00 */	li r0, 0
/* 80204BF4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204BF8  38 60 00 6C */	li r3, 0x6c
/* 80204BFC  48 0C A0 51 */	bl __nw__FUl
/* 80204C00  7C 60 1B 79 */	or. r0, r3, r3
/* 80204C04  41 82 00 24 */	beq lbl_80204C28
/* 80204C08  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204C0C  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80204C10  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80204C14  38 A0 63 62 */	li r5, 0x6362
/* 80204C18  38 E0 00 02 */	li r7, 2
/* 80204C1C  39 00 00 00 */	li r8, 0
/* 80204C20  48 04 ED 65 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204C24  7C 60 1B 78 */	mr r0, r3
lbl_80204C28:
/* 80204C28  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80204C2C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80204C30  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204C34  48 05 0B 9D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204C38  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80204C3C  48 05 09 8D */	bl show__13CPaneMgrAlphaFv
/* 80204C40  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204C44  3C 80 69 5F */	lis r4, 0x695F /* 0x695F6C6E@ha */
/* 80204C48  38 C4 6C 6E */	addi r6, r4, 0x6C6E /* 0x695F6C6E@l */
/* 80204C4C  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80204C50  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80204C54  81 83 00 00 */	lwz r12, 0(r3)
/* 80204C58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204C5C  7D 89 03 A6 */	mtctr r12
/* 80204C60  4E 80 04 21 */	bctrl 
/* 80204C64  38 00 00 00 */	li r0, 0
/* 80204C68  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204C6C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204C70  3C 80 69 5F */	lis r4, 0x695F /* 0x695F756E@ha */
/* 80204C74  38 C4 75 6E */	addi r6, r4, 0x756E /* 0x695F756E@l */
/* 80204C78  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80204C7C  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80204C80  81 83 00 00 */	lwz r12, 0(r3)
/* 80204C84  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204C88  7D 89 03 A6 */	mtctr r12
/* 80204C8C  4E 80 04 21 */	bctrl 
/* 80204C90  38 00 00 00 */	li r0, 0
/* 80204C94  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204C98  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204C9C  3C 80 69 5F */	lis r4, 0x695F /* 0x695F646E@ha */
/* 80204CA0  38 C4 64 6E */	addi r6, r4, 0x646E /* 0x695F646E@l */
/* 80204CA4  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80204CA8  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80204CAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80204CB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204CB4  7D 89 03 A6 */	mtctr r12
/* 80204CB8  4E 80 04 21 */	bctrl 
/* 80204CBC  38 00 00 00 */	li r0, 0
/* 80204CC0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204CC4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80204CC8  3C 80 69 5F */	lis r4, 0x695F /* 0x695F726E@ha */
/* 80204CCC  38 C4 72 6E */	addi r6, r4, 0x726E /* 0x695F726E@l */
/* 80204CD0  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80204CD4  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80204CD8  81 83 00 00 */	lwz r12, 0(r3)
/* 80204CDC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80204CE0  7D 89 03 A6 */	mtctr r12
/* 80204CE4  4E 80 04 21 */	bctrl 
/* 80204CE8  38 00 00 00 */	li r0, 0
/* 80204CEC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80204CF0  38 60 00 6C */	li r3, 0x6c
/* 80204CF4  48 0C 9F 59 */	bl __nw__FUl
/* 80204CF8  7C 60 1B 79 */	or. r0, r3, r3
/* 80204CFC  41 82 00 24 */	beq lbl_80204D20
/* 80204D00  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204D04  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80204D08  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80204D0C  38 A0 73 62 */	li r5, 0x7362
/* 80204D10  38 E0 00 02 */	li r7, 2
/* 80204D14  39 00 00 00 */	li r8, 0
/* 80204D18  48 04 EC 6D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204D1C  7C 60 1B 78 */	mr r0, r3
lbl_80204D20:
/* 80204D20  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80204D24  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80204D28  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204D2C  48 05 0A A5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204D30  38 60 00 6C */	li r3, 0x6c
/* 80204D34  48 0C 9F 19 */	bl __nw__FUl
/* 80204D38  7C 60 1B 79 */	or. r0, r3, r3
/* 80204D3C  41 82 00 24 */	beq lbl_80204D60
/* 80204D40  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204D44  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80204D48  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80204D4C  38 A0 78 62 */	li r5, 0x7862
/* 80204D50  38 E0 00 02 */	li r7, 2
/* 80204D54  39 00 00 00 */	li r8, 0
/* 80204D58  48 04 EC 2D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204D5C  7C 60 1B 78 */	mr r0, r3
lbl_80204D60:
/* 80204D60  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80204D64  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80204D68  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204D6C  48 05 0A 65 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204D70  38 60 00 6C */	li r3, 0x6c
/* 80204D74  48 0C 9E D9 */	bl __nw__FUl
/* 80204D78  7C 60 1B 79 */	or. r0, r3, r3
/* 80204D7C  41 82 00 24 */	beq lbl_80204DA0
/* 80204D80  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204D84  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80204D88  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80204D8C  38 A0 79 62 */	li r5, 0x7962
/* 80204D90  38 E0 00 02 */	li r7, 2
/* 80204D94  39 00 00 00 */	li r8, 0
/* 80204D98  48 04 EB ED */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204D9C  7C 60 1B 78 */	mr r0, r3
lbl_80204DA0:
/* 80204DA0  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80204DA4  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80204DA8  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204DAC  48 05 0A 25 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204DB0  38 00 00 00 */	li r0, 0
/* 80204DB4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80204DB8  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80204DBC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80204DC0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80204DC4  38 60 00 6C */	li r3, 0x6c
/* 80204DC8  48 0C 9E 85 */	bl __nw__FUl
/* 80204DCC  7C 60 1B 79 */	or. r0, r3, r3
/* 80204DD0  41 82 00 24 */	beq lbl_80204DF4
/* 80204DD4  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204DD8  3C A0 5F 62 */	lis r5, 0x5F62 /* 0x5F625F6E@ha */
/* 80204DDC  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F625F6E@l */
/* 80204DE0  38 A0 61 73 */	li r5, 0x6173
/* 80204DE4  38 E0 00 02 */	li r7, 2
/* 80204DE8  39 00 00 00 */	li r8, 0
/* 80204DEC  48 04 EB 99 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204DF0  7C 60 1B 78 */	mr r0, r3
lbl_80204DF4:
/* 80204DF4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80204DF8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80204DFC  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204E00  48 05 09 D1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204E04  38 00 00 00 */	li r0, 0
/* 80204E08  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80204E0C  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80204E10  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 80204E14  90 1F 00 60 */	stw r0, 0x60(r31)
/* 80204E18  90 1F 00 64 */	stw r0, 0x64(r31)
/* 80204E1C  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80204E20  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80204E24  38 60 00 6C */	li r3, 0x6c
/* 80204E28  48 0C 9E 25 */	bl __nw__FUl
/* 80204E2C  7C 60 1B 79 */	or. r0, r3, r3
/* 80204E30  41 82 00 28 */	beq lbl_80204E58
/* 80204E34  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204E38  3C A0 74 6C */	lis r5, 0x746C /* 0x746C5F6E@ha */
/* 80204E3C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746C5F6E@l */
/* 80204E40  3C A0 00 62 */	lis r5, 0x0062 /* 0x00626F74@ha */
/* 80204E44  38 A5 6F 74 */	addi r5, r5, 0x6F74 /* 0x00626F74@l */
/* 80204E48  38 E0 00 02 */	li r7, 2
/* 80204E4C  39 00 00 00 */	li r8, 0
/* 80204E50  48 04 EB 35 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204E54  7C 60 1B 78 */	mr r0, r3
lbl_80204E58:
/* 80204E58  90 1F 00 70 */	stw r0, 0x70(r31)
/* 80204E5C  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80204E60  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204E64  48 05 09 6D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204E68  38 60 00 6C */	li r3, 0x6c
/* 80204E6C  48 0C 9D E1 */	bl __nw__FUl
/* 80204E70  7C 60 1B 79 */	or. r0, r3, r3
/* 80204E74  41 82 00 24 */	beq lbl_80204E98
/* 80204E78  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204E7C  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80204E80  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80204E84  38 A0 74 65 */	li r5, 0x7465
/* 80204E88  38 E0 00 02 */	li r7, 2
/* 80204E8C  39 00 00 00 */	li r8, 0
/* 80204E90  48 04 EA F5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204E94  7C 60 1B 78 */	mr r0, r3
lbl_80204E98:
/* 80204E98  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80204E9C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80204EA0  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204EA4  48 05 09 2D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204EA8  38 60 00 6C */	li r3, 0x6c
/* 80204EAC  48 0C 9D A1 */	bl __nw__FUl
/* 80204EB0  7C 60 1B 79 */	or. r0, r3, r3
/* 80204EB4  41 82 00 28 */	beq lbl_80204EDC
/* 80204EB8  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204EBC  3C A0 74 32 */	lis r5, 0x7432 /* 0x74325F6E@ha */
/* 80204EC0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x74325F6E@l */
/* 80204EC4  3C A0 00 74 */	lis r5, 0x0074 /* 0x00746578@ha */
/* 80204EC8  38 A5 65 78 */	addi r5, r5, 0x6578 /* 0x00746578@l */
/* 80204ECC  38 E0 00 02 */	li r7, 2
/* 80204ED0  39 00 00 00 */	li r8, 0
/* 80204ED4  48 04 EA B1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204ED8  7C 60 1B 78 */	mr r0, r3
lbl_80204EDC:
/* 80204EDC  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 80204EE0  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80204EE4  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204EE8  48 05 08 E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204EEC  38 60 00 6C */	li r3, 0x6c
/* 80204EF0  48 0C 9D 5D */	bl __nw__FUl
/* 80204EF4  7C 60 1B 79 */	or. r0, r3, r3
/* 80204EF8  41 82 00 28 */	beq lbl_80204F20
/* 80204EFC  80 9F 00 08 */	lwz r4, 8(r31)
/* 80204F00  3C A0 68 69 */	lis r5, 0x6869 /* 0x68696E67@ha */
/* 80204F04  38 C5 6E 67 */	addi r6, r5, 0x6E67 /* 0x68696E67@l */
/* 80204F08  3C A0 00 66 */	lis r5, 0x0066 /* 0x00666973@ha */
/* 80204F0C  38 A5 69 73 */	addi r5, r5, 0x6973 /* 0x00666973@l */
/* 80204F10  38 E0 00 00 */	li r7, 0
/* 80204F14  39 00 00 00 */	li r8, 0
/* 80204F18  48 04 EA 6D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80204F1C  7C 60 1B 78 */	mr r0, r3
lbl_80204F20:
/* 80204F20  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 80204F24  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80204F28  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80204F2C  48 05 08 A5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80204F30  4B E0 A2 BD */	bl mDoExt_getCurrentHeap__Fv
/* 80204F34  90 7F 01 0C */	stw r3, 0x10c(r31)
/* 80204F38  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80204F3C  38 80 0C 00 */	li r4, 0xc00
/* 80204F40  38 A0 00 20 */	li r5, 0x20
/* 80204F44  48 0C 95 91 */	bl alloc__7JKRHeapFUli
/* 80204F48  90 7F 01 10 */	stw r3, 0x110(r31)
/* 80204F4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80204F50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80204F54  38 63 00 9C */	addi r3, r3, 0x9c
/* 80204F58  38 80 00 14 */	li r4, 0x14
/* 80204F5C  38 A0 00 00 */	li r5, 0
/* 80204F60  4B E2 E0 D1 */	bl getItem__17dSv_player_item_cCFib
/* 80204F64  7C 79 1B 78 */	mr r25, r3
/* 80204F68  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80204F6C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80204F70  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80204F74  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80204F78  48 01 6C 3D */	bl getCanoeFishing__13dMeter2Draw_cFv
/* 80204F7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80204F80  41 82 00 08 */	beq lbl_80204F88
/* 80204F84  3B 20 00 58 */	li r25, 0x58
lbl_80204F88:
/* 80204F88  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 80204F8C  28 00 00 FF */	cmplwi r0, 0xff
/* 80204F90  40 82 00 08 */	bne lbl_80204F98
/* 80204F94  3B 20 00 4A */	li r25, 0x4a
lbl_80204F98:
/* 80204F98  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80204F9C  80 C3 00 04 */	lwz r6, 4(r3)
/* 80204FA0  38 00 00 00 */	li r0, 0
/* 80204FA4  90 01 00 08 */	stw r0, 8(r1)
/* 80204FA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80204FAC  38 00 FF FF */	li r0, -1
/* 80204FB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80204FB4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80204FB8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80204FBC  7F 24 CB 78 */	mr r4, r25
/* 80204FC0  80 BF 01 10 */	lwz r5, 0x110(r31)
/* 80204FC4  38 E0 00 00 */	li r7, 0
/* 80204FC8  39 00 00 00 */	li r8, 0
/* 80204FCC  39 20 00 00 */	li r9, 0
/* 80204FD0  39 40 00 00 */	li r10, 0
/* 80204FD4  48 01 7F 35 */	bl readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
/* 80204FD8  38 00 00 FF */	li r0, 0xff
/* 80204FDC  98 1F 04 D9 */	stb r0, 0x4d9(r31)
/* 80204FE0  3B 00 00 00 */	li r24, 0
/* 80204FE4  3B 80 00 00 */	li r28, 0
/* 80204FE8  3B A0 00 00 */	li r29, 0
/* 80204FEC  3C 60 80 3A */	lis r3, ftext_tag@ha
/* 80204FF0  3B 63 80 98 */	addi r27, r3, ftext_tag@l
/* 80204FF4  3C 60 80 3A */	lis r3, text_tag@ha
/* 80204FF8  3B 43 80 48 */	addi r26, r3, text_tag@l
/* 80204FFC  3C 60 80 3A */	lis r3, d_meter_d_meter_button__stringBase0@ha
/* 80205000  3B 23 80 E8 */	addi r25, r3, d_meter_d_meter_button__stringBase0@l
lbl_80205004:
/* 80205004  80 7F 00 08 */	lwz r3, 8(r31)
/* 80205008  7C 9B EA 14 */	add r4, r27, r29
/* 8020500C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80205010  80 C4 00 04 */	lwz r6, 4(r4)
/* 80205014  81 83 00 00 */	lwz r12, 0(r3)
/* 80205018  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020501C  7D 89 03 A6 */	mtctr r12
/* 80205020  4E 80 04 21 */	bctrl 
/* 80205024  3B DC 00 84 */	addi r30, r28, 0x84
/* 80205028  7C 7F F1 2E */	stwx r3, r31, r30
/* 8020502C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80205030  7C 9A EA 14 */	add r4, r26, r29
/* 80205034  80 A4 00 00 */	lwz r5, 0(r4)
/* 80205038  80 C4 00 04 */	lwz r6, 4(r4)
/* 8020503C  81 83 00 00 */	lwz r12, 0(r3)
/* 80205040  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80205044  7D 89 03 A6 */	mtctr r12
/* 80205048  4E 80 04 21 */	bctrl 
/* 8020504C  38 00 00 00 */	li r0, 0
/* 80205050  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80205054  4B E0 F9 9D */	bl mDoExt_getMesgFont__Fv
/* 80205058  7C 64 1B 78 */	mr r4, r3
/* 8020505C  7C 7F F0 2E */	lwzx r3, r31, r30
/* 80205060  81 83 00 00 */	lwz r12, 0(r3)
/* 80205064  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80205068  7D 89 03 A6 */	mtctr r12
/* 8020506C  4E 80 04 21 */	bctrl 
/* 80205070  7C 7F F0 2E */	lwzx r3, r31, r30
/* 80205074  38 80 00 20 */	li r4, 0x20
/* 80205078  38 B9 00 21 */	addi r5, r25, 0x21
/* 8020507C  4C C6 31 82 */	crclr 6
/* 80205080  48 0F B6 CD */	bl setString__10J2DTextBoxFsPCce
/* 80205084  3B 18 00 01 */	addi r24, r24, 1
/* 80205088  2C 18 00 0A */	cmpwi r24, 0xa
/* 8020508C  3B 9C 00 04 */	addi r28, r28, 4
/* 80205090  3B BD 00 08 */	addi r29, r29, 8
/* 80205094  41 80 FF 70 */	blt lbl_80205004
/* 80205098  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8020509C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802050A0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802050A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 802050A8  D0 1F 03 5C */	stfs f0, 0x35c(r31)
/* 802050AC  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802050B0  48 0F 20 51 */	bl getBounds__7J2DPaneFv
/* 802050B4  C0 03 00 00 */	lfs f0, 0(r3)
/* 802050B8  D0 1F 03 60 */	stfs f0, 0x360(r31)
/* 802050BC  3B 00 00 00 */	li r24, 0
/* 802050C0  3B C0 00 00 */	li r30, 0
/* 802050C4  3B A0 00 00 */	li r29, 0
/* 802050C8  3B 80 00 00 */	li r28, 0
/* 802050CC  3C 60 80 3A */	lis r3, d_meter_d_meter_button__stringBase0@ha
/* 802050D0  3B 23 80 E8 */	addi r25, r3, d_meter_d_meter_button__stringBase0@l
/* 802050D4  C3 E2 AD 48 */	lfs f31, lit_4146(r2)
/* 802050D8  3B 40 00 16 */	li r26, 0x16
/* 802050DC  3B 60 00 00 */	li r27, 0
lbl_802050E0:
/* 802050E0  38 7C 01 14 */	addi r3, r28, 0x114
/* 802050E4  7C 7F 1A 14 */	add r3, r31, r3
/* 802050E8  38 99 00 21 */	addi r4, r25, 0x21
/* 802050EC  48 16 3A 41 */	bl strcpy
/* 802050F0  7C 7F EA 14 */	add r3, r31, r29
/* 802050F4  D3 E3 02 E8 */	stfs f31, 0x2e8(r3)
/* 802050F8  7C 9F C2 14 */	add r4, r31, r24
/* 802050FC  9B 44 04 BE */	stb r26, 0x4be(r4)
/* 80205100  D3 E3 02 F4 */	stfs f31, 0x2f4(r3)
/* 80205104  D3 E3 02 FC */	stfs f31, 0x2fc(r3)
/* 80205108  9B 64 04 D7 */	stb r27, 0x4d7(r4)
/* 8020510C  38 1E 04 B8 */	addi r0, r30, 0x4b8
/* 80205110  7F 7F 03 2E */	sthx r27, r31, r0
/* 80205114  9B 64 04 BC */	stb r27, 0x4bc(r4)
/* 80205118  3B 18 00 01 */	addi r24, r24, 1
/* 8020511C  2C 18 00 02 */	cmpwi r24, 2
/* 80205120  3B DE 00 02 */	addi r30, r30, 2
/* 80205124  3B BD 00 04 */	addi r29, r29, 4
/* 80205128  3B 9C 00 0F */	addi r28, r28, 0xf
/* 8020512C  41 80 FF B4 */	blt lbl_802050E0
/* 80205130  38 00 00 00 */	li r0, 0
/* 80205134  90 1F 00 80 */	stw r0, 0x80(r31)
/* 80205138  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8020513C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80205140  80 A4 00 04 */	lwz r5, 4(r4)
/* 80205144  38 C0 00 00 */	li r6, 0
/* 80205148  38 E0 00 00 */	li r7, 0
/* 8020514C  48 04 FD 71 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80205150  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80205154  D0 1F 03 64 */	stfs f0, 0x364(r31)
/* 80205158  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8020515C  D0 1F 03 68 */	stfs f0, 0x368(r31)
/* 80205160  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80205164  D0 1F 03 6C */	stfs f0, 0x36c(r31)
/* 80205168  C0 1F 03 64 */	lfs f0, 0x364(r31)
/* 8020516C  D0 1F 02 44 */	stfs f0, 0x244(r31)
/* 80205170  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80205174  38 61 00 CC */	addi r3, r1, 0xcc
/* 80205178  80 A4 00 04 */	lwz r5, 4(r4)
/* 8020517C  38 C0 00 00 */	li r6, 0
/* 80205180  38 E0 00 00 */	li r7, 0
/* 80205184  48 04 FD 39 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80205188  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8020518C  D0 1F 03 70 */	stfs f0, 0x370(r31)
/* 80205190  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80205194  D0 1F 03 74 */	stfs f0, 0x374(r31)
/* 80205198  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8020519C  D0 1F 03 78 */	stfs f0, 0x378(r31)
/* 802051A0  C0 1F 03 70 */	lfs f0, 0x370(r31)
/* 802051A4  D0 1F 02 48 */	stfs f0, 0x248(r31)
/* 802051A8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802051AC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802051B0  80 A4 00 04 */	lwz r5, 4(r4)
/* 802051B4  38 C0 00 00 */	li r6, 0
/* 802051B8  38 E0 00 00 */	li r7, 0
/* 802051BC  48 04 FD 01 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 802051C0  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 802051C4  D0 1F 03 7C */	stfs f0, 0x37c(r31)
/* 802051C8  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 802051CC  D0 1F 03 80 */	stfs f0, 0x380(r31)
/* 802051D0  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 802051D4  D0 1F 03 84 */	stfs f0, 0x384(r31)
/* 802051D8  C0 1F 03 7C */	lfs f0, 0x37c(r31)
/* 802051DC  D0 1F 02 4C */	stfs f0, 0x24c(r31)
/* 802051E0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802051E4  38 61 00 B4 */	addi r3, r1, 0xb4
/* 802051E8  80 A4 00 04 */	lwz r5, 4(r4)
/* 802051EC  38 C0 00 00 */	li r6, 0
/* 802051F0  38 E0 00 00 */	li r7, 0
/* 802051F4  48 04 FC C9 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 802051F8  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 802051FC  D0 1F 03 88 */	stfs f0, 0x388(r31)
/* 80205200  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80205204  D0 1F 03 8C */	stfs f0, 0x38c(r31)
/* 80205208  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8020520C  D0 1F 03 90 */	stfs f0, 0x390(r31)
/* 80205210  38 61 01 74 */	addi r3, r1, 0x174
/* 80205214  48 04 E7 1D */	bl __ct__8CPaneMgrFv
/* 80205218  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020521C  3C 80 7A 62 */	lis r4, 0x7A62 /* 0x7A62746E@ha */
/* 80205220  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x7A62746E@l */
/* 80205224  38 A0 00 00 */	li r5, 0
/* 80205228  81 83 00 00 */	lwz r12, 0(r3)
/* 8020522C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80205230  7D 89 03 A6 */	mtctr r12
/* 80205234  4E 80 04 21 */	bctrl 
/* 80205238  7C 65 1B 78 */	mr r5, r3
/* 8020523C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80205240  38 81 01 74 */	addi r4, r1, 0x174
/* 80205244  38 C1 01 44 */	addi r6, r1, 0x144
/* 80205248  38 E0 00 00 */	li r7, 0
/* 8020524C  39 00 00 00 */	li r8, 0
/* 80205250  39 20 00 00 */	li r9, 0
/* 80205254  48 04 FA 3D */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80205258  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 8020525C  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80205260  90 61 01 08 */	stw r3, 0x108(r1)
/* 80205264  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80205268  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 8020526C  90 01 01 10 */	stw r0, 0x110(r1)
/* 80205270  80 7F 00 08 */	lwz r3, 8(r31)
/* 80205274  3C 80 7A 62 */	lis r4, 0x7A62 /* 0x7A62746E@ha */
/* 80205278  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x7A62746E@l */
/* 8020527C  38 A0 00 00 */	li r5, 0
/* 80205280  81 83 00 00 */	lwz r12, 0(r3)
/* 80205284  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80205288  7D 89 03 A6 */	mtctr r12
/* 8020528C  4E 80 04 21 */	bctrl 
/* 80205290  7C 65 1B 78 */	mr r5, r3
/* 80205294  38 61 00 9C */	addi r3, r1, 0x9c
/* 80205298  38 81 01 74 */	addi r4, r1, 0x174
/* 8020529C  38 C1 01 44 */	addi r6, r1, 0x144
/* 802052A0  38 E0 00 03 */	li r7, 3
/* 802052A4  39 00 00 00 */	li r8, 0
/* 802052A8  39 20 00 00 */	li r9, 0
/* 802052AC  48 04 F9 E5 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 802052B0  80 61 00 9C */	lwz r3, 0x9c(r1)
/* 802052B4  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 802052B8  90 61 00 FC */	stw r3, 0xfc(r1)
/* 802052BC  90 01 01 00 */	stw r0, 0x100(r1)
/* 802052C0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802052C4  90 01 01 04 */	stw r0, 0x104(r1)
/* 802052C8  80 7F 00 08 */	lwz r3, 8(r31)
/* 802052CC  3C 80 64 6F */	lis r4, 0x646F /* 0x646F6E61@ha */
/* 802052D0  38 C4 6E 61 */	addi r6, r4, 0x6E61 /* 0x646F6E61@l */
/* 802052D4  38 A0 6D 69 */	li r5, 0x6d69
/* 802052D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802052DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802052E0  7D 89 03 A6 */	mtctr r12
/* 802052E4  4E 80 04 21 */	bctrl 
/* 802052E8  7C 65 1B 78 */	mr r5, r3
/* 802052EC  38 61 00 90 */	addi r3, r1, 0x90
/* 802052F0  38 81 01 74 */	addi r4, r1, 0x174
/* 802052F4  38 C1 01 14 */	addi r6, r1, 0x114
/* 802052F8  38 E0 00 00 */	li r7, 0
/* 802052FC  39 00 00 00 */	li r8, 0
/* 80205300  39 20 00 00 */	li r9, 0
/* 80205304  48 04 F9 8D */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80205308  80 61 00 90 */	lwz r3, 0x90(r1)
/* 8020530C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80205310  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 80205314  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80205318  80 01 00 98 */	lwz r0, 0x98(r1)
/* 8020531C  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80205320  80 7F 00 08 */	lwz r3, 8(r31)
/* 80205324  3C 80 64 6F */	lis r4, 0x646F /* 0x646F6E61@ha */
/* 80205328  38 C4 6E 61 */	addi r6, r4, 0x6E61 /* 0x646F6E61@l */
/* 8020532C  38 A0 6D 69 */	li r5, 0x6d69
/* 80205330  81 83 00 00 */	lwz r12, 0(r3)
/* 80205334  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80205338  7D 89 03 A6 */	mtctr r12
/* 8020533C  4E 80 04 21 */	bctrl 
/* 80205340  7C 65 1B 78 */	mr r5, r3
/* 80205344  38 61 00 84 */	addi r3, r1, 0x84
/* 80205348  38 81 01 74 */	addi r4, r1, 0x174
/* 8020534C  38 C1 01 14 */	addi r6, r1, 0x114
/* 80205350  38 E0 00 03 */	li r7, 3
/* 80205354  39 00 00 00 */	li r8, 0
/* 80205358  39 20 00 00 */	li r9, 0
/* 8020535C  48 04 F9 35 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80205360  80 61 00 84 */	lwz r3, 0x84(r1)
/* 80205364  80 01 00 88 */	lwz r0, 0x88(r1)
/* 80205368  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 8020536C  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 80205370  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80205374  90 01 00 EC */	stw r0, 0xec(r1)
/* 80205378  C0 21 01 08 */	lfs f1, 0x108(r1)
/* 8020537C  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80205380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80205384  40 81 00 0C */	ble lbl_80205390
/* 80205388  FC 40 00 90 */	fmr f2, f0
/* 8020538C  48 00 00 08 */	b lbl_80205394
lbl_80205390:
/* 80205390  FC 40 08 90 */	fmr f2, f1
lbl_80205394:
/* 80205394  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 80205398  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8020539C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802053A0  40 81 00 08 */	ble lbl_802053A8
/* 802053A4  48 00 00 08 */	b lbl_802053AC
lbl_802053A8:
/* 802053A8  FC 20 00 90 */	fmr f1, f0
lbl_802053AC:
/* 802053AC  EC 22 08 2A */	fadds f1, f2, f1
/* 802053B0  C0 02 AD 70 */	lfs f0, lit_5628(r2)
/* 802053B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802053B8  D0 1F 02 50 */	stfs f0, 0x250(r31)
/* 802053BC  38 61 01 74 */	addi r3, r1, 0x174
/* 802053C0  38 80 FF FF */	li r4, -1
/* 802053C4  48 04 E6 55 */	bl __dt__8CPaneMgrFv
/* 802053C8  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 802053CC  38 61 00 78 */	addi r3, r1, 0x78
/* 802053D0  80 A4 00 04 */	lwz r5, 4(r4)
/* 802053D4  38 C0 00 00 */	li r6, 0
/* 802053D8  38 E0 00 00 */	li r7, 0
/* 802053DC  48 04 FA E1 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 802053E0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 802053E4  D0 1F 03 94 */	stfs f0, 0x394(r31)
/* 802053E8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 802053EC  D0 1F 03 98 */	stfs f0, 0x398(r31)
/* 802053F0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 802053F4  D0 1F 03 9C */	stfs f0, 0x39c(r31)
/* 802053F8  C0 1F 03 94 */	lfs f0, 0x394(r31)
/* 802053FC  D0 1F 02 54 */	stfs f0, 0x254(r31)
/* 80205400  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80205404  38 61 00 6C */	addi r3, r1, 0x6c
/* 80205408  80 A4 00 04 */	lwz r5, 4(r4)
/* 8020540C  38 C0 00 00 */	li r6, 0
/* 80205410  38 E0 00 00 */	li r7, 0
/* 80205414  48 04 FA A9 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80205418  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8020541C  D0 1F 03 A0 */	stfs f0, 0x3a0(r31)
/* 80205420  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80205424  D0 1F 03 A4 */	stfs f0, 0x3a4(r31)
/* 80205428  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8020542C  D0 1F 03 A8 */	stfs f0, 0x3a8(r31)
/* 80205430  C0 1F 03 A0 */	lfs f0, 0x3a0(r31)
/* 80205434  D0 1F 02 58 */	stfs f0, 0x258(r31)
/* 80205438  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 8020543C  38 61 00 60 */	addi r3, r1, 0x60
/* 80205440  80 A4 00 04 */	lwz r5, 4(r4)
/* 80205444  38 C0 00 00 */	li r6, 0
/* 80205448  38 E0 00 00 */	li r7, 0
/* 8020544C  48 04 FA 71 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80205450  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80205454  D0 1F 03 AC */	stfs f0, 0x3ac(r31)
/* 80205458  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8020545C  D0 1F 03 B0 */	stfs f0, 0x3b0(r31)
/* 80205460  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80205464  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 80205468  C0 1F 03 AC */	lfs f0, 0x3ac(r31)
/* 8020546C  D0 1F 02 5C */	stfs f0, 0x25c(r31)
/* 80205470  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 80205474  38 61 00 54 */	addi r3, r1, 0x54
/* 80205478  80 A4 00 04 */	lwz r5, 4(r4)
/* 8020547C  38 C0 00 00 */	li r6, 0
/* 80205480  38 E0 00 00 */	li r7, 0
/* 80205484  48 04 FA 39 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80205488  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8020548C  D0 1F 03 B8 */	stfs f0, 0x3b8(r31)
/* 80205490  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80205494  D0 1F 03 BC */	stfs f0, 0x3bc(r31)
/* 80205498  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8020549C  D0 1F 03 C0 */	stfs f0, 0x3c0(r31)
/* 802054A0  C0 1F 03 B8 */	lfs f0, 0x3b8(r31)
/* 802054A4  D0 1F 02 60 */	stfs f0, 0x260(r31)
/* 802054A8  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 802054AC  38 61 00 48 */	addi r3, r1, 0x48
/* 802054B0  80 A4 00 04 */	lwz r5, 4(r4)
/* 802054B4  38 C0 00 00 */	li r6, 0
/* 802054B8  38 E0 00 00 */	li r7, 0
/* 802054BC  48 04 FA 01 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 802054C0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 802054C4  D0 1F 03 C4 */	stfs f0, 0x3c4(r31)
/* 802054C8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 802054CC  D0 1F 03 C8 */	stfs f0, 0x3c8(r31)
/* 802054D0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 802054D4  D0 1F 03 CC */	stfs f0, 0x3cc(r31)
/* 802054D8  C0 3F 03 C4 */	lfs f1, 0x3c4(r31)
/* 802054DC  C0 02 AD 78 */	lfs f0, lit_5630(r2)
/* 802054E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 802054E4  D0 1F 02 64 */	stfs f0, 0x264(r31)
/* 802054E8  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802054EC  D0 1F 02 68 */	stfs f0, 0x268(r31)
/* 802054F0  D0 1F 02 6C */	stfs f0, 0x26c(r31)
/* 802054F4  D0 1F 02 70 */	stfs f0, 0x270(r31)
/* 802054F8  D0 1F 02 74 */	stfs f0, 0x274(r31)
/* 802054FC  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80205500  38 61 00 3C */	addi r3, r1, 0x3c
/* 80205504  80 A4 00 04 */	lwz r5, 4(r4)
/* 80205508  38 C0 00 00 */	li r6, 0
/* 8020550C  38 E0 00 00 */	li r7, 0
/* 80205510  48 04 F9 AD */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80205514  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80205518  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 8020551C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80205520  D0 1F 04 04 */	stfs f0, 0x404(r31)
/* 80205524  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80205528  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 8020552C  C0 1F 04 00 */	lfs f0, 0x400(r31)
/* 80205530  D0 1F 02 78 */	stfs f0, 0x278(r31)
/* 80205534  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80205538  D0 1F 02 7C */	stfs f0, 0x27c(r31)
/* 8020553C  D0 1F 02 80 */	stfs f0, 0x280(r31)
/* 80205540  D0 1F 02 84 */	stfs f0, 0x284(r31)
/* 80205544  D0 1F 02 88 */	stfs f0, 0x288(r31)
/* 80205548  D0 1F 02 8C */	stfs f0, 0x28c(r31)
/* 8020554C  D0 1F 02 90 */	stfs f0, 0x290(r31)
/* 80205550  D0 1F 02 94 */	stfs f0, 0x294(r31)
/* 80205554  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 80205558  38 61 00 30 */	addi r3, r1, 0x30
/* 8020555C  80 A4 00 04 */	lwz r5, 4(r4)
/* 80205560  38 C0 00 00 */	li r6, 0
/* 80205564  38 E0 00 00 */	li r7, 0
/* 80205568  48 04 F9 55 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8020556C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80205570  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 80205574  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80205578  D0 1F 04 64 */	stfs f0, 0x464(r31)
/* 8020557C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80205580  D0 1F 04 68 */	stfs f0, 0x468(r31)
/* 80205584  C0 1F 04 60 */	lfs f0, 0x460(r31)
/* 80205588  D0 1F 02 98 */	stfs f0, 0x298(r31)
/* 8020558C  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80205590  38 61 00 24 */	addi r3, r1, 0x24
/* 80205594  80 A4 00 04 */	lwz r5, 4(r4)
/* 80205598  38 C0 00 00 */	li r6, 0
/* 8020559C  38 E0 00 00 */	li r7, 0
/* 802055A0  48 04 F9 1D */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 802055A4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802055A8  D0 1F 04 6C */	stfs f0, 0x46c(r31)
/* 802055AC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802055B0  D0 1F 04 70 */	stfs f0, 0x470(r31)
/* 802055B4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802055B8  D0 1F 04 74 */	stfs f0, 0x474(r31)
/* 802055BC  C0 1F 04 6C */	lfs f0, 0x46c(r31)
/* 802055C0  D0 1F 02 E0 */	stfs f0, 0x2e0(r31)
/* 802055C4  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 802055C8  38 61 00 18 */	addi r3, r1, 0x18
/* 802055CC  80 A4 00 04 */	lwz r5, 4(r4)
/* 802055D0  38 C0 00 00 */	li r6, 0
/* 802055D4  38 E0 00 00 */	li r7, 0
/* 802055D8  48 04 F8 E5 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 802055DC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802055E0  D0 1F 04 78 */	stfs f0, 0x478(r31)
/* 802055E4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802055E8  D0 1F 04 7C */	stfs f0, 0x47c(r31)
/* 802055EC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802055F0  D0 1F 04 80 */	stfs f0, 0x480(r31)
/* 802055F4  C0 1F 04 78 */	lfs f0, 0x478(r31)
/* 802055F8  D0 1F 02 E4 */	stfs f0, 0x2e4(r31)
/* 802055FC  C0 42 AD 48 */	lfs f2, lit_4146(r2)
/* 80205600  D0 5F 04 E0 */	stfs f2, 0x4e0(r31)
/* 80205604  D0 5F 04 E4 */	stfs f2, 0x4e4(r31)
/* 80205608  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 8020560C  D0 1F 04 E8 */	stfs f0, 0x4e8(r31)
/* 80205610  D0 5F 04 EC */	stfs f2, 0x4ec(r31)
/* 80205614  D0 5F 04 F0 */	stfs f2, 0x4f0(r31)
/* 80205618  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8020561C  D0 5F 04 F8 */	stfs f2, 0x4f8(r31)
/* 80205620  D0 5F 04 FC */	stfs f2, 0x4fc(r31)
/* 80205624  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80205628  D0 5F 05 04 */	stfs f2, 0x504(r31)
/* 8020562C  D0 5F 05 08 */	stfs f2, 0x508(r31)
/* 80205630  D0 1F 05 0C */	stfs f0, 0x50c(r31)
/* 80205634  D0 5F 05 10 */	stfs f2, 0x510(r31)
/* 80205638  D0 5F 05 14 */	stfs f2, 0x514(r31)
/* 8020563C  D0 1F 05 18 */	stfs f0, 0x518(r31)
/* 80205640  D0 5F 05 1C */	stfs f2, 0x51c(r31)
/* 80205644  D0 5F 05 20 */	stfs f2, 0x520(r31)
/* 80205648  D0 1F 05 24 */	stfs f0, 0x524(r31)
/* 8020564C  D0 5F 05 28 */	stfs f2, 0x528(r31)
/* 80205650  D0 5F 05 2C */	stfs f2, 0x52c(r31)
/* 80205654  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80205658  D0 5F 05 34 */	stfs f2, 0x534(r31)
/* 8020565C  D0 5F 05 38 */	stfs f2, 0x538(r31)
/* 80205660  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80205664  D0 5F 05 40 */	stfs f2, 0x540(r31)
/* 80205668  D0 5F 05 44 */	stfs f2, 0x544(r31)
/* 8020566C  D0 1F 05 48 */	stfs f0, 0x548(r31)
/* 80205670  D0 5F 05 4C */	stfs f2, 0x54c(r31)
/* 80205674  D0 5F 05 50 */	stfs f2, 0x550(r31)
/* 80205678  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8020567C  D0 5F 05 58 */	stfs f2, 0x558(r31)
/* 80205680  D0 5F 05 5C */	stfs f2, 0x55c(r31)
/* 80205684  D0 1F 05 60 */	stfs f0, 0x560(r31)
/* 80205688  D0 5F 05 64 */	stfs f2, 0x564(r31)
/* 8020568C  D0 5F 05 68 */	stfs f2, 0x568(r31)
/* 80205690  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 80205694  D0 5F 05 70 */	stfs f2, 0x570(r31)
/* 80205698  D0 5F 05 74 */	stfs f2, 0x574(r31)
/* 8020569C  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 802056A0  D0 5F 05 7C */	stfs f2, 0x57c(r31)
/* 802056A4  D0 5F 05 80 */	stfs f2, 0x580(r31)
/* 802056A8  D0 1F 05 84 */	stfs f0, 0x584(r31)
/* 802056AC  D0 5F 05 88 */	stfs f2, 0x588(r31)
/* 802056B0  D0 5F 05 8C */	stfs f2, 0x58c(r31)
/* 802056B4  D0 1F 05 90 */	stfs f0, 0x590(r31)
/* 802056B8  D0 5F 05 94 */	stfs f2, 0x594(r31)
/* 802056BC  D0 5F 05 98 */	stfs f2, 0x598(r31)
/* 802056C0  D0 1F 05 9C */	stfs f0, 0x59c(r31)
/* 802056C4  D0 5F 05 A0 */	stfs f2, 0x5a0(r31)
/* 802056C8  D0 5F 05 A4 */	stfs f2, 0x5a4(r31)
/* 802056CC  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 802056D0  D0 5F 05 AC */	stfs f2, 0x5ac(r31)
/* 802056D4  D0 5F 05 B0 */	stfs f2, 0x5b0(r31)
/* 802056D8  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 802056DC  D0 5F 05 B8 */	stfs f2, 0x5b8(r31)
/* 802056E0  D0 5F 05 BC */	stfs f2, 0x5bc(r31)
/* 802056E4  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 802056E8  D0 5F 05 C4 */	stfs f2, 0x5c4(r31)
/* 802056EC  D0 5F 05 C8 */	stfs f2, 0x5c8(r31)
/* 802056F0  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 802056F4  D0 5F 05 D0 */	stfs f2, 0x5d0(r31)
/* 802056F8  D0 5F 05 D4 */	stfs f2, 0x5d4(r31)
/* 802056FC  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 80205700  D0 5F 05 DC */	stfs f2, 0x5dc(r31)
/* 80205704  D0 5F 05 E0 */	stfs f2, 0x5e0(r31)
/* 80205708  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 8020570C  D0 5F 05 E8 */	stfs f2, 0x5e8(r31)
/* 80205710  D0 5F 05 EC */	stfs f2, 0x5ec(r31)
/* 80205714  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80205718  D0 5F 05 F4 */	stfs f2, 0x5f4(r31)
/* 8020571C  D0 5F 05 F8 */	stfs f2, 0x5f8(r31)
/* 80205720  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 80205724  D0 5F 06 04 */	stfs f2, 0x604(r31)
/* 80205728  D0 5F 06 00 */	stfs f2, 0x600(r31)
/* 8020572C  D0 5F 06 0C */	stfs f2, 0x60c(r31)
/* 80205730  D0 5F 06 08 */	stfs f2, 0x608(r31)
/* 80205734  D0 1F 06 14 */	stfs f0, 0x614(r31)
/* 80205738  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 8020573C  D0 5F 06 18 */	stfs f2, 0x618(r31)
/* 80205740  D0 5F 06 1C */	stfs f2, 0x61c(r31)
/* 80205744  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 80205748  D0 5F 06 24 */	stfs f2, 0x624(r31)
/* 8020574C  D0 5F 06 28 */	stfs f2, 0x628(r31)
/* 80205750  D0 1F 06 2C */	stfs f0, 0x62c(r31)
/* 80205754  C0 22 AD 7C */	lfs f1, lit_5631(r2)
/* 80205758  D0 3F 01 34 */	stfs f1, 0x134(r31)
/* 8020575C  C0 02 AD 80 */	lfs f0, lit_5632(r2)
/* 80205760  D0 1F 01 38 */	stfs f0, 0x138(r31)
/* 80205764  C0 02 AD 84 */	lfs f0, lit_5633(r2)
/* 80205768  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 8020576C  C0 02 AD 88 */	lfs f0, lit_5634(r2)
/* 80205770  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 80205774  C0 02 AD 8C */	lfs f0, lit_5635(r2)
/* 80205778  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 8020577C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80205780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80205784  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80205788  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8020578C  41 82 00 0C */	beq lbl_80205798
/* 80205790  D0 5F 01 48 */	stfs f2, 0x148(r31)
/* 80205794  48 00 00 08 */	b lbl_8020579C
lbl_80205798:
/* 80205798  D0 3F 01 48 */	stfs f1, 0x148(r31)
lbl_8020579C:
/* 8020579C  C0 02 AD 7C */	lfs f0, lit_5631(r2)
/* 802057A0  D0 1F 01 4C */	stfs f0, 0x14c(r31)
/* 802057A4  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 802057A8  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 802057AC  C0 02 AD 90 */	lfs f0, lit_5636(r2)
/* 802057B0  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 802057B4  D0 1F 01 5C */	stfs f0, 0x15c(r31)
/* 802057B8  D0 1F 01 60 */	stfs f0, 0x160(r31)
/* 802057BC  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 802057C0  D0 1F 01 68 */	stfs f0, 0x168(r31)
/* 802057C4  D0 1F 01 6C */	stfs f0, 0x16c(r31)
/* 802057C8  D0 1F 01 70 */	stfs f0, 0x170(r31)
/* 802057CC  D0 1F 01 74 */	stfs f0, 0x174(r31)
/* 802057D0  D0 1F 01 78 */	stfs f0, 0x178(r31)
/* 802057D4  D0 1F 01 7C */	stfs f0, 0x17c(r31)
/* 802057D8  D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 802057DC  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 802057E0  D0 1F 01 88 */	stfs f0, 0x188(r31)
/* 802057E4  38 80 00 00 */	li r4, 0
/* 802057E8  38 60 00 00 */	li r3, 0
/* 802057EC  38 00 00 16 */	li r0, 0x16
/* 802057F0  7C 09 03 A6 */	mtctr r0
lbl_802057F4:
/* 802057F4  38 04 04 C0 */	addi r0, r4, 0x4c0
/* 802057F8  7C 7F 01 AE */	stbx r3, r31, r0
/* 802057FC  38 84 00 01 */	addi r4, r4, 1
/* 80205800  42 00 FF F4 */	bdnz lbl_802057F4
/* 80205804  38 00 00 00 */	li r0, 0
/* 80205808  98 1F 04 D6 */	stb r0, 0x4d6(r31)
/* 8020580C  7F E3 FB 78 */	mr r3, r31
/* 80205810  48 00 04 91 */	bl updateButton__14dMeterButton_cFv
/* 80205814  E3 E1 02 08 */	psq_l f31, 520(r1), 0, 0 /* qr0 */
/* 80205818  CB E1 02 00 */	lfd f31, 0x200(r1)
/* 8020581C  39 61 02 00 */	addi r11, r1, 0x200
/* 80205820  48 15 C9 F5 */	bl _restgpr_24
/* 80205824  80 01 02 14 */	lwz r0, 0x214(r1)
/* 80205828  7C 08 03 A6 */	mtlr r0
/* 8020582C  38 21 02 10 */	addi r1, r1, 0x210
/* 80205830  4E 80 00 20 */	blr 
