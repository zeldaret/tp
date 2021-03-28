lbl_80359C70:
/* 80359C70  7C 08 02 A6 */	mflr r0
/* 80359C74  90 01 00 04 */	stw r0, 4(r1)
/* 80359C78  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80359C7C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80359C80  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80359C84  93 A1 00 94 */	stw r29, 0x94(r1)
/* 80359C88  80 82 CB 8C */	lwz r4, lit_269(r2)
/* 80359C8C  3C A0 80 3D */	lis r5, lit_1@ha
/* 80359C90  80 62 CB 90 */	lwz r3, lit_270(r2)
/* 80359C94  3B E5 20 40 */	addi r31, r5, lit_1@l
/* 80359C98  80 02 CB 94 */	lwz r0, lit_271(r2)
/* 80359C9C  90 81 00 28 */	stw r4, 0x28(r1)
/* 80359CA0  90 61 00 24 */	stw r3, 0x24(r1)
/* 80359CA4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80359CA8  4B FF 3D F5 */	bl VIGetTvFormat
/* 80359CAC  2C 03 00 02 */	cmpwi r3, 2
/* 80359CB0  41 82 00 54 */	beq lbl_80359D04
/* 80359CB4  40 80 00 14 */	bge lbl_80359CC8
/* 80359CB8  2C 03 00 00 */	cmpwi r3, 0
/* 80359CBC  41 82 00 18 */	beq lbl_80359CD4
/* 80359CC0  40 80 00 24 */	bge lbl_80359CE4
/* 80359CC4  48 00 00 50 */	b lbl_80359D14
lbl_80359CC8:
/* 80359CC8  2C 03 00 05 */	cmpwi r3, 5
/* 80359CCC  41 82 00 28 */	beq lbl_80359CF4
/* 80359CD0  48 00 00 44 */	b lbl_80359D14
lbl_80359CD4:
/* 80359CD4  3C 60 80 3D */	lis r3, GXNtsc480IntDf@ha
/* 80359CD8  38 03 24 48 */	addi r0, r3, GXNtsc480IntDf@l
/* 80359CDC  7C 1E 03 78 */	mr r30, r0
/* 80359CE0  48 00 00 40 */	b lbl_80359D20
lbl_80359CE4:
/* 80359CE4  3C 60 80 3D */	lis r3, GXPal528IntDf@ha
/* 80359CE8  38 03 24 FC */	addi r0, r3, GXPal528IntDf@l
/* 80359CEC  7C 1E 03 78 */	mr r30, r0
/* 80359CF0  48 00 00 30 */	b lbl_80359D20
lbl_80359CF4:
/* 80359CF4  3C 60 80 3D */	lis r3, GXEurgb60Hz480IntDf@ha
/* 80359CF8  38 03 25 38 */	addi r0, r3, GXEurgb60Hz480IntDf@l
/* 80359CFC  7C 1E 03 78 */	mr r30, r0
/* 80359D00  48 00 00 20 */	b lbl_80359D20
lbl_80359D04:
/* 80359D04  3C 60 80 3D */	lis r3, GXMpal480IntDf@ha
/* 80359D08  38 03 24 C0 */	addi r0, r3, GXMpal480IntDf@l
/* 80359D0C  7C 1E 03 78 */	mr r30, r0
/* 80359D10  48 00 00 10 */	b lbl_80359D20
lbl_80359D14:
/* 80359D14  3C 60 80 3D */	lis r3, GXNtsc480IntDf@ha
/* 80359D18  38 03 24 48 */	addi r0, r3, GXNtsc480IntDf@l
/* 80359D1C  7C 1E 03 78 */	mr r30, r0
lbl_80359D20:
/* 80359D20  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80359D24  3C 80 01 00 */	lis r4, 0x0100 /* 0x00FFFFFF@ha */
/* 80359D28  38 61 00 1C */	addi r3, r1, 0x1c
/* 80359D2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80359D30  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x00FFFFFF@l */
/* 80359D34  48 00 33 3D */	bl GXSetCopyClear
/* 80359D38  38 60 00 00 */	li r3, 0
/* 80359D3C  38 80 00 01 */	li r4, 1
/* 80359D40  38 A0 00 04 */	li r5, 4
/* 80359D44  38 C0 00 3C */	li r6, 0x3c
/* 80359D48  38 E0 00 00 */	li r7, 0
/* 80359D4C  39 00 00 7D */	li r8, 0x7d
/* 80359D50  48 00 1E 2D */	bl GXSetTexCoordGen2
/* 80359D54  38 60 00 01 */	li r3, 1
/* 80359D58  38 80 00 01 */	li r4, 1
/* 80359D5C  38 A0 00 05 */	li r5, 5
/* 80359D60  38 C0 00 3C */	li r6, 0x3c
/* 80359D64  38 E0 00 00 */	li r7, 0
/* 80359D68  39 00 00 7D */	li r8, 0x7d
/* 80359D6C  48 00 1E 11 */	bl GXSetTexCoordGen2
/* 80359D70  38 60 00 02 */	li r3, 2
/* 80359D74  38 80 00 01 */	li r4, 1
/* 80359D78  38 A0 00 06 */	li r5, 6
/* 80359D7C  38 C0 00 3C */	li r6, 0x3c
/* 80359D80  38 E0 00 00 */	li r7, 0
/* 80359D84  39 00 00 7D */	li r8, 0x7d
/* 80359D88  48 00 1D F5 */	bl GXSetTexCoordGen2
/* 80359D8C  38 60 00 03 */	li r3, 3
/* 80359D90  38 80 00 01 */	li r4, 1
/* 80359D94  38 A0 00 07 */	li r5, 7
/* 80359D98  38 C0 00 3C */	li r6, 0x3c
/* 80359D9C  38 E0 00 00 */	li r7, 0
/* 80359DA0  39 00 00 7D */	li r8, 0x7d
/* 80359DA4  48 00 1D D9 */	bl GXSetTexCoordGen2
/* 80359DA8  38 60 00 04 */	li r3, 4
/* 80359DAC  38 80 00 01 */	li r4, 1
/* 80359DB0  38 A0 00 08 */	li r5, 8
/* 80359DB4  38 C0 00 3C */	li r6, 0x3c
/* 80359DB8  38 E0 00 00 */	li r7, 0
/* 80359DBC  39 00 00 7D */	li r8, 0x7d
/* 80359DC0  48 00 1D BD */	bl GXSetTexCoordGen2
/* 80359DC4  38 60 00 05 */	li r3, 5
/* 80359DC8  38 80 00 01 */	li r4, 1
/* 80359DCC  38 A0 00 09 */	li r5, 9
/* 80359DD0  38 C0 00 3C */	li r6, 0x3c
/* 80359DD4  38 E0 00 00 */	li r7, 0
/* 80359DD8  39 00 00 7D */	li r8, 0x7d
/* 80359DDC  48 00 1D A1 */	bl GXSetTexCoordGen2
/* 80359DE0  38 60 00 06 */	li r3, 6
/* 80359DE4  38 80 00 01 */	li r4, 1
/* 80359DE8  38 A0 00 0A */	li r5, 0xa
/* 80359DEC  38 C0 00 3C */	li r6, 0x3c
/* 80359DF0  38 E0 00 00 */	li r7, 0
/* 80359DF4  39 00 00 7D */	li r8, 0x7d
/* 80359DF8  48 00 1D 85 */	bl GXSetTexCoordGen2
/* 80359DFC  38 60 00 07 */	li r3, 7
/* 80359E00  38 80 00 01 */	li r4, 1
/* 80359E04  38 A0 00 0B */	li r5, 0xb
/* 80359E08  38 C0 00 3C */	li r6, 0x3c
/* 80359E0C  38 E0 00 00 */	li r7, 0
/* 80359E10  39 00 00 7D */	li r8, 0x7d
/* 80359E14  48 00 1D 69 */	bl GXSetTexCoordGen2
/* 80359E18  38 60 00 01 */	li r3, 1
/* 80359E1C  48 00 1F E1 */	bl GXSetNumTexGens
/* 80359E20  48 00 17 6D */	bl GXClearVtxDesc
/* 80359E24  48 00 1D 49 */	bl GXInvalidateVtxCache
/* 80359E28  3B A0 00 09 */	li r29, 9
/* 80359E2C  48 00 00 04 */	b lbl_80359E30
lbl_80359E30:
/* 80359E30  48 00 00 04 */	b lbl_80359E34
lbl_80359E34:
/* 80359E34  48 00 00 04 */	b lbl_80359E38
lbl_80359E38:
/* 80359E38  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 80359E3C  7F A3 EB 78 */	mr r3, r29
/* 80359E40  38 A0 00 00 */	li r5, 0
/* 80359E44  48 00 1C E5 */	bl GXSetArray
/* 80359E48  3B BD 00 01 */	addi r29, r29, 1
/* 80359E4C  28 1D 00 18 */	cmplwi r29, 0x18
/* 80359E50  40 81 FF E8 */	ble lbl_80359E38
/* 80359E54  3B A0 00 00 */	li r29, 0
/* 80359E58  48 00 00 04 */	b lbl_80359E5C
lbl_80359E5C:
/* 80359E5C  48 00 00 04 */	b lbl_80359E60
lbl_80359E60:
/* 80359E60  48 00 00 04 */	b lbl_80359E64
lbl_80359E64:
/* 80359E64  7F A3 EB 78 */	mr r3, r29
/* 80359E68  38 9F 00 80 */	addi r4, r31, 0x80
/* 80359E6C  48 00 19 B5 */	bl GXSetVtxAttrFmtv
/* 80359E70  3B BD 00 01 */	addi r29, r29, 1
/* 80359E74  28 1D 00 08 */	cmplwi r29, 8
/* 80359E78  41 80 FF EC */	blt lbl_80359E64
/* 80359E7C  38 60 00 06 */	li r3, 6
/* 80359E80  38 80 00 00 */	li r4, 0
/* 80359E84  48 00 2A 39 */	bl GXSetLineWidth
/* 80359E88  38 60 00 06 */	li r3, 6
/* 80359E8C  38 80 00 00 */	li r4, 0
/* 80359E90  48 00 2A 6D */	bl GXSetPointSize
/* 80359E94  38 60 00 00 */	li r3, 0
/* 80359E98  38 80 00 00 */	li r4, 0
/* 80359E9C  38 A0 00 00 */	li r5, 0
/* 80359EA0  48 00 2A 9D */	bl GXEnableTexOffsets
/* 80359EA4  38 60 00 01 */	li r3, 1
/* 80359EA8  38 80 00 00 */	li r4, 0
/* 80359EAC  38 A0 00 00 */	li r5, 0
/* 80359EB0  48 00 2A 8D */	bl GXEnableTexOffsets
/* 80359EB4  38 60 00 02 */	li r3, 2
/* 80359EB8  38 80 00 00 */	li r4, 0
/* 80359EBC  38 A0 00 00 */	li r5, 0
/* 80359EC0  48 00 2A 7D */	bl GXEnableTexOffsets
/* 80359EC4  38 60 00 03 */	li r3, 3
/* 80359EC8  38 80 00 00 */	li r4, 0
/* 80359ECC  38 A0 00 00 */	li r5, 0
/* 80359ED0  48 00 2A 6D */	bl GXEnableTexOffsets
/* 80359ED4  38 60 00 04 */	li r3, 4
/* 80359ED8  38 80 00 00 */	li r4, 0
/* 80359EDC  38 A0 00 00 */	li r5, 0
/* 80359EE0  48 00 2A 5D */	bl GXEnableTexOffsets
/* 80359EE4  38 60 00 05 */	li r3, 5
/* 80359EE8  38 80 00 00 */	li r4, 0
/* 80359EEC  38 A0 00 00 */	li r5, 0
/* 80359EF0  48 00 2A 4D */	bl GXEnableTexOffsets
/* 80359EF4  38 60 00 06 */	li r3, 6
/* 80359EF8  38 80 00 00 */	li r4, 0
/* 80359EFC  38 A0 00 00 */	li r5, 0
/* 80359F00  48 00 2A 3D */	bl GXEnableTexOffsets
/* 80359F04  38 60 00 07 */	li r3, 7
/* 80359F08  38 80 00 00 */	li r4, 0
/* 80359F0C  38 A0 00 00 */	li r5, 0
/* 80359F10  48 00 2A 2D */	bl GXEnableTexOffsets
/* 80359F14  C0 22 CB 98 */	lfs f1, lit_331(r2)
/* 80359F18  38 61 00 2C */	addi r3, r1, 0x2c
/* 80359F1C  C0 02 CB 88 */	lfs f0, lit_268(r2)
/* 80359F20  38 80 00 00 */	li r4, 0
/* 80359F24  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80359F28  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80359F2C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80359F30  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80359F34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80359F38  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80359F3C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80359F40  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80359F44  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80359F48  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80359F4C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80359F50  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80359F54  48 00 62 F9 */	bl GXLoadPosMtxImm
/* 80359F58  38 61 00 2C */	addi r3, r1, 0x2c
/* 80359F5C  38 80 00 00 */	li r4, 0
/* 80359F60  48 00 63 3D */	bl GXLoadNrmMtxImm
/* 80359F64  38 60 00 00 */	li r3, 0
/* 80359F68  48 00 63 85 */	bl GXSetCurrentMtx
/* 80359F6C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80359F70  38 80 00 3C */	li r4, 0x3c
/* 80359F74  38 A0 00 00 */	li r5, 0
/* 80359F78  48 00 63 A9 */	bl GXLoadTexMtxImm
/* 80359F7C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80359F80  38 80 00 7D */	li r4, 0x7d
/* 80359F84  38 A0 00 00 */	li r5, 0
/* 80359F88  48 00 63 99 */	bl GXLoadTexMtxImm
/* 80359F8C  A0 9E 00 04 */	lhz r4, 4(r30)
/* 80359F90  3C 60 43 30 */	lis r3, 0x4330
/* 80359F94  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80359F98  90 81 00 8C */	stw r4, 0x8c(r1)
/* 80359F9C  C0 22 CB 88 */	lfs f1, lit_268(r2)
/* 80359FA0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80359FA4  C8 82 CB A0 */	lfd f4, lit_334(r2)
/* 80359FA8  FC 40 08 90 */	fmr f2, f1
/* 80359FAC  90 61 00 88 */	stw r3, 0x88(r1)
/* 80359FB0  FC A0 08 90 */	fmr f5, f1
/* 80359FB4  C0 C2 CB 98 */	lfs f6, lit_331(r2)
/* 80359FB8  90 61 00 80 */	stw r3, 0x80(r1)
/* 80359FBC  C8 61 00 88 */	lfd f3, 0x88(r1)
/* 80359FC0  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80359FC4  EC 63 20 28 */	fsubs f3, f3, f4
/* 80359FC8  EC 80 20 28 */	fsubs f4, f0, f4
/* 80359FCC  48 00 64 99 */	bl GXSetViewport
/* 80359FD0  38 7F 01 50 */	addi r3, r31, 0x150
/* 80359FD4  48 00 61 A5 */	bl GXSetProjectionv
/* 80359FD8  38 60 00 00 */	li r3, 0
/* 80359FDC  48 00 29 D1 */	bl GXSetCoPlanar
/* 80359FE0  38 60 00 02 */	li r3, 2
/* 80359FE4  48 00 29 A1 */	bl GXSetCullMode
/* 80359FE8  38 60 00 00 */	li r3, 0
/* 80359FEC  48 00 65 E5 */	bl GXSetClipMode
/* 80359FF0  A0 BE 00 04 */	lhz r5, 4(r30)
/* 80359FF4  38 60 00 00 */	li r3, 0
/* 80359FF8  A0 DE 00 06 */	lhz r6, 6(r30)
/* 80359FFC  38 80 00 00 */	li r4, 0
/* 8035A000  48 00 64 D1 */	bl GXSetScissor
/* 8035A004  38 60 00 00 */	li r3, 0
/* 8035A008  38 80 00 00 */	li r4, 0
/* 8035A00C  48 00 65 85 */	bl GXSetScissorBoxOffset
/* 8035A010  38 60 00 00 */	li r3, 0
/* 8035A014  48 00 3B 1D */	bl GXSetNumChans
/* 8035A018  38 60 00 04 */	li r3, 4
/* 8035A01C  38 80 00 00 */	li r4, 0
/* 8035A020  38 A0 00 00 */	li r5, 0
/* 8035A024  38 C0 00 01 */	li r6, 1
/* 8035A028  38 E0 00 00 */	li r7, 0
/* 8035A02C  39 00 00 00 */	li r8, 0
/* 8035A030  39 20 00 02 */	li r9, 2
/* 8035A034  48 00 3B 39 */	bl GXSetChanCtrl
/* 8035A038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A03C  38 81 00 18 */	addi r4, r1, 0x18
/* 8035A040  38 60 00 04 */	li r3, 4
/* 8035A044  90 01 00 18 */	stw r0, 0x18(r1)
/* 8035A048  48 00 39 19 */	bl GXSetChanAmbColor
/* 8035A04C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8035A050  38 81 00 14 */	addi r4, r1, 0x14
/* 8035A054  38 60 00 04 */	li r3, 4
/* 8035A058  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035A05C  48 00 39 ED */	bl GXSetChanMatColor
/* 8035A060  38 60 00 05 */	li r3, 5
/* 8035A064  38 80 00 00 */	li r4, 0
/* 8035A068  38 A0 00 00 */	li r5, 0
/* 8035A06C  38 C0 00 01 */	li r6, 1
/* 8035A070  38 E0 00 00 */	li r7, 0
/* 8035A074  39 00 00 00 */	li r8, 0
/* 8035A078  39 20 00 02 */	li r9, 2
/* 8035A07C  48 00 3A F1 */	bl GXSetChanCtrl
/* 8035A080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A084  38 81 00 10 */	addi r4, r1, 0x10
/* 8035A088  38 60 00 05 */	li r3, 5
/* 8035A08C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8035A090  48 00 38 D1 */	bl GXSetChanAmbColor
/* 8035A094  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8035A098  38 81 00 0C */	addi r4, r1, 0xc
/* 8035A09C  38 60 00 05 */	li r3, 5
/* 8035A0A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8035A0A4  48 00 39 A5 */	bl GXSetChanMatColor
/* 8035A0A8  48 00 45 BD */	bl GXInvalidateTexAll
/* 8035A0AC  3C 60 80 36 */	lis r3, __GXDefaultTexRegionCallback@ha
/* 8035A0B0  38 63 92 1C */	addi r3, r3, __GXDefaultTexRegionCallback@l
/* 8035A0B4  48 00 45 F9 */	bl GXSetTexRegionCallback
/* 8035A0B8  3C 60 80 36 */	lis r3, __GXDefaultTlutRegionCallback@ha
/* 8035A0BC  38 63 93 18 */	addi r3, r3, __GXDefaultTlutRegionCallback@l
/* 8035A0C0  48 00 46 01 */	bl GXSetTlutRegionCallback
/* 8035A0C4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8035A0C8  38 9F 00 60 */	addi r4, r31, 0x60
/* 8035A0CC  38 A0 00 04 */	li r5, 4
/* 8035A0D0  38 C0 00 04 */	li r6, 4
/* 8035A0D4  38 E0 00 03 */	li r7, 3
/* 8035A0D8  39 00 00 00 */	li r8, 0
/* 8035A0DC  39 20 00 00 */	li r9, 0
/* 8035A0E0  39 40 00 00 */	li r10, 0
/* 8035A0E4  48 00 3D 5D */	bl GXInitTexObj
/* 8035A0E8  38 61 00 5C */	addi r3, r1, 0x5c
/* 8035A0EC  38 80 00 00 */	li r4, 0
/* 8035A0F0  48 00 43 25 */	bl GXLoadTexObj
/* 8035A0F4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8035A0F8  38 80 00 01 */	li r4, 1
/* 8035A0FC  48 00 43 19 */	bl GXLoadTexObj
/* 8035A100  38 61 00 5C */	addi r3, r1, 0x5c
/* 8035A104  38 80 00 02 */	li r4, 2
/* 8035A108  48 00 43 0D */	bl GXLoadTexObj
/* 8035A10C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8035A110  38 80 00 03 */	li r4, 3
/* 8035A114  48 00 43 01 */	bl GXLoadTexObj
/* 8035A118  38 61 00 5C */	addi r3, r1, 0x5c
/* 8035A11C  38 80 00 04 */	li r4, 4
/* 8035A120  48 00 42 F5 */	bl GXLoadTexObj
/* 8035A124  38 61 00 5C */	addi r3, r1, 0x5c
/* 8035A128  38 80 00 05 */	li r4, 5
/* 8035A12C  48 00 42 E9 */	bl GXLoadTexObj
/* 8035A130  38 61 00 5C */	addi r3, r1, 0x5c
/* 8035A134  38 80 00 06 */	li r4, 6
/* 8035A138  48 00 42 DD */	bl GXLoadTexObj
/* 8035A13C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8035A140  38 80 00 07 */	li r4, 7
/* 8035A144  48 00 42 D1 */	bl GXLoadTexObj
/* 8035A148  38 60 00 00 */	li r3, 0
/* 8035A14C  38 80 00 00 */	li r4, 0
/* 8035A150  38 A0 00 00 */	li r5, 0
/* 8035A154  38 C0 00 04 */	li r6, 4
/* 8035A158  48 00 55 9D */	bl GXSetTevOrder
/* 8035A15C  38 60 00 01 */	li r3, 1
/* 8035A160  38 80 00 01 */	li r4, 1
/* 8035A164  38 A0 00 01 */	li r5, 1
/* 8035A168  38 C0 00 04 */	li r6, 4
/* 8035A16C  48 00 55 89 */	bl GXSetTevOrder
/* 8035A170  38 60 00 02 */	li r3, 2
/* 8035A174  38 80 00 02 */	li r4, 2
/* 8035A178  38 A0 00 02 */	li r5, 2
/* 8035A17C  38 C0 00 04 */	li r6, 4
/* 8035A180  48 00 55 75 */	bl GXSetTevOrder
/* 8035A184  38 60 00 03 */	li r3, 3
/* 8035A188  38 80 00 03 */	li r4, 3
/* 8035A18C  38 A0 00 03 */	li r5, 3
/* 8035A190  38 C0 00 04 */	li r6, 4
/* 8035A194  48 00 55 61 */	bl GXSetTevOrder
/* 8035A198  38 60 00 04 */	li r3, 4
/* 8035A19C  38 80 00 04 */	li r4, 4
/* 8035A1A0  38 A0 00 04 */	li r5, 4
/* 8035A1A4  38 C0 00 04 */	li r6, 4
/* 8035A1A8  48 00 55 4D */	bl GXSetTevOrder
/* 8035A1AC  38 60 00 05 */	li r3, 5
/* 8035A1B0  38 80 00 05 */	li r4, 5
/* 8035A1B4  38 A0 00 05 */	li r5, 5
/* 8035A1B8  38 C0 00 04 */	li r6, 4
/* 8035A1BC  48 00 55 39 */	bl GXSetTevOrder
/* 8035A1C0  38 60 00 06 */	li r3, 6
/* 8035A1C4  38 80 00 06 */	li r4, 6
/* 8035A1C8  38 A0 00 06 */	li r5, 6
/* 8035A1CC  38 C0 00 04 */	li r6, 4
/* 8035A1D0  48 00 55 25 */	bl GXSetTevOrder
/* 8035A1D4  38 60 00 07 */	li r3, 7
/* 8035A1D8  38 80 00 07 */	li r4, 7
/* 8035A1DC  38 A0 00 07 */	li r5, 7
/* 8035A1E0  38 C0 00 04 */	li r6, 4
/* 8035A1E4  48 00 55 11 */	bl GXSetTevOrder
/* 8035A1E8  38 60 00 08 */	li r3, 8
/* 8035A1EC  38 80 00 FF */	li r4, 0xff
/* 8035A1F0  38 A0 00 FF */	li r5, 0xff
/* 8035A1F4  38 C0 00 FF */	li r6, 0xff
/* 8035A1F8  48 00 54 FD */	bl GXSetTevOrder
/* 8035A1FC  38 60 00 09 */	li r3, 9
/* 8035A200  38 80 00 FF */	li r4, 0xff
/* 8035A204  38 A0 00 FF */	li r5, 0xff
/* 8035A208  38 C0 00 FF */	li r6, 0xff
/* 8035A20C  48 00 54 E9 */	bl GXSetTevOrder
/* 8035A210  38 60 00 0A */	li r3, 0xa
/* 8035A214  38 80 00 FF */	li r4, 0xff
/* 8035A218  38 A0 00 FF */	li r5, 0xff
/* 8035A21C  38 C0 00 FF */	li r6, 0xff
/* 8035A220  48 00 54 D5 */	bl GXSetTevOrder
/* 8035A224  38 60 00 0B */	li r3, 0xb
/* 8035A228  38 80 00 FF */	li r4, 0xff
/* 8035A22C  38 A0 00 FF */	li r5, 0xff
/* 8035A230  38 C0 00 FF */	li r6, 0xff
/* 8035A234  48 00 54 C1 */	bl GXSetTevOrder
/* 8035A238  38 60 00 0C */	li r3, 0xc
/* 8035A23C  38 80 00 FF */	li r4, 0xff
/* 8035A240  38 A0 00 FF */	li r5, 0xff
/* 8035A244  38 C0 00 FF */	li r6, 0xff
/* 8035A248  48 00 54 AD */	bl GXSetTevOrder
/* 8035A24C  38 60 00 0D */	li r3, 0xd
/* 8035A250  38 80 00 FF */	li r4, 0xff
/* 8035A254  38 A0 00 FF */	li r5, 0xff
/* 8035A258  38 C0 00 FF */	li r6, 0xff
/* 8035A25C  48 00 54 99 */	bl GXSetTevOrder
/* 8035A260  38 60 00 0E */	li r3, 0xe
/* 8035A264  38 80 00 FF */	li r4, 0xff
/* 8035A268  38 A0 00 FF */	li r5, 0xff
/* 8035A26C  38 C0 00 FF */	li r6, 0xff
/* 8035A270  48 00 54 85 */	bl GXSetTevOrder
/* 8035A274  38 60 00 0F */	li r3, 0xf
/* 8035A278  38 80 00 FF */	li r4, 0xff
/* 8035A27C  38 A0 00 FF */	li r5, 0xff
/* 8035A280  38 C0 00 FF */	li r6, 0xff
/* 8035A284  48 00 54 71 */	bl GXSetTevOrder
/* 8035A288  38 60 00 01 */	li r3, 1
/* 8035A28C  48 00 56 05 */	bl GXSetNumTevStages
/* 8035A290  38 60 00 00 */	li r3, 0
/* 8035A294  38 80 00 03 */	li r4, 3
/* 8035A298  48 00 4F 01 */	bl GXSetTevOp
/* 8035A29C  38 60 00 07 */	li r3, 7
/* 8035A2A0  38 80 00 00 */	li r4, 0
/* 8035A2A4  38 A0 00 00 */	li r5, 0
/* 8035A2A8  38 C0 00 07 */	li r6, 7
/* 8035A2AC  38 E0 00 00 */	li r7, 0
/* 8035A2B0  48 00 53 75 */	bl GXSetAlphaCompare
/* 8035A2B4  38 60 00 00 */	li r3, 0
/* 8035A2B8  38 80 00 11 */	li r4, 0x11
/* 8035A2BC  38 A0 00 00 */	li r5, 0
/* 8035A2C0  48 00 53 A9 */	bl GXSetZTexture
/* 8035A2C4  3B E0 00 00 */	li r31, 0
/* 8035A2C8  48 00 00 04 */	b lbl_8035A2CC
lbl_8035A2CC:
/* 8035A2CC  48 00 00 04 */	b lbl_8035A2D0
lbl_8035A2D0:
/* 8035A2D0  48 00 00 04 */	b lbl_8035A2D4
lbl_8035A2D4:
/* 8035A2D4  7F E3 FB 78 */	mr r3, r31
/* 8035A2D8  38 80 00 06 */	li r4, 6
/* 8035A2DC  48 00 51 C9 */	bl GXSetTevKColorSel
/* 8035A2E0  7F E3 FB 78 */	mr r3, r31
/* 8035A2E4  38 80 00 00 */	li r4, 0
/* 8035A2E8  48 00 52 19 */	bl GXSetTevKAlphaSel
/* 8035A2EC  7F E3 FB 78 */	mr r3, r31
/* 8035A2F0  38 80 00 00 */	li r4, 0
/* 8035A2F4  38 A0 00 00 */	li r5, 0
/* 8035A2F8  48 00 52 65 */	bl GXSetTevSwapMode
/* 8035A2FC  3B FF 00 01 */	addi r31, r31, 1
/* 8035A300  28 1F 00 10 */	cmplwi r31, 0x10
/* 8035A304  41 80 FF D0 */	blt lbl_8035A2D4
/* 8035A308  38 60 00 00 */	li r3, 0
/* 8035A30C  38 80 00 00 */	li r4, 0
/* 8035A310  38 A0 00 01 */	li r5, 1
/* 8035A314  38 C0 00 02 */	li r6, 2
/* 8035A318  38 E0 00 03 */	li r7, 3
/* 8035A31C  48 00 52 89 */	bl GXSetTevSwapModeTable
/* 8035A320  38 60 00 01 */	li r3, 1
/* 8035A324  38 80 00 00 */	li r4, 0
/* 8035A328  38 A0 00 00 */	li r5, 0
/* 8035A32C  38 C0 00 00 */	li r6, 0
/* 8035A330  38 E0 00 03 */	li r7, 3
/* 8035A334  48 00 52 71 */	bl GXSetTevSwapModeTable
/* 8035A338  38 60 00 02 */	li r3, 2
/* 8035A33C  38 80 00 01 */	li r4, 1
/* 8035A340  38 A0 00 01 */	li r5, 1
/* 8035A344  38 C0 00 01 */	li r6, 1
/* 8035A348  38 E0 00 03 */	li r7, 3
/* 8035A34C  48 00 52 59 */	bl GXSetTevSwapModeTable
/* 8035A350  38 60 00 03 */	li r3, 3
/* 8035A354  38 80 00 02 */	li r4, 2
/* 8035A358  38 A0 00 02 */	li r5, 2
/* 8035A35C  38 C0 00 02 */	li r6, 2
/* 8035A360  38 E0 00 03 */	li r7, 3
/* 8035A364  48 00 52 41 */	bl GXSetTevSwapModeTable
/* 8035A368  3B E0 00 00 */	li r31, 0
/* 8035A36C  48 00 00 04 */	b lbl_8035A370
lbl_8035A370:
/* 8035A370  48 00 00 04 */	b lbl_8035A374
lbl_8035A374:
/* 8035A374  48 00 00 04 */	b lbl_8035A378
lbl_8035A378:
/* 8035A378  7F E3 FB 78 */	mr r3, r31
/* 8035A37C  48 00 4D 7D */	bl GXSetTevDirect
/* 8035A380  3B FF 00 01 */	addi r31, r31, 1
/* 8035A384  28 1F 00 10 */	cmplwi r31, 0x10
/* 8035A388  41 80 FF F0 */	blt lbl_8035A378
/* 8035A38C  38 60 00 00 */	li r3, 0
/* 8035A390  48 00 4D 45 */	bl GXSetNumIndStages
/* 8035A394  38 60 00 00 */	li r3, 0
/* 8035A398  38 80 00 00 */	li r4, 0
/* 8035A39C  38 A0 00 00 */	li r5, 0
/* 8035A3A0  48 00 4B 05 */	bl GXSetIndTexCoordScale
/* 8035A3A4  38 60 00 01 */	li r3, 1
/* 8035A3A8  38 80 00 00 */	li r4, 0
/* 8035A3AC  38 A0 00 00 */	li r5, 0
/* 8035A3B0  48 00 4A F5 */	bl GXSetIndTexCoordScale
/* 8035A3B4  38 60 00 02 */	li r3, 2
/* 8035A3B8  38 80 00 00 */	li r4, 0
/* 8035A3BC  38 A0 00 00 */	li r5, 0
/* 8035A3C0  48 00 4A E5 */	bl GXSetIndTexCoordScale
/* 8035A3C4  38 60 00 03 */	li r3, 3
/* 8035A3C8  38 80 00 00 */	li r4, 0
/* 8035A3CC  38 A0 00 00 */	li r5, 0
/* 8035A3D0  48 00 4A D5 */	bl GXSetIndTexCoordScale
/* 8035A3D4  C0 42 CB 98 */	lfs f2, lit_331(r2)
/* 8035A3D8  38 81 00 08 */	addi r4, r1, 8
/* 8035A3DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A3E0  38 60 00 00 */	li r3, 0
/* 8035A3E4  FC 80 10 90 */	fmr f4, f2
/* 8035A3E8  90 01 00 08 */	stw r0, 8(r1)
/* 8035A3EC  C0 22 CB 88 */	lfs f1, lit_268(r2)
/* 8035A3F0  C0 62 CB 9C */	lfs f3, lit_332(r2)
/* 8035A3F4  48 00 54 C5 */	bl GXSetFog
/* 8035A3F8  38 60 00 00 */	li r3, 0
/* 8035A3FC  38 80 00 00 */	li r4, 0
/* 8035A400  38 A0 00 00 */	li r5, 0
/* 8035A404  48 00 56 C9 */	bl GXSetFogRangeAdj
/* 8035A408  38 60 00 00 */	li r3, 0
/* 8035A40C  38 80 00 04 */	li r4, 4
/* 8035A410  38 A0 00 05 */	li r5, 5
/* 8035A414  38 C0 00 00 */	li r6, 0
/* 8035A418  48 00 57 D9 */	bl GXSetBlendMode
/* 8035A41C  38 60 00 01 */	li r3, 1
/* 8035A420  48 00 58 25 */	bl GXSetColorUpdate
/* 8035A424  38 60 00 01 */	li r3, 1
/* 8035A428  48 00 58 49 */	bl GXSetAlphaUpdate
/* 8035A42C  38 60 00 01 */	li r3, 1
/* 8035A430  38 80 00 03 */	li r4, 3
/* 8035A434  38 A0 00 01 */	li r5, 1
/* 8035A438  48 00 58 65 */	bl GXSetZMode
/* 8035A43C  38 60 00 01 */	li r3, 1
/* 8035A440  48 00 58 91 */	bl GXSetZCompLoc
/* 8035A444  38 60 00 01 */	li r3, 1
/* 8035A448  48 00 59 91 */	bl GXSetDither
/* 8035A44C  38 60 00 00 */	li r3, 0
/* 8035A450  38 80 00 00 */	li r4, 0
/* 8035A454  48 00 59 B1 */	bl GXSetDstAlpha
/* 8035A458  38 60 00 00 */	li r3, 0
/* 8035A45C  38 80 00 00 */	li r4, 0
/* 8035A460  48 00 58 A5 */	bl GXSetPixelFmt
/* 8035A464  38 60 00 01 */	li r3, 1
/* 8035A468  38 80 00 01 */	li r4, 1
/* 8035A46C  48 00 59 D5 */	bl GXSetFieldMask
/* 8035A470  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8035A474  A0 7E 00 10 */	lhz r3, 0x10(r30)
/* 8035A478  54 00 08 3C */	slwi r0, r0, 1
/* 8035A47C  7C 03 00 00 */	cmpw r3, r0
/* 8035A480  40 82 00 0C */	bne lbl_8035A48C
/* 8035A484  38 80 00 01 */	li r4, 1
/* 8035A488  48 00 00 08 */	b lbl_8035A490
lbl_8035A48C:
/* 8035A48C  38 80 00 00 */	li r4, 0
lbl_8035A490:
/* 8035A490  88 7E 00 18 */	lbz r3, 0x18(r30)
/* 8035A494  48 00 59 E5 */	bl GXSetFieldMode
/* 8035A498  A0 BE 00 04 */	lhz r5, 4(r30)
/* 8035A49C  38 60 00 00 */	li r3, 0
/* 8035A4A0  A0 DE 00 06 */	lhz r6, 6(r30)
/* 8035A4A4  38 80 00 00 */	li r4, 0
/* 8035A4A8  48 00 25 5D */	bl GXSetDispCopySrc
/* 8035A4AC  A0 7E 00 04 */	lhz r3, 4(r30)
/* 8035A4B0  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8035A4B4  48 00 26 49 */	bl GXSetDispCopyDst
/* 8035A4B8  A0 9E 00 08 */	lhz r4, 8(r30)
/* 8035A4BC  3C 60 43 30 */	lis r3, 0x4330
/* 8035A4C0  A0 1E 00 06 */	lhz r0, 6(r30)
/* 8035A4C4  90 81 00 84 */	stw r4, 0x84(r1)
/* 8035A4C8  C8 42 CB A0 */	lfd f2, lit_334(r2)
/* 8035A4CC  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8035A4D0  90 61 00 80 */	stw r3, 0x80(r1)
/* 8035A4D4  90 61 00 88 */	stw r3, 0x88(r1)
/* 8035A4D8  C8 21 00 80 */	lfd f1, 0x80(r1)
/* 8035A4DC  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8035A4E0  EC 21 10 28 */	fsubs f1, f1, f2
/* 8035A4E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8035A4E8  EC 21 00 24 */	fdivs f1, f1, f0
/* 8035A4EC  48 00 2A B9 */	bl GXSetDispCopyYScale
/* 8035A4F0  38 60 00 03 */	li r3, 3
/* 8035A4F4  48 00 27 91 */	bl GXSetCopyClamp
/* 8035A4F8  88 7E 00 19 */	lbz r3, 0x19(r30)
/* 8035A4FC  38 9E 00 1A */	addi r4, r30, 0x1a
/* 8035A500  38 DE 00 32 */	addi r6, r30, 0x32
/* 8035A504  38 A0 00 01 */	li r5, 1
/* 8035A508  48 00 2B E1 */	bl GXSetCopyFilter
/* 8035A50C  38 60 00 00 */	li r3, 0
/* 8035A510  48 00 2D E1 */	bl GXSetDispCopyGamma
/* 8035A514  38 60 00 00 */	li r3, 0
/* 8035A518  48 00 27 49 */	bl GXSetDispCopyFrame2Field
/* 8035A51C  48 00 30 DD */	bl GXClearBoundingBox
/* 8035A520  38 60 00 01 */	li r3, 1
/* 8035A524  48 00 1F 25 */	bl GXPokeColorUpdate
/* 8035A528  38 60 00 01 */	li r3, 1
/* 8035A52C  48 00 1E A1 */	bl GXPokeAlphaUpdate
/* 8035A530  38 60 00 00 */	li r3, 0
/* 8035A534  48 00 1F 51 */	bl GXPokeDither
/* 8035A538  38 60 00 00 */	li r3, 0
/* 8035A53C  38 80 00 00 */	li r4, 0
/* 8035A540  38 A0 00 01 */	li r5, 1
/* 8035A544  38 C0 00 0F */	li r6, 0xf
/* 8035A548  48 00 1E 9D */	bl GXPokeBlendMode
/* 8035A54C  38 60 00 07 */	li r3, 7
/* 8035A550  38 80 00 00 */	li r4, 0
/* 8035A554  48 00 1E 45 */	bl GXPokeAlphaMode
/* 8035A558  38 60 00 01 */	li r3, 1
/* 8035A55C  48 00 1E 51 */	bl GXPokeAlphaRead
/* 8035A560  38 60 00 00 */	li r3, 0
/* 8035A564  38 80 00 00 */	li r4, 0
/* 8035A568  48 00 1E F9 */	bl GXPokeDstAlpha
/* 8035A56C  38 60 00 01 */	li r3, 1
/* 8035A570  38 80 00 07 */	li r4, 7
/* 8035A574  38 A0 00 01 */	li r5, 1
/* 8035A578  48 00 1F 25 */	bl GXPokeZMode
/* 8035A57C  38 60 00 23 */	li r3, 0x23
/* 8035A580  38 80 00 16 */	li r4, 0x16
/* 8035A584  48 00 60 F9 */	bl GXSetGPMetric
/* 8035A588  48 00 69 3D */	bl GXClearGPMetric
/* 8035A58C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8035A590  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8035A594  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8035A598  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8035A59C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8035A5A0  7C 08 03 A6 */	mtlr r0
/* 8035A5A4  4E 80 00 20 */	blr 
