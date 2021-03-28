lbl_806B1F78:
/* 806B1F78  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 806B1F7C  7C 08 02 A6 */	mflr r0
/* 806B1F80  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 806B1F84  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806B1F88  4B CB 02 50 */	b _savegpr_28
/* 806B1F8C  7C 7C 1B 78 */	mr r28, r3
/* 806B1F90  3C 80 80 6B */	lis r4, lit_3792@ha
/* 806B1F94  3B E4 5C D4 */	addi r31, r4, lit_3792@l
/* 806B1F98  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B1F9C  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 806B1FA0  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 806B1FA4  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 806B1FA8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806B1FAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806B1FB0  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 806B1FB4  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 806B1FB8  7C 00 07 74 */	extsb r0, r0
/* 806B1FBC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806B1FC0  7C 85 02 14 */	add r4, r5, r0
/* 806B1FC4  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 806B1FC8  83 A5 5D AC */	lwz r29, 0x5dac(r5)
/* 806B1FCC  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 806B1FD0  28 00 00 06 */	cmplwi r0, 6
/* 806B1FD4  41 81 08 F8 */	bgt lbl_806B28CC
/* 806B1FD8  3C 80 80 6B */	lis r4, lit_5965@ha
/* 806B1FDC  38 84 60 E4 */	addi r4, r4, lit_5965@l
/* 806B1FE0  54 00 10 3A */	slwi r0, r0, 2
/* 806B1FE4  7C 04 00 2E */	lwzx r0, r4, r0
/* 806B1FE8  7C 09 03 A6 */	mtctr r0
/* 806B1FEC  4E 80 04 20 */	bctr 
lbl_806B1FF0:
/* 806B1FF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070327@ha */
/* 806B1FF4  38 03 03 27 */	addi r0, r3, 0x0327 /* 0x00070327@l */
/* 806B1FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B1FFC  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 806B2000  38 81 00 14 */	addi r4, r1, 0x14
/* 806B2004  38 A0 FF FF */	li r5, -1
/* 806B2008  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 806B200C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B2010  7D 89 03 A6 */	mtctr r12
/* 806B2014  4E 80 04 21 */	bctrl 
/* 806B2018  38 00 00 00 */	li r0, 0
/* 806B201C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806B2020  7F 83 E3 78 */	mr r3, r28
/* 806B2024  38 80 00 0B */	li r4, 0xb
/* 806B2028  38 A0 00 02 */	li r5, 2
/* 806B202C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B2030  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B2034  4B FF C6 19 */	bl setBck__8daE_DT_cFiUcff
/* 806B2038  38 00 00 1E */	li r0, 0x1e
/* 806B203C  90 1C 07 58 */	stw r0, 0x758(r28)
/* 806B2040  38 00 00 01 */	li r0, 1
/* 806B2044  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 806B2048  98 1C 07 79 */	stb r0, 0x779(r28)
/* 806B204C  98 1C 07 81 */	stb r0, 0x781(r28)
/* 806B2050  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B2054  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 806B2058  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 806B205C  48 00 08 70 */	b lbl_806B28CC
lbl_806B2060:
/* 806B2060  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 806B2064  28 00 00 27 */	cmplwi r0, 0x27
/* 806B2068  40 82 00 0C */	bne lbl_806B2074
/* 806B206C  38 00 00 0A */	li r0, 0xa
/* 806B2070  90 1C 07 58 */	stw r0, 0x758(r28)
lbl_806B2074:
/* 806B2074  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 806B2078  2C 00 00 00 */	cmpwi r0, 0
/* 806B207C  40 82 08 50 */	bne lbl_806B28CC
/* 806B2080  38 00 00 02 */	li r0, 2
/* 806B2084  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 806B2088  48 00 08 44 */	b lbl_806B28CC
lbl_806B208C:
/* 806B208C  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 806B2090  28 00 00 02 */	cmplwi r0, 2
/* 806B2094  41 82 00 28 */	beq lbl_806B20BC
/* 806B2098  38 80 00 02 */	li r4, 2
/* 806B209C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 806B20A0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 806B20A4  38 C0 00 00 */	li r6, 0
/* 806B20A8  4B 96 98 60 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806B20AC  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 806B20B0  60 00 00 02 */	ori r0, r0, 2
/* 806B20B4  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 806B20B8  48 00 08 14 */	b lbl_806B28CC
lbl_806B20BC:
/* 806B20BC  4B FF D8 69 */	bl setDeadShibukiEffect__8daE_DT_cFv
/* 806B20C0  7F 83 E3 78 */	mr r3, r28
/* 806B20C4  4B FF D9 15 */	bl setDeadYodareEffect__8daE_DT_cFv
/* 806B20C8  38 7E 02 48 */	addi r3, r30, 0x248
/* 806B20CC  4B AA F4 04 */	b Stop__9dCamera_cFv
/* 806B20D0  38 60 00 03 */	li r3, 3
/* 806B20D4  90 7C 07 0C */	stw r3, 0x70c(r28)
/* 806B20D8  38 00 00 01 */	li r0, 1
/* 806B20DC  98 1C 07 79 */	stb r0, 0x779(r28)
/* 806B20E0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B20E4  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 806B20E8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 806B20EC  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 806B20F0  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 806B20F4  38 00 00 00 */	li r0, 0
/* 806B20F8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 806B20FC  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 806B2100  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 806B2104  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 806B2108  B0 7D 06 04 */	sth r3, 0x604(r29)
/* 806B210C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806B2110  7F A3 EB 78 */	mr r3, r29
/* 806B2114  38 81 00 CC */	addi r4, r1, 0xcc
/* 806B2118  38 A0 80 00 */	li r5, -32768
/* 806B211C  38 C0 00 00 */	li r6, 0
/* 806B2120  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806B2124  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806B2128  7D 89 03 A6 */	mtctr r12
/* 806B212C  4E 80 04 21 */	bctrl 
/* 806B2130  38 00 00 04 */	li r0, 4
/* 806B2134  90 1D 06 14 */	stw r0, 0x614(r29)
/* 806B2138  38 00 00 01 */	li r0, 1
/* 806B213C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806B2140  38 00 00 00 */	li r0, 0
/* 806B2144  90 1D 06 10 */	stw r0, 0x610(r29)
/* 806B2148  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 806B214C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806B2150  D0 1C 06 A0 */	stfs f0, 0x6a0(r28)
/* 806B2154  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806B2158  D0 1C 06 A4 */	stfs f0, 0x6a4(r28)
/* 806B215C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 806B2160  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 806B2164  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 806B2168  D0 1C 06 94 */	stfs f0, 0x694(r28)
/* 806B216C  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 806B2170  D0 1C 06 98 */	stfs f0, 0x698(r28)
/* 806B2174  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 806B2178  D0 1C 06 9C */	stfs f0, 0x69c(r28)
/* 806B217C  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 806B2180  D0 1C 06 E0 */	stfs f0, 0x6e0(r28)
/* 806B2184  38 7E 02 48 */	addi r3, r30, 0x248
/* 806B2188  38 80 00 03 */	li r4, 3
/* 806B218C  4B AB 0E 80 */	b SetTrimSize__9dCamera_cFl
/* 806B2190  38 00 00 00 */	li r0, 0
/* 806B2194  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806B2198  7F 83 E3 78 */	mr r3, r28
/* 806B219C  38 80 00 06 */	li r4, 6
/* 806B21A0  38 A0 00 00 */	li r5, 0
/* 806B21A4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B21A8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B21AC  4B FF C4 A1 */	bl setBck__8daE_DT_cFiUcff
/* 806B21B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031B@ha */
/* 806B21B4  38 03 03 1B */	addi r0, r3, 0x031B /* 0x0007031B@l */
/* 806B21B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B21BC  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 806B21C0  38 81 00 10 */	addi r4, r1, 0x10
/* 806B21C4  38 A0 FF FF */	li r5, -1
/* 806B21C8  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 806B21CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B21D0  7D 89 03 A6 */	mtctr r12
/* 806B21D4  4E 80 04 21 */	bctrl 
/* 806B21D8  38 00 00 03 */	li r0, 3
/* 806B21DC  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 806B21E0  38 00 01 2C */	li r0, 0x12c
/* 806B21E4  90 1C 07 58 */	stw r0, 0x758(r28)
/* 806B21E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B21EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B21F0  80 63 00 00 */	lwz r3, 0(r3)
/* 806B21F4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B21F8  4B BF D6 8C */	b subBgmStop__8Z2SeqMgrFv
/* 806B21FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B2200  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B2204  80 63 00 00 */	lwz r3, 0(r3)
/* 806B2208  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B220C  D0 03 04 14 */	stfs f0, 0x414(r3)
/* 806B2210  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 806B2214  38 00 00 00 */	li r0, 0
/* 806B2218  90 03 04 20 */	stw r0, 0x420(r3)
/* 806B221C  D0 03 04 1C */	stfs f0, 0x41c(r3)
/* 806B2220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B2224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B2228  38 63 09 58 */	addi r3, r3, 0x958
/* 806B222C  38 80 00 07 */	li r4, 7
/* 806B2230  4B 98 26 E8 */	b onDungeonItem__12dSv_memBit_cFi
/* 806B2234  48 00 06 98 */	b lbl_806B28CC
lbl_806B2238:
/* 806B2238  7F A3 EB 78 */	mr r3, r29
/* 806B223C  38 81 00 CC */	addi r4, r1, 0xcc
/* 806B2240  38 A0 80 00 */	li r5, -32768
/* 806B2244  38 C0 00 00 */	li r6, 0
/* 806B2248  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806B224C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806B2250  7D 89 03 A6 */	mtctr r12
/* 806B2254  4E 80 04 21 */	bctrl 
/* 806B2258  7F 83 E3 78 */	mr r3, r28
/* 806B225C  4B FF D8 85 */	bl setBoxTubaEffect__8daE_DT_cFv
/* 806B2260  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806B2264  38 63 00 0C */	addi r3, r3, 0xc
/* 806B2268  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 806B226C  4B C7 61 C0 */	b checkPass__12J3DFrameCtrlFf
/* 806B2270  2C 03 00 00 */	cmpwi r3, 0
/* 806B2274  40 82 00 34 */	bne lbl_806B22A8
/* 806B2278  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806B227C  38 63 00 0C */	addi r3, r3, 0xc
/* 806B2280  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 806B2284  4B C7 61 A8 */	b checkPass__12J3DFrameCtrlFf
/* 806B2288  2C 03 00 00 */	cmpwi r3, 0
/* 806B228C  40 82 00 1C */	bne lbl_806B22A8
/* 806B2290  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806B2294  38 63 00 0C */	addi r3, r3, 0xc
/* 806B2298  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 806B229C  4B C7 61 90 */	b checkPass__12J3DFrameCtrlFf
/* 806B22A0  2C 03 00 00 */	cmpwi r3, 0
/* 806B22A4  41 82 00 0C */	beq lbl_806B22B0
lbl_806B22A8:
/* 806B22A8  7F 83 E3 78 */	mr r3, r28
/* 806B22AC  4B FF D6 79 */	bl setDeadShibukiEffect__8daE_DT_cFv
lbl_806B22B0:
/* 806B22B0  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806B22B4  38 63 00 0C */	addi r3, r3, 0xc
/* 806B22B8  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 806B22BC  4B C7 61 70 */	b checkPass__12J3DFrameCtrlFf
/* 806B22C0  2C 03 00 00 */	cmpwi r3, 0
/* 806B22C4  41 82 00 38 */	beq lbl_806B22FC
/* 806B22C8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060030@ha */
/* 806B22CC  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00060030@l */
/* 806B22D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B22D4  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 806B22D8  38 81 00 0C */	addi r4, r1, 0xc
/* 806B22DC  38 A0 00 00 */	li r5, 0
/* 806B22E0  38 C0 FF FF */	li r6, -1
/* 806B22E4  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 806B22E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B22EC  7D 89 03 A6 */	mtctr r12
/* 806B22F0  4E 80 04 21 */	bctrl 
/* 806B22F4  7F 83 E3 78 */	mr r3, r28
/* 806B22F8  4B FF CC F1 */	bl setSmallWaterEffect__8daE_DT_cFv
lbl_806B22FC:
/* 806B22FC  7F 83 E3 78 */	mr r3, r28
/* 806B2300  4B FF D6 D9 */	bl setDeadYodareEffect__8daE_DT_cFv
/* 806B2304  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806B2308  38 63 00 0C */	addi r3, r3, 0xc
/* 806B230C  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 806B2310  4B C7 61 1C */	b checkPass__12J3DFrameCtrlFf
/* 806B2314  2C 03 00 00 */	cmpwi r3, 0
/* 806B2318  41 82 01 9C */	beq lbl_806B24B4
/* 806B231C  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806B2320  80 63 00 04 */	lwz r3, 4(r3)
/* 806B2324  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B2328  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B232C  38 63 05 40 */	addi r3, r3, 0x540
/* 806B2330  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B2334  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B2338  4B C9 41 78 */	b PSMTXCopy
/* 806B233C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B2340  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B2344  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806B2348  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 806B234C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B2350  D0 1C 06 B0 */	stfs f0, 0x6b0(r28)
/* 806B2354  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806B2358  D0 1C 06 B4 */	stfs f0, 0x6b4(r28)
/* 806B235C  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 806B2360  D0 1C 06 BC */	stfs f0, 0x6bc(r28)
/* 806B2364  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 806B2368  D0 1C 06 C0 */	stfs f0, 0x6c0(r28)
/* 806B236C  38 00 00 01 */	li r0, 1
/* 806B2370  98 1C 07 78 */	stb r0, 0x778(r28)
/* 806B2374  C0 3C 06 C0 */	lfs f1, 0x6c0(r28)
/* 806B2378  C0 1C 06 B8 */	lfs f0, 0x6b8(r28)
/* 806B237C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806B2380  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B2384  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806B2388  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806B238C  38 61 00 18 */	addi r3, r1, 0x18
/* 806B2390  4B C9 4D A8 */	b PSVECSquareMag
/* 806B2394  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B2398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B239C  40 81 00 58 */	ble lbl_806B23F4
/* 806B23A0  FC 00 08 34 */	frsqrte f0, f1
/* 806B23A4  C8 9F 00 90 */	lfd f4, 0x90(r31)
/* 806B23A8  FC 44 00 32 */	fmul f2, f4, f0
/* 806B23AC  C8 7F 00 98 */	lfd f3, 0x98(r31)
/* 806B23B0  FC 00 00 32 */	fmul f0, f0, f0
/* 806B23B4  FC 01 00 32 */	fmul f0, f1, f0
/* 806B23B8  FC 03 00 28 */	fsub f0, f3, f0
/* 806B23BC  FC 02 00 32 */	fmul f0, f2, f0
/* 806B23C0  FC 44 00 32 */	fmul f2, f4, f0
/* 806B23C4  FC 00 00 32 */	fmul f0, f0, f0
/* 806B23C8  FC 01 00 32 */	fmul f0, f1, f0
/* 806B23CC  FC 03 00 28 */	fsub f0, f3, f0
/* 806B23D0  FC 02 00 32 */	fmul f0, f2, f0
/* 806B23D4  FC 44 00 32 */	fmul f2, f4, f0
/* 806B23D8  FC 00 00 32 */	fmul f0, f0, f0
/* 806B23DC  FC 01 00 32 */	fmul f0, f1, f0
/* 806B23E0  FC 03 00 28 */	fsub f0, f3, f0
/* 806B23E4  FC 02 00 32 */	fmul f0, f2, f0
/* 806B23E8  FC 41 00 32 */	fmul f2, f1, f0
/* 806B23EC  FC 40 10 18 */	frsp f2, f2
/* 806B23F0  48 00 00 90 */	b lbl_806B2480
lbl_806B23F4:
/* 806B23F4  C8 1F 00 A0 */	lfd f0, 0xa0(r31)
/* 806B23F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B23FC  40 80 00 10 */	bge lbl_806B240C
/* 806B2400  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806B2404  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 806B2408  48 00 00 78 */	b lbl_806B2480
lbl_806B240C:
/* 806B240C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806B2410  80 81 00 08 */	lwz r4, 8(r1)
/* 806B2414  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806B2418  3C 00 7F 80 */	lis r0, 0x7f80
/* 806B241C  7C 03 00 00 */	cmpw r3, r0
/* 806B2420  41 82 00 14 */	beq lbl_806B2434
/* 806B2424  40 80 00 40 */	bge lbl_806B2464
/* 806B2428  2C 03 00 00 */	cmpwi r3, 0
/* 806B242C  41 82 00 20 */	beq lbl_806B244C
/* 806B2430  48 00 00 34 */	b lbl_806B2464
lbl_806B2434:
/* 806B2434  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806B2438  41 82 00 0C */	beq lbl_806B2444
/* 806B243C  38 00 00 01 */	li r0, 1
/* 806B2440  48 00 00 28 */	b lbl_806B2468
lbl_806B2444:
/* 806B2444  38 00 00 02 */	li r0, 2
/* 806B2448  48 00 00 20 */	b lbl_806B2468
lbl_806B244C:
/* 806B244C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806B2450  41 82 00 0C */	beq lbl_806B245C
/* 806B2454  38 00 00 05 */	li r0, 5
/* 806B2458  48 00 00 10 */	b lbl_806B2468
lbl_806B245C:
/* 806B245C  38 00 00 03 */	li r0, 3
/* 806B2460  48 00 00 08 */	b lbl_806B2468
lbl_806B2464:
/* 806B2464  38 00 00 04 */	li r0, 4
lbl_806B2468:
/* 806B2468  2C 00 00 01 */	cmpwi r0, 1
/* 806B246C  40 82 00 10 */	bne lbl_806B247C
/* 806B2470  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806B2474  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 806B2478  48 00 00 08 */	b lbl_806B2480
lbl_806B247C:
/* 806B247C  FC 40 08 90 */	fmr f2, f1
lbl_806B2480:
/* 806B2480  C0 3C 06 BC */	lfs f1, 0x6bc(r28)
/* 806B2484  4B BB 51 F0 */	b cM_atan2s__Fff
/* 806B2488  20 03 40 00 */	subfic r0, r3, 0x4000
/* 806B248C  B0 1C 06 D6 */	sth r0, 0x6d6(r28)
/* 806B2490  B0 1C 06 D0 */	sth r0, 0x6d0(r28)
/* 806B2494  B0 1C 06 CA */	sth r0, 0x6ca(r28)
/* 806B2498  38 00 00 17 */	li r0, 0x17
/* 806B249C  90 1D 06 14 */	stw r0, 0x614(r29)
/* 806B24A0  38 00 00 01 */	li r0, 1
/* 806B24A4  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806B24A8  38 00 00 00 */	li r0, 0
/* 806B24AC  90 1D 06 10 */	stw r0, 0x610(r29)
/* 806B24B0  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_806B24B4:
/* 806B24B4  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806B24B8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806B24BC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806B24C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B24C4  40 80 00 24 */	bge lbl_806B24E8
/* 806B24C8  38 7C 07 7C */	addi r3, r28, 0x77c
/* 806B24CC  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 806B24D0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B24D4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806B24D8  4B BB D5 64 */	b cLib_addCalc2__FPffff
/* 806B24DC  38 00 00 01 */	li r0, 1
/* 806B24E0  98 1C 07 80 */	stb r0, 0x780(r28)
/* 806B24E4  48 00 00 48 */	b lbl_806B252C
lbl_806B24E8:
/* 806B24E8  C0 1C 07 7C */	lfs f0, 0x77c(r28)
/* 806B24EC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B24F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806B24F4  41 82 00 30 */	beq lbl_806B2524
/* 806B24F8  38 7C 07 7C */	addi r3, r28, 0x77c
/* 806B24FC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B2500  FC 60 10 90 */	fmr f3, f2
/* 806B2504  4B BB D5 38 */	b cLib_addCalc2__FPffff
/* 806B2508  C0 3C 07 7C */	lfs f1, 0x77c(r28)
/* 806B250C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B2510  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B2514  40 82 00 18 */	bne lbl_806B252C
/* 806B2518  38 00 00 02 */	li r0, 2
/* 806B251C  98 1C 07 80 */	stb r0, 0x780(r28)
/* 806B2520  48 00 00 0C */	b lbl_806B252C
lbl_806B2524:
/* 806B2524  38 00 00 00 */	li r0, 0
/* 806B2528  98 1C 07 80 */	stb r0, 0x780(r28)
lbl_806B252C:
/* 806B252C  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 806B2530  2C 00 00 78 */	cmpwi r0, 0x78
/* 806B2534  40 80 00 90 */	bge lbl_806B25C4
/* 806B2538  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806B253C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 806B2540  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806B2544  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 806B2548  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 806B254C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 806B2550  38 7C 06 A0 */	addi r3, r28, 0x6a0
/* 806B2554  38 81 00 A8 */	addi r4, r1, 0xa8
/* 806B2558  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 806B255C  4B BB E2 50 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B2560  38 7C 06 E4 */	addi r3, r28, 0x6e4
/* 806B2564  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 806B2568  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 806B256C  4B BB E1 D4 */	b cLib_chaseF__FPfff
/* 806B2570  38 61 00 9C */	addi r3, r1, 0x9c
/* 806B2574  38 9C 05 38 */	addi r4, r28, 0x538
/* 806B2578  C0 3C 06 E4 */	lfs f1, 0x6e4(r28)
/* 806B257C  4B BB 46 08 */	b __ml__4cXyzCFf
/* 806B2580  38 61 00 90 */	addi r3, r1, 0x90
/* 806B2584  38 9C 06 AC */	addi r4, r28, 0x6ac
/* 806B2588  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806B258C  C0 1C 06 E4 */	lfs f0, 0x6e4(r28)
/* 806B2590  EC 21 00 28 */	fsubs f1, f1, f0
/* 806B2594  4B BB 45 F0 */	b __ml__4cXyzCFf
/* 806B2598  38 61 00 84 */	addi r3, r1, 0x84
/* 806B259C  38 81 00 9C */	addi r4, r1, 0x9c
/* 806B25A0  38 A1 00 90 */	addi r5, r1, 0x90
/* 806B25A4  4B BB 45 40 */	b __pl__4cXyzCFRC3Vec
/* 806B25A8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 806B25AC  D0 1C 06 94 */	stfs f0, 0x694(r28)
/* 806B25B0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 806B25B4  D0 1C 06 98 */	stfs f0, 0x698(r28)
/* 806B25B8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 806B25BC  D0 1C 06 9C */	stfs f0, 0x69c(r28)
/* 806B25C0  48 00 00 58 */	b lbl_806B2618
lbl_806B25C4:
/* 806B25C4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806B25C8  D0 1C 06 E4 */	stfs f0, 0x6e4(r28)
/* 806B25CC  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 806B25D0  2C 00 01 0E */	cmpwi r0, 0x10e
/* 806B25D4  40 80 00 2C */	bge lbl_806B2600
/* 806B25D8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806B25DC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806B25E0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806B25E4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806B25E8  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 806B25EC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B25F0  38 7C 06 A0 */	addi r3, r28, 0x6a0
/* 806B25F4  38 81 00 78 */	addi r4, r1, 0x78
/* 806B25F8  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 806B25FC  4B BB E1 B0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
lbl_806B2600:
/* 806B2600  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 806B2604  D0 1C 06 94 */	stfs f0, 0x694(r28)
/* 806B2608  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 806B260C  D0 1C 06 98 */	stfs f0, 0x698(r28)
/* 806B2610  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 806B2614  D0 1C 06 9C */	stfs f0, 0x69c(r28)
lbl_806B2618:
/* 806B2618  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 806B261C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806B2620  C0 1C 06 98 */	lfs f0, 0x698(r28)
/* 806B2624  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806B2628  C0 1C 06 9C */	lfs f0, 0x69c(r28)
/* 806B262C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806B2630  C0 1C 06 A0 */	lfs f0, 0x6a0(r28)
/* 806B2634  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806B2638  C0 1C 06 A4 */	lfs f0, 0x6a4(r28)
/* 806B263C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806B2640  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 806B2644  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806B2648  38 7E 02 48 */	addi r3, r30, 0x248
/* 806B264C  38 81 00 6C */	addi r4, r1, 0x6c
/* 806B2650  38 A1 00 60 */	addi r5, r1, 0x60
/* 806B2654  C0 3C 06 E0 */	lfs f1, 0x6e0(r28)
/* 806B2658  38 C0 00 00 */	li r6, 0
/* 806B265C  4B AC E4 84 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 806B2660  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806B2664  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806B2668  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 806B266C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B2670  40 81 00 18 */	ble lbl_806B2688
/* 806B2674  38 7C 07 2C */	addi r3, r28, 0x72c
/* 806B2678  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 806B267C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B2680  C0 7F 00 FC */	lfs f3, 0xfc(r31)
/* 806B2684  4B BB D3 B8 */	b cLib_addCalc2__FPffff
lbl_806B2688:
/* 806B2688  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806B268C  38 80 00 01 */	li r4, 1
/* 806B2690  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B2694  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B2698  40 82 00 18 */	bne lbl_806B26B0
/* 806B269C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B26A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B26A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B26A8  41 82 00 08 */	beq lbl_806B26B0
/* 806B26AC  38 80 00 00 */	li r4, 0
lbl_806B26B0:
/* 806B26B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B26B4  41 82 02 18 */	beq lbl_806B28CC
/* 806B26B8  38 00 00 14 */	li r0, 0x14
/* 806B26BC  90 1C 07 58 */	stw r0, 0x758(r28)
/* 806B26C0  38 00 00 04 */	li r0, 4
/* 806B26C4  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 806B26C8  48 00 02 04 */	b lbl_806B28CC
lbl_806B26CC:
/* 806B26CC  38 00 00 03 */	li r0, 3
/* 806B26D0  98 1C 07 70 */	stb r0, 0x770(r28)
/* 806B26D4  38 7C 07 2C */	addi r3, r28, 0x72c
/* 806B26D8  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 806B26DC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B26E0  C0 7F 00 FC */	lfs f3, 0xfc(r31)
/* 806B26E4  4B BB D3 58 */	b cLib_addCalc2__FPffff
/* 806B26E8  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 806B26EC  2C 00 00 00 */	cmpwi r0, 0
/* 806B26F0  40 82 01 DC */	bne lbl_806B28CC
/* 806B26F4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B26F8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 806B26FC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806B2700  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 806B2704  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806B2708  38 61 00 B4 */	addi r3, r1, 0xb4
/* 806B270C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806B2710  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 806B2714  38 C1 00 C0 */	addi r6, r1, 0xc0
/* 806B2718  4B BB E6 A8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806B271C  7F 83 E3 78 */	mr r3, r28
/* 806B2720  38 81 00 B4 */	addi r4, r1, 0xb4
/* 806B2724  38 A0 00 28 */	li r5, 0x28
/* 806B2728  38 C0 00 00 */	li r6, 0
/* 806B272C  38 E0 00 FF */	li r7, 0xff
/* 806B2730  4B 96 A3 A8 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806B2734  38 00 00 02 */	li r0, 2
/* 806B2738  98 1C 07 79 */	stb r0, 0x779(r28)
/* 806B273C  38 00 00 0A */	li r0, 0xa
/* 806B2740  90 1C 07 58 */	stw r0, 0x758(r28)
/* 806B2744  38 00 00 05 */	li r0, 5
/* 806B2748  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 806B274C  48 00 01 80 */	b lbl_806B28CC
lbl_806B2750:
/* 806B2750  38 00 00 03 */	li r0, 3
/* 806B2754  98 1C 07 70 */	stb r0, 0x770(r28)
/* 806B2758  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 806B275C  2C 00 00 00 */	cmpwi r0, 0
/* 806B2760  40 82 01 6C */	bne lbl_806B28CC
/* 806B2764  38 00 00 78 */	li r0, 0x78
/* 806B2768  90 1C 07 58 */	stw r0, 0x758(r28)
/* 806B276C  38 00 00 06 */	li r0, 6
/* 806B2770  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 806B2774  48 00 01 58 */	b lbl_806B28CC
lbl_806B2778:
/* 806B2778  38 00 00 03 */	li r0, 3
/* 806B277C  98 1C 07 70 */	stb r0, 0x770(r28)
/* 806B2780  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 806B2784  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806B2788  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806B278C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 806B2790  38 7C 06 94 */	addi r3, r28, 0x694
/* 806B2794  38 81 00 54 */	addi r4, r1, 0x54
/* 806B2798  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 806B279C  C0 5F 01 00 */	lfs f2, 0x100(r31)
/* 806B27A0  4B BB D9 D8 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806B27A4  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 806B27A8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806B27AC  C0 1C 06 98 */	lfs f0, 0x698(r28)
/* 806B27B0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806B27B4  C0 1C 06 9C */	lfs f0, 0x69c(r28)
/* 806B27B8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806B27BC  C0 1C 06 A0 */	lfs f0, 0x6a0(r28)
/* 806B27C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806B27C4  C0 1C 06 A4 */	lfs f0, 0x6a4(r28)
/* 806B27C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806B27CC  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 806B27D0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806B27D4  38 7E 02 48 */	addi r3, r30, 0x248
/* 806B27D8  38 81 00 48 */	addi r4, r1, 0x48
/* 806B27DC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806B27E0  C0 3C 06 E0 */	lfs f1, 0x6e0(r28)
/* 806B27E4  38 C0 00 00 */	li r6, 0
/* 806B27E8  4B AC E2 F8 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 806B27EC  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 806B27F0  2C 00 00 00 */	cmpwi r0, 0
/* 806B27F4  40 82 00 D8 */	bne lbl_806B28CC
/* 806B27F8  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 806B27FC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806B2800  C0 1C 06 98 */	lfs f0, 0x698(r28)
/* 806B2804  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806B2808  C0 1C 06 9C */	lfs f0, 0x69c(r28)
/* 806B280C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806B2810  C0 1C 06 A0 */	lfs f0, 0x6a0(r28)
/* 806B2814  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806B2818  C0 1C 06 A4 */	lfs f0, 0x6a4(r28)
/* 806B281C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806B2820  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 806B2824  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806B2828  38 7E 02 48 */	addi r3, r30, 0x248
/* 806B282C  38 81 00 30 */	addi r4, r1, 0x30
/* 806B2830  38 A1 00 24 */	addi r5, r1, 0x24
/* 806B2834  C0 3C 06 E0 */	lfs f1, 0x6e0(r28)
/* 806B2838  38 C0 00 00 */	li r6, 0
/* 806B283C  4B AC E3 64 */	b Reset__9dCamera_cF4cXyz4cXyzfs
/* 806B2840  38 7E 02 48 */	addi r3, r30, 0x248
/* 806B2844  4B AA EC 68 */	b Start__9dCamera_cFv
/* 806B2848  38 7E 02 48 */	addi r3, r30, 0x248
/* 806B284C  38 80 00 00 */	li r4, 0
/* 806B2850  4B AB 07 BC */	b SetTrimSize__9dCamera_cFl
/* 806B2854  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B2858  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B285C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806B2860  4B 98 FC 08 */	b reset__14dEvt_control_cFv
/* 806B2864  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B2868  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B286C  80 63 00 00 */	lwz r3, 0(r3)
/* 806B2870  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 806B2874  D0 63 04 04 */	stfs f3, 0x404(r3)
/* 806B2878  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B287C  D0 03 04 08 */	stfs f0, 0x408(r3)
/* 806B2880  38 00 00 00 */	li r0, 0
/* 806B2884  90 03 04 10 */	stw r0, 0x410(r3)
/* 806B2888  D0 03 04 0C */	stfs f0, 0x40c(r3)
/* 806B288C  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 806B2890  38 00 00 2D */	li r0, 0x2d
/* 806B2894  90 03 04 20 */	stw r0, 0x420(r3)
/* 806B2898  EC 43 00 28 */	fsubs f2, f3, f0
/* 806B289C  80 03 04 20 */	lwz r0, 0x420(r3)
/* 806B28A0  C8 3F 01 50 */	lfd f1, 0x150(r31)
/* 806B28A4  90 01 00 DC */	stw r0, 0xdc(r1)
/* 806B28A8  3C 00 43 30 */	lis r0, 0x4330
/* 806B28AC  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 806B28B0  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 806B28B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806B28B8  EC 02 00 24 */	fdivs f0, f2, f0
/* 806B28BC  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 806B28C0  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 806B28C4  7F 83 E3 78 */	mr r3, r28
/* 806B28C8  4B 96 73 B4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806B28CC:
/* 806B28CC  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806B28D0  4B CA F9 54 */	b _restgpr_28
/* 806B28D4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 806B28D8  7C 08 03 A6 */	mtlr r0
/* 806B28DC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 806B28E0  4E 80 00 20 */	blr 
