lbl_801C6D64:
/* 801C6D64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C6D68  7C 08 02 A6 */	mflr r0
/* 801C6D6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C6D70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C6D74  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C6D78  7C 7F 1B 78 */	mr r31, r3
/* 801C6D7C  80 63 00 04 */	lwz r3, 4(r3)
/* 801C6D80  48 10 7A 05 */	bl getTotalFreeSize__7JKRHeapFv
/* 801C6D84  38 60 12 48 */	li r3, 0x1248
/* 801C6D88  48 10 7E C5 */	bl __nw__FUl
/* 801C6D8C  7C 60 1B 79 */	or. r0, r3, r3
/* 801C6D90  41 82 00 0C */	beq lbl_801C6D9C
/* 801C6D94  48 00 87 D9 */	bl __ct__18dMenu_Fmap2DBack_cFv
/* 801C6D98  7C 60 1B 78 */	mr r0, r3
lbl_801C6D9C:
/* 801C6D9C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801C6DA0  4B E6 80 C1 */	bl dComIfGp_getNowLevel__Fv
/* 801C6DA4  38 03 FF FF */	addi r0, r3, -1
/* 801C6DA8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C6DAC  98 03 12 27 */	stb r0, 0x1227(r3)
/* 801C6DB0  38 60 00 C8 */	li r3, 0xc8
/* 801C6DB4  48 10 7E 99 */	bl __nw__FUl
/* 801C6DB8  7C 60 1B 79 */	or. r0, r3, r3
/* 801C6DBC  41 82 00 14 */	beq lbl_801C6DD0
/* 801C6DC0  80 9F 00 04 */	lwz r4, 4(r31)
/* 801C6DC4  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 801C6DC8  48 00 EE 09 */	bl __ct__17dMenu_Fmap2DTop_cFP10JKRExpHeapP9STControl
/* 801C6DCC  7C 60 1B 78 */	mr r0, r3
lbl_801C6DD0:
/* 801C6DD0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801C6DD4  38 60 00 F0 */	li r3, 0xf0
/* 801C6DD8  48 10 7E 75 */	bl __nw__FUl
/* 801C6DDC  7C 60 1B 79 */	or. r0, r3, r3
/* 801C6DE0  41 82 00 0C */	beq lbl_801C6DEC
/* 801C6DE4  48 00 7E 41 */	bl __ct__15dMenu_FmapMap_cFv
/* 801C6DE8  7C 60 1B 78 */	mr r0, r3
lbl_801C6DEC:
/* 801C6DEC  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 801C6DF0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801C6DF4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801C6DF8  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 801C6DFC  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 801C6E00  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 801C6E04  FC 20 08 1E */	fctiwz f1, f1
/* 801C6E08  D8 21 00 08 */	stfd f1, 8(r1)
/* 801C6E0C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801C6E10  FC 00 00 1E */	fctiwz f0, f0
/* 801C6E14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801C6E18  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801C6E1C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 801C6E20  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 801C6E24  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801C6E28  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 801C6E2C  81 1F 00 BC */	lwz r8, 0xbc(r31)
/* 801C6E30  48 00 7F B9 */	bl _create__15dMenu_FmapMap_cFUsUsUsUsPv
/* 801C6E34  7F E3 FB 78 */	mr r3, r31
/* 801C6E38  38 9F 00 8C */	addi r4, r31, 0x8c
/* 801C6E3C  3C A0 80 39 */	lis r5, d_menu_d_menu_fmap__stringBase0@ha
/* 801C6E40  38 A5 60 E8 */	addi r5, r5, d_menu_d_menu_fmap__stringBase0@l
/* 801C6E44  38 A5 00 01 */	addi r5, r5, 1
/* 801C6E48  38 C0 00 00 */	li r6, 0
/* 801C6E4C  38 E0 00 00 */	li r7, 0
/* 801C6E50  48 00 52 45 */	bl readFieldMapData__12dMenu_Fmap_cFPPvPCcbb
/* 801C6E54  7F E3 FB 78 */	mr r3, r31
/* 801C6E58  48 00 54 59 */	bl decodeFieldMapData__12dMenu_Fmap_cFv
/* 801C6E5C  7F E3 FB 78 */	mr r3, r31
/* 801C6E60  38 9F 00 90 */	addi r4, r31, 0x90
/* 801C6E64  3C A0 80 39 */	lis r5, d_menu_d_menu_fmap__stringBase0@ha
/* 801C6E68  38 A5 60 E8 */	addi r5, r5, d_menu_d_menu_fmap__stringBase0@l
/* 801C6E6C  38 A5 00 0F */	addi r5, r5, 0xf
/* 801C6E70  38 C0 00 00 */	li r6, 0
/* 801C6E74  38 E0 00 00 */	li r7, 0
/* 801C6E78  48 00 52 1D */	bl readFieldMapData__12dMenu_Fmap_cFPPvPCcbb
/* 801C6E7C  7F E3 FB 78 */	mr r3, r31
/* 801C6E80  48 00 56 6D */	bl decodePortalData__12dMenu_Fmap_cFv
/* 801C6E84  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 801C6E88  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C6E8C  90 03 00 70 */	stw r0, 0x70(r3)
/* 801C6E90  38 80 00 00 */	li r4, 0
/* 801C6E94  90 9F 00 20 */	stw r4, 0x20(r31)
/* 801C6E98  7C 83 23 78 */	mr r3, r4
/* 801C6E9C  38 00 00 08 */	li r0, 8
/* 801C6EA0  7C 09 03 A6 */	mtctr r0
lbl_801C6EA4:
/* 801C6EA4  7C BF 1A 14 */	add r5, r31, r3
/* 801C6EA8  90 85 00 24 */	stw r4, 0x24(r5)
/* 801C6EAC  90 85 00 44 */	stw r4, 0x44(r5)
/* 801C6EB0  90 85 00 6C */	stw r4, 0x6c(r5)
/* 801C6EB4  38 63 00 04 */	addi r3, r3, 4
/* 801C6EB8  42 00 FF EC */	bdnz lbl_801C6EA4
/* 801C6EBC  38 00 00 00 */	li r0, 0
/* 801C6EC0  98 1F 03 05 */	stb r0, 0x305(r31)
/* 801C6EC4  38 60 00 00 */	li r3, 0
/* 801C6EC8  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801C6ECC  38 00 00 08 */	li r0, 8
/* 801C6ED0  7C 09 03 A6 */	mtctr r0
lbl_801C6ED4:
/* 801C6ED4  7C 9F 1A 14 */	add r4, r31, r3
/* 801C6ED8  D0 04 01 68 */	stfs f0, 0x168(r4)
/* 801C6EDC  D0 04 01 88 */	stfs f0, 0x188(r4)
/* 801C6EE0  D0 04 01 28 */	stfs f0, 0x128(r4)
/* 801C6EE4  D0 04 01 48 */	stfs f0, 0x148(r4)
/* 801C6EE8  38 63 00 04 */	addi r3, r3, 4
/* 801C6EEC  42 00 FF E8 */	bdnz lbl_801C6ED4
/* 801C6EF0  88 1F 03 07 */	lbz r0, 0x307(r31)
/* 801C6EF4  28 00 00 01 */	cmplwi r0, 1
/* 801C6EF8  40 82 00 5C */	bne lbl_801C6F54
/* 801C6EFC  38 00 00 00 */	li r0, 0
/* 801C6F00  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C6F04  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C6F08  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C6F0C  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C6F10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C6F14  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C6F18  3C 00 43 30 */	lis r0, 0x4330
/* 801C6F1C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C6F20  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801C6F24  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C6F28  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C6F2C  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C6F30  48 00 A2 19 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C6F34  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C6F38  38 80 00 0C */	li r4, 0xc
/* 801C6F3C  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C6F40  48 01 07 D5 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C6F44  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C6F48  38 80 00 00 */	li r4, 0
/* 801C6F4C  48 01 04 4D */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801C6F50  48 00 00 20 */	b lbl_801C6F70
lbl_801C6F54:
/* 801C6F54  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C6F58  38 80 00 0C */	li r4, 0xc
/* 801C6F5C  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C6F60  48 01 07 B5 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C6F64  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C6F68  38 80 03 F9 */	li r4, 0x3f9
/* 801C6F6C  48 01 04 2D */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
lbl_801C6F70:
/* 801C6F70  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801C6F74  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C6F78  D0 03 11 D4 */	stfs f0, 0x11d4(r3)
/* 801C6F7C  8B DF 03 00 */	lbz r30, 0x300(r31)
/* 801C6F80  28 1E 00 06 */	cmplwi r30, 6
/* 801C6F84  41 82 00 2C */	beq lbl_801C6FB0
/* 801C6F88  28 1E 00 08 */	cmplwi r30, 8
/* 801C6F8C  41 82 00 24 */	beq lbl_801C6FB0
/* 801C6F90  28 1E 00 0E */	cmplwi r30, 0xe
/* 801C6F94  41 82 00 1C */	beq lbl_801C6FB0
/* 801C6F98  28 1E 00 12 */	cmplwi r30, 0x12
/* 801C6F9C  41 82 00 14 */	beq lbl_801C6FB0
/* 801C6FA0  28 1E 00 17 */	cmplwi r30, 0x17
/* 801C6FA4  41 82 00 0C */	beq lbl_801C6FB0
/* 801C6FA8  28 1E 00 1B */	cmplwi r30, 0x1b
/* 801C6FAC  40 82 02 0C */	bne lbl_801C71B8
lbl_801C6FB0:
/* 801C6FB0  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801C6FB4  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801C6FB8  88 03 02 F9 */	lbz r0, 0x2f9(r3)
/* 801C6FBC  28 00 00 00 */	cmplwi r0, 0
/* 801C6FC0  41 82 00 10 */	beq lbl_801C6FD0
/* 801C6FC4  88 1F 03 0C */	lbz r0, 0x30c(r31)
/* 801C6FC8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C6FCC  98 03 12 27 */	stb r0, 0x1227(r3)
lbl_801C6FD0:
/* 801C6FD0  8B DF 03 00 */	lbz r30, 0x300(r31)
/* 801C6FD4  28 1E 00 1B */	cmplwi r30, 0x1b
/* 801C6FD8  40 82 00 98 */	bne lbl_801C7070
/* 801C6FDC  38 00 00 05 */	li r0, 5
/* 801C6FE0  98 1F 03 00 */	stb r0, 0x300(r31)
/* 801C6FE4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C6FE8  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801C6FEC  7F E3 FB 78 */	mr r3, r31
/* 801C6FF0  38 04 00 01 */	addi r0, r4, 1
/* 801C6FF4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C6FF8  48 00 47 79 */	bl readWorldData__12dMenu_Fmap_cFUc
/* 801C6FFC  38 00 00 00 */	li r0, 0
/* 801C7000  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C7004  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7008  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C700C  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C7010  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C7014  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C7018  3C 00 43 30 */	lis r0, 0x4330
/* 801C701C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C7020  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801C7024  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C7028  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C702C  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C7030  48 00 A1 19 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C7034  9B DF 03 00 */	stb r30, 0x300(r31)
/* 801C7038  7F E3 FB 78 */	mr r3, r31
/* 801C703C  48 00 69 21 */	bl getPlayerPos2D__12dMenu_Fmap_cFv
/* 801C7040  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7044  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801C7048  48 00 DA E5 */	bl regionMapMove__18dMenu_Fmap2DBack_cFP9STControl
/* 801C704C  7F E3 FB 78 */	mr r3, r31
/* 801C7050  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 801C7054  38 80 00 01 */	li r4, 1
/* 801C7058  48 00 5A B1 */	bl drawIcon__12dMenu_Fmap_cFfb
/* 801C705C  7F E3 FB 78 */	mr r3, r31
/* 801C7060  48 00 68 55 */	bl getHowlRegionID__12dMenu_Fmap_cFv
/* 801C7064  38 03 FF FF */	addi r0, r3, -1
/* 801C7068  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C706C  98 03 12 27 */	stb r0, 0x1227(r3)
lbl_801C7070:
/* 801C7070  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7074  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801C7078  7F E3 FB 78 */	mr r3, r31
/* 801C707C  38 04 00 01 */	addi r0, r4, 1
/* 801C7080  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C7084  48 00 46 ED */	bl readWorldData__12dMenu_Fmap_cFUc
/* 801C7088  38 00 00 0A */	li r0, 0xa
/* 801C708C  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C7090  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7094  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C7098  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C709C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C70A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C70A4  3C 00 43 30 */	lis r0, 0x4330
/* 801C70A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C70AC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801C70B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C70B4  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C70B8  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C70BC  48 00 A0 8D */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C70C0  88 1F 03 07 */	lbz r0, 0x307(r31)
/* 801C70C4  28 00 00 01 */	cmplwi r0, 1
/* 801C70C8  40 82 00 64 */	bne lbl_801C712C
/* 801C70CC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C70D0  38 80 00 01 */	li r4, 1
/* 801C70D4  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C70D8  48 01 06 3D */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C70DC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C70E0  38 80 00 02 */	li r4, 2
/* 801C70E4  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C70E8  48 01 06 2D */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C70EC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C70F0  38 80 05 22 */	li r4, 0x522
/* 801C70F4  38 A0 00 FF */	li r5, 0xff
/* 801C70F8  48 01 01 19 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C70FC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7100  38 80 00 00 */	li r4, 0
/* 801C7104  38 A0 00 FF */	li r5, 0xff
/* 801C7108  48 01 01 CD */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C710C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7110  38 80 05 2A */	li r4, 0x52a
/* 801C7114  38 A0 00 FF */	li r5, 0xff
/* 801C7118  48 00 FF D1 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C711C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7120  38 80 05 26 */	li r4, 0x526
/* 801C7124  48 01 03 C9 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C7128  48 00 02 E8 */	b lbl_801C7410
lbl_801C712C:
/* 801C712C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7130  38 80 00 03 */	li r4, 3
/* 801C7134  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C7138  48 01 05 DD */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C713C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7140  38 80 05 22 */	li r4, 0x522
/* 801C7144  38 A0 00 FF */	li r5, 0xff
/* 801C7148  48 01 00 C9 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C714C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7150  38 80 05 27 */	li r4, 0x527
/* 801C7154  38 A0 00 FF */	li r5, 0xff
/* 801C7158  48 01 01 7D */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C715C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7160  38 80 05 29 */	li r4, 0x529
/* 801C7164  38 A0 00 FF */	li r5, 0xff
/* 801C7168  48 00 FF 81 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C716C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7170  38 80 05 28 */	li r4, 0x528
/* 801C7174  48 01 03 79 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C7178  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C717C  38 63 00 04 */	addi r3, r3, 4
/* 801C7180  38 80 00 00 */	li r4, 0
/* 801C7184  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7188  FC 40 08 90 */	fmr f2, f1
/* 801C718C  C0 62 A7 28 */	lfs f3, lit_4158(r2)
/* 801C7190  4B FF CD 35 */	bl iconScale__16dMenuMapCommon_cFifff
/* 801C7194  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C7198  28 00 00 12 */	cmplwi r0, 0x12
/* 801C719C  41 82 00 10 */	beq lbl_801C71AC
/* 801C71A0  7F E3 FB 78 */	mr r3, r31
/* 801C71A4  48 00 62 BD */	bl arrowPosInit__12dMenu_Fmap_cFv
/* 801C71A8  48 00 02 68 */	b lbl_801C7410
lbl_801C71AC:
/* 801C71AC  7F E3 FB 78 */	mr r3, r31
/* 801C71B0  48 00 65 C1 */	bl yamibossArrowPosInit__12dMenu_Fmap_cFv
/* 801C71B4  48 00 02 5C */	b lbl_801C7410
lbl_801C71B8:
/* 801C71B8  28 1E 00 0D */	cmplwi r30, 0xd
/* 801C71BC  40 82 01 54 */	bne lbl_801C7310
/* 801C71C0  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801C71C4  3B C3 FC 60 */	addi r30, r3, g_fmapHIO@l
/* 801C71C8  88 1E 02 F9 */	lbz r0, 0x2f9(r30)
/* 801C71CC  28 00 00 00 */	cmplwi r0, 0
/* 801C71D0  41 82 00 10 */	beq lbl_801C71E0
/* 801C71D4  88 1F 03 0C */	lbz r0, 0x30c(r31)
/* 801C71D8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C71DC  98 03 12 27 */	stb r0, 0x1227(r3)
lbl_801C71E0:
/* 801C71E0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C71E4  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801C71E8  7F E3 FB 78 */	mr r3, r31
/* 801C71EC  38 04 00 01 */	addi r0, r4, 1
/* 801C71F0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C71F4  48 00 45 7D */	bl readWorldData__12dMenu_Fmap_cFUc
/* 801C71F8  38 00 00 0A */	li r0, 0xa
/* 801C71FC  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C7200  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7204  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C7208  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C720C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C7210  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C7214  3C 00 43 30 */	lis r0, 0x4330
/* 801C7218  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C721C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801C7220  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C7224  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C7228  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C722C  48 00 9F 1D */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C7230  88 1E 02 F9 */	lbz r0, 0x2f9(r30)
/* 801C7234  28 00 00 00 */	cmplwi r0, 0
/* 801C7238  41 82 00 10 */	beq lbl_801C7248
/* 801C723C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7240  88 9F 03 0D */	lbz r4, 0x30d(r31)
/* 801C7244  48 00 AB 31 */	bl setSpotCursor__18dMenu_Fmap2DBack_cFUc
lbl_801C7248:
/* 801C7248  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C724C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C7250  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C7254  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C7258  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C725C  3C 00 43 30 */	lis r0, 0x4330
/* 801C7260  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C7264  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801C7268  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C726C  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C7270  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C7274  48 00 A2 05 */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
/* 801C7278  C0 3F 01 F4 */	lfs f1, 0x1f4(r31)
/* 801C727C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7280  C0 1F 01 F0 */	lfs f0, 0x1f0(r31)
/* 801C7284  D0 03 0F C8 */	stfs f0, 0xfc8(r3)
/* 801C7288  D0 23 0F CC */	stfs f1, 0xfcc(r3)
/* 801C728C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7290  38 80 00 01 */	li r4, 1
/* 801C7294  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C7298  48 01 04 7D */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C729C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C72A0  38 80 00 02 */	li r4, 2
/* 801C72A4  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C72A8  48 01 04 6D */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C72AC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C72B0  38 80 05 22 */	li r4, 0x522
/* 801C72B4  38 A0 00 FF */	li r5, 0xff
/* 801C72B8  48 00 FF 59 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C72BC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C72C0  38 80 00 00 */	li r4, 0
/* 801C72C4  38 A0 00 FF */	li r5, 0xff
/* 801C72C8  48 01 00 0D */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C72CC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C72D0  38 80 05 29 */	li r4, 0x529
/* 801C72D4  38 A0 00 FF */	li r5, 0xff
/* 801C72D8  48 00 FE 11 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C72DC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C72E0  38 80 05 28 */	li r4, 0x528
/* 801C72E4  48 01 02 09 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C72E8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C72EC  38 63 00 04 */	addi r3, r3, 4
/* 801C72F0  38 80 00 00 */	li r4, 0
/* 801C72F4  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C72F8  FC 40 08 90 */	fmr f2, f1
/* 801C72FC  C0 62 A7 24 */	lfs f3, lit_3995(r2)
/* 801C7300  4B FF CB C5 */	bl iconScale__16dMenuMapCommon_cFifff
/* 801C7304  7F E3 FB 78 */	mr r3, r31
/* 801C7308  48 00 61 59 */	bl arrowPosInit__12dMenu_Fmap_cFv
/* 801C730C  48 00 01 04 */	b lbl_801C7410
lbl_801C7310:
/* 801C7310  38 00 00 05 */	li r0, 5
/* 801C7314  98 1F 03 00 */	stb r0, 0x300(r31)
/* 801C7318  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C731C  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801C7320  7F E3 FB 78 */	mr r3, r31
/* 801C7324  38 04 00 01 */	addi r0, r4, 1
/* 801C7328  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C732C  48 00 44 45 */	bl readWorldData__12dMenu_Fmap_cFUc
/* 801C7330  38 00 00 00 */	li r0, 0
/* 801C7334  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C7338  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C733C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C7340  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C7344  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C7348  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C734C  3C 00 43 30 */	lis r0, 0x4330
/* 801C7350  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C7354  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801C7358  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C735C  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C7360  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C7364  48 00 9D E5 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C7368  9B DF 03 00 */	stb r30, 0x300(r31)
/* 801C736C  7F E3 FB 78 */	mr r3, r31
/* 801C7370  48 00 65 ED */	bl getPlayerPos2D__12dMenu_Fmap_cFv
/* 801C7374  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7378  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801C737C  48 00 D7 B1 */	bl regionMapMove__18dMenu_Fmap2DBack_cFP9STControl
/* 801C7380  7F E3 FB 78 */	mr r3, r31
/* 801C7384  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 801C7388  38 80 00 01 */	li r4, 1
/* 801C738C  48 00 57 7D */	bl drawIcon__12dMenu_Fmap_cFfb
/* 801C7390  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7394  38 80 00 01 */	li r4, 1
/* 801C7398  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C739C  48 01 03 79 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C73A0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C73A4  38 80 00 02 */	li r4, 2
/* 801C73A8  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C73AC  48 01 03 69 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C73B0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C73B4  38 80 00 00 */	li r4, 0
/* 801C73B8  38 A0 00 FF */	li r5, 0xff
/* 801C73BC  48 00 FE 55 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C73C0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C73C4  38 80 05 27 */	li r4, 0x527
/* 801C73C8  38 A0 00 FF */	li r5, 0xff
/* 801C73CC  48 00 FF 09 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C73D0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C73D4  38 80 05 29 */	li r4, 0x529
/* 801C73D8  38 A0 00 FF */	li r5, 0xff
/* 801C73DC  48 00 FD 0D */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C73E0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C73E4  38 80 05 24 */	li r4, 0x524
/* 801C73E8  48 01 01 05 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C73EC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C73F0  38 63 00 04 */	addi r3, r3, 4
/* 801C73F4  38 80 00 00 */	li r4, 0
/* 801C73F8  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C73FC  FC 40 08 90 */	fmr f2, f1
/* 801C7400  C0 62 A7 28 */	lfs f3, lit_4158(r2)
/* 801C7404  4B FF CA C1 */	bl iconScale__16dMenuMapCommon_cFifff
/* 801C7408  7F E3 FB 78 */	mr r3, r31
/* 801C740C  48 00 60 55 */	bl arrowPosInit__12dMenu_Fmap_cFv
lbl_801C7410:
/* 801C7410  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C7414  28 00 00 0E */	cmplwi r0, 0xe
/* 801C7418  41 82 00 24 */	beq lbl_801C743C
/* 801C741C  28 00 00 12 */	cmplwi r0, 0x12
/* 801C7420  41 82 00 1C */	beq lbl_801C743C
/* 801C7424  28 00 00 03 */	cmplwi r0, 3
/* 801C7428  41 82 00 14 */	beq lbl_801C743C
/* 801C742C  28 00 00 17 */	cmplwi r0, 0x17
/* 801C7430  41 82 00 0C */	beq lbl_801C743C
/* 801C7434  28 00 00 1B */	cmplwi r0, 0x1b
/* 801C7438  40 82 00 10 */	bne lbl_801C7448
lbl_801C743C:
/* 801C743C  38 00 00 00 */	li r0, 0
/* 801C7440  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7444  98 03 12 3A */	stb r0, 0x123a(r3)
lbl_801C7448:
/* 801C7448  7F E3 FB 78 */	mr r3, r31
/* 801C744C  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C7450  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C7454  3C 80 80 3C */	lis r4, init_process@ha
/* 801C7458  38 04 D2 04 */	addi r0, r4, init_process@l
/* 801C745C  7D 80 2A 14 */	add r12, r0, r5
/* 801C7460  48 19 AC 25 */	bl __ptmf_scall
/* 801C7464  60 00 00 00 */	nop 
/* 801C7468  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C746C  28 00 00 1B */	cmplwi r0, 0x1b
/* 801C7470  41 82 00 0C */	beq lbl_801C747C
/* 801C7474  7F E3 FB 78 */	mr r3, r31
/* 801C7478  48 00 64 E5 */	bl getPlayerPos2D__12dMenu_Fmap_cFv
lbl_801C747C:
/* 801C747C  38 00 00 00 */	li r0, 0
/* 801C7480  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801C7484  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801C7488  98 03 02 F9 */	stb r0, 0x2f9(r3)
/* 801C748C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C7490  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C7494  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C7498  7C 08 03 A6 */	mtlr r0
/* 801C749C  38 21 00 30 */	addi r1, r1, 0x30
/* 801C74A0  4E 80 00 20 */	blr 
