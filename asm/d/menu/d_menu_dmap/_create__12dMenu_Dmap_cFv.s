lbl_801BD7C0:
/* 801BD7C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801BD7C4  7C 08 02 A6 */	mflr r0
/* 801BD7C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801BD7CC  39 61 00 50 */	addi r11, r1, 0x50
/* 801BD7D0  48 1A 4A 09 */	bl _savegpr_28
/* 801BD7D4  7C 7F 1B 78 */	mr r31, r3
/* 801BD7D8  80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 801BD7DC  48 11 0F A9 */	bl getTotalFreeSize__7JKRHeapFv
/* 801BD7E0  83 BF 00 E8 */	lwz r29, 0xe8(r31)
/* 801BD7E4  7F A3 EB 78 */	mr r3, r29
/* 801BD7E8  48 11 0F 45 */	bl getFreeSize__7JKRHeapFv
/* 801BD7EC  38 63 FF F0 */	addi r3, r3, -16
/* 801BD7F0  7F A4 EB 78 */	mr r4, r29
/* 801BD7F4  38 A0 00 00 */	li r5, 0
/* 801BD7F8  48 11 16 35 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 801BD7FC  90 7F 00 EC */	stw r3, 0xec(r31)
/* 801BD800  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 801BD804  4B E5 19 C9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801BD808  7C 7E 1B 78 */	mr r30, r3
/* 801BD80C  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 801BD810  48 11 0F 75 */	bl getTotalFreeSize__7JKRHeapFv
/* 801BD814  38 60 00 FC */	li r3, 0xfc
/* 801BD818  48 11 14 35 */	bl __nw__FUl
/* 801BD81C  7C 7D 1B 79 */	or. r29, r3, r3
/* 801BD820  41 82 00 F4 */	beq lbl_801BD914
/* 801BD824  3C 60 80 3C */	lis r3, __vt__15dMenu_DmapMap_c@ha
/* 801BD828  38 03 CA E0 */	addi r0, r3, __vt__15dMenu_DmapMap_c@l
/* 801BD82C  90 1D 00 00 */	stw r0, 0(r29)
/* 801BD830  38 7D 00 04 */	addi r3, r29, 4
/* 801BD834  3C 80 80 1C */	lis r4, __ct__15renderingDmap_cFv@ha
/* 801BD838  38 84 05 1C */	addi r4, r4, __ct__15renderingDmap_cFv@l
/* 801BD83C  3C A0 80 1C */	lis r5, __dt__15renderingDmap_cFv@ha
/* 801BD840  38 A5 03 80 */	addi r5, r5, __dt__15renderingDmap_cFv@l
/* 801BD844  38 C0 00 38 */	li r6, 0x38
/* 801BD848  38 E0 00 02 */	li r7, 2
/* 801BD84C  48 1A 45 15 */	bl __construct_array
/* 801BD850  3C 60 80 3C */	lis r3, __vt__20dMenu_StageMapCtrl_c@ha
/* 801BD854  38 03 CA EC */	addi r0, r3, __vt__20dMenu_StageMapCtrl_c@l
/* 801BD858  90 1D 00 00 */	stw r0, 0(r29)
/* 801BD85C  38 00 00 00 */	li r0, 0
/* 801BD860  90 1D 00 8C */	stw r0, 0x8c(r29)
/* 801BD864  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BD868  D0 1D 00 90 */	stfs f0, 0x90(r29)
/* 801BD86C  D0 1D 00 94 */	stfs f0, 0x94(r29)
/* 801BD870  D0 1D 00 98 */	stfs f0, 0x98(r29)
/* 801BD874  D0 1D 00 9C */	stfs f0, 0x9c(r29)
/* 801BD878  D0 1D 00 A0 */	stfs f0, 0xa0(r29)
/* 801BD87C  D0 1D 00 A4 */	stfs f0, 0xa4(r29)
/* 801BD880  D0 1D 00 A8 */	stfs f0, 0xa8(r29)
/* 801BD884  D0 1D 00 AC */	stfs f0, 0xac(r29)
/* 801BD888  D0 1D 00 B0 */	stfs f0, 0xb0(r29)
/* 801BD88C  D0 1D 00 B4 */	stfs f0, 0xb4(r29)
/* 801BD890  D0 1D 00 B8 */	stfs f0, 0xb8(r29)
/* 801BD894  D0 1D 00 BC */	stfs f0, 0xbc(r29)
/* 801BD898  D0 1D 00 C0 */	stfs f0, 0xc0(r29)
/* 801BD89C  D0 1D 00 C4 */	stfs f0, 0xc4(r29)
/* 801BD8A0  D0 1D 00 C8 */	stfs f0, 0xc8(r29)
/* 801BD8A4  D0 1D 00 CC */	stfs f0, 0xcc(r29)
/* 801BD8A8  D0 1D 00 D0 */	stfs f0, 0xd0(r29)
/* 801BD8AC  D0 1D 00 D4 */	stfs f0, 0xd4(r29)
/* 801BD8B0  D0 1D 00 D8 */	stfs f0, 0xd8(r29)
/* 801BD8B4  B0 1D 00 E4 */	sth r0, 0xe4(r29)
/* 801BD8B8  98 1D 00 E6 */	stb r0, 0xe6(r29)
/* 801BD8BC  98 1D 00 E7 */	stb r0, 0xe7(r29)
/* 801BD8C0  98 1D 00 E8 */	stb r0, 0xe8(r29)
/* 801BD8C4  98 1D 00 E9 */	stb r0, 0xe9(r29)
/* 801BD8C8  98 1D 00 EA */	stb r0, 0xea(r29)
/* 801BD8CC  98 1D 00 EB */	stb r0, 0xeb(r29)
/* 801BD8D0  98 1D 00 EC */	stb r0, 0xec(r29)
/* 801BD8D4  98 1D 00 ED */	stb r0, 0xed(r29)
/* 801BD8D8  98 1D 00 EE */	stb r0, 0xee(r29)
/* 801BD8DC  98 1D 00 EF */	stb r0, 0xef(r29)
/* 801BD8E0  98 1D 00 F0 */	stb r0, 0xf0(r29)
/* 801BD8E4  98 1D 00 F1 */	stb r0, 0xf1(r29)
/* 801BD8E8  98 1D 00 F2 */	stb r0, 0xf2(r29)
/* 801BD8EC  98 1D 00 F3 */	stb r0, 0xf3(r29)
/* 801BD8F0  98 1D 00 F4 */	stb r0, 0xf4(r29)
/* 801BD8F4  98 1D 00 F5 */	stb r0, 0xf5(r29)
/* 801BD8F8  98 1D 00 F6 */	stb r0, 0xf6(r29)
/* 801BD8FC  98 1D 00 F7 */	stb r0, 0xf7(r29)
/* 801BD900  98 1D 00 F8 */	stb r0, 0xf8(r29)
/* 801BD904  98 1D 00 F9 */	stb r0, 0xf9(r29)
/* 801BD908  3C 60 80 3C */	lis r3, __vt__19dMenu_DmapMapCtrl_c@ha
/* 801BD90C  38 03 CD 74 */	addi r0, r3, __vt__19dMenu_DmapMapCtrl_c@l
/* 801BD910  90 1D 00 00 */	stw r0, 0(r29)
lbl_801BD914:
/* 801BD914  93 BF 00 04 */	stw r29, 4(r31)
/* 801BD918  38 60 00 00 */	li r3, 0
/* 801BD91C  B0 7F 01 66 */	sth r3, 0x166(r31)
/* 801BD920  B0 7F 01 68 */	sth r3, 0x168(r31)
/* 801BD924  38 00 00 01 */	li r0, 1
/* 801BD928  98 1F 01 84 */	stb r0, 0x184(r31)
/* 801BD92C  80 9F 00 04 */	lwz r4, 4(r31)
/* 801BD930  88 04 00 F8 */	lbz r0, 0xf8(r4)
/* 801BD934  28 00 00 01 */	cmplwi r0, 1
/* 801BD938  40 82 00 14 */	bne lbl_801BD94C
/* 801BD93C  88 04 00 F9 */	lbz r0, 0xf9(r4)
/* 801BD940  28 00 00 01 */	cmplwi r0, 1
/* 801BD944  40 82 00 08 */	bne lbl_801BD94C
/* 801BD948  98 7F 01 84 */	stb r3, 0x184(r31)
lbl_801BD94C:
/* 801BD94C  38 60 00 30 */	li r3, 0x30
/* 801BD950  48 11 12 FD */	bl __nw__FUl
/* 801BD954  7C 60 1B 79 */	or. r0, r3, r3
/* 801BD958  41 82 00 2C */	beq lbl_801BD984
/* 801BD95C  38 80 00 05 */	li r4, 5
/* 801BD960  38 A0 00 02 */	li r5, 2
/* 801BD964  38 C0 00 01 */	li r6, 1
/* 801BD968  38 E0 00 01 */	li r7, 1
/* 801BD96C  C0 22 A6 14 */	lfs f1, lit_4313(r2)
/* 801BD970  C0 42 A6 0C */	lfs f2, lit_4249(r2)
/* 801BD974  39 00 00 00 */	li r8, 0
/* 801BD978  39 20 08 00 */	li r9, 0x800
/* 801BD97C  4B E7 46 C9 */	bl __ct__9STControlFssssffss
/* 801BD980  7C 60 1B 78 */	mr r0, r3
lbl_801BD984:
/* 801BD984  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 801BD988  38 00 00 08 */	li r0, 8
/* 801BD98C  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BD990  B0 03 00 28 */	sth r0, 0x28(r3)
/* 801BD994  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801BD998  48 11 0D ED */	bl getTotalFreeSize__7JKRHeapFv
/* 801BD99C  38 60 0D DC */	li r3, 0xddc
/* 801BD9A0  48 11 12 AD */	bl __nw__FUl
/* 801BD9A4  7C 60 1B 79 */	or. r0, r3, r3
/* 801BD9A8  41 82 00 14 */	beq lbl_801BD9BC
/* 801BD9AC  80 9F 00 EC */	lwz r4, 0xec(r31)
/* 801BD9B0  80 BF 00 F4 */	lwz r5, 0xf4(r31)
/* 801BD9B4  4B FF A5 6D */	bl __ct__14dMenu_DmapBg_cFP10JKRExpHeapP9STControl
/* 801BD9B8  7C 60 1B 78 */	mr r0, r3
lbl_801BD9BC:
/* 801BD9BC  90 1F 00 08 */	stw r0, 8(r31)
/* 801BD9C0  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 801BD9C4  38 80 0C 00 */	li r4, 0xc00
/* 801BD9C8  38 A0 00 20 */	li r5, 0x20
/* 801BD9CC  48 11 0B 09 */	bl alloc__7JKRHeapFUli
/* 801BD9D0  90 7F 00 FC */	stw r3, 0xfc(r31)
/* 801BD9D4  88 1F 01 7F */	lbz r0, 0x17f(r31)
/* 801BD9D8  28 00 00 00 */	cmplwi r0, 0
/* 801BD9DC  41 82 00 30 */	beq lbl_801BDA0C
/* 801BD9E0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BD9E4  38 80 00 00 */	li r4, 0
/* 801BD9E8  4B FF B3 FD */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BD9EC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BD9F0  38 80 05 22 */	li r4, 0x522
/* 801BD9F4  4B FF B4 C9 */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801BD9F8  38 00 03 7B */	li r0, 0x37b
/* 801BD9FC  B0 1F 01 66 */	sth r0, 0x166(r31)
/* 801BDA00  38 00 05 69 */	li r0, 0x569
/* 801BDA04  B0 1F 01 68 */	sth r0, 0x168(r31)
/* 801BDA08  48 00 00 28 */	b lbl_801BDA30
lbl_801BDA0C:
/* 801BDA0C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDA10  38 80 05 27 */	li r4, 0x527
/* 801BDA14  4B FF B3 D1 */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BDA18  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDA1C  38 80 03 F9 */	li r4, 0x3f9
/* 801BDA20  4B FF B4 9D */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801BDA24  38 00 00 00 */	li r0, 0
/* 801BDA28  B0 1F 01 66 */	sth r0, 0x166(r31)
/* 801BDA2C  B0 1F 01 68 */	sth r0, 0x168(r31)
lbl_801BDA30:
/* 801BDA30  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801BDA34  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801BDA38  88 03 00 BF */	lbz r0, 0xbf(r3)
/* 801BDA3C  28 00 00 06 */	cmplwi r0, 6
/* 801BDA40  40 82 00 A0 */	bne lbl_801BDAE0
/* 801BDA44  3B 80 00 00 */	li r28, 0
/* 801BDA48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801BDA4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801BDA50  3B A3 09 58 */	addi r29, r3, 0x958
/* 801BDA54  7F A3 EB 78 */	mr r3, r29
/* 801BDA58  38 80 00 67 */	li r4, 0x67
/* 801BDA5C  4B E7 6E 05 */	bl isSwitch__12dSv_memBit_cCFi
/* 801BDA60  2C 03 00 00 */	cmpwi r3, 0
/* 801BDA64  41 82 00 0C */	beq lbl_801BDA70
/* 801BDA68  3B 80 00 01 */	li r28, 1
/* 801BDA6C  48 00 00 24 */	b lbl_801BDA90
lbl_801BDA70:
/* 801BDA70  7F A3 EB 78 */	mr r3, r29
/* 801BDA74  38 80 00 66 */	li r4, 0x66
/* 801BDA78  4B E7 6D E9 */	bl isSwitch__12dSv_memBit_cCFi
/* 801BDA7C  2C 03 00 00 */	cmpwi r3, 0
/* 801BDA80  40 82 00 10 */	bne lbl_801BDA90
/* 801BDA84  7F A3 EB 78 */	mr r3, r29
/* 801BDA88  38 80 00 65 */	li r4, 0x65
/* 801BDA8C  4B E7 6D D5 */	bl isSwitch__12dSv_memBit_cCFi
lbl_801BDA90:
/* 801BDA90  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDA94  C0 03 0D A4 */	lfs f0, 0xda4(r3)
/* 801BDA98  C0 23 0D A0 */	lfs f1, 0xda0(r3)
/* 801BDA9C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDAA0  FC 20 08 1E */	fctiwz f1, f1
/* 801BDAA4  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 801BDAA8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801BDAAC  FC 00 00 1E */	fctiwz f0, f0
/* 801BDAB0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801BDAB4  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801BDAB8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 801BDABC  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 801BDAC0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801BDAC4  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 801BDAC8  7F 88 E3 78 */	mr r8, r28
/* 801BDACC  81 3F 01 00 */	lwz r9, 0x100(r31)
/* 801BDAD0  48 00 48 8D */	bl _create__20dMenu_StageMapCtrl_cFUsUsUsUsScPv
/* 801BDAD4  38 00 00 04 */	li r0, 4
/* 801BDAD8  98 1F 01 7B */	stb r0, 0x17b(r31)
/* 801BDADC  48 00 00 4C */	b lbl_801BDB28
lbl_801BDAE0:
/* 801BDAE0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDAE4  C0 03 0D A4 */	lfs f0, 0xda4(r3)
/* 801BDAE8  C0 23 0D A0 */	lfs f1, 0xda0(r3)
/* 801BDAEC  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDAF0  FC 20 08 1E */	fctiwz f1, f1
/* 801BDAF4  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 801BDAF8  80 81 00 34 */	lwz r4, 0x34(r1)
/* 801BDAFC  FC 00 00 1E */	fctiwz f0, f0
/* 801BDB00  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 801BDB04  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 801BDB08  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 801BDB0C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 801BDB10  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801BDB14  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 801BDB18  81 1F 01 00 */	lwz r8, 0x100(r31)
/* 801BDB1C  48 00 48 01 */	bl _create__20dMenu_StageMapCtrl_cFUsUsUsUsPv
/* 801BDB20  38 00 00 01 */	li r0, 1
/* 801BDB24  98 1F 01 7B */	stb r0, 0x17b(r31)
lbl_801BDB28:
/* 801BDB28  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDB2C  88 03 00 E7 */	lbz r0, 0xe7(r3)
/* 801BDB30  98 1F 01 6C */	stb r0, 0x16c(r31)
/* 801BDB34  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDB38  48 00 47 C1 */	bl getPlayerStayFloorNo__20dMenu_StageMapCtrl_cCFv
/* 801BDB3C  98 7F 01 72 */	stb r3, 0x172(r31)
/* 801BDB40  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BDB44  98 1F 01 6D */	stb r0, 0x16d(r31)
/* 801BDB48  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BDB4C  98 1F 01 6F */	stb r0, 0x16f(r31)
/* 801BDB50  38 00 00 00 */	li r0, 0
/* 801BDB54  B0 1F 01 6A */	sth r0, 0x16a(r31)
/* 801BDB58  88 1F 01 72 */	lbz r0, 0x172(r31)
/* 801BDB5C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDB60  98 03 0D D6 */	stb r0, 0xdd6(r3)
/* 801BDB64  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDB68  88 03 00 ED */	lbz r0, 0xed(r3)
/* 801BDB6C  98 1F 01 70 */	stb r0, 0x170(r31)
/* 801BDB70  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDB74  88 03 00 EE */	lbz r0, 0xee(r3)
/* 801BDB78  98 1F 01 71 */	stb r0, 0x171(r31)
/* 801BDB7C  38 00 FF 9D */	li r0, -99
/* 801BDB80  98 1F 01 73 */	stb r0, 0x173(r31)
/* 801BDB84  38 61 00 10 */	addi r3, r1, 0x10
/* 801BDB88  4B ED E6 F5 */	bl getBossIconFloorNo__7dTres_cFPi
/* 801BDB8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BDB90  41 82 00 0C */	beq lbl_801BDB9C
/* 801BDB94  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BDB98  98 1F 01 73 */	stb r0, 0x173(r31)
lbl_801BDB9C:
/* 801BDB9C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDBA0  4B FF B8 AD */	bl setFloorMessage__14dMenu_DmapBg_cFv
/* 801BDBA4  88 1F 01 7F */	lbz r0, 0x17f(r31)
/* 801BDBA8  28 00 00 00 */	cmplwi r0, 0
/* 801BDBAC  41 82 00 7C */	beq lbl_801BDC28
/* 801BDBB0  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BDBB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801BDBB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 801BDBBC  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDBC0  38 81 00 0C */	addi r4, r1, 0xc
/* 801BDBC4  38 A1 00 08 */	addi r5, r1, 8
/* 801BDBC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BDBCC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801BDBD0  7D 89 03 A6 */	mtctr r12
/* 801BDBD4  4E 80 04 21 */	bctrl 
/* 801BDBD8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDBDC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801BDBE0  C0 41 00 08 */	lfs f2, 8(r1)
/* 801BDBE4  48 00 43 8D */	bl initZoomWait__20dMenu_StageMapCtrl_cFff
/* 801BDBE8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDBEC  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 801BDBF0  28 00 00 01 */	cmplwi r0, 1
/* 801BDBF4  40 82 00 10 */	bne lbl_801BDC04
/* 801BDBF8  88 03 00 F9 */	lbz r0, 0xf9(r3)
/* 801BDBFC  28 00 00 01 */	cmplwi r0, 1
/* 801BDC00  41 82 00 28 */	beq lbl_801BDC28
lbl_801BDC04:
/* 801BDC04  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDC08  80 63 0C F4 */	lwz r3, 0xcf4(r3)
/* 801BDC0C  28 03 00 00 */	cmplwi r3, 0
/* 801BDC10  41 82 00 18 */	beq lbl_801BDC28
/* 801BDC14  38 80 00 FF */	li r4, 0xff
/* 801BDC18  81 83 00 00 */	lwz r12, 0(r3)
/* 801BDC1C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BDC20  7D 89 03 A6 */	mtctr r12
/* 801BDC24  4E 80 04 21 */	bctrl 
lbl_801BDC28:
/* 801BDC28  38 00 00 01 */	li r0, 1
/* 801BDC2C  98 1F 01 82 */	stb r0, 0x182(r31)
/* 801BDC30  98 1F 01 83 */	stb r0, 0x183(r31)
/* 801BDC34  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDC38  88 9F 01 7F */	lbz r4, 0x17f(r31)
/* 801BDC3C  4B FF AC B9 */	bl mapIconScaleSet__14dMenu_DmapBg_cFUc
/* 801BDC40  7F E3 FB 78 */	mr r3, r31
/* 801BDC44  4B FF D9 F1 */	bl screenInit__12dMenu_Dmap_cFv
/* 801BDC48  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDC4C  80 83 00 74 */	lwz r4, 0x74(r3)
/* 801BDC50  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDC54  80 63 0C C4 */	lwz r3, 0xcc4(r3)
/* 801BDC58  38 A0 00 00 */	li r5, 0
/* 801BDC5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BDC60  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801BDC64  7D 89 03 A6 */	mtctr r12
/* 801BDC68  4E 80 04 21 */	bctrl 
/* 801BDC6C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDC70  80 83 00 78 */	lwz r4, 0x78(r3)
/* 801BDC74  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDC78  80 63 0C C4 */	lwz r3, 0xcc4(r3)
/* 801BDC7C  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BDC80  81 83 00 00 */	lwz r12, 0(r3)
/* 801BDC84  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801BDC88  7D 89 03 A6 */	mtctr r12
/* 801BDC8C  4E 80 04 21 */	bctrl 
/* 801BDC90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BDC94  41 82 00 24 */	beq lbl_801BDCB8
/* 801BDC98  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDC9C  80 63 0C C4 */	lwz r3, 0xcc4(r3)
/* 801BDCA0  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BDCA4  C0 42 A5 E8 */	lfs f2, lit_3962(r2)
/* 801BDCA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BDCAC  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 801BDCB0  7D 89 03 A6 */	mtctr r12
/* 801BDCB4  4E 80 04 21 */	bctrl 
lbl_801BDCB8:
/* 801BDCB8  7F C3 F3 78 */	mr r3, r30
/* 801BDCBC  4B E5 15 11 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801BDCC0  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BDCC4  88 03 00 E7 */	lbz r0, 0xe7(r3)
/* 801BDCC8  7C 04 07 74 */	extsb r4, r0
/* 801BDCCC  7F E3 FB 78 */	mr r3, r31
/* 801BDCD0  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BDCD4  4B FF EB 75 */	bl getIconPos__12dMenu_Dmap_cFScf
/* 801BDCD8  38 00 00 00 */	li r0, 0
/* 801BDCDC  98 1F 01 7D */	stb r0, 0x17d(r31)
/* 801BDCE0  7F E3 FB 78 */	mr r3, r31
/* 801BDCE4  88 1F 01 7B */	lbz r0, 0x17b(r31)
/* 801BDCE8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801BDCEC  3C 80 80 3C */	lis r4, init_process@ha
/* 801BDCF0  38 04 C8 28 */	addi r0, r4, init_process@l
/* 801BDCF4  7D 80 2A 14 */	add r12, r0, r5
/* 801BDCF8  48 1A 43 8D */	bl __ptmf_scall
/* 801BDCFC  60 00 00 00 */	nop 
/* 801BDD00  38 00 00 00 */	li r0, 0
/* 801BDD04  98 1F 01 7E */	stb r0, 0x17e(r31)
/* 801BDD08  7F E3 FB 78 */	mr r3, r31
/* 801BDD0C  88 1F 01 7E */	lbz r0, 0x17e(r31)
/* 801BDD10  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801BDD14  3C 80 80 3C */	lis r4, map_init_process@ha
/* 801BDD18  38 04 C9 D8 */	addi r0, r4, map_init_process@l
/* 801BDD1C  7D 80 2A 14 */	add r12, r0, r5
/* 801BDD20  48 1A 43 65 */	bl __ptmf_scall
/* 801BDD24  60 00 00 00 */	nop 
/* 801BDD28  39 61 00 50 */	addi r11, r1, 0x50
/* 801BDD2C  48 1A 44 F9 */	bl _restgpr_28
/* 801BDD30  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801BDD34  7C 08 03 A6 */	mtlr r0
/* 801BDD38  38 21 00 50 */	addi r1, r1, 0x50
/* 801BDD3C  4E 80 00 20 */	blr 
