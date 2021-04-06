lbl_80870D88:
/* 80870D88  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80870D8C  7C 08 02 A6 */	mflr r0
/* 80870D90  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80870D94  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80870D98  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80870D9C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80870DA0  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80870DA4  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 80870DA8  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 80870DAC  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 80870DB0  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 80870DB4  39 61 00 60 */	addi r11, r1, 0x60
/* 80870DB8  4B AF 14 21 */	bl _savegpr_28
/* 80870DBC  7C 7D 1B 78 */	mr r29, r3
/* 80870DC0  7C 9E 23 78 */	mr r30, r4
/* 80870DC4  7C BC 2B 78 */	mr r28, r5
/* 80870DC8  FF 80 10 90 */	fmr f28, f2
/* 80870DCC  FF A0 18 90 */	fmr f29, f3
/* 80870DD0  FF C0 20 90 */	fmr f30, f4
/* 80870DD4  FF E0 28 90 */	fmr f31, f5
/* 80870DD8  3C 60 80 87 */	lis r3, lit_3884@ha /* 0x8087258C@ha */
/* 80870DDC  3B E3 25 8C */	addi r31, r3, lit_3884@l /* 0x8087258C@l */
/* 80870DE0  38 60 00 01 */	li r3, 1
/* 80870DE4  4B AE CD 4D */	bl GXSetNumChans
/* 80870DE8  38 60 00 00 */	li r3, 0
/* 80870DEC  38 80 00 00 */	li r4, 0
/* 80870DF0  38 A0 00 00 */	li r5, 0
/* 80870DF4  38 C0 00 00 */	li r6, 0
/* 80870DF8  38 E0 00 00 */	li r7, 0
/* 80870DFC  39 00 00 00 */	li r8, 0
/* 80870E00  39 20 00 02 */	li r9, 2
/* 80870E04  4B AE CD 69 */	bl GXSetChanCtrl
/* 80870E08  38 60 00 00 */	li r3, 0
/* 80870E0C  4B AE AF F1 */	bl GXSetNumTexGens
/* 80870E10  38 60 00 01 */	li r3, 1
/* 80870E14  4B AE EA 7D */	bl GXSetNumTevStages
/* 80870E18  38 60 00 00 */	li r3, 0
/* 80870E1C  38 80 00 FF */	li r4, 0xff
/* 80870E20  38 A0 00 FF */	li r5, 0xff
/* 80870E24  38 C0 00 04 */	li r6, 4
/* 80870E28  4B AE E8 CD */	bl GXSetTevOrder
/* 80870E2C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80870E30  90 01 00 0C */	stw r0, 0xc(r1)
/* 80870E34  38 60 00 01 */	li r3, 1
/* 80870E38  38 81 00 0C */	addi r4, r1, 0xc
/* 80870E3C  4B AE E5 41 */	bl GXSetTevColor
/* 80870E40  38 60 00 00 */	li r3, 0
/* 80870E44  38 80 00 0F */	li r4, 0xf
/* 80870E48  38 A0 00 0F */	li r5, 0xf
/* 80870E4C  38 C0 00 0F */	li r6, 0xf
/* 80870E50  38 E0 00 02 */	li r7, 2
/* 80870E54  4B AE E3 D1 */	bl GXSetTevColorIn
/* 80870E58  38 60 00 00 */	li r3, 0
/* 80870E5C  38 80 00 00 */	li r4, 0
/* 80870E60  38 A0 00 00 */	li r5, 0
/* 80870E64  38 C0 00 00 */	li r6, 0
/* 80870E68  38 E0 00 01 */	li r7, 1
/* 80870E6C  39 00 00 00 */	li r8, 0
/* 80870E70  4B AE E4 3D */	bl GXSetTevColorOp
/* 80870E74  38 60 00 00 */	li r3, 0
/* 80870E78  38 80 00 07 */	li r4, 7
/* 80870E7C  38 A0 00 07 */	li r5, 7
/* 80870E80  38 C0 00 07 */	li r6, 7
/* 80870E84  38 E0 00 01 */	li r7, 1
/* 80870E88  4B AE E3 E1 */	bl GXSetTevAlphaIn
/* 80870E8C  38 60 00 00 */	li r3, 0
/* 80870E90  38 80 00 00 */	li r4, 0
/* 80870E94  38 A0 00 00 */	li r5, 0
/* 80870E98  38 C0 00 00 */	li r6, 0
/* 80870E9C  38 E0 00 01 */	li r7, 1
/* 80870EA0  39 00 00 00 */	li r8, 0
/* 80870EA4  4B AE E4 71 */	bl GXSetTevAlphaOp
/* 80870EA8  38 60 00 01 */	li r3, 1
/* 80870EAC  4B AE EE 25 */	bl GXSetZCompLoc
/* 80870EB0  38 60 00 01 */	li r3, 1
/* 80870EB4  38 80 00 04 */	li r4, 4
/* 80870EB8  38 A0 00 05 */	li r5, 5
/* 80870EBC  38 C0 00 07 */	li r6, 7
/* 80870EC0  4B AE ED 31 */	bl GXSetBlendMode
/* 80870EC4  38 60 00 04 */	li r3, 4
/* 80870EC8  38 80 00 00 */	li r4, 0
/* 80870ECC  38 A0 00 01 */	li r5, 1
/* 80870ED0  38 C0 00 04 */	li r6, 4
/* 80870ED4  38 E0 00 00 */	li r7, 0
/* 80870ED8  4B AE E7 4D */	bl GXSetAlphaCompare
/* 80870EDC  3C 60 80 45 */	lis r3, g_clearColor@ha /* 0x80450600@ha */
/* 80870EE0  80 03 06 00 */	lwz r0, g_clearColor@l(r3)  /* 0x80450600@l */
/* 80870EE4  90 01 00 08 */	stw r0, 8(r1)
/* 80870EE8  38 60 00 00 */	li r3, 0
/* 80870EEC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80870EF0  FC 40 08 90 */	fmr f2, f1
/* 80870EF4  FC 60 08 90 */	fmr f3, f1
/* 80870EF8  FC 80 08 90 */	fmr f4, f1
/* 80870EFC  38 81 00 08 */	addi r4, r1, 8
/* 80870F00  4B AE E9 B9 */	bl GXSetFog
/* 80870F04  38 60 00 00 */	li r3, 0
/* 80870F08  38 80 00 00 */	li r4, 0
/* 80870F0C  38 A0 00 00 */	li r5, 0
/* 80870F10  4B AE EB BD */	bl GXSetFogRangeAdj
/* 80870F14  38 60 00 02 */	li r3, 2
/* 80870F18  4B AE BA 6D */	bl GXSetCullMode
/* 80870F1C  38 60 00 00 */	li r3, 0
/* 80870F20  4B AE E1 B5 */	bl GXSetNumIndStages
/* 80870F24  4B AE A6 69 */	bl GXClearVtxDesc
/* 80870F28  38 60 00 09 */	li r3, 9
/* 80870F2C  38 80 00 01 */	li r4, 1
/* 80870F30  4B AE 9F 89 */	bl GXSetVtxDesc
/* 80870F34  38 60 00 00 */	li r3, 0
/* 80870F38  38 80 00 09 */	li r4, 9
/* 80870F3C  38 A0 00 01 */	li r5, 1
/* 80870F40  38 C0 00 04 */	li r6, 4
/* 80870F44  38 E0 00 00 */	li r7, 0
/* 80870F48  4B AE A6 7D */	bl GXSetVtxAttrFmt
/* 80870F4C  38 60 00 01 */	li r3, 1
/* 80870F50  38 80 00 06 */	li r4, 6
/* 80870F54  38 A0 00 01 */	li r5, 1
/* 80870F58  4B AE ED 45 */	bl GXSetZMode
/* 80870F5C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80870F60  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80870F64  38 80 00 00 */	li r4, 0
/* 80870F68  4B AE F2 E5 */	bl GXLoadPosMtxImm
/* 80870F6C  38 60 00 00 */	li r3, 0
/* 80870F70  4B AE F3 7D */	bl GXSetCurrentMtx
/* 80870F74  38 60 00 80 */	li r3, 0x80
/* 80870F78  38 80 00 00 */	li r4, 0
/* 80870F7C  38 A0 00 04 */	li r5, 4
/* 80870F80  4B AE B7 E5 */	bl GXBegin
/* 80870F84  38 60 00 00 */	li r3, 0
/* 80870F88  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80870F8C  38 00 00 04 */	li r0, 4
/* 80870F90  7C 09 03 A6 */	mtctr r0
lbl_80870F94:
/* 80870F94  7C BD 1A 14 */	add r5, r29, r3
/* 80870F98  C0 45 01 3C */	lfs f2, 0x13c(r5)
/* 80870F9C  C0 25 01 38 */	lfs f1, 0x138(r5)
/* 80870FA0  C0 05 01 34 */	lfs f0, 0x134(r5)
/* 80870FA4  D0 04 80 00 */	stfs f0, 0x8000(r4)  /* 0xCC008000@l */
/* 80870FA8  D0 24 80 00 */	stfs f1, -0x8000(r4)
/* 80870FAC  D0 44 80 00 */	stfs f2, -0x8000(r4)
/* 80870FB0  38 63 00 0C */	addi r3, r3, 0xc
/* 80870FB4  42 00 FF E0 */	bdnz lbl_80870F94
/* 80870FB8  C0 3D 01 80 */	lfs f1, 0x180(r29)
/* 80870FBC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80870FC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80870FC4  40 81 02 54 */	ble lbl_80871218
/* 80870FC8  38 60 00 01 */	li r3, 1
/* 80870FCC  38 80 00 07 */	li r4, 7
/* 80870FD0  38 A0 00 01 */	li r5, 1
/* 80870FD4  4B AE EC C9 */	bl GXSetZMode
/* 80870FD8  38 60 00 00 */	li r3, 0
/* 80870FDC  4B AE EC 69 */	bl GXSetColorUpdate
/* 80870FE0  38 60 00 00 */	li r3, 0
/* 80870FE4  4B AE EC 8D */	bl GXSetAlphaUpdate
/* 80870FE8  C0 7C 00 00 */	lfs f3, 0(r28)
/* 80870FEC  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80870FF0  38 61 00 10 */	addi r3, r1, 0x10
/* 80870FF4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80870FF8  EC 41 00 2A */	fadds f2, f1, f0
/* 80870FFC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80871000  EC 83 00 2A */	fadds f4, f3, f0
/* 80871004  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 80871008  C0 DF 00 10 */	lfs f6, 0x10(r31)
/* 8087100C  4B AD 5F ED */	bl C_MTXOrtho
/* 80871010  38 61 00 10 */	addi r3, r1, 0x10
/* 80871014  38 80 00 01 */	li r4, 1
/* 80871018  4B AE F0 BD */	bl GXSetProjection
/* 8087101C  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 80871020  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 80871024  38 80 00 00 */	li r4, 0
/* 80871028  4B AE F2 25 */	bl GXLoadPosMtxImm
/* 8087102C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80871030  EF 9C 00 28 */	fsubs f28, f28, f0
/* 80871034  EF BD 00 28 */	fsubs f29, f29, f0
/* 80871038  EF DE 00 2A */	fadds f30, f30, f0
/* 8087103C  EF FF 00 2A */	fadds f31, f31, f0
/* 80871040  38 60 00 80 */	li r3, 0x80
/* 80871044  38 80 00 00 */	li r4, 0
/* 80871048  38 A0 00 04 */	li r5, 4
/* 8087104C  4B AE B7 19 */	bl GXBegin
/* 80871050  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 80871054  D3 83 80 00 */	stfs f28, 0x8000(r3)  /* 0xCC008000@l */
/* 80871058  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 8087105C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80871060  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80871064  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 80871068  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 8087106C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80871070  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80871074  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 80871078  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 8087107C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80871080  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80871084  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 80871088  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 8087108C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80871090  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80871094  7F C3 F3 78 */	mr r3, r30
/* 80871098  4B AE F0 E1 */	bl GXSetProjectionv
/* 8087109C  38 60 00 01 */	li r3, 1
/* 808710A0  38 80 00 07 */	li r4, 7
/* 808710A4  38 A0 00 01 */	li r5, 1
/* 808710A8  4B AE EB F5 */	bl GXSetZMode
/* 808710AC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 808710B0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 808710B4  38 80 00 00 */	li r4, 0
/* 808710B8  4B AE F1 95 */	bl GXLoadPosMtxImm
/* 808710BC  38 7D 00 10 */	addi r3, r29, 0x10
/* 808710C0  4B AE D1 79 */	bl GXGetTexObjWidth
/* 808710C4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 808710C8  41 82 01 0C */	beq lbl_808711D4
/* 808710CC  38 7D 00 10 */	addi r3, r29, 0x10
/* 808710D0  38 80 00 00 */	li r4, 0
/* 808710D4  4B AE D3 41 */	bl GXLoadTexObj
/* 808710D8  38 60 00 00 */	li r3, 0
/* 808710DC  38 80 00 01 */	li r4, 1
/* 808710E0  38 A0 00 04 */	li r5, 4
/* 808710E4  38 C0 00 3C */	li r6, 0x3c
/* 808710E8  38 E0 00 00 */	li r7, 0
/* 808710EC  39 00 00 7D */	li r8, 0x7d
/* 808710F0  4B AE AA 8D */	bl GXSetTexCoordGen2
/* 808710F4  38 60 00 00 */	li r3, 0
/* 808710F8  38 80 00 00 */	li r4, 0
/* 808710FC  38 A0 00 00 */	li r5, 0
/* 80871100  38 C0 00 FF */	li r6, 0xff
/* 80871104  4B AE E5 F1 */	bl GXSetTevOrder
/* 80871108  38 60 00 00 */	li r3, 0
/* 8087110C  38 80 00 07 */	li r4, 7
/* 80871110  38 A0 00 07 */	li r5, 7
/* 80871114  38 C0 00 07 */	li r6, 7
/* 80871118  38 E0 00 04 */	li r7, 4
/* 8087111C  4B AE E1 4D */	bl GXSetTevAlphaIn
/* 80871120  38 60 00 00 */	li r3, 0
/* 80871124  38 80 00 00 */	li r4, 0
/* 80871128  38 A0 00 00 */	li r5, 0
/* 8087112C  38 C0 00 00 */	li r6, 0
/* 80871130  38 E0 00 01 */	li r7, 1
/* 80871134  39 00 00 00 */	li r8, 0
/* 80871138  4B AE E1 DD */	bl GXSetTevAlphaOp
/* 8087113C  38 60 00 00 */	li r3, 0
/* 80871140  4B AE C9 F1 */	bl GXSetNumChans
/* 80871144  38 60 00 01 */	li r3, 1
/* 80871148  4B AE AC B5 */	bl GXSetNumTexGens
/* 8087114C  38 60 00 00 */	li r3, 0
/* 80871150  4B AE EB 81 */	bl GXSetZCompLoc
/* 80871154  38 60 00 0D */	li r3, 0xd
/* 80871158  38 80 00 01 */	li r4, 1
/* 8087115C  4B AE 9D 5D */	bl GXSetVtxDesc
/* 80871160  38 60 00 00 */	li r3, 0
/* 80871164  38 80 00 0D */	li r4, 0xd
/* 80871168  38 A0 00 01 */	li r5, 1
/* 8087116C  38 C0 00 01 */	li r6, 1
/* 80871170  38 E0 00 00 */	li r7, 0
/* 80871174  4B AE A4 51 */	bl GXSetVtxAttrFmt
/* 80871178  38 60 00 80 */	li r3, 0x80
/* 8087117C  38 80 00 00 */	li r4, 0
/* 80871180  38 A0 00 04 */	li r5, 4
/* 80871184  4B AE B5 E1 */	bl GXBegin
/* 80871188  38 BD 01 34 */	addi r5, r29, 0x134
/* 8087118C  38 DF 00 04 */	addi r6, r31, 4
/* 80871190  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 80871194  38 00 00 04 */	li r0, 4
/* 80871198  7C 09 03 A6 */	mtctr r0
lbl_8087119C:
/* 8087119C  C0 45 00 08 */	lfs f2, 8(r5)
/* 808711A0  C0 25 00 04 */	lfs f1, 4(r5)
/* 808711A4  C0 05 00 00 */	lfs f0, 0(r5)
/* 808711A8  D0 03 80 00 */	stfs f0, 0x8000(r3)  /* 0xCC008000@l */
/* 808711AC  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 808711B0  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 808711B4  88 86 00 01 */	lbz r4, 1(r6)
/* 808711B8  88 06 00 00 */	lbz r0, 0(r6)
/* 808711BC  98 03 80 00 */	stb r0, -0x8000(r3)
/* 808711C0  98 83 80 00 */	stb r4, -0x8000(r3)
/* 808711C4  38 A5 00 0C */	addi r5, r5, 0xc
/* 808711C8  38 C6 00 02 */	addi r6, r6, 2
/* 808711CC  42 00 FF D0 */	bdnz lbl_8087119C
/* 808711D0  48 00 00 50 */	b lbl_80871220
lbl_808711D4:
/* 808711D4  38 60 00 80 */	li r3, 0x80
/* 808711D8  38 80 00 00 */	li r4, 0
/* 808711DC  38 A0 00 04 */	li r5, 4
/* 808711E0  4B AE B5 85 */	bl GXBegin
/* 808711E4  38 9D 01 34 */	addi r4, r29, 0x134
/* 808711E8  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 808711EC  38 00 00 04 */	li r0, 4
/* 808711F0  7C 09 03 A6 */	mtctr r0
lbl_808711F4:
/* 808711F4  C0 44 00 08 */	lfs f2, 8(r4)
/* 808711F8  C0 24 00 04 */	lfs f1, 4(r4)
/* 808711FC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80871200  D0 03 80 00 */	stfs f0, 0x8000(r3)  /* 0xCC008000@l */
/* 80871204  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 80871208  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8087120C  38 84 00 0C */	addi r4, r4, 0xc
/* 80871210  42 00 FF E4 */	bdnz lbl_808711F4
/* 80871214  48 00 00 0C */	b lbl_80871220
lbl_80871218:
/* 80871218  7F C3 F3 78 */	mr r3, r30
/* 8087121C  4B AE EF 5D */	bl GXSetProjectionv
lbl_80871220:
/* 80871220  38 60 00 01 */	li r3, 1
/* 80871224  4B AE EA 21 */	bl GXSetColorUpdate
/* 80871228  38 60 00 00 */	li r3, 0
/* 8087122C  4B AE EA 45 */	bl GXSetAlphaUpdate
/* 80871230  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80871234  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80871238  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8087123C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80871240  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 80871244  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80871248  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 8087124C  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 80871250  39 61 00 60 */	addi r11, r1, 0x60
/* 80871254  4B AF 0F D1 */	bl _restgpr_28
/* 80871258  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8087125C  7C 08 03 A6 */	mtlr r0
/* 80871260  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80871264  4E 80 00 20 */	blr 
