lbl_807B1F98:
/* 807B1F98  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807B1F9C  7C 08 02 A6 */	mflr r0
/* 807B1FA0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807B1FA4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807B1FA8  4B BB 02 24 */	b _savegpr_25
/* 807B1FAC  7C 7C 1B 78 */	mr r28, r3
/* 807B1FB0  3C 80 80 7B */	lis r4, lit_3906@ha
/* 807B1FB4  3B C4 44 9C */	addi r30, r4, lit_3906@l
/* 807B1FB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807B1FBC  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 807B1FC0  83 5F 5D AC */	lwz r26, 0x5dac(r31)
/* 807B1FC4  88 1F 5D B0 */	lbz r0, 0x5db0(r31)
/* 807B1FC8  7C 00 07 74 */	extsb r0, r0
/* 807B1FCC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807B1FD0  7C 9F 02 14 */	add r4, r31, r0
/* 807B1FD4  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 807B1FD8  3B 60 00 00 */	li r27, 0
/* 807B1FDC  A8 03 0D 2C */	lha r0, 0xd2c(r3)
/* 807B1FE0  28 00 00 0D */	cmplwi r0, 0xd
/* 807B1FE4  41 81 0C A0 */	bgt lbl_807B2C84
/* 807B1FE8  3C 80 80 7B */	lis r4, lit_5133@ha
/* 807B1FEC  38 84 47 1C */	addi r4, r4, lit_5133@l
/* 807B1FF0  54 00 10 3A */	slwi r0, r0, 2
/* 807B1FF4  7C 04 00 2E */	lwzx r0, r4, r0
/* 807B1FF8  7C 09 03 A6 */	mtctr r0
/* 807B1FFC  4E 80 04 20 */	bctr 
lbl_807B2000:
/* 807B2000  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 807B2004  28 00 00 02 */	cmplwi r0, 2
/* 807B2008  41 82 00 28 */	beq lbl_807B2030
/* 807B200C  38 80 00 02 */	li r4, 2
/* 807B2010  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807B2014  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807B2018  38 C0 00 00 */	li r6, 0
/* 807B201C  4B 86 98 EC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807B2020  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 807B2024  60 00 00 02 */	ori r0, r0, 2
/* 807B2028  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 807B202C  48 00 0D A8 */	b lbl_807B2DD4
lbl_807B2030:
/* 807B2030  38 7D 02 48 */	addi r3, r29, 0x248
/* 807B2034  4B 9A F4 9C */	b Stop__9dCamera_cFv
/* 807B2038  38 00 00 02 */	li r0, 2
/* 807B203C  B0 1C 0D 2C */	sth r0, 0xd2c(r28)
/* 807B2040  38 00 00 00 */	li r0, 0
/* 807B2044  B0 1C 0D 2E */	sth r0, 0xd2e(r28)
/* 807B2048  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 807B204C  D0 1C 0D 80 */	stfs f0, 0xd80(r28)
/* 807B2050  38 7D 02 48 */	addi r3, r29, 0x248
/* 807B2054  38 80 00 03 */	li r4, 3
/* 807B2058  4B 9B 0F B4 */	b SetTrimSize__9dCamera_cFl
/* 807B205C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807B2060  38 00 00 03 */	li r0, 3
/* 807B2064  B0 04 06 04 */	sth r0, 0x604(r4)
/* 807B2068  38 60 00 00 */	li r3, 0
/* 807B206C  90 64 06 0C */	stw r3, 0x60c(r4)
/* 807B2070  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807B2074  38 00 00 01 */	li r0, 1
/* 807B2078  90 04 06 14 */	stw r0, 0x614(r4)
/* 807B207C  90 64 06 0C */	stw r3, 0x60c(r4)
/* 807B2080  90 64 06 10 */	stw r3, 0x610(r4)
/* 807B2084  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 807B2088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B208C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B2090  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807B2094  7F 84 E3 78 */	mr r4, r28
/* 807B2098  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 807B209C  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 807B20A0  38 C0 00 00 */	li r6, 0
/* 807B20A4  4B 89 08 70 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_807B20A8:
/* 807B20A8  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807B20AC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807B20B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B20B4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807B20B8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 807B20BC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807B20C0  7F 43 D3 78 */	mr r3, r26
/* 807B20C4  38 81 00 64 */	addi r4, r1, 0x64
/* 807B20C8  38 A0 80 00 */	li r5, -32768
/* 807B20CC  38 C0 00 00 */	li r6, 0
/* 807B20D0  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 807B20D4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807B20D8  7D 89 03 A6 */	mtctr r12
/* 807B20DC  4E 80 04 21 */	bctrl 
/* 807B20E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B20E4  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 807B20E8  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B20EC  2C 00 00 01 */	cmpwi r0, 1
/* 807B20F0  41 80 0B 94 */	blt lbl_807B2C84
/* 807B20F4  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807B20F8  D0 1C 0D 3C */	stfs f0, 0xd3c(r28)
/* 807B20FC  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 807B2100  D0 1C 0D 40 */	stfs f0, 0xd40(r28)
/* 807B2104  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 807B2108  D0 1C 0D 44 */	stfs f0, 0xd44(r28)
/* 807B210C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 807B2110  D0 1C 0D 30 */	stfs f0, 0xd30(r28)
/* 807B2114  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 807B2118  D0 1C 0D 34 */	stfs f0, 0xd34(r28)
/* 807B211C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 807B2120  D0 1C 0D 38 */	stfs f0, 0xd38(r28)
/* 807B2124  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2128  2C 00 00 01 */	cmpwi r0, 1
/* 807B212C  40 82 00 20 */	bne lbl_807B214C
/* 807B2130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B2134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B2138  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 807B213C  54 04 46 3E */	srwi r4, r0, 0x18
/* 807B2140  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807B2144  7C 05 07 74 */	extsb r5, r0
/* 807B2148  4B 88 31 68 */	b offSwitch__10dSv_info_cFii
lbl_807B214C:
/* 807B214C  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2150  2C 00 00 5A */	cmpwi r0, 0x5a
/* 807B2154  40 82 0B 30 */	bne lbl_807B2C84
/* 807B2158  38 00 00 03 */	li r0, 3
/* 807B215C  B0 1C 0D 2C */	sth r0, 0xd2c(r28)
/* 807B2160  38 60 00 00 */	li r3, 0
/* 807B2164  B0 7C 0D 2E */	sth r3, 0xd2e(r28)
/* 807B2168  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 807B216C  D0 1C 0D 80 */	stfs f0, 0xd80(r28)
/* 807B2170  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807B2174  D0 3C 0D 3C */	stfs f1, 0xd3c(r28)
/* 807B2178  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 807B217C  D0 1C 0D 40 */	stfs f0, 0xd40(r28)
/* 807B2180  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 807B2184  D0 1C 0D 44 */	stfs f0, 0xd44(r28)
/* 807B2188  D0 3C 0D 30 */	stfs f1, 0xd30(r28)
/* 807B218C  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 807B2190  D0 1C 0D 34 */	stfs f0, 0xd34(r28)
/* 807B2194  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 807B2198  D0 1C 0D 38 */	stfs f0, 0xd38(r28)
/* 807B219C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807B21A0  38 00 00 48 */	li r0, 0x48
/* 807B21A4  90 04 06 14 */	stw r0, 0x614(r4)
/* 807B21A8  90 64 06 0C */	stw r3, 0x60c(r4)
/* 807B21AC  90 64 06 10 */	stw r3, 0x610(r4)
/* 807B21B0  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 807B21B4  48 00 0A D0 */	b lbl_807B2C84
lbl_807B21B8:
/* 807B21B8  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B21BC  2C 00 00 14 */	cmpwi r0, 0x14
/* 807B21C0  40 81 0A C4 */	ble lbl_807B2C84
/* 807B21C4  38 7C 0D 80 */	addi r3, r28, 0xd80
/* 807B21C8  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 807B21CC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807B21D0  C0 7E 00 F4 */	lfs f3, 0xf4(r30)
/* 807B21D4  C0 1C 0D 88 */	lfs f0, 0xd88(r28)
/* 807B21D8  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B21DC  4B AB D8 60 */	b cLib_addCalc2__FPffff
/* 807B21E0  38 7C 0D 88 */	addi r3, r28, 0xd88
/* 807B21E4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807B21E8  FC 40 08 90 */	fmr f2, f1
/* 807B21EC  C0 7E 00 F8 */	lfs f3, 0xf8(r30)
/* 807B21F0  4B AB D8 4C */	b cLib_addCalc2__FPffff
/* 807B21F4  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B21F8  2C 00 00 91 */	cmpwi r0, 0x91
/* 807B21FC  40 82 0A 88 */	bne lbl_807B2C84
/* 807B2200  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807B2204  38 00 00 49 */	li r0, 0x49
/* 807B2208  90 04 06 14 */	stw r0, 0x614(r4)
/* 807B220C  38 60 00 00 */	li r3, 0
/* 807B2210  90 64 06 0C */	stw r3, 0x60c(r4)
/* 807B2214  90 64 06 10 */	stw r3, 0x610(r4)
/* 807B2218  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 807B221C  38 00 00 04 */	li r0, 4
/* 807B2220  B0 1C 0D 2C */	sth r0, 0xd2c(r28)
/* 807B2224  B0 7C 0D 2E */	sth r3, 0xd2e(r28)
/* 807B2228  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 807B222C  D0 1C 0D 54 */	stfs f0, 0xd54(r28)
/* 807B2230  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807B2234  D0 1C 0D 58 */	stfs f0, 0xd58(r28)
/* 807B2238  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 807B223C  D0 1C 0D 5C */	stfs f0, 0xd5c(r28)
/* 807B2240  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 807B2244  D0 1C 0D 48 */	stfs f0, 0xd48(r28)
/* 807B2248  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 807B224C  D0 1C 0D 4C */	stfs f0, 0xd4c(r28)
/* 807B2250  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 807B2254  D0 1C 0D 50 */	stfs f0, 0xd50(r28)
/* 807B2258  C0 3C 0D 48 */	lfs f1, 0xd48(r28)
/* 807B225C  C0 1C 0D 30 */	lfs f0, 0xd30(r28)
/* 807B2260  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B2264  FC 00 02 10 */	fabs f0, f0
/* 807B2268  FC 00 00 18 */	frsp f0, f0
/* 807B226C  D0 1C 0D 60 */	stfs f0, 0xd60(r28)
/* 807B2270  C0 3C 0D 4C */	lfs f1, 0xd4c(r28)
/* 807B2274  C0 1C 0D 34 */	lfs f0, 0xd34(r28)
/* 807B2278  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B227C  FC 00 02 10 */	fabs f0, f0
/* 807B2280  FC 00 00 18 */	frsp f0, f0
/* 807B2284  D0 1C 0D 64 */	stfs f0, 0xd64(r28)
/* 807B2288  C0 3C 0D 50 */	lfs f1, 0xd50(r28)
/* 807B228C  C0 1C 0D 38 */	lfs f0, 0xd38(r28)
/* 807B2290  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B2294  FC 00 02 10 */	fabs f0, f0
/* 807B2298  FC 00 00 18 */	frsp f0, f0
/* 807B229C  D0 1C 0D 68 */	stfs f0, 0xd68(r28)
/* 807B22A0  C0 3C 0D 54 */	lfs f1, 0xd54(r28)
/* 807B22A4  C0 1C 0D 3C */	lfs f0, 0xd3c(r28)
/* 807B22A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B22AC  FC 00 02 10 */	fabs f0, f0
/* 807B22B0  FC 00 00 18 */	frsp f0, f0
/* 807B22B4  D0 1C 0D 6C */	stfs f0, 0xd6c(r28)
/* 807B22B8  C0 3C 0D 58 */	lfs f1, 0xd58(r28)
/* 807B22BC  C0 1C 0D 40 */	lfs f0, 0xd40(r28)
/* 807B22C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B22C4  FC 00 02 10 */	fabs f0, f0
/* 807B22C8  FC 00 00 18 */	frsp f0, f0
/* 807B22CC  D0 1C 0D 70 */	stfs f0, 0xd70(r28)
/* 807B22D0  C0 3C 0D 5C */	lfs f1, 0xd5c(r28)
/* 807B22D4  C0 1C 0D 44 */	lfs f0, 0xd44(r28)
/* 807B22D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B22DC  FC 00 02 10 */	fabs f0, f0
/* 807B22E0  FC 00 00 18 */	frsp f0, f0
/* 807B22E4  D0 1C 0D 74 */	stfs f0, 0xd74(r28)
/* 807B22E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B22EC  D0 1C 0D 88 */	stfs f0, 0xd88(r28)
/* 807B22F0  48 00 09 94 */	b lbl_807B2C84
lbl_807B22F4:
/* 807B22F4  A8 1C 06 86 */	lha r0, 0x686(r28)
/* 807B22F8  2C 00 00 00 */	cmpwi r0, 0
/* 807B22FC  40 82 00 0C */	bne lbl_807B2308
/* 807B2300  38 00 00 0A */	li r0, 0xa
/* 807B2304  B0 1C 06 9E */	sth r0, 0x69e(r28)
lbl_807B2308:
/* 807B2308  38 7C 0D 80 */	addi r3, r28, 0xd80
/* 807B230C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 807B2310  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807B2314  C0 7E 00 F4 */	lfs f3, 0xf4(r30)
/* 807B2318  4B AB D7 24 */	b cLib_addCalc2__FPffff
/* 807B231C  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2320  2C 00 00 14 */	cmpwi r0, 0x14
/* 807B2324  41 80 00 64 */	blt lbl_807B2388
/* 807B2328  40 82 00 60 */	bne lbl_807B2388
/* 807B232C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807B2330  38 00 00 17 */	li r0, 0x17
/* 807B2334  90 03 06 14 */	stw r0, 0x614(r3)
/* 807B2338  38 00 00 01 */	li r0, 1
/* 807B233C  90 03 06 0C */	stw r0, 0x60c(r3)
/* 807B2340  38 00 00 02 */	li r0, 2
/* 807B2344  90 03 06 10 */	stw r0, 0x610(r3)
/* 807B2348  38 00 00 00 */	li r0, 0
/* 807B234C  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 807B2350  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 807B2354  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807B2358  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B235C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807B2360  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 807B2364  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807B2368  7F 43 D3 78 */	mr r3, r26
/* 807B236C  38 81 00 64 */	addi r4, r1, 0x64
/* 807B2370  38 A0 00 00 */	li r5, 0
/* 807B2374  38 C0 00 00 */	li r6, 0
/* 807B2378  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 807B237C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807B2380  7D 89 03 A6 */	mtctr r12
/* 807B2384  4E 80 04 21 */	bctrl 
lbl_807B2388:
/* 807B2388  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B238C  2C 00 00 96 */	cmpwi r0, 0x96
/* 807B2390  41 80 02 0C */	blt lbl_807B259C
/* 807B2394  40 82 00 CC */	bne lbl_807B2460
/* 807B2398  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 807B239C  D0 1C 0D 54 */	stfs f0, 0xd54(r28)
/* 807B23A0  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 807B23A4  D0 1C 0D 58 */	stfs f0, 0xd58(r28)
/* 807B23A8  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 807B23AC  D0 1C 0D 5C */	stfs f0, 0xd5c(r28)
/* 807B23B0  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 807B23B4  D0 1C 0D 48 */	stfs f0, 0xd48(r28)
/* 807B23B8  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 807B23BC  D0 1C 0D 4C */	stfs f0, 0xd4c(r28)
/* 807B23C0  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 807B23C4  D0 1C 0D 50 */	stfs f0, 0xd50(r28)
/* 807B23C8  C0 3C 0D 48 */	lfs f1, 0xd48(r28)
/* 807B23CC  C0 1C 0D 30 */	lfs f0, 0xd30(r28)
/* 807B23D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B23D4  FC 00 02 10 */	fabs f0, f0
/* 807B23D8  FC 00 00 18 */	frsp f0, f0
/* 807B23DC  D0 1C 0D 60 */	stfs f0, 0xd60(r28)
/* 807B23E0  C0 3C 0D 4C */	lfs f1, 0xd4c(r28)
/* 807B23E4  C0 1C 0D 34 */	lfs f0, 0xd34(r28)
/* 807B23E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B23EC  FC 00 02 10 */	fabs f0, f0
/* 807B23F0  FC 00 00 18 */	frsp f0, f0
/* 807B23F4  D0 1C 0D 64 */	stfs f0, 0xd64(r28)
/* 807B23F8  C0 3C 0D 50 */	lfs f1, 0xd50(r28)
/* 807B23FC  C0 1C 0D 38 */	lfs f0, 0xd38(r28)
/* 807B2400  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B2404  FC 00 02 10 */	fabs f0, f0
/* 807B2408  FC 00 00 18 */	frsp f0, f0
/* 807B240C  D0 1C 0D 68 */	stfs f0, 0xd68(r28)
/* 807B2410  C0 3C 0D 54 */	lfs f1, 0xd54(r28)
/* 807B2414  C0 1C 0D 3C */	lfs f0, 0xd3c(r28)
/* 807B2418  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B241C  FC 00 02 10 */	fabs f0, f0
/* 807B2420  FC 00 00 18 */	frsp f0, f0
/* 807B2424  D0 1C 0D 6C */	stfs f0, 0xd6c(r28)
/* 807B2428  C0 3C 0D 58 */	lfs f1, 0xd58(r28)
/* 807B242C  C0 1C 0D 40 */	lfs f0, 0xd40(r28)
/* 807B2430  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B2434  FC 00 02 10 */	fabs f0, f0
/* 807B2438  FC 00 00 18 */	frsp f0, f0
/* 807B243C  D0 1C 0D 70 */	stfs f0, 0xd70(r28)
/* 807B2440  C0 3C 0D 5C */	lfs f1, 0xd5c(r28)
/* 807B2444  C0 1C 0D 44 */	lfs f0, 0xd44(r28)
/* 807B2448  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B244C  FC 00 02 10 */	fabs f0, f0
/* 807B2450  FC 00 00 18 */	frsp f0, f0
/* 807B2454  D0 1C 0D 74 */	stfs f0, 0xd74(r28)
/* 807B2458  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B245C  D0 1C 0D 88 */	stfs f0, 0xd88(r28)
lbl_807B2460:
/* 807B2460  7F 83 E3 78 */	mr r3, r28
/* 807B2464  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 807B2468  4B FF FA 4D */	bl cam_3d_morf__FP10e_th_classf
/* 807B246C  38 7C 0D 88 */	addi r3, r28, 0xd88
/* 807B2470  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807B2474  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807B2478  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 807B247C  4B AB D5 C0 */	b cLib_addCalc2__FPffff
/* 807B2480  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2484  2C 00 01 0E */	cmpwi r0, 0x10e
/* 807B2488  40 82 07 FC */	bne lbl_807B2C84
/* 807B248C  38 00 00 01 */	li r0, 1
/* 807B2490  B0 1C 06 86 */	sth r0, 0x686(r28)
/* 807B2494  38 60 00 00 */	li r3, 0
/* 807B2498  B0 7C 05 B4 */	sth r3, 0x5b4(r28)
/* 807B249C  38 00 00 05 */	li r0, 5
/* 807B24A0  B0 1C 0D 2C */	sth r0, 0xd2c(r28)
/* 807B24A4  B0 7C 0D 2E */	sth r3, 0xd2e(r28)
/* 807B24A8  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 807B24AC  D0 1C 0D 54 */	stfs f0, 0xd54(r28)
/* 807B24B0  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 807B24B4  D0 1C 0D 58 */	stfs f0, 0xd58(r28)
/* 807B24B8  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 807B24BC  D0 1C 0D 5C */	stfs f0, 0xd5c(r28)
/* 807B24C0  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 807B24C4  D0 1C 0D 48 */	stfs f0, 0xd48(r28)
/* 807B24C8  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 807B24CC  D0 1C 0D 4C */	stfs f0, 0xd4c(r28)
/* 807B24D0  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 807B24D4  D0 1C 0D 50 */	stfs f0, 0xd50(r28)
/* 807B24D8  C0 3C 0D 48 */	lfs f1, 0xd48(r28)
/* 807B24DC  C0 1C 0D 30 */	lfs f0, 0xd30(r28)
/* 807B24E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B24E4  FC 00 02 10 */	fabs f0, f0
/* 807B24E8  FC 00 00 18 */	frsp f0, f0
/* 807B24EC  D0 1C 0D 60 */	stfs f0, 0xd60(r28)
/* 807B24F0  C0 3C 0D 4C */	lfs f1, 0xd4c(r28)
/* 807B24F4  C0 1C 0D 34 */	lfs f0, 0xd34(r28)
/* 807B24F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B24FC  FC 00 02 10 */	fabs f0, f0
/* 807B2500  FC 00 00 18 */	frsp f0, f0
/* 807B2504  D0 1C 0D 64 */	stfs f0, 0xd64(r28)
/* 807B2508  C0 3C 0D 50 */	lfs f1, 0xd50(r28)
/* 807B250C  C0 1C 0D 38 */	lfs f0, 0xd38(r28)
/* 807B2510  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B2514  FC 00 02 10 */	fabs f0, f0
/* 807B2518  FC 00 00 18 */	frsp f0, f0
/* 807B251C  D0 1C 0D 68 */	stfs f0, 0xd68(r28)
/* 807B2520  C0 3C 0D 54 */	lfs f1, 0xd54(r28)
/* 807B2524  C0 1C 0D 3C */	lfs f0, 0xd3c(r28)
/* 807B2528  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B252C  FC 00 02 10 */	fabs f0, f0
/* 807B2530  FC 00 00 18 */	frsp f0, f0
/* 807B2534  D0 1C 0D 6C */	stfs f0, 0xd6c(r28)
/* 807B2538  C0 3C 0D 58 */	lfs f1, 0xd58(r28)
/* 807B253C  C0 1C 0D 40 */	lfs f0, 0xd40(r28)
/* 807B2540  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B2544  FC 00 02 10 */	fabs f0, f0
/* 807B2548  FC 00 00 18 */	frsp f0, f0
/* 807B254C  D0 1C 0D 70 */	stfs f0, 0xd70(r28)
/* 807B2550  C0 3C 0D 5C */	lfs f1, 0xd5c(r28)
/* 807B2554  C0 1C 0D 44 */	lfs f0, 0xd44(r28)
/* 807B2558  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B255C  FC 00 02 10 */	fabs f0, f0
/* 807B2560  FC 00 00 18 */	frsp f0, f0
/* 807B2564  D0 1C 0D 74 */	stfs f0, 0xd74(r28)
/* 807B2568  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B256C  D0 1C 0D 88 */	stfs f0, 0xd88(r28)
/* 807B2570  3C 60 80 7B */	lis r3, s_md_sub2__FPvPv@ha
/* 807B2574  38 63 04 34 */	addi r3, r3, s_md_sub2__FPvPv@l
/* 807B2578  7F 84 E3 78 */	mr r4, r28
/* 807B257C  4B 86 ED BC */	b fpcEx_Search__FPFPvPv_PvPv
/* 807B2580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B2584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B2588  38 80 00 6A */	li r4, 0x6a
/* 807B258C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807B2590  7C 05 07 74 */	extsb r5, r0
/* 807B2594  4B 88 2C 6C */	b onSwitch__10dSv_info_cFii
/* 807B2598  48 00 06 EC */	b lbl_807B2C84
lbl_807B259C:
/* 807B259C  2C 00 00 0F */	cmpwi r0, 0xf
/* 807B25A0  41 80 06 E4 */	blt lbl_807B2C84
/* 807B25A4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 807B25A8  D0 1C 0D 88 */	stfs f0, 0xd88(r28)
/* 807B25AC  7F 83 E3 78 */	mr r3, r28
/* 807B25B0  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 807B25B4  4B FF F9 01 */	bl cam_3d_morf__FP10e_th_classf
/* 807B25B8  48 00 06 CC */	b lbl_807B2C84
lbl_807B25BC:
/* 807B25BC  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B25C0  2C 00 00 46 */	cmpwi r0, 0x46
/* 807B25C4  40 81 06 C0 */	ble lbl_807B2C84
/* 807B25C8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 807B25CC  4B FF F8 E9 */	bl cam_3d_morf__FP10e_th_classf
/* 807B25D0  38 7C 0D 88 */	addi r3, r28, 0xd88
/* 807B25D4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 807B25D8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807B25DC  C0 7E 01 4C */	lfs f3, 0x14c(r30)
/* 807B25E0  4B AB D4 5C */	b cLib_addCalc2__FPffff
/* 807B25E4  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B25E8  2C 00 00 FA */	cmpwi r0, 0xfa
/* 807B25EC  40 82 06 98 */	bne lbl_807B2C84
/* 807B25F0  3B 60 00 01 */	li r27, 1
/* 807B25F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807B25F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807B25FC  80 63 00 00 */	lwz r3, 0(r3)
/* 807B2600  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807B2604  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000061@ha */
/* 807B2608  38 84 00 61 */	addi r4, r4, 0x0061 /* 0x01000061@l */
/* 807B260C  4B AF CE 90 */	b subBgmStart__8Z2SeqMgrFUl
/* 807B2610  48 00 06 74 */	b lbl_807B2C84
lbl_807B2614:
/* 807B2614  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 807B2618  28 00 00 02 */	cmplwi r0, 2
/* 807B261C  41 82 00 28 */	beq lbl_807B2644
/* 807B2620  38 80 00 02 */	li r4, 2
/* 807B2624  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807B2628  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807B262C  38 C0 00 00 */	li r6, 0
/* 807B2630  4B 86 92 D8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807B2634  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 807B2638  60 00 00 02 */	ori r0, r0, 2
/* 807B263C  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 807B2640  48 00 07 94 */	b lbl_807B2DD4
lbl_807B2644:
/* 807B2644  38 7D 02 48 */	addi r3, r29, 0x248
/* 807B2648  4B 9A EE 88 */	b Stop__9dCamera_cFv
/* 807B264C  38 00 00 0B */	li r0, 0xb
/* 807B2650  B0 1C 0D 2C */	sth r0, 0xd2c(r28)
/* 807B2654  38 00 00 00 */	li r0, 0
/* 807B2658  B0 1C 0D 2E */	sth r0, 0xd2e(r28)
/* 807B265C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 807B2660  D0 1C 0D 80 */	stfs f0, 0xd80(r28)
/* 807B2664  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B2668  D0 1C 0D 78 */	stfs f0, 0xd78(r28)
/* 807B266C  D0 1C 0D 88 */	stfs f0, 0xd88(r28)
/* 807B2670  38 7D 02 48 */	addi r3, r29, 0x248
/* 807B2674  38 80 00 03 */	li r4, 3
/* 807B2678  4B 9B 09 94 */	b SetTrimSize__9dCamera_cFl
/* 807B267C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 807B2680  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807B2684  41 81 00 0C */	bgt lbl_807B2690
/* 807B2688  2C 00 C0 00 */	cmpwi r0, -16384
/* 807B268C  40 80 00 10 */	bge lbl_807B269C
lbl_807B2690:
/* 807B2690  38 00 80 00 */	li r0, -32768
/* 807B2694  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807B2698  48 00 00 0C */	b lbl_807B26A4
lbl_807B269C:
/* 807B269C  38 00 00 00 */	li r0, 0
/* 807B26A0  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_807B26A4:
/* 807B26A4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 807B26A8  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 807B26AC  80 1C 06 F0 */	lwz r0, 0x6f0(r28)
/* 807B26B0  90 01 00 08 */	stw r0, 8(r1)
/* 807B26B4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807B26B8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807B26BC  38 81 00 08 */	addi r4, r1, 8
/* 807B26C0  4B 86 71 38 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807B26C4  7C 79 1B 78 */	mr r25, r3
/* 807B26C8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B26CC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B26D0  80 63 00 00 */	lwz r3, 0(r3)
/* 807B26D4  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807B26D8  4B 85 9D 04 */	b mDoMtx_YrotS__FPA4_fs
/* 807B26DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B26E0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807B26E4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807B26E8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 807B26EC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807B26F0  38 61 00 70 */	addi r3, r1, 0x70
/* 807B26F4  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807B26F8  4B AB E7 F4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B26FC  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 807B2700  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807B2704  7C 65 1B 78 */	mr r5, r3
/* 807B2708  4B B9 49 88 */	b PSVECAdd
/* 807B270C  38 80 00 00 */	li r4, 0
/* 807B2710  B0 99 04 E4 */	sth r4, 0x4e4(r25)
/* 807B2714  B0 99 04 E6 */	sth r4, 0x4e6(r25)
/* 807B2718  38 00 17 00 */	li r0, 0x1700
/* 807B271C  B0 19 04 E8 */	sth r0, 0x4e8(r25)
/* 807B2720  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 807B2724  B0 19 04 DE */	sth r0, 0x4de(r25)
/* 807B2728  38 00 F0 00 */	li r0, -4096
/* 807B272C  B0 19 04 DC */	sth r0, 0x4dc(r25)
/* 807B2730  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B2734  D0 19 05 2C */	stfs f0, 0x52c(r25)
/* 807B2738  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807B273C  38 00 00 03 */	li r0, 3
/* 807B2740  B0 03 06 04 */	sth r0, 0x604(r3)
/* 807B2744  90 83 06 0C */	stw r4, 0x60c(r3)
/* 807B2748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B274C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B2750  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807B2754  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807B2758  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 807B275C  41 82 00 28 */	beq lbl_807B2784
/* 807B2760  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807B2764  38 00 00 3A */	li r0, 0x3a
/* 807B2768  90 03 06 14 */	stw r0, 0x614(r3)
/* 807B276C  90 83 06 0C */	stw r4, 0x60c(r3)
/* 807B2770  90 83 06 10 */	stw r4, 0x610(r3)
/* 807B2774  B0 83 06 0A */	sth r4, 0x60a(r3)
/* 807B2778  38 00 00 01 */	li r0, 1
/* 807B277C  98 1C 05 67 */	stb r0, 0x567(r28)
/* 807B2780  48 00 00 24 */	b lbl_807B27A4
lbl_807B2784:
/* 807B2784  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807B2788  38 00 00 17 */	li r0, 0x17
/* 807B278C  90 03 06 14 */	stw r0, 0x614(r3)
/* 807B2790  38 00 00 01 */	li r0, 1
/* 807B2794  90 03 06 0C */	stw r0, 0x60c(r3)
/* 807B2798  38 00 00 02 */	li r0, 2
/* 807B279C  90 03 06 10 */	stw r0, 0x610(r3)
/* 807B27A0  B0 83 06 0A */	sth r4, 0x60a(r3)
lbl_807B27A4:
/* 807B27A4  7F 83 E3 78 */	mr r3, r28
/* 807B27A8  38 80 00 0E */	li r4, 0xe
/* 807B27AC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 807B27B0  38 A0 00 00 */	li r5, 0
/* 807B27B4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807B27B8  4B FF DC ED */	bl anm_init__FP10e_th_classifUcf
/* 807B27BC  38 00 00 01 */	li r0, 1
/* 807B27C0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807B27C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B27C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B27CC  38 63 09 58 */	addi r3, r3, 0x958
/* 807B27D0  38 80 00 5E */	li r4, 0x5e
/* 807B27D4  4B 88 20 3C */	b onSwitch__12dSv_memBit_cFi
lbl_807B27D8:
/* 807B27D8  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B27DC  2C 00 00 37 */	cmpwi r0, 0x37
/* 807B27E0  40 82 00 34 */	bne lbl_807B2814
/* 807B27E4  88 1C 05 67 */	lbz r0, 0x567(r28)
/* 807B27E8  7C 00 07 75 */	extsb. r0, r0
/* 807B27EC  41 82 00 28 */	beq lbl_807B2814
/* 807B27F0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807B27F4  38 00 00 17 */	li r0, 0x17
/* 807B27F8  90 03 06 14 */	stw r0, 0x614(r3)
/* 807B27FC  38 00 00 01 */	li r0, 1
/* 807B2800  90 03 06 0C */	stw r0, 0x60c(r3)
/* 807B2804  38 00 00 02 */	li r0, 2
/* 807B2808  90 03 06 10 */	stw r0, 0x610(r3)
/* 807B280C  38 00 00 00 */	li r0, 0
/* 807B2810  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_807B2814:
/* 807B2814  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B2818  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B281C  80 63 00 00 */	lwz r3, 0(r3)
/* 807B2820  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807B2824  4B 85 9B B8 */	b mDoMtx_YrotS__FPA4_fs
/* 807B2828  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807B282C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807B2830  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B2834  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807B2838  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 807B283C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807B2840  38 61 00 70 */	addi r3, r1, 0x70
/* 807B2844  38 81 00 64 */	addi r4, r1, 0x64
/* 807B2848  4B AB E6 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B284C  38 61 00 64 */	addi r3, r1, 0x64
/* 807B2850  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807B2854  7C 65 1B 78 */	mr r5, r3
/* 807B2858  4B B9 48 38 */	b PSVECAdd
/* 807B285C  7F 43 D3 78 */	mr r3, r26
/* 807B2860  38 81 00 64 */	addi r4, r1, 0x64
/* 807B2864  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 807B2868  38 C0 00 00 */	li r6, 0
/* 807B286C  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 807B2870  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807B2874  7D 89 03 A6 */	mtctr r12
/* 807B2878  4E 80 04 21 */	bctrl 
/* 807B287C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 807B2880  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807B2884  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 807B2888  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807B288C  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 807B2890  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807B2894  38 61 00 70 */	addi r3, r1, 0x70
/* 807B2898  38 81 00 58 */	addi r4, r1, 0x58
/* 807B289C  4B AB E6 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B28A0  38 61 00 58 */	addi r3, r1, 0x58
/* 807B28A4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807B28A8  7C 65 1B 78 */	mr r5, r3
/* 807B28AC  4B B9 47 E4 */	b PSVECAdd
/* 807B28B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B28B4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807B28B8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807B28BC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807B28C0  38 61 00 70 */	addi r3, r1, 0x70
/* 807B28C4  38 81 00 4C */	addi r4, r1, 0x4c
/* 807B28C8  4B AB E6 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B28CC  38 61 00 4C */	addi r3, r1, 0x4c
/* 807B28D0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807B28D4  7C 65 1B 78 */	mr r5, r3
/* 807B28D8  4B B9 47 B8 */	b PSVECAdd
/* 807B28DC  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 807B28E0  C0 1C 0D 18 */	lfs f0, 0xd18(r28)
/* 807B28E4  EC 41 00 2A */	fadds f2, f1, f0
/* 807B28E8  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 807B28EC  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 807B28F0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807B28F4  EC 01 00 2A */	fadds f0, f1, f0
/* 807B28F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807B28FC  40 81 00 08 */	ble lbl_807B2904
/* 807B2900  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_807B2904:
/* 807B2904  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2908  2C 00 00 00 */	cmpwi r0, 0
/* 807B290C  40 82 00 38 */	bne lbl_807B2944
/* 807B2910  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807B2914  D0 1C 0D 30 */	stfs f0, 0xd30(r28)
/* 807B2918  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807B291C  D0 1C 0D 34 */	stfs f0, 0xd34(r28)
/* 807B2920  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807B2924  D0 1C 0D 38 */	stfs f0, 0xd38(r28)
/* 807B2928  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807B292C  D0 1C 0D 3C */	stfs f0, 0xd3c(r28)
/* 807B2930  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807B2934  D0 1C 0D 40 */	stfs f0, 0xd40(r28)
/* 807B2938  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807B293C  D0 1C 0D 44 */	stfs f0, 0xd44(r28)
/* 807B2940  48 00 00 40 */	b lbl_807B2980
lbl_807B2944:
/* 807B2944  38 7C 0D 3C */	addi r3, r28, 0xd3c
/* 807B2948  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 807B294C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807B2950  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 807B2954  4B AB D0 E8 */	b cLib_addCalc2__FPffff
/* 807B2958  38 7C 0D 40 */	addi r3, r28, 0xd40
/* 807B295C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 807B2960  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807B2964  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 807B2968  4B AB D0 D4 */	b cLib_addCalc2__FPffff
/* 807B296C  38 7C 0D 44 */	addi r3, r28, 0xd44
/* 807B2970  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 807B2974  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807B2978  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 807B297C  4B AB D0 C0 */	b cLib_addCalc2__FPffff
lbl_807B2980:
/* 807B2980  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2984  2C 00 01 17 */	cmpwi r0, 0x117
/* 807B2988  40 82 00 88 */	bne lbl_807B2A10
/* 807B298C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807B2990  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807B2994  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807B2998  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807B299C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807B29A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B29A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B29A8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807B29AC  38 80 00 04 */	li r4, 4
/* 807B29B0  38 A0 00 4F */	li r5, 0x4f
/* 807B29B4  38 C1 00 40 */	addi r6, r1, 0x40
/* 807B29B8  4B 8B D0 6C */	b StartShock__12dVibration_cFii4cXyz
/* 807B29BC  38 7C 0D 94 */	addi r3, r28, 0xd94
/* 807B29C0  38 9C 0D 98 */	addi r4, r28, 0xd98
/* 807B29C4  38 BC 0D 14 */	addi r5, r28, 0xd14
/* 807B29C8  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 807B29CC  C0 3E 01 60 */	lfs f1, 0x160(r30)
/* 807B29D0  38 FC 01 0C */	addi r7, r28, 0x10c
/* 807B29D4  39 00 00 01 */	li r8, 1
/* 807B29D8  4B 86 A6 48 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 807B29DC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002D@ha */
/* 807B29E0  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0006002D@l */
/* 807B29E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807B29E8  38 7C 05 E0 */	addi r3, r28, 0x5e0
/* 807B29EC  38 81 00 0C */	addi r4, r1, 0xc
/* 807B29F0  38 A0 00 00 */	li r5, 0
/* 807B29F4  38 C0 FF FF */	li r6, -1
/* 807B29F8  81 9C 05 E0 */	lwz r12, 0x5e0(r28)
/* 807B29FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807B2A00  7D 89 03 A6 */	mtctr r12
/* 807B2A04  4E 80 04 21 */	bctrl 
/* 807B2A08  38 00 00 01 */	li r0, 1
/* 807B2A0C  98 1C 0D 8F */	stb r0, 0xd8f(r28)
lbl_807B2A10:
/* 807B2A10  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2A14  2C 00 01 7C */	cmpwi r0, 0x17c
/* 807B2A18  40 82 00 5C */	bne lbl_807B2A74
/* 807B2A1C  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 807B2A20  80 63 00 04 */	lwz r3, 4(r3)
/* 807B2A24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807B2A28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B2A2C  38 63 00 30 */	addi r3, r3, 0x30
/* 807B2A30  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807B2A34  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807B2A38  80 84 00 00 */	lwz r4, 0(r4)
/* 807B2A3C  4B B9 3A 74 */	b PSMTXCopy
/* 807B2A40  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B2A44  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807B2A48  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807B2A4C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807B2A50  38 61 00 70 */	addi r3, r1, 0x70
/* 807B2A54  38 81 00 64 */	addi r4, r1, 0x64
/* 807B2A58  4B AB E4 94 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B2A5C  7F 83 E3 78 */	mr r3, r28
/* 807B2A60  38 81 00 64 */	addi r4, r1, 0x64
/* 807B2A64  38 A0 00 14 */	li r5, 0x14
/* 807B2A68  38 C0 00 00 */	li r6, 0
/* 807B2A6C  38 E0 00 FF */	li r7, 0xff
/* 807B2A70  4B 86 A0 68 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_807B2A74:
/* 807B2A74  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2A78  2C 00 01 7E */	cmpwi r0, 0x17e
/* 807B2A7C  40 82 00 0C */	bne lbl_807B2A88
/* 807B2A80  38 00 00 01 */	li r0, 1
/* 807B2A84  98 1C 0D 8E */	stb r0, 0xd8e(r28)
lbl_807B2A88:
/* 807B2A88  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2A8C  2C 00 01 AE */	cmpwi r0, 0x1ae
/* 807B2A90  40 82 01 F4 */	bne lbl_807B2C84
/* 807B2A94  38 00 00 0C */	li r0, 0xc
/* 807B2A98  B0 1C 0D 2C */	sth r0, 0xd2c(r28)
/* 807B2A9C  38 60 00 00 */	li r3, 0
/* 807B2AA0  B0 7C 0D 2E */	sth r3, 0xd2e(r28)
/* 807B2AA4  38 00 00 1E */	li r0, 0x1e
/* 807B2AA8  90 1A 06 14 */	stw r0, 0x614(r26)
/* 807B2AAC  90 7A 06 0C */	stw r3, 0x60c(r26)
/* 807B2AB0  90 7A 06 10 */	stw r3, 0x610(r26)
/* 807B2AB4  B0 7A 06 0A */	sth r3, 0x60a(r26)
/* 807B2AB8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B2ABC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B2AC0  80 63 00 00 */	lwz r3, 0(r3)
/* 807B2AC4  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 807B2AC8  4B 85 99 14 */	b mDoMtx_YrotS__FPA4_fs
/* 807B2ACC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B2AD0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807B2AD4  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 807B2AD8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807B2ADC  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 807B2AE0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807B2AE4  38 61 00 70 */	addi r3, r1, 0x70
/* 807B2AE8  38 9C 0D 30 */	addi r4, r28, 0xd30
/* 807B2AEC  4B AB E4 00 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B2AF0  38 7C 0D 30 */	addi r3, r28, 0xd30
/* 807B2AF4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 807B2AF8  7C 65 1B 78 */	mr r5, r3
/* 807B2AFC  4B B9 45 94 */	b PSVECAdd
/* 807B2B00  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807B2B04  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 807B2B08  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 807B2B0C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807B2B10  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 807B2B14  38 61 00 70 */	addi r3, r1, 0x70
/* 807B2B18  38 9C 0D 3C */	addi r4, r28, 0xd3c
/* 807B2B1C  4B AB E3 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B2B20  38 7C 0D 3C */	addi r3, r28, 0xd3c
/* 807B2B24  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 807B2B28  7C 65 1B 78 */	mr r5, r3
/* 807B2B2C  4B B9 45 64 */	b PSVECAdd
lbl_807B2B30:
/* 807B2B30  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2B34  2C 00 00 64 */	cmpwi r0, 0x64
/* 807B2B38  40 82 01 4C */	bne lbl_807B2C84
/* 807B2B3C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807B2B40  38 00 00 01 */	li r0, 1
/* 807B2B44  90 04 06 14 */	stw r0, 0x614(r4)
/* 807B2B48  38 60 00 00 */	li r3, 0
/* 807B2B4C  90 64 06 0C */	stw r3, 0x60c(r4)
/* 807B2B50  90 64 06 10 */	stw r3, 0x610(r4)
/* 807B2B54  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 807B2B58  38 00 00 0D */	li r0, 0xd
/* 807B2B5C  B0 1C 0D 2C */	sth r0, 0xd2c(r28)
/* 807B2B60  B0 7C 0D 2E */	sth r3, 0xd2e(r28)
lbl_807B2B64:
/* 807B2B64  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B2B68  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B2B6C  80 63 00 00 */	lwz r3, 0(r3)
/* 807B2B70  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 807B2B74  4B 85 98 68 */	b mDoMtx_YrotS__FPA4_fs
/* 807B2B78  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 807B2B7C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807B2B80  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 807B2B84  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807B2B88  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 807B2B8C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807B2B90  38 61 00 70 */	addi r3, r1, 0x70
/* 807B2B94  38 9C 0D 30 */	addi r4, r28, 0xd30
/* 807B2B98  4B AB E3 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B2B9C  38 7C 0D 30 */	addi r3, r28, 0xd30
/* 807B2BA0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 807B2BA4  7C 65 1B 78 */	mr r5, r3
/* 807B2BA8  4B B9 44 E8 */	b PSVECAdd
/* 807B2BAC  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807B2BB0  C0 1C 0D 78 */	lfs f0, 0xd78(r28)
/* 807B2BB4  EC 01 00 2A */	fadds f0, f1, f0
/* 807B2BB8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807B2BBC  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 807B2BC0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807B2BC4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B2BC8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807B2BCC  38 61 00 70 */	addi r3, r1, 0x70
/* 807B2BD0  38 9C 0D 3C */	addi r4, r28, 0xd3c
/* 807B2BD4  4B AB E3 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B2BD8  38 7C 0D 3C */	addi r3, r28, 0xd3c
/* 807B2BDC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 807B2BE0  7C 65 1B 78 */	mr r5, r3
/* 807B2BE4  4B B9 44 AC */	b PSVECAdd
/* 807B2BE8  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2BEC  2C 00 00 32 */	cmpwi r0, 0x32
/* 807B2BF0  40 81 00 94 */	ble lbl_807B2C84
/* 807B2BF4  38 7C 0D 80 */	addi r3, r28, 0xd80
/* 807B2BF8  C0 3E 01 74 */	lfs f1, 0x174(r30)
/* 807B2BFC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807B2C00  C0 7C 0D 88 */	lfs f3, 0xd88(r28)
/* 807B2C04  4B AB CE 38 */	b cLib_addCalc2__FPffff
/* 807B2C08  38 7C 0D 78 */	addi r3, r28, 0xd78
/* 807B2C0C  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 807B2C10  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807B2C14  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 807B2C18  C0 1C 0D 88 */	lfs f0, 0xd88(r28)
/* 807B2C1C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B2C20  4B AB CE 1C */	b cLib_addCalc2__FPffff
/* 807B2C24  38 7C 0D 88 */	addi r3, r28, 0xd88
/* 807B2C28  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807B2C2C  FC 40 08 90 */	fmr f2, f1
/* 807B2C30  C0 7E 00 F8 */	lfs f3, 0xf8(r30)
/* 807B2C34  4B AB CE 08 */	b cLib_addCalc2__FPffff
/* 807B2C38  A8 1C 0D 2E */	lha r0, 0xd2e(r28)
/* 807B2C3C  2C 00 00 AA */	cmpwi r0, 0xaa
/* 807B2C40  40 82 00 44 */	bne lbl_807B2C84
/* 807B2C44  3B 60 00 01 */	li r27, 1
/* 807B2C48  38 00 00 03 */	li r0, 3
/* 807B2C4C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807B2C50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B2C54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B2C58  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 807B2C5C  54 04 46 3E */	srwi r4, r0, 0x18
/* 807B2C60  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807B2C64  7C 05 07 74 */	extsb r5, r0
/* 807B2C68  4B 88 25 98 */	b onSwitch__10dSv_info_cFii
/* 807B2C6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B2C70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B2C74  38 80 00 6A */	li r4, 0x6a
/* 807B2C78  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807B2C7C  7C 05 07 74 */	extsb r5, r0
/* 807B2C80  4B 88 26 30 */	b offSwitch__10dSv_info_cFii
lbl_807B2C84:
/* 807B2C84  7F 60 07 75 */	extsb. r0, r27
/* 807B2C88  41 82 00 84 */	beq lbl_807B2D0C
/* 807B2C8C  C0 1C 0D 3C */	lfs f0, 0xd3c(r28)
/* 807B2C90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807B2C94  C0 1C 0D 40 */	lfs f0, 0xd40(r28)
/* 807B2C98  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807B2C9C  C0 1C 0D 44 */	lfs f0, 0xd44(r28)
/* 807B2CA0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807B2CA4  C0 1C 0D 30 */	lfs f0, 0xd30(r28)
/* 807B2CA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B2CAC  C0 1C 0D 34 */	lfs f0, 0xd34(r28)
/* 807B2CB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807B2CB4  C0 1C 0D 38 */	lfs f0, 0xd38(r28)
/* 807B2CB8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807B2CBC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807B2CC0  38 81 00 34 */	addi r4, r1, 0x34
/* 807B2CC4  38 A1 00 28 */	addi r5, r1, 0x28
/* 807B2CC8  4B 9C DF 50 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 807B2CCC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807B2CD0  4B 9A E7 DC */	b Start__9dCamera_cFv
/* 807B2CD4  38 7D 02 48 */	addi r3, r29, 0x248
/* 807B2CD8  38 80 00 00 */	li r4, 0
/* 807B2CDC  4B 9B 03 30 */	b SetTrimSize__9dCamera_cFl
/* 807B2CE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B2CE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B2CE8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807B2CEC  4B 88 F7 7C */	b reset__14dEvt_control_cFv
/* 807B2CF0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807B2CF4  38 00 00 02 */	li r0, 2
/* 807B2CF8  B0 03 06 04 */	sth r0, 0x604(r3)
/* 807B2CFC  38 00 00 01 */	li r0, 1
/* 807B2D00  90 03 06 14 */	stw r0, 0x614(r3)
/* 807B2D04  38 00 00 00 */	li r0, 0
/* 807B2D08  B0 1C 0D 2C */	sth r0, 0xd2c(r28)
lbl_807B2D0C:
/* 807B2D0C  A8 1C 0D 2C */	lha r0, 0xd2c(r28)
/* 807B2D10  2C 00 00 00 */	cmpwi r0, 0
/* 807B2D14  41 82 00 C0 */	beq lbl_807B2DD4
/* 807B2D18  C0 1C 0D 3C */	lfs f0, 0xd3c(r28)
/* 807B2D1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B2D20  C0 1C 0D 40 */	lfs f0, 0xd40(r28)
/* 807B2D24  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B2D28  C0 1C 0D 44 */	lfs f0, 0xd44(r28)
/* 807B2D2C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B2D30  C0 1C 0D 30 */	lfs f0, 0xd30(r28)
/* 807B2D34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807B2D38  C0 1C 0D 34 */	lfs f0, 0xd34(r28)
/* 807B2D3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B2D40  C0 1C 0D 38 */	lfs f0, 0xd38(r28)
/* 807B2D44  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B2D48  38 7D 02 48 */	addi r3, r29, 0x248
/* 807B2D4C  38 81 00 1C */	addi r4, r1, 0x1c
/* 807B2D50  38 A1 00 10 */	addi r5, r1, 0x10
/* 807B2D54  C0 3C 0D 80 */	lfs f1, 0xd80(r28)
/* 807B2D58  38 C0 00 00 */	li r6, 0
/* 807B2D5C  4B 9C DD 84 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 807B2D60  A8 7C 0D 2E */	lha r3, 0xd2e(r28)
/* 807B2D64  38 03 00 01 */	addi r0, r3, 1
/* 807B2D68  B0 1C 0D 2E */	sth r0, 0xd2e(r28)
/* 807B2D6C  A8 1C 0D 2C */	lha r0, 0xd2c(r28)
/* 807B2D70  2C 00 00 02 */	cmpwi r0, 2
/* 807B2D74  41 80 00 60 */	blt lbl_807B2DD4
/* 807B2D78  2C 00 00 0A */	cmpwi r0, 0xa
/* 807B2D7C  40 80 00 58 */	bge lbl_807B2DD4
/* 807B2D80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B2D84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B2D88  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 807B2D8C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807B2D90  41 82 00 44 */	beq lbl_807B2DD4
/* 807B2D94  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807B2D98  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807B2D9C  80 63 00 00 */	lwz r3, 0(r3)
/* 807B2DA0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807B2DA4  4B AF CA E0 */	b subBgmStop__8Z2SeqMgrFv
/* 807B2DA8  38 00 00 1E */	li r0, 0x1e
/* 807B2DAC  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 807B2DB0  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 807B2DB4  38 60 00 04 */	li r3, 4
/* 807B2DB8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807B2DBC  38 80 00 00 */	li r4, 0
/* 807B2DC0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807B2DC4  7C 05 07 74 */	extsb r5, r0
/* 807B2DC8  38 C0 00 00 */	li r6, 0
/* 807B2DCC  38 E0 FF FF */	li r7, -1
/* 807B2DD0  4B 87 43 A0 */	b dStage_changeScene__FifUlScsi
lbl_807B2DD4:
/* 807B2DD4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807B2DD8  4B BA F4 40 */	b _restgpr_25
/* 807B2DDC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807B2DE0  7C 08 03 A6 */	mtlr r0
/* 807B2DE4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807B2DE8  4E 80 00 20 */	blr 
