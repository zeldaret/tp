lbl_805F1F58:
/* 805F1F58  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 805F1F5C  7C 08 02 A6 */	mflr r0
/* 805F1F60  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 805F1F64  DB E1 01 D0 */	stfd f31, 0x1d0(r1)
/* 805F1F68  F3 E1 01 D8 */	psq_st f31, 472(r1), 0, 0 /* qr0 */
/* 805F1F6C  DB C1 01 C0 */	stfd f30, 0x1c0(r1)
/* 805F1F70  F3 C1 01 C8 */	psq_st f30, 456(r1), 0, 0 /* qr0 */
/* 805F1F74  DB A1 01 B0 */	stfd f29, 0x1b0(r1)
/* 805F1F78  F3 A1 01 B8 */	psq_st f29, 440(r1), 0, 0 /* qr0 */
/* 805F1F7C  DB 81 01 A0 */	stfd f28, 0x1a0(r1)
/* 805F1F80  F3 81 01 A8 */	psq_st f28, 424(r1), 0, 0 /* qr0 */
/* 805F1F84  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 805F1F88  4B D7 02 2C */	b _savegpr_19
/* 805F1F8C  7C 7F 1B 78 */	mr r31, r3
/* 805F1F90  3C 60 80 5F */	lis r3, lit_3774@ha
/* 805F1F94  3B C3 41 88 */	addi r30, r3, lit_3774@l
/* 805F1F98  4B A2 63 10 */	b cDmrNowMidnaTalk__Fv
/* 805F1F9C  2C 03 00 00 */	cmpwi r3, 0
/* 805F1FA0  41 82 00 0C */	beq lbl_805F1FAC
/* 805F1FA4  38 60 00 01 */	li r3, 1
/* 805F1FA8  48 00 10 C0 */	b lbl_805F3068
lbl_805F1FAC:
/* 805F1FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F1FB0  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 805F1FB4  83 7A 5D AC */	lwz r27, 0x5dac(r26)
/* 805F1FB8  3A E0 00 00 */	li r23, 0
/* 805F1FBC  3A 80 00 00 */	li r20, 0
/* 805F1FC0  3A A0 00 00 */	li r21, 0
/* 805F1FC4  3A C0 00 00 */	li r22, 0
/* 805F1FC8  3C 60 80 5F */	lis r3, target_pos@ha
/* 805F1FCC  3B 23 48 5C */	addi r25, r3, target_pos@l
/* 805F1FD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F1FD4  3B 03 D4 70 */	addi r24, r3, now__14mDoMtx_stack_c@l
/* 805F1FD8  C3 BE 00 28 */	lfs f29, 0x28(r30)
/* 805F1FDC  7F 1C C3 78 */	mr r28, r24
lbl_805F1FE0:
/* 805F1FE0  7F B9 B2 14 */	add r29, r25, r22
/* 805F1FE4  7F 03 C3 78 */	mr r3, r24
/* 805F1FE8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805F1FEC  C0 5D 00 04 */	lfs f2, 4(r29)
/* 805F1FF0  3A 7D 00 08 */	addi r19, r29, 8
/* 805F1FF4  C0 7D 00 08 */	lfs f3, 8(r29)
/* 805F1FF8  4B D5 48 F0 */	b PSMTXTrans
/* 805F1FFC  C3 9E 00 00 */	lfs f28, 0(r30)
/* 805F2000  88 1F 06 B4 */	lbz r0, 0x6b4(r31)
/* 805F2004  28 00 00 00 */	cmplwi r0, 0
/* 805F2008  40 82 00 64 */	bne lbl_805F206C
/* 805F200C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805F2010  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 805F2014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F2018  40 81 00 54 */	ble lbl_805F206C
/* 805F201C  C0 3F 05 38 */	lfs f1, 0x538(r31)
/* 805F2020  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805F2024  EC 41 00 28 */	fsubs f2, f1, f0
/* 805F2028  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 805F202C  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 805F2030  C0 13 00 00 */	lfs f0, 0(r19)
/* 805F2034  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F2038  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F203C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805F2040  EC 00 00 32 */	fmuls f0, f0, f0
/* 805F2044  EC 21 00 2A */	fadds f1, f1, f0
/* 805F2048  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F204C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F2050  40 81 00 0C */	ble lbl_805F205C
/* 805F2054  FC 00 08 34 */	frsqrte f0, f1
/* 805F2058  EC 20 00 72 */	fmuls f1, f0, f1
lbl_805F205C:
/* 805F205C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 805F2060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F2064  40 80 00 08 */	bge lbl_805F206C
/* 805F2068  C3 9E 00 1C */	lfs f28, 0x1c(r30)
lbl_805F206C:
/* 805F206C  FC 1C E8 40 */	fcmpo cr0, f28, f29
/* 805F2070  40 81 00 28 */	ble lbl_805F2098
/* 805F2074  80 7F 1C FC */	lwz r3, 0x1cfc(r31)
/* 805F2078  38 17 00 03 */	addi r0, r23, 3
/* 805F207C  7C 03 00 00 */	cmpw r3, r0
/* 805F2080  40 82 00 40 */	bne lbl_805F20C0
/* 805F2084  38 7F 1D 00 */	addi r3, r31, 0x1d00
/* 805F2088  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F208C  FC 40 E8 90 */	fmr f2, f29
/* 805F2090  4B C7 D9 F0 */	b cLib_addCalc0__FPfff
/* 805F2094  48 00 00 2C */	b lbl_805F20C0
lbl_805F2098:
/* 805F2098  C0 1F 06 C0 */	lfs f0, 0x6c0(r31)
/* 805F209C  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 805F20A0  40 80 00 20 */	bge lbl_805F20C0
/* 805F20A4  38 17 00 03 */	addi r0, r23, 3
/* 805F20A8  90 1F 1C FC */	stw r0, 0x1cfc(r31)
/* 805F20AC  38 7F 1D 00 */	addi r3, r31, 0x1d00
/* 805F20B0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F20B4  FC 40 08 90 */	fmr f2, f1
/* 805F20B8  FC 60 E8 90 */	fmr f3, f29
/* 805F20BC  4B C7 D9 80 */	b cLib_addCalc2__FPffff
lbl_805F20C0:
/* 805F20C0  2C 17 00 00 */	cmpwi r23, 0
/* 805F20C4  40 82 00 14 */	bne lbl_805F20D8
/* 805F20C8  88 1F 06 F5 */	lbz r0, 0x6f5(r31)
/* 805F20CC  7C 00 07 75 */	extsb. r0, r0
/* 805F20D0  41 82 00 08 */	beq lbl_805F20D8
/* 805F20D4  C3 9E 00 1C */	lfs f28, 0x1c(r30)
lbl_805F20D8:
/* 805F20D8  7E 7F AA 14 */	add r19, r31, r21
/* 805F20DC  38 73 07 0C */	addi r3, r19, 0x70c
/* 805F20E0  FC 20 E0 90 */	fmr f1, f28
/* 805F20E4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F20E8  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805F20EC  4B C7 D9 50 */	b cLib_addCalc2__FPffff
/* 805F20F0  C0 33 07 0C */	lfs f1, 0x70c(r19)
/* 805F20F4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F20F8  FC 60 08 90 */	fmr f3, f1
/* 805F20FC  4B A1 AD 3C */	b scaleM__14mDoMtx_stack_cFfff
/* 805F2100  7F 03 C3 78 */	mr r3, r24
/* 805F2104  7E 84 07 34 */	extsh r4, r20
/* 805F2108  4B A1 A3 2C */	b mDoMtx_YrotM__FPA4_fs
/* 805F210C  7F 83 E3 78 */	mr r3, r28
/* 805F2110  80 93 06 F8 */	lwz r4, 0x6f8(r19)
/* 805F2114  38 84 00 24 */	addi r4, r4, 0x24
/* 805F2118  4B D5 43 98 */	b PSMTXCopy
/* 805F211C  3A F7 00 01 */	addi r23, r23, 1
/* 805F2120  2C 17 00 04 */	cmpwi r23, 4
/* 805F2124  3A 94 31 00 */	addi r20, r20, 0x3100
/* 805F2128  3A B5 00 04 */	addi r21, r21, 4
/* 805F212C  3A D6 00 0C */	addi r22, r22, 0xc
/* 805F2130  41 80 FE B0 */	blt lbl_805F1FE0
/* 805F2134  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 805F2138  4B A1 B2 F0 */	b play__14mDoExt_baseAnmFv
/* 805F213C  88 1F 06 B4 */	lbz r0, 0x6b4(r31)
/* 805F2140  28 00 00 00 */	cmplwi r0, 0
/* 805F2144  41 82 00 D4 */	beq lbl_805F2218
/* 805F2148  A8 1F 1C 8C */	lha r0, 0x1c8c(r31)
/* 805F214C  2C 00 00 00 */	cmpwi r0, 0
/* 805F2150  40 82 00 B8 */	bne lbl_805F2208
/* 805F2154  3C 60 80 5F */	lis r3, s_ko2_get__FPvPv@ha
/* 805F2158  38 63 E6 E0 */	addi r3, r3, s_ko2_get__FPvPv@l
/* 805F215C  7F E4 FB 78 */	mr r4, r31
/* 805F2160  4B A2 F1 D8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 805F2164  28 03 00 00 */	cmplwi r3, 0
/* 805F2168  41 82 00 A0 */	beq lbl_805F2208
/* 805F216C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 805F2170  D0 1F 1C EC */	stfs f0, 0x1cec(r31)
/* 805F2174  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 805F2178  D0 1F 1C F0 */	stfs f0, 0x1cf0(r31)
/* 805F217C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 805F2180  D0 1F 1C F4 */	stfs f0, 0x1cf4(r31)
/* 805F2184  88 03 0A 68 */	lbz r0, 0xa68(r3)
/* 805F2188  98 1F 1C F8 */	stb r0, 0x1cf8(r31)
/* 805F218C  88 1F 1C F8 */	lbz r0, 0x1cf8(r31)
/* 805F2190  28 00 00 00 */	cmplwi r0, 0
/* 805F2194  41 82 00 74 */	beq lbl_805F2208
/* 805F2198  28 00 00 01 */	cmplwi r0, 1
/* 805F219C  40 82 00 10 */	bne lbl_805F21AC
/* 805F21A0  38 00 00 28 */	li r0, 0x28
/* 805F21A4  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F21A8  48 00 00 0C */	b lbl_805F21B4
lbl_805F21AC:
/* 805F21AC  38 00 00 32 */	li r0, 0x32
/* 805F21B0  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
lbl_805F21B4:
/* 805F21B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805F21B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805F21BC  80 63 00 00 */	lwz r3, 0(r3)
/* 805F21C0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F21C4  38 80 00 1E */	li r4, 0x1e
/* 805F21C8  38 A0 00 00 */	li r5, 0
/* 805F21CC  4B CB D2 3C */	b bgmStop__8Z2SeqMgrFUll
/* 805F21D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805F21D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805F21D8  80 63 00 00 */	lwz r3, 0(r3)
/* 805F21DC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F21E0  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200004F@ha */
/* 805F21E4  38 84 00 4F */	addi r4, r4, 0x004F /* 0x0200004F@l */
/* 805F21E8  4B CB D9 AC */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 805F21EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805F21F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805F21F4  80 63 00 00 */	lwz r3, 0(r3)
/* 805F21F8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F21FC  4B CB DC 1C */	b bgmStreamPlay__8Z2SeqMgrFv
/* 805F2200  38 00 00 00 */	li r0, 0
/* 805F2204  98 1F 05 66 */	stb r0, 0x566(r31)
lbl_805F2208:
/* 805F2208  7F E3 FB 78 */	mr r3, r31
/* 805F220C  4B FF E4 B5 */	bl demo_camera__FP10b_gm_class
/* 805F2210  38 60 00 01 */	li r3, 1
/* 805F2214  48 00 0E 54 */	b lbl_805F3068
lbl_805F2218:
/* 805F2218  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 805F221C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805F2220  60 00 04 00 */	ori r0, r0, 0x400
/* 805F2224  90 03 05 88 */	stw r0, 0x588(r3)
/* 805F2228  A8 7F 07 1C */	lha r3, 0x71c(r31)
/* 805F222C  38 03 00 01 */	addi r0, r3, 1
/* 805F2230  B0 1F 07 1C */	sth r0, 0x71c(r31)
/* 805F2234  38 60 00 00 */	li r3, 0
/* 805F2238  38 00 00 04 */	li r0, 4
/* 805F223C  7C 09 03 A6 */	mtctr r0
lbl_805F2240:
/* 805F2240  38 A3 07 22 */	addi r5, r3, 0x722
/* 805F2244  7C 9F 2A AE */	lhax r4, r31, r5
/* 805F2248  2C 04 00 00 */	cmpwi r4, 0
/* 805F224C  41 82 00 0C */	beq lbl_805F2258
/* 805F2250  38 04 FF FF */	addi r0, r4, -1
/* 805F2254  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_805F2258:
/* 805F2258  38 63 00 02 */	addi r3, r3, 2
/* 805F225C  42 00 FF E4 */	bdnz lbl_805F2240
/* 805F2260  A8 7F 07 2A */	lha r3, 0x72a(r31)
/* 805F2264  2C 03 00 00 */	cmpwi r3, 0
/* 805F2268  41 82 00 0C */	beq lbl_805F2274
/* 805F226C  38 03 FF FF */	addi r0, r3, -1
/* 805F2270  B0 1F 07 2A */	sth r0, 0x72a(r31)
lbl_805F2274:
/* 805F2274  7F E3 FB 78 */	mr r3, r31
/* 805F2278  4B FF D7 45 */	bl action__FP10b_gm_class
/* 805F227C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F2280  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F2284  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805F2288  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805F228C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805F2290  4B D5 46 58 */	b PSMTXTrans
/* 805F2294  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F2298  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F229C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805F22A0  4B A1 A1 94 */	b mDoMtx_YrotM__FPA4_fs
/* 805F22A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F22A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F22AC  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 805F22B0  4B A1 A2 1C */	b mDoMtx_ZrotM__FPA4_fs
/* 805F22B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F22B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F22BC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805F22C0  4B A1 A0 DC */	b mDoMtx_XrotM__FPA4_fs
/* 805F22C4  3C 60 80 5F */	lis r3, l_HIO@ha
/* 805F22C8  3B 23 47 DC */	addi r25, r3, l_HIO@l
/* 805F22CC  C0 39 00 08 */	lfs f1, 8(r25)
/* 805F22D0  FC 40 08 90 */	fmr f2, f1
/* 805F22D4  FC 60 08 90 */	fmr f3, f1
/* 805F22D8  4B A1 AB 60 */	b scaleM__14mDoMtx_stack_cFfff
/* 805F22DC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805F22E0  FC 40 08 90 */	fmr f2, f1
/* 805F22E4  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 805F22E8  4B A1 AA B4 */	b transM__14mDoMtx_stack_cFfff
/* 805F22EC  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 805F22F0  83 A3 00 04 */	lwz r29, 4(r3)
/* 805F22F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F22F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F22FC  38 9D 00 24 */	addi r4, r29, 0x24
/* 805F2300  4B D5 41 B0 */	b PSMTXCopy
/* 805F2304  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805F2308  7C 03 07 74 */	extsb r3, r0
/* 805F230C  4B A3 AD 60 */	b dComIfGp_getReverb__Fi
/* 805F2310  7C 65 1B 78 */	mr r5, r3
/* 805F2314  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 805F2318  38 80 00 00 */	li r4, 0
/* 805F231C  4B A1 ED 94 */	b play__16mDoExt_McaMorfSOFUlSc
/* 805F2320  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805F2324  7C 03 07 74 */	extsb r3, r0
/* 805F2328  4B A3 AD 44 */	b dComIfGp_getReverb__Fi
/* 805F232C  7C 65 1B 78 */	mr r5, r3
/* 805F2330  38 7F 06 84 */	addi r3, r31, 0x684
/* 805F2334  38 80 00 00 */	li r4, 0
/* 805F2338  81 9F 06 94 */	lwz r12, 0x694(r31)
/* 805F233C  81 8C 00 08 */	lwz r12, 8(r12)
/* 805F2340  7D 89 03 A6 */	mtctr r12
/* 805F2344  4E 80 04 21 */	bctrl 
/* 805F2348  7F E3 FB 78 */	mr r3, r31
/* 805F234C  4B FF DC 05 */	bl anm_se_set__FP10b_gm_class
/* 805F2350  38 7F 06 AC */	addi r3, r31, 0x6ac
/* 805F2354  C0 3F 1A E0 */	lfs f1, 0x1ae0(r31)
/* 805F2358  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F235C  FC 60 10 90 */	fmr f3, f2
/* 805F2360  4B C7 D6 DC */	b cLib_addCalc2__FPffff
/* 805F2364  C0 1F 06 AC */	lfs f0, 0x6ac(r31)
/* 805F2368  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 805F236C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805F2370  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 805F2374  4B A1 EE 78 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 805F2378  7F E3 FB 78 */	mr r3, r31
/* 805F237C  4B FF DA 59 */	bl foot_IK_main__FP10b_gm_class
/* 805F2380  3C 60 80 5F */	lis r3, l_HIO@ha
/* 805F2384  3B 03 47 DC */	addi r24, r3, l_HIO@l
/* 805F2388  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805F238C  C0 19 00 08 */	lfs f0, 8(r25)
/* 805F2390  EF E1 00 32 */	fmuls f31, f1, f0
/* 805F2394  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F2398  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F239C  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 805F23A0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805F23A4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805F23A8  80 84 00 00 */	lwz r4, 0(r4)
/* 805F23AC  4B D5 41 04 */	b PSMTXCopy
/* 805F23B0  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805F23B4  FC 40 08 90 */	fmr f2, f1
/* 805F23B8  FC 60 08 90 */	fmr f3, f1
/* 805F23BC  38 60 00 01 */	li r3, 1
/* 805F23C0  4B C7 EA E4 */	b MtxScale__FfffUc
/* 805F23C4  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 805F23C8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F23CC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F23D0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F23D4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F23D8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805F23DC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F23E0  4B C7 EB 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 805F23E4  A8 1F 07 2A */	lha r0, 0x72a(r31)
/* 805F23E8  2C 00 00 00 */	cmpwi r0, 0
/* 805F23EC  40 82 00 10 */	bne lbl_805F23FC
/* 805F23F0  88 1F 1A D6 */	lbz r0, 0x1ad6(r31)
/* 805F23F4  7C 00 07 75 */	extsb. r0, r0
/* 805F23F8  40 82 00 14 */	bne lbl_805F240C
lbl_805F23FC:
/* 805F23FC  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 805F2400  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 805F2404  EC 01 00 2A */	fadds f0, f1, f0
/* 805F2408  D0 01 00 A8 */	stfs f0, 0xa8(r1)
lbl_805F240C:
/* 805F240C  38 7F 0A C0 */	addi r3, r31, 0xac0
/* 805F2410  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F2414  4B C7 D2 34 */	b SetC__8cM3dGSphFRC4cXyz
/* 805F2418  38 7F 0A C0 */	addi r3, r31, 0xac0
/* 805F241C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 805F2420  EC 20 07 F2 */	fmuls f1, f0, f31
/* 805F2424  4B C7 D2 E4 */	b SetR__8cM3dGSphFf
/* 805F2428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F242C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F2430  3B 83 23 3C */	addi r28, r3, 0x233c
/* 805F2434  7F 83 E3 78 */	mr r3, r28
/* 805F2438  38 9F 09 9C */	addi r4, r31, 0x99c
/* 805F243C  4B C7 27 6C */	b Set__4cCcSFP8cCcD_Obj
/* 805F2440  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 805F2444  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F2448  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 805F244C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F2450  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F2454  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F2458  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805F245C  38 9F 05 38 */	addi r4, r31, 0x538
/* 805F2460  4B C7 EA 8C */	b MtxPosition__FP4cXyzP4cXyz
/* 805F2464  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805F2468  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805F246C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805F2470  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805F2474  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805F2478  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805F247C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 805F2480  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 805F2484  EC 01 00 2A */	fadds f0, f1, f0
/* 805F2488  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805F248C  88 1F 1A D6 */	lbz r0, 0x1ad6(r31)
/* 805F2490  7C 00 07 75 */	extsb. r0, r0
/* 805F2494  40 82 00 8C */	bne lbl_805F2520
/* 805F2498  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F249C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F24A0  38 63 01 20 */	addi r3, r3, 0x120
/* 805F24A4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805F24A8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805F24AC  80 84 00 00 */	lwz r4, 0(r4)
/* 805F24B0  4B D5 40 00 */	b PSMTXCopy
/* 805F24B4  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805F24B8  FC 40 08 90 */	fmr f2, f1
/* 805F24BC  FC 60 08 90 */	fmr f3, f1
/* 805F24C0  38 60 00 01 */	li r3, 1
/* 805F24C4  4B C7 E9 E0 */	b MtxScale__FfffUc
/* 805F24C8  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 805F24CC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F24D0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F24D4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F24D8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F24DC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805F24E0  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F24E4  4B C7 EA 08 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F24E8  A8 1F 07 2A */	lha r0, 0x72a(r31)
/* 805F24EC  2C 00 00 00 */	cmpwi r0, 0
/* 805F24F0  41 82 00 14 */	beq lbl_805F2504
/* 805F24F4  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 805F24F8  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 805F24FC  EC 01 00 2A */	fadds f0, f1, f0
/* 805F2500  D0 01 00 A8 */	stfs f0, 0xa8(r1)
lbl_805F2504:
/* 805F2504  38 7F 0B F8 */	addi r3, r31, 0xbf8
/* 805F2508  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F250C  4B C7 D1 3C */	b SetC__8cM3dGSphFRC4cXyz
/* 805F2510  38 7F 0B F8 */	addi r3, r31, 0xbf8
/* 805F2514  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 805F2518  EC 20 07 F2 */	fmuls f1, f0, f31
/* 805F251C  4B C7 D1 EC */	b SetR__8cM3dGSphFf
lbl_805F2520:
/* 805F2520  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F2524  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F2528  38 63 00 60 */	addi r3, r3, 0x60
/* 805F252C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805F2530  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805F2534  80 84 00 00 */	lwz r4, 0(r4)
/* 805F2538  4B D5 3F 78 */	b PSMTXCopy
/* 805F253C  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805F2540  FC 40 08 90 */	fmr f2, f1
/* 805F2544  FC 60 08 90 */	fmr f3, f1
/* 805F2548  38 60 00 01 */	li r3, 1
/* 805F254C  4B C7 E9 58 */	b MtxScale__FfffUc
/* 805F2550  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 805F2554  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F2558  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F255C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F2560  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F2564  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805F2568  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F256C  4B C7 E9 80 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F2570  A8 1F 07 2A */	lha r0, 0x72a(r31)
/* 805F2574  2C 00 00 00 */	cmpwi r0, 0
/* 805F2578  41 82 00 14 */	beq lbl_805F258C
/* 805F257C  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 805F2580  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 805F2584  EC 01 00 2A */	fadds f0, f1, f0
/* 805F2588  D0 01 00 A8 */	stfs f0, 0xa8(r1)
lbl_805F258C:
/* 805F258C  38 7F 0D 30 */	addi r3, r31, 0xd30
/* 805F2590  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F2594  4B C7 D0 B4 */	b SetC__8cM3dGSphFRC4cXyz
/* 805F2598  38 7F 0D 30 */	addi r3, r31, 0xd30
/* 805F259C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 805F25A0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 805F25A4  4B C7 D1 64 */	b SetR__8cM3dGSphFf
/* 805F25A8  3A 60 00 00 */	li r19, 0
/* 805F25AC  3A 80 00 00 */	li r20, 0
lbl_805F25B0:
/* 805F25B0  7F 83 E3 78 */	mr r3, r28
/* 805F25B4  38 94 0A D4 */	addi r4, r20, 0xad4
/* 805F25B8  7C 9F 22 14 */	add r4, r31, r4
/* 805F25BC  4B C7 25 EC */	b Set__4cCcSFP8cCcD_Obj
/* 805F25C0  3A 73 00 01 */	addi r19, r19, 1
/* 805F25C4  2C 13 00 02 */	cmpwi r19, 2
/* 805F25C8  3A 94 01 38 */	addi r20, r20, 0x138
/* 805F25CC  41 80 FF E4 */	blt lbl_805F25B0
/* 805F25D0  3A C0 00 00 */	li r22, 0
/* 805F25D4  3A A0 00 00 */	li r21, 0
/* 805F25D8  3A 80 00 00 */	li r20, 0
/* 805F25DC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 805F25E0  EF 80 07 F2 */	fmuls f28, f0, f31
/* 805F25E4  3C 60 80 5F */	lis r3, top_j@ha
/* 805F25E8  3B 23 44 74 */	addi r25, r3, top_j@l
/* 805F25EC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F25F0  3B 43 07 68 */	addi r26, r3, calc_mtx@l
/* 805F25F4  C3 BE 01 CC */	lfs f29, 0x1cc(r30)
/* 805F25F8  C3 DE 00 1C */	lfs f30, 0x1c(r30)
lbl_805F25FC:
/* 805F25FC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F2600  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F2604  7C 19 A0 2E */	lwzx r0, r25, r20
/* 805F2608  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805F260C  7C 63 02 14 */	add r3, r3, r0
/* 805F2610  80 9A 00 00 */	lwz r4, 0(r26)
/* 805F2614  4B D5 3E 9C */	b PSMTXCopy
/* 805F2618  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805F261C  FC 40 08 90 */	fmr f2, f1
/* 805F2620  FC 60 08 90 */	fmr f3, f1
/* 805F2624  38 60 00 01 */	li r3, 1
/* 805F2628  4B C7 E8 7C */	b MtxScale__FfffUc
/* 805F262C  D3 A1 00 B0 */	stfs f29, 0xb0(r1)
/* 805F2630  D3 C1 00 B4 */	stfs f30, 0xb4(r1)
/* 805F2634  D3 C1 00 B8 */	stfs f30, 0xb8(r1)
/* 805F2638  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805F263C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F2640  4B C7 E8 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 805F2644  7E FF AA 14 */	add r23, r31, r21
/* 805F2648  3A 77 10 D8 */	addi r19, r23, 0x10d8
/* 805F264C  7E 63 9B 78 */	mr r3, r19
/* 805F2650  FC 20 E0 90 */	fmr f1, f28
/* 805F2654  4B C7 D0 B4 */	b SetR__8cM3dGSphFf
/* 805F2658  7E 63 9B 78 */	mr r3, r19
/* 805F265C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F2660  4B C7 CF E8 */	b SetC__8cM3dGSphFRC4cXyz
/* 805F2664  80 1F 06 A4 */	lwz r0, 0x6a4(r31)
/* 805F2668  2C 00 00 0F */	cmpwi r0, 0xf
/* 805F266C  40 82 00 28 */	bne lbl_805F2694
/* 805F2670  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805F2674  2C 00 10 00 */	cmpwi r0, 0x1000
/* 805F2678  40 80 00 1C */	bge lbl_805F2694
/* 805F267C  2C 00 F0 00 */	cmpwi r0, -4096
/* 805F2680  40 81 00 14 */	ble lbl_805F2694
/* 805F2684  80 17 0F B4 */	lwz r0, 0xfb4(r23)
/* 805F2688  60 00 00 01 */	ori r0, r0, 1
/* 805F268C  90 17 0F B4 */	stw r0, 0xfb4(r23)
/* 805F2690  48 00 00 10 */	b lbl_805F26A0
lbl_805F2694:
/* 805F2694  80 17 0F B4 */	lwz r0, 0xfb4(r23)
/* 805F2698  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805F269C  90 17 0F B4 */	stw r0, 0xfb4(r23)
lbl_805F26A0:
/* 805F26A0  7F 83 E3 78 */	mr r3, r28
/* 805F26A4  38 97 0F B4 */	addi r4, r23, 0xfb4
/* 805F26A8  4B C7 25 00 */	b Set__4cCcSFP8cCcD_Obj
/* 805F26AC  3A D6 00 01 */	addi r22, r22, 1
/* 805F26B0  2C 16 00 08 */	cmpwi r22, 8
/* 805F26B4  3A B5 01 38 */	addi r21, r21, 0x138
/* 805F26B8  3A 94 00 04 */	addi r20, r20, 4
/* 805F26BC  41 80 FF 40 */	blt lbl_805F25FC
/* 805F26C0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F26C4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805F26C8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 805F26CC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805F26D0  88 1F 1A AC */	lbz r0, 0x1aac(r31)
/* 805F26D4  7C 00 07 75 */	extsb. r0, r0
/* 805F26D8  40 82 00 0C */	bne lbl_805F26E4
/* 805F26DC  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 805F26E0  D0 01 00 9C */	stfs f0, 0x9c(r1)
lbl_805F26E4:
/* 805F26E4  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F26E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F26EC  38 63 0B 10 */	addi r3, r3, 0xb10
/* 805F26F0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805F26F4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805F26F8  80 84 00 00 */	lwz r4, 0(r4)
/* 805F26FC  4B D5 3D B4 */	b PSMTXCopy
/* 805F2700  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805F2704  FC 40 08 90 */	fmr f2, f1
/* 805F2708  FC 60 08 90 */	fmr f3, f1
/* 805F270C  38 60 00 01 */	li r3, 1
/* 805F2710  4B C7 E7 94 */	b MtxScale__FfffUc
/* 805F2714  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 805F2718  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F271C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F2720  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F2724  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F2728  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805F272C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F2730  4B C7 E7 BC */	b MtxPosition__FP4cXyzP4cXyz
/* 805F2734  38 61 00 80 */	addi r3, r1, 0x80
/* 805F2738  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F273C  38 A1 00 98 */	addi r5, r1, 0x98
/* 805F2740  4B C7 43 A4 */	b __pl__4cXyzCFRC3Vec
/* 805F2744  38 7F 0E 68 */	addi r3, r31, 0xe68
/* 805F2748  38 81 00 80 */	addi r4, r1, 0x80
/* 805F274C  4B C7 CE FC */	b SetC__8cM3dGSphFRC4cXyz
/* 805F2750  38 7F 0E 68 */	addi r3, r31, 0xe68
/* 805F2754  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 805F2758  EC 20 07 F2 */	fmuls f1, f0, f31
/* 805F275C  4B C7 CF AC */	b SetR__8cM3dGSphFf
/* 805F2760  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F2764  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F2768  38 63 0C 00 */	addi r3, r3, 0xc00
/* 805F276C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805F2770  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805F2774  80 84 00 00 */	lwz r4, 0(r4)
/* 805F2778  4B D5 3D 38 */	b PSMTXCopy
/* 805F277C  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805F2780  FC 40 08 90 */	fmr f2, f1
/* 805F2784  FC 60 08 90 */	fmr f3, f1
/* 805F2788  38 60 00 01 */	li r3, 1
/* 805F278C  4B C7 E7 18 */	b MtxScale__FfffUc
/* 805F2790  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F2794  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F2798  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F279C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F27A0  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805F27A4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F27A8  4B C7 E7 44 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F27AC  38 61 00 74 */	addi r3, r1, 0x74
/* 805F27B0  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F27B4  38 A1 00 98 */	addi r5, r1, 0x98
/* 805F27B8  4B C7 43 2C */	b __pl__4cXyzCFRC3Vec
/* 805F27BC  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 805F27C0  38 81 00 74 */	addi r4, r1, 0x74
/* 805F27C4  4B C7 CE 84 */	b SetC__8cM3dGSphFRC4cXyz
/* 805F27C8  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 805F27CC  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 805F27D0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 805F27D4  4B C7 CF 34 */	b SetR__8cM3dGSphFf
/* 805F27D8  7F 83 E3 78 */	mr r3, r28
/* 805F27DC  38 9F 0D 44 */	addi r4, r31, 0xd44
/* 805F27E0  4B C7 23 C8 */	b Set__4cCcSFP8cCcD_Obj
/* 805F27E4  7F 83 E3 78 */	mr r3, r28
/* 805F27E8  38 9F 0E 7C */	addi r4, r31, 0xe7c
/* 805F27EC  4B C7 23 BC */	b Set__4cCcSFP8cCcD_Obj
/* 805F27F0  38 61 00 68 */	addi r3, r1, 0x68
/* 805F27F4  38 9B 05 38 */	addi r4, r27, 0x538
/* 805F27F8  38 BF 05 38 */	addi r5, r31, 0x538
/* 805F27FC  4B C7 43 38 */	b __mi__4cXyzCFRC3Vec
/* 805F2800  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 805F2804  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805F2808  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 805F280C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805F2810  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 805F2814  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805F2818  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F281C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F2820  80 63 00 00 */	lwz r3, 0(r3)
/* 805F2824  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805F2828  7C 00 00 D0 */	neg r0, r0
/* 805F282C  7C 04 07 34 */	extsh r4, r0
/* 805F2830  4B A1 9B 14 */	b mDoMtx_XrotS__FPA4_fs
/* 805F2834  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F2838  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F283C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F2840  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805F2844  7C 00 00 D0 */	neg r0, r0
/* 805F2848  7C 04 07 34 */	extsh r4, r0
/* 805F284C  4B A1 9B E8 */	b mDoMtx_YrotM__FPA4_fs
/* 805F2850  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805F2854  38 81 00 B0 */	addi r4, r1, 0xb0
/* 805F2858  4B C7 E6 94 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F285C  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 805F2860  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 805F2864  4B C7 4E 10 */	b cM_atan2s__Fff
/* 805F2868  7C 03 00 D0 */	neg r0, r3
/* 805F286C  7C 17 07 34 */	extsh r23, r0
/* 805F2870  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 805F2874  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 805F2878  4B C7 4D FC */	b cM_atan2s__Fff
/* 805F287C  7C 76 07 34 */	extsh r22, r3
/* 805F2880  2C 17 14 00 */	cmpwi r23, 0x1400
/* 805F2884  40 81 00 0C */	ble lbl_805F2890
/* 805F2888  3A E0 14 00 */	li r23, 0x1400
/* 805F288C  48 00 00 10 */	b lbl_805F289C
lbl_805F2890:
/* 805F2890  2C 17 EC 00 */	cmpwi r23, -5120
/* 805F2894  40 80 00 08 */	bge lbl_805F289C
/* 805F2898  3A E0 EC 00 */	li r23, -5120
lbl_805F289C:
/* 805F289C  2C 16 14 00 */	cmpwi r22, 0x1400
/* 805F28A0  40 81 00 0C */	ble lbl_805F28AC
/* 805F28A4  3A C0 14 00 */	li r22, 0x1400
/* 805F28A8  48 00 00 10 */	b lbl_805F28B8
lbl_805F28AC:
/* 805F28AC  2C 16 EC 00 */	cmpwi r22, -5120
/* 805F28B0  40 80 00 08 */	bge lbl_805F28B8
/* 805F28B4  3A C0 EC 00 */	li r22, -5120
lbl_805F28B8:
/* 805F28B8  A8 7F 1A DE */	lha r3, 0x1ade(r31)
/* 805F28BC  2C 03 00 00 */	cmpwi r3, 0
/* 805F28C0  41 82 00 90 */	beq lbl_805F2950
/* 805F28C4  38 03 FF FF */	addi r0, r3, -1
/* 805F28C8  B0 1F 1A DE */	sth r0, 0x1ade(r31)
/* 805F28CC  A8 DF 07 1C */	lha r6, 0x71c(r31)
/* 805F28D0  1C 06 04 B0 */	mulli r0, r6, 0x4b0
/* 805F28D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805F28D8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805F28DC  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l
/* 805F28E0  7C 65 04 2E */	lfsx f3, r5, r0
/* 805F28E4  C0 5E 01 AC */	lfs f2, 0x1ac(r30)
/* 805F28E8  A8 1F 1A DE */	lha r0, 0x1ade(r31)
/* 805F28EC  C8 3E 01 B0 */	lfd f1, 0x1b0(r30)
/* 805F28F0  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 805F28F4  90 81 01 44 */	stw r4, 0x144(r1)
/* 805F28F8  3C 60 43 30 */	lis r3, 0x4330
/* 805F28FC  90 61 01 40 */	stw r3, 0x140(r1)
/* 805F2900  C8 01 01 40 */	lfd f0, 0x140(r1)
/* 805F2904  EC 00 08 28 */	fsubs f0, f0, f1
/* 805F2908  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805F290C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805F2910  FC 00 00 1E */	fctiwz f0, f0
/* 805F2914  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 805F2918  80 E1 01 4C */	lwz r7, 0x14c(r1)
/* 805F291C  1C 06 07 D0 */	mulli r0, r6, 0x7d0
/* 805F2920  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805F2924  7C 65 04 2E */	lfsx f3, r5, r0
/* 805F2928  90 81 01 54 */	stw r4, 0x154(r1)
/* 805F292C  90 61 01 50 */	stw r3, 0x150(r1)
/* 805F2930  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 805F2934  EC 00 08 28 */	fsubs f0, f0, f1
/* 805F2938  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805F293C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805F2940  FC 00 00 1E */	fctiwz f0, f0
/* 805F2944  D8 01 01 58 */	stfd f0, 0x158(r1)
/* 805F2948  82 61 01 5C */	lwz r19, 0x15c(r1)
/* 805F294C  48 00 00 0C */	b lbl_805F2958
lbl_805F2950:
/* 805F2950  38 E0 00 00 */	li r7, 0
/* 805F2954  3A 60 00 00 */	li r19, 0
lbl_805F2958:
/* 805F2958  38 7F 1A DC */	addi r3, r31, 0x1adc
/* 805F295C  7C 17 3A 14 */	add r0, r23, r7
/* 805F2960  7C 04 07 34 */	extsh r4, r0
/* 805F2964  38 A0 00 04 */	li r5, 4
/* 805F2968  38 C0 10 00 */	li r6, 0x1000
/* 805F296C  4B C7 DC 9C */	b cLib_addCalcAngleS2__FPssss
/* 805F2970  38 7F 1A DA */	addi r3, r31, 0x1ada
/* 805F2974  7C 16 9A 14 */	add r0, r22, r19
/* 805F2978  7C 04 07 34 */	extsh r4, r0
/* 805F297C  38 A0 00 04 */	li r5, 4
/* 805F2980  38 C0 10 00 */	li r6, 0x1000
/* 805F2984  4B C7 DC 84 */	b cLib_addCalcAngleS2__FPssss
/* 805F2988  C0 3F 06 C0 */	lfs f1, 0x6c0(r31)
/* 805F298C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805F2990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F2994  40 81 05 10 */	ble lbl_805F2EA4
/* 805F2998  38 61 00 D0 */	addi r3, r1, 0xd0
/* 805F299C  4B A8 52 CC */	b __ct__11dBgS_LinChkFv
/* 805F29A0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F29A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F29A8  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 805F29AC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805F29B0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805F29B4  80 84 00 00 */	lwz r4, 0(r4)
/* 805F29B8  4B D5 3A F8 */	b PSMTXCopy
/* 805F29BC  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 805F29C0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F29C4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F29C8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F29CC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F29D0  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805F29D4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F29D8  4B C7 E5 14 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F29DC  88 1F 06 F4 */	lbz r0, 0x6f4(r31)
/* 805F29E0  28 00 00 00 */	cmplwi r0, 0
/* 805F29E4  40 82 00 28 */	bne lbl_805F2A0C
/* 805F29E8  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 805F29EC  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805F29F0  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 805F29F4  D0 1F 06 D0 */	stfs f0, 0x6d0(r31)
/* 805F29F8  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 805F29FC  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 805F2A00  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F2A04  D0 1F 06 D0 */	stfs f0, 0x6d0(r31)
/* 805F2A08  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
lbl_805F2A0C:
/* 805F2A0C  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 805F2A10  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 805F2A14  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F2A18  FC 60 10 90 */	fmr f3, f2
/* 805F2A1C  4B C7 D0 20 */	b cLib_addCalc2__FPffff
/* 805F2A20  38 61 00 5C */	addi r3, r1, 0x5c
/* 805F2A24  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805F2A28  38 BF 06 CC */	addi r5, r31, 0x6cc
/* 805F2A2C  4B C7 41 08 */	b __mi__4cXyzCFRC3Vec
/* 805F2A30  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 805F2A34  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 805F2A38  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805F2A3C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F2A40  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 805F2A44  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 805F2A48  88 1F 06 F4 */	lbz r0, 0x6f4(r31)
/* 805F2A4C  28 00 00 00 */	cmplwi r0, 0
/* 805F2A50  40 82 00 10 */	bne lbl_805F2A60
/* 805F2A54  4B C7 4C 20 */	b cM_atan2s__Fff
/* 805F2A58  B0 7F 06 C8 */	sth r3, 0x6c8(r31)
/* 805F2A5C  48 00 00 98 */	b lbl_805F2AF4
lbl_805F2A60:
/* 805F2A60  EC 61 00 72 */	fmuls f3, f1, f1
/* 805F2A64  EC 02 00 B2 */	fmuls f0, f2, f2
/* 805F2A68  EC 63 00 2A */	fadds f3, f3, f0
/* 805F2A6C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F2A70  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805F2A74  40 81 00 0C */	ble lbl_805F2A80
/* 805F2A78  FC 00 18 34 */	frsqrte f0, f3
/* 805F2A7C  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_805F2A80:
/* 805F2A80  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 805F2A84  EF 83 00 28 */	fsubs f28, f3, f0
/* 805F2A88  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 805F2A8C  EF 9C 00 32 */	fmuls f28, f28, f0
/* 805F2A90  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F2A94  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 805F2A98  40 80 00 08 */	bge lbl_805F2AA0
/* 805F2A9C  FF 80 00 90 */	fmr f28, f0
lbl_805F2AA0:
/* 805F2AA0  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 805F2AA4  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 805F2AA8  40 81 00 08 */	ble lbl_805F2AB0
/* 805F2AAC  FF 80 00 90 */	fmr f28, f0
lbl_805F2AB0:
/* 805F2AB0  A8 1F 07 1C */	lha r0, 0x71c(r31)
/* 805F2AB4  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 805F2AB8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805F2ABC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805F2AC0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805F2AC4  7F A3 04 2E */	lfsx f29, r3, r0
/* 805F2AC8  4B C7 4B AC */	b cM_atan2s__Fff
/* 805F2ACC  EC 1C 07 72 */	fmuls f0, f28, f29
/* 805F2AD0  FC 00 00 1E */	fctiwz f0, f0
/* 805F2AD4  D8 01 01 58 */	stfd f0, 0x158(r1)
/* 805F2AD8  80 01 01 5C */	lwz r0, 0x15c(r1)
/* 805F2ADC  7C 00 1A 14 */	add r0, r0, r3
/* 805F2AE0  7C 04 07 34 */	extsh r4, r0
/* 805F2AE4  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 805F2AE8  38 A0 00 08 */	li r5, 8
/* 805F2AEC  38 C0 04 00 */	li r6, 0x400
/* 805F2AF0  4B C7 DB 18 */	b cLib_addCalcAngleS2__FPssss
lbl_805F2AF4:
/* 805F2AF4  38 00 00 01 */	li r0, 1
/* 805F2AF8  98 1F 06 F4 */	stb r0, 0x6f4(r31)
/* 805F2AFC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F2B00  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F2B04  80 63 00 00 */	lwz r3, 0(r3)
/* 805F2B08  A8 9F 06 C8 */	lha r4, 0x6c8(r31)
/* 805F2B0C  4B A1 98 D0 */	b mDoMtx_YrotS__FPA4_fs
/* 805F2B10  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F2B14  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F2B18  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F2B1C  C0 1F 06 C4 */	lfs f0, 0x6c4(r31)
/* 805F2B20  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F2B24  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805F2B28  38 81 00 8C */	addi r4, r1, 0x8c
/* 805F2B2C  4B C7 E3 C0 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F2B30  38 7F 06 CC */	addi r3, r31, 0x6cc
/* 805F2B34  38 81 00 8C */	addi r4, r1, 0x8c
/* 805F2B38  7C 65 1B 78 */	mr r5, r3
/* 805F2B3C  4B D5 45 54 */	b PSVECAdd
/* 805F2B40  38 61 00 50 */	addi r3, r1, 0x50
/* 805F2B44  38 9F 06 CC */	addi r4, r31, 0x6cc
/* 805F2B48  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 805F2B4C  4B C7 3F E8 */	b __mi__4cXyzCFRC3Vec
/* 805F2B50  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805F2B54  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F2B58  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 805F2B5C  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 805F2B60  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 805F2B64  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 805F2B68  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 805F2B6C  EC 21 00 2A */	fadds f1, f1, f0
/* 805F2B70  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 805F2B74  4B C7 4B 00 */	b cM_atan2s__Fff
/* 805F2B78  7C 03 00 D0 */	neg r0, r3
/* 805F2B7C  7C 13 07 34 */	extsh r19, r0
/* 805F2B80  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 805F2B84  EC 20 00 32 */	fmuls f1, f0, f0
/* 805F2B88  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 805F2B8C  EC 00 00 32 */	fmuls f0, f0, f0
/* 805F2B90  EC 41 00 2A */	fadds f2, f1, f0
/* 805F2B94  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F2B98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805F2B9C  40 81 00 0C */	ble lbl_805F2BA8
/* 805F2BA0  FC 00 10 34 */	frsqrte f0, f2
/* 805F2BA4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805F2BA8:
/* 805F2BA8  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 805F2BAC  4B C7 4A C8 */	b cM_atan2s__Fff
/* 805F2BB0  7C 74 07 34 */	extsh r20, r3
/* 805F2BB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F2BB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F2BBC  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 805F2BC0  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 805F2BC4  C0 61 00 AC */	lfs f3, 0xac(r1)
/* 805F2BC8  4B D5 3D 20 */	b PSMTXTrans
/* 805F2BCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F2BD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F2BD4  7E 64 9B 78 */	mr r4, r19
/* 805F2BD8  4B A1 97 C4 */	b mDoMtx_XrotM__FPA4_fs
/* 805F2BDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F2BE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F2BE4  7E 84 A3 78 */	mr r4, r20
/* 805F2BE8  4B A1 98 4C */	b mDoMtx_YrotM__FPA4_fs
/* 805F2BEC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F2BF0  FC 40 08 90 */	fmr f2, f1
/* 805F2BF4  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805F2BF8  C0 1F 06 C0 */	lfs f0, 0x6c0(r31)
/* 805F2BFC  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F2C00  4B A1 A2 38 */	b scaleM__14mDoMtx_stack_cFfff
/* 805F2C04  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 805F2C08  80 83 00 04 */	lwz r4, 4(r3)
/* 805F2C0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F2C10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F2C14  38 84 00 24 */	addi r4, r4, 0x24
/* 805F2C18  4B D5 38 98 */	b PSMTXCopy
/* 805F2C1C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805F2C20  FC 40 08 90 */	fmr f2, f1
/* 805F2C24  C0 7E 01 DC */	lfs f3, 0x1dc(r30)
/* 805F2C28  C0 1F 06 C0 */	lfs f0, 0x6c0(r31)
/* 805F2C2C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F2C30  4B A1 A1 6C */	b transM__14mDoMtx_stack_cFfff
/* 805F2C34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F2C38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F2C3C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805F2C40  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F2C44  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805F2C48  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F2C4C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805F2C50  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F2C54  38 61 00 D0 */	addi r3, r1, 0xd0
/* 805F2C58  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F2C5C  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 805F2C60  7F E6 FB 78 */	mr r6, r31
/* 805F2C64  4B A8 51 00 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805F2C68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F2C6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F2C70  3A 63 0F 38 */	addi r19, r3, 0xf38
/* 805F2C74  7E 63 9B 78 */	mr r3, r19
/* 805F2C78  38 81 00 D0 */	addi r4, r1, 0xd0
/* 805F2C7C  4B A8 17 38 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805F2C80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805F2C84  41 82 01 F0 */	beq lbl_805F2E74
/* 805F2C88  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 805F2C8C  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 805F2C90  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 805F2C94  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F2C98  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 805F2C9C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F2CA0  D0 3F 06 D8 */	stfs f1, 0x6d8(r31)
/* 805F2CA4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 805F2CA8  D0 1F 06 DC */	stfs f0, 0x6dc(r31)
/* 805F2CAC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 805F2CB0  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 805F2CB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070479@ha */
/* 805F2CB8  38 03 04 79 */	addi r0, r3, 0x0479 /* 0x00070479@l */
/* 805F2CBC  90 01 00 20 */	stw r0, 0x20(r1)
/* 805F2CC0  38 7F 06 84 */	addi r3, r31, 0x684
/* 805F2CC4  38 81 00 20 */	addi r4, r1, 0x20
/* 805F2CC8  38 A0 00 00 */	li r5, 0
/* 805F2CCC  38 C0 FF FF */	li r6, -1
/* 805F2CD0  81 9F 06 94 */	lwz r12, 0x694(r31)
/* 805F2CD4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F2CD8  7D 89 03 A6 */	mtctr r12
/* 805F2CDC  4E 80 04 21 */	bctrl 
/* 805F2CE0  3C 60 80 5F */	lis r3, __vt__8cM3dGPla@ha
/* 805F2CE4  38 03 47 70 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805F2CE8  90 01 00 CC */	stw r0, 0xcc(r1)
/* 805F2CEC  7E 63 9B 78 */	mr r3, r19
/* 805F2CF0  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805F2CF4  38 A1 00 BC */	addi r5, r1, 0xbc
/* 805F2CF8  4B A8 1A 4C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 805F2CFC  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 805F2D00  C0 41 00 C4 */	lfs f2, 0xc4(r1)
/* 805F2D04  4B C7 49 70 */	b cM_atan2s__Fff
/* 805F2D08  B0 61 00 26 */	sth r3, 0x26(r1)
/* 805F2D0C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 805F2D10  EC 20 00 32 */	fmuls f1, f0, f0
/* 805F2D14  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 805F2D18  EC 00 00 32 */	fmuls f0, f0, f0
/* 805F2D1C  EC 41 00 2A */	fadds f2, f1, f0
/* 805F2D20  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F2D24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805F2D28  40 81 00 0C */	ble lbl_805F2D34
/* 805F2D2C  FC 00 10 34 */	frsqrte f0, f2
/* 805F2D30  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805F2D34:
/* 805F2D34  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 805F2D38  4B C7 49 3C */	b cM_atan2s__Fff
/* 805F2D3C  7C 03 00 D0 */	neg r0, r3
/* 805F2D40  7C 03 07 34 */	extsh r3, r0
/* 805F2D44  B0 01 00 24 */	sth r0, 0x24(r1)
/* 805F2D48  38 03 40 00 */	addi r0, r3, 0x4000
/* 805F2D4C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 805F2D50  38 00 00 00 */	li r0, 0
/* 805F2D54  B0 01 00 28 */	sth r0, 0x28(r1)
/* 805F2D58  3B 00 00 00 */	li r24, 0
/* 805F2D5C  3A C0 00 00 */	li r22, 0
/* 805F2D60  3A E0 00 00 */	li r23, 0
/* 805F2D64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F2D68  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l
/* 805F2D6C  3C 60 80 5F */	lis r3, name_5641@ha
/* 805F2D70  3A 83 45 6C */	addi r20, r3, name_5641@l
lbl_805F2D74:
/* 805F2D74  80 75 5D 3C */	lwz r3, 0x5d3c(r21)
/* 805F2D78  38 00 00 FF */	li r0, 0xff
/* 805F2D7C  90 01 00 08 */	stw r0, 8(r1)
/* 805F2D80  38 80 00 00 */	li r4, 0
/* 805F2D84  90 81 00 0C */	stw r4, 0xc(r1)
/* 805F2D88  38 00 FF FF */	li r0, -1
/* 805F2D8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F2D90  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F2D94  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F2D98  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805F2D9C  3A 77 06 E4 */	addi r19, r23, 0x6e4
/* 805F2DA0  7C 9F 98 2E */	lwzx r4, r31, r19
/* 805F2DA4  38 A0 00 00 */	li r5, 0
/* 805F2DA8  7C D4 B2 2E */	lhzx r6, r20, r22
/* 805F2DAC  38 E1 00 B0 */	addi r7, r1, 0xb0
/* 805F2DB0  39 00 00 00 */	li r8, 0
/* 805F2DB4  39 21 00 24 */	addi r9, r1, 0x24
/* 805F2DB8  39 40 00 00 */	li r10, 0
/* 805F2DBC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F2DC0  4B A5 A7 0C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805F2DC4  7C 7F 99 2E */	stwx r3, r31, r19
/* 805F2DC8  3B 18 00 01 */	addi r24, r24, 1
/* 805F2DCC  2C 18 00 04 */	cmpwi r24, 4
/* 805F2DD0  3A D6 00 02 */	addi r22, r22, 2
/* 805F2DD4  3A F7 00 04 */	addi r23, r23, 4
/* 805F2DD8  41 80 FF 9C */	blt lbl_805F2D74
/* 805F2DDC  C0 5E 01 E0 */	lfs f2, 0x1e0(r30)
/* 805F2DE0  A8 1F 07 1C */	lha r0, 0x71c(r31)
/* 805F2DE4  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805F2DE8  C8 3E 01 B0 */	lfd f1, 0x1b0(r30)
/* 805F2DEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805F2DF0  90 01 01 5C */	stw r0, 0x15c(r1)
/* 805F2DF4  3C 00 43 30 */	lis r0, 0x4330
/* 805F2DF8  90 01 01 58 */	stw r0, 0x158(r1)
/* 805F2DFC  C8 01 01 58 */	lfd f0, 0x158(r1)
/* 805F2E00  EC 00 08 28 */	fsubs f0, f0, f1
/* 805F2E04  EF 82 00 32 */	fmuls f28, f2, f0
/* 805F2E08  38 61 00 44 */	addi r3, r1, 0x44
/* 805F2E0C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F2E10  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 805F2E14  4B C7 3D 20 */	b __mi__4cXyzCFRC3Vec
/* 805F2E18  38 61 00 38 */	addi r3, r1, 0x38
/* 805F2E1C  38 81 00 44 */	addi r4, r1, 0x44
/* 805F2E20  FC 20 E0 90 */	fmr f1, f28
/* 805F2E24  4B C7 3D 60 */	b __ml__4cXyzCFf
/* 805F2E28  38 61 00 2C */	addi r3, r1, 0x2c
/* 805F2E2C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 805F2E30  38 A1 00 38 */	addi r5, r1, 0x38
/* 805F2E34  4B C7 3C B0 */	b __pl__4cXyzCFRC3Vec
/* 805F2E38  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805F2E3C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F2E40  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805F2E44  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F2E48  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805F2E4C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F2E50  38 7F 1A 98 */	addi r3, r31, 0x1a98
/* 805F2E54  38 81 00 B0 */	addi r4, r1, 0xb0
/* 805F2E58  4B C7 C7 F0 */	b SetC__8cM3dGSphFRC4cXyz
/* 805F2E5C  7F 83 E3 78 */	mr r3, r28
/* 805F2E60  38 9F 19 74 */	addi r4, r31, 0x1974
/* 805F2E64  4B C7 1D 44 */	b Set__4cCcSFP8cCcD_Obj
/* 805F2E68  3C 60 80 5F */	lis r3, __vt__8cM3dGPla@ha
/* 805F2E6C  38 03 47 70 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805F2E70  90 01 00 CC */	stw r0, 0xcc(r1)
lbl_805F2E74:
/* 805F2E74  80 7F 06 BC */	lwz r3, 0x6bc(r31)
/* 805F2E78  4B A1 A5 B0 */	b play__14mDoExt_baseAnmFv
/* 805F2E7C  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 805F2E80  38 80 00 00 */	li r4, 0
/* 805F2E84  38 A0 00 00 */	li r5, 0
/* 805F2E88  38 C0 00 00 */	li r6, 0
/* 805F2E8C  4B A1 D7 3C */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 805F2E90  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 805F2E94  4B A1 D8 18 */	b modelCalc__14mDoExt_McaMorfFv
/* 805F2E98  38 61 00 D0 */	addi r3, r1, 0xd0
/* 805F2E9C  38 80 FF FF */	li r4, -1
/* 805F2EA0  4B A8 4E 3C */	b __dt__11dBgS_LinChkFv
lbl_805F2EA4:
/* 805F2EA4  80 1F 1C FC */	lwz r0, 0x1cfc(r31)
/* 805F2EA8  2C 00 00 07 */	cmpwi r0, 7
/* 805F2EAC  41 82 00 14 */	beq lbl_805F2EC0
/* 805F2EB0  C0 3F 06 C0 */	lfs f1, 0x6c0(r31)
/* 805F2EB4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805F2EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F2EBC  40 81 00 24 */	ble lbl_805F2EE0
lbl_805F2EC0:
/* 805F2EC0  38 00 00 07 */	li r0, 7
/* 805F2EC4  90 1F 1C FC */	stw r0, 0x1cfc(r31)
/* 805F2EC8  38 7F 1D 00 */	addi r3, r31, 0x1d00
/* 805F2ECC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F2ED0  C0 1F 06 C0 */	lfs f0, 0x6c0(r31)
/* 805F2ED4  EC 22 00 28 */	fsubs f1, f2, f0
/* 805F2ED8  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805F2EDC  4B C7 CB 60 */	b cLib_addCalc2__FPffff
lbl_805F2EE0:
/* 805F2EE0  7F E3 FB 78 */	mr r3, r31
/* 805F2EE4  4B FF D7 DD */	bl demo_camera__FP10b_gm_class
/* 805F2EE8  88 1F 1A D6 */	lbz r0, 0x1ad6(r31)
/* 805F2EEC  7C 00 07 75 */	extsb. r0, r0
/* 805F2EF0  41 82 00 1C */	beq lbl_805F2F0C
/* 805F2EF4  38 7F 1A D8 */	addi r3, r31, 0x1ad8
/* 805F2EF8  38 80 17 70 */	li r4, 0x1770
/* 805F2EFC  38 A0 00 04 */	li r5, 4
/* 805F2F00  38 C0 03 20 */	li r6, 0x320
/* 805F2F04  4B C7 D7 04 */	b cLib_addCalcAngleS2__FPssss
/* 805F2F08  48 00 00 18 */	b lbl_805F2F20
lbl_805F2F0C:
/* 805F2F0C  38 7F 1A D8 */	addi r3, r31, 0x1ad8
/* 805F2F10  38 80 F0 C4 */	li r4, -3900
/* 805F2F14  38 A0 00 01 */	li r5, 1
/* 805F2F18  38 C0 03 20 */	li r6, 0x320
/* 805F2F1C  4B C7 D6 EC */	b cLib_addCalcAngleS2__FPssss
lbl_805F2F20:
/* 805F2F20  C3 9E 00 00 */	lfs f28, 0(r30)
/* 805F2F24  C3 BE 00 28 */	lfs f29, 0x28(r30)
/* 805F2F28  80 1F 1C FC */	lwz r0, 0x1cfc(r31)
/* 805F2F2C  2C 00 00 00 */	cmpwi r0, 0
/* 805F2F30  40 82 00 18 */	bne lbl_805F2F48
/* 805F2F34  38 60 00 00 */	li r3, 0
/* 805F2F38  38 80 00 00 */	li r4, 0
/* 805F2F3C  C0 3F 1D 00 */	lfs f1, 0x1d00(r31)
/* 805F2F40  4B BB 58 CC */	b dKy_custom_colset__FUcUcf
/* 805F2F44  48 00 00 FC */	b lbl_805F3040
lbl_805F2F48:
/* 805F2F48  2C 00 00 01 */	cmpwi r0, 1
/* 805F2F4C  40 82 00 18 */	bne lbl_805F2F64
/* 805F2F50  38 60 00 00 */	li r3, 0
/* 805F2F54  38 80 00 05 */	li r4, 5
/* 805F2F58  C0 3F 1D 00 */	lfs f1, 0x1d00(r31)
/* 805F2F5C  4B BB 58 B0 */	b dKy_custom_colset__FUcUcf
/* 805F2F60  48 00 00 E0 */	b lbl_805F3040
lbl_805F2F64:
/* 805F2F64  2C 00 00 02 */	cmpwi r0, 2
/* 805F2F68  40 82 00 1C */	bne lbl_805F2F84
/* 805F2F6C  38 60 00 01 */	li r3, 1
/* 805F2F70  38 80 00 05 */	li r4, 5
/* 805F2F74  C0 3F 1D 00 */	lfs f1, 0x1d00(r31)
/* 805F2F78  4B BB 58 94 */	b dKy_custom_colset__FUcUcf
/* 805F2F7C  C3 9E 00 1C */	lfs f28, 0x1c(r30)
/* 805F2F80  48 00 00 C0 */	b lbl_805F3040
lbl_805F2F84:
/* 805F2F84  2C 00 00 03 */	cmpwi r0, 3
/* 805F2F88  40 82 00 24 */	bne lbl_805F2FAC
/* 805F2F8C  38 60 00 01 */	li r3, 1
/* 805F2F90  38 80 00 05 */	li r4, 5
/* 805F2F94  C0 3F 1D 00 */	lfs f1, 0x1d00(r31)
/* 805F2F98  4B BB 58 74 */	b dKy_custom_colset__FUcUcf
/* 805F2F9C  38 00 00 05 */	li r0, 5
/* 805F2FA0  98 1F 1C FA */	stb r0, 0x1cfa(r31)
/* 805F2FA4  C3 9E 00 18 */	lfs f28, 0x18(r30)
/* 805F2FA8  48 00 00 98 */	b lbl_805F3040
lbl_805F2FAC:
/* 805F2FAC  2C 00 00 04 */	cmpwi r0, 4
/* 805F2FB0  40 82 00 24 */	bne lbl_805F2FD4
/* 805F2FB4  38 60 00 01 */	li r3, 1
/* 805F2FB8  38 80 00 04 */	li r4, 4
/* 805F2FBC  C0 3F 1D 00 */	lfs f1, 0x1d00(r31)
/* 805F2FC0  4B BB 58 4C */	b dKy_custom_colset__FUcUcf
/* 805F2FC4  38 00 00 04 */	li r0, 4
/* 805F2FC8  98 1F 1C FA */	stb r0, 0x1cfa(r31)
/* 805F2FCC  C3 9E 00 18 */	lfs f28, 0x18(r30)
/* 805F2FD0  48 00 00 70 */	b lbl_805F3040
lbl_805F2FD4:
/* 805F2FD4  2C 00 00 05 */	cmpwi r0, 5
/* 805F2FD8  40 82 00 24 */	bne lbl_805F2FFC
/* 805F2FDC  38 60 00 01 */	li r3, 1
/* 805F2FE0  38 80 00 02 */	li r4, 2
/* 805F2FE4  C0 3F 1D 00 */	lfs f1, 0x1d00(r31)
/* 805F2FE8  4B BB 58 24 */	b dKy_custom_colset__FUcUcf
/* 805F2FEC  38 00 00 02 */	li r0, 2
/* 805F2FF0  98 1F 1C FA */	stb r0, 0x1cfa(r31)
/* 805F2FF4  C3 9E 00 18 */	lfs f28, 0x18(r30)
/* 805F2FF8  48 00 00 48 */	b lbl_805F3040
lbl_805F2FFC:
/* 805F2FFC  2C 00 00 06 */	cmpwi r0, 6
/* 805F3000  40 82 00 24 */	bne lbl_805F3024
/* 805F3004  38 60 00 01 */	li r3, 1
/* 805F3008  38 80 00 03 */	li r4, 3
/* 805F300C  C0 3F 1D 00 */	lfs f1, 0x1d00(r31)
/* 805F3010  4B BB 57 FC */	b dKy_custom_colset__FUcUcf
/* 805F3014  38 00 00 03 */	li r0, 3
/* 805F3018  98 1F 1C FA */	stb r0, 0x1cfa(r31)
/* 805F301C  C3 9E 00 18 */	lfs f28, 0x18(r30)
/* 805F3020  48 00 00 20 */	b lbl_805F3040
lbl_805F3024:
/* 805F3024  2C 00 00 07 */	cmpwi r0, 7
/* 805F3028  40 82 00 18 */	bne lbl_805F3040
/* 805F302C  38 60 00 06 */	li r3, 6
/* 805F3030  88 9F 1C FA */	lbz r4, 0x1cfa(r31)
/* 805F3034  C0 3F 1D 00 */	lfs f1, 0x1d00(r31)
/* 805F3038  4B BB 57 D4 */	b dKy_custom_colset__FUcUcf
/* 805F303C  C3 9E 00 18 */	lfs f28, 0x18(r30)
lbl_805F3040:
/* 805F3040  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F3044  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 805F3048  4C 41 13 82 */	cror 2, 1, 2
/* 805F304C  40 82 00 18 */	bne lbl_805F3064
/* 805F3050  38 7F 1D 00 */	addi r3, r31, 0x1d00
/* 805F3054  FC 20 E0 90 */	fmr f1, f28
/* 805F3058  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F305C  FC 60 E8 90 */	fmr f3, f29
/* 805F3060  4B C7 C9 DC */	b cLib_addCalc2__FPffff
lbl_805F3064:
/* 805F3064  38 60 00 01 */	li r3, 1
lbl_805F3068:
/* 805F3068  E3 E1 01 D8 */	psq_l f31, 472(r1), 0, 0 /* qr0 */
/* 805F306C  CB E1 01 D0 */	lfd f31, 0x1d0(r1)
/* 805F3070  E3 C1 01 C8 */	psq_l f30, 456(r1), 0, 0 /* qr0 */
/* 805F3074  CB C1 01 C0 */	lfd f30, 0x1c0(r1)
/* 805F3078  E3 A1 01 B8 */	psq_l f29, 440(r1), 0, 0 /* qr0 */
/* 805F307C  CB A1 01 B0 */	lfd f29, 0x1b0(r1)
/* 805F3080  E3 81 01 A8 */	psq_l f28, 424(r1), 0, 0 /* qr0 */
/* 805F3084  CB 81 01 A0 */	lfd f28, 0x1a0(r1)
/* 805F3088  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 805F308C  4B D6 F1 74 */	b _restgpr_19
/* 805F3090  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 805F3094  7C 08 03 A6 */	mtlr r0
/* 805F3098  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 805F309C  4E 80 00 20 */	blr 
