lbl_809B1FD4:
/* 809B1FD4  94 21 FC 50 */	stwu r1, -0x3b0(r1)
/* 809B1FD8  7C 08 02 A6 */	mflr r0
/* 809B1FDC  90 01 03 B4 */	stw r0, 0x3b4(r1)
/* 809B1FE0  93 E1 03 AC */	stw r31, 0x3ac(r1)
/* 809B1FE4  93 C1 03 A8 */	stw r30, 0x3a8(r1)
/* 809B1FE8  7C 7F 1B 78 */	mr r31, r3
/* 809B1FEC  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 809B1FF0  D0 01 00 08 */	stfs f0, 8(r1)
/* 809B1FF4  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 809B1FF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809B1FFC  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 809B2000  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B2004  38 C1 00 10 */	addi r6, r1, 0x10
/* 809B2008  38 A4 01 08 */	addi r5, r4, 0x108
/* 809B200C  38 00 00 06 */	li r0, 6
/* 809B2010  7C 09 03 A6 */	mtctr r0
lbl_809B2014:
/* 809B2014  80 65 00 04 */	lwz r3, 4(r5)
/* 809B2018  84 05 00 08 */	lwzu r0, 8(r5)
/* 809B201C  90 66 00 04 */	stw r3, 4(r6)
/* 809B2020  94 06 00 08 */	stwu r0, 8(r6)
/* 809B2024  42 00 FF F0 */	bdnz lbl_809B2014
/* 809B2028  80 05 00 04 */	lwz r0, 4(r5)
/* 809B202C  90 06 00 04 */	stw r0, 4(r6)
/* 809B2030  38 C1 00 44 */	addi r6, r1, 0x44
/* 809B2034  38 A4 01 3C */	addi r5, r4, 0x13c
/* 809B2038  38 00 00 08 */	li r0, 8
/* 809B203C  7C 09 03 A6 */	mtctr r0
lbl_809B2040:
/* 809B2040  80 65 00 04 */	lwz r3, 4(r5)
/* 809B2044  84 05 00 08 */	lwzu r0, 8(r5)
/* 809B2048  90 66 00 04 */	stw r3, 4(r6)
/* 809B204C  94 06 00 08 */	stwu r0, 8(r6)
/* 809B2050  42 00 FF F0 */	bdnz lbl_809B2040
/* 809B2054  39 21 00 88 */	addi r9, r1, 0x88
/* 809B2058  39 04 01 80 */	addi r8, r4, 0x180
/* 809B205C  38 01 03 40 */	addi r0, r1, 0x340
lbl_809B2060:
/* 809B2060  38 E9 FF FC */	addi r7, r9, -4
/* 809B2064  38 C8 FF FC */	addi r6, r8, -4
/* 809B2068  38 60 00 06 */	li r3, 6
/* 809B206C  7C 69 03 A6 */	mtctr r3
lbl_809B2070:
/* 809B2070  80 A6 00 04 */	lwz r5, 4(r6)
/* 809B2074  84 66 00 08 */	lwzu r3, 8(r6)
/* 809B2078  90 A7 00 04 */	stw r5, 4(r7)
/* 809B207C  94 67 00 08 */	stwu r3, 8(r7)
/* 809B2080  42 00 FF F0 */	bdnz lbl_809B2070
/* 809B2084  80 66 00 04 */	lwz r3, 4(r6)
/* 809B2088  90 67 00 04 */	stw r3, 4(r7)
/* 809B208C  38 E9 00 30 */	addi r7, r9, 0x30
/* 809B2090  38 C8 00 30 */	addi r6, r8, 0x30
/* 809B2094  38 60 00 08 */	li r3, 8
/* 809B2098  7C 69 03 A6 */	mtctr r3
lbl_809B209C:
/* 809B209C  80 A6 00 04 */	lwz r5, 4(r6)
/* 809B20A0  84 66 00 08 */	lwzu r3, 8(r6)
/* 809B20A4  90 A7 00 04 */	stw r5, 4(r7)
/* 809B20A8  94 67 00 08 */	stwu r3, 8(r7)
/* 809B20AC  42 00 FF F0 */	bdnz lbl_809B209C
/* 809B20B0  39 29 00 74 */	addi r9, r9, 0x74
/* 809B20B4  7C 09 00 40 */	cmplw r9, r0
/* 809B20B8  39 08 00 74 */	addi r8, r8, 0x74
/* 809B20BC  41 80 FF A4 */	blt lbl_809B2060
/* 809B20C0  C0 04 04 38 */	lfs f0, 0x438(r4)
/* 809B20C4  D0 01 03 40 */	stfs f0, 0x340(r1)
/* 809B20C8  C0 04 04 3C */	lfs f0, 0x43c(r4)
/* 809B20CC  D0 01 03 44 */	stfs f0, 0x344(r1)
/* 809B20D0  C0 04 04 40 */	lfs f0, 0x440(r4)
/* 809B20D4  D0 01 03 48 */	stfs f0, 0x348(r1)
/* 809B20D8  C0 04 04 44 */	lfs f0, 0x444(r4)
/* 809B20DC  D0 01 03 4C */	stfs f0, 0x34c(r1)
/* 809B20E0  C0 04 04 48 */	lfs f0, 0x448(r4)
/* 809B20E4  D0 01 03 50 */	stfs f0, 0x350(r1)
/* 809B20E8  C0 04 04 4C */	lfs f0, 0x44c(r4)
/* 809B20EC  D0 01 03 54 */	stfs f0, 0x354(r1)
/* 809B20F0  C0 04 04 50 */	lfs f0, 0x450(r4)
/* 809B20F4  D0 01 03 58 */	stfs f0, 0x358(r1)
/* 809B20F8  80 64 04 54 */	lwz r3, 0x454(r4)
/* 809B20FC  80 04 04 58 */	lwz r0, 0x458(r4)
/* 809B2100  90 61 03 5C */	stw r3, 0x35c(r1)
/* 809B2104  90 01 03 60 */	stw r0, 0x360(r1)
/* 809B2108  80 64 04 5C */	lwz r3, 0x45c(r4)
/* 809B210C  80 04 04 60 */	lwz r0, 0x460(r4)
/* 809B2110  90 61 03 64 */	stw r3, 0x364(r1)
/* 809B2114  90 01 03 68 */	stw r0, 0x368(r1)
/* 809B2118  80 64 04 64 */	lwz r3, 0x464(r4)
/* 809B211C  80 04 04 68 */	lwz r0, 0x468(r4)
/* 809B2120  90 61 03 6C */	stw r3, 0x36c(r1)
/* 809B2124  90 01 03 70 */	stw r0, 0x370(r1)
/* 809B2128  80 04 04 6C */	lwz r0, 0x46c(r4)
/* 809B212C  90 01 03 74 */	stw r0, 0x374(r1)
/* 809B2130  80 04 04 70 */	lwz r0, 0x470(r4)
/* 809B2134  90 01 03 78 */	stw r0, 0x378(r1)
/* 809B2138  C0 04 04 74 */	lfs f0, 0x474(r4)
/* 809B213C  D0 01 03 7C */	stfs f0, 0x37c(r1)
/* 809B2140  C0 04 04 78 */	lfs f0, 0x478(r4)
/* 809B2144  D0 01 03 80 */	stfs f0, 0x380(r1)
/* 809B2148  C0 04 04 7C */	lfs f0, 0x47c(r4)
/* 809B214C  D0 01 03 84 */	stfs f0, 0x384(r1)
/* 809B2150  C0 04 04 80 */	lfs f0, 0x480(r4)
/* 809B2154  D0 01 03 88 */	stfs f0, 0x388(r1)
/* 809B2158  A0 04 04 84 */	lhz r0, 0x484(r4)
/* 809B215C  B0 01 03 8C */	sth r0, 0x38c(r1)
/* 809B2160  88 04 04 86 */	lbz r0, 0x486(r4)
/* 809B2164  98 01 03 8E */	stb r0, 0x38e(r1)
/* 809B2168  88 04 04 87 */	lbz r0, 0x487(r4)
/* 809B216C  98 01 03 8F */	stb r0, 0x38f(r1)
/* 809B2170  88 04 04 88 */	lbz r0, 0x488(r4)
/* 809B2174  98 01 03 90 */	stb r0, 0x390(r1)
/* 809B2178  88 04 04 89 */	lbz r0, 0x489(r4)
/* 809B217C  98 01 03 91 */	stb r0, 0x391(r1)
/* 809B2180  88 04 04 8A */	lbz r0, 0x48a(r4)
/* 809B2184  98 01 03 92 */	stb r0, 0x392(r1)
/* 809B2188  88 04 04 8B */	lbz r0, 0x48b(r4)
/* 809B218C  98 01 03 93 */	stb r0, 0x393(r1)
/* 809B2190  88 04 04 8C */	lbz r0, 0x48c(r4)
/* 809B2194  98 01 03 94 */	stb r0, 0x394(r1)
/* 809B2198  88 04 04 8D */	lbz r0, 0x48d(r4)
/* 809B219C  98 01 03 95 */	stb r0, 0x395(r1)
/* 809B21A0  88 04 04 8E */	lbz r0, 0x48e(r4)
/* 809B21A4  98 01 03 96 */	stb r0, 0x396(r1)
/* 809B21A8  88 04 04 8F */	lbz r0, 0x48f(r4)
/* 809B21AC  98 01 03 97 */	stb r0, 0x397(r1)
/* 809B21B0  88 04 04 90 */	lbz r0, 0x490(r4)
/* 809B21B4  98 01 03 98 */	stb r0, 0x398(r1)
/* 809B21B8  88 04 04 91 */	lbz r0, 0x491(r4)
/* 809B21BC  98 01 03 99 */	stb r0, 0x399(r1)
/* 809B21C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 809B21C4  83 C3 00 04 */	lwz r30, 4(r3)
/* 809B21C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809B21CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809B21D0  38 80 00 00 */	li r4, 0
/* 809B21D4  38 A1 00 08 */	addi r5, r1, 8
/* 809B21D8  38 C1 00 14 */	addi r6, r1, 0x14
/* 809B21DC  4B 7F 15 E8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 809B21E0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809B21E4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809B21E8  80 9E 00 04 */	lwz r4, 4(r30)
/* 809B21EC  38 A1 00 14 */	addi r5, r1, 0x14
/* 809B21F0  4B 7F 2B B0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809B21F4  83 DE 00 04 */	lwz r30, 4(r30)
/* 809B21F8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 809B21FC  38 7F 00 0C */	addi r3, r31, 0xc
/* 809B2200  38 9E 00 58 */	addi r4, r30, 0x58
/* 809B2204  4B 65 B4 D4 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 809B2208  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 809B220C  38 7F 00 24 */	addi r3, r31, 0x24
/* 809B2210  38 9E 00 58 */	addi r4, r30, 0x58
/* 809B2214  4B 65 B5 94 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 809B2218  80 7F 00 00 */	lwz r3, 0(r31)
/* 809B221C  4B 65 EF A4 */	b entryDL__16mDoExt_McaMorfSOFv
/* 809B2220  38 7E 00 58 */	addi r3, r30, 0x58
/* 809B2224  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 809B2228  4B 97 D6 58 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 809B222C  38 7E 00 58 */	addi r3, r30, 0x58
/* 809B2230  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 809B2234  4B 97 D5 80 */	b removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 809B2238  83 E1 03 AC */	lwz r31, 0x3ac(r1)
/* 809B223C  83 C1 03 A8 */	lwz r30, 0x3a8(r1)
/* 809B2240  80 01 03 B4 */	lwz r0, 0x3b4(r1)
/* 809B2244  7C 08 03 A6 */	mtlr r0
/* 809B2248  38 21 03 B0 */	addi r1, r1, 0x3b0
/* 809B224C  4E 80 00 20 */	blr 
