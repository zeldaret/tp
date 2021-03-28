lbl_80AD20A8:
/* 80AD20A8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80AD20AC  7C 08 02 A6 */	mflr r0
/* 80AD20B0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80AD20B4  39 61 00 90 */	addi r11, r1, 0x90
/* 80AD20B8  4B 89 01 1C */	b _savegpr_27
/* 80AD20BC  7C 7E 1B 78 */	mr r30, r3
/* 80AD20C0  3C 60 80 AD */	lis r3, m__20daNpc_Seira2_Param_c@ha
/* 80AD20C4  3B E3 4A 60 */	addi r31, r3, m__20daNpc_Seira2_Param_c@l
/* 80AD20C8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80AD20CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AD20D0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80AD20D4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AD20D8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80AD20DC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AD20E0  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AD20E4  38 80 00 00 */	li r4, 0
/* 80AD20E8  4B 67 5D 54 */	b calc__19daNpcT_DmgStagger_cFi
/* 80AD20EC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AD20F0  83 63 00 04 */	lwz r27, 4(r3)
/* 80AD20F4  7F C3 F3 78 */	mr r3, r30
/* 80AD20F8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AD20FC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AD2100  7D 89 03 A6 */	mtctr r12
/* 80AD2104  4E 80 04 21 */	bctrl 
/* 80AD2108  7C 7C 1B 78 */	mr r28, r3
/* 80AD210C  7F C3 F3 78 */	mr r3, r30
/* 80AD2110  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AD2114  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80AD2118  7D 89 03 A6 */	mtctr r12
/* 80AD211C  4E 80 04 21 */	bctrl 
/* 80AD2120  7C 7D 1B 78 */	mr r29, r3
/* 80AD2124  7F C3 F3 78 */	mr r3, r30
/* 80AD2128  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AD212C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AD2130  7D 89 03 A6 */	mtctr r12
/* 80AD2134  4E 80 04 21 */	bctrl 
/* 80AD2138  7C 67 1B 78 */	mr r7, r3
/* 80AD213C  39 5F 00 00 */	addi r10, r31, 0
/* 80AD2140  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80AD2144  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AD2148  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80AD214C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AD2150  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AD2154  7F C4 F3 78 */	mr r4, r30
/* 80AD2158  7F 65 DB 78 */	mr r5, r27
/* 80AD215C  38 C1 00 28 */	addi r6, r1, 0x28
/* 80AD2160  7F A8 EB 78 */	mr r8, r29
/* 80AD2164  7F 89 E3 78 */	mr r9, r28
/* 80AD2168  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80AD216C  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80AD2170  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80AD2174  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80AD2178  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80AD217C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80AD2180  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80AD2184  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80AD2188  39 40 00 00 */	li r10, 0
/* 80AD218C  4B 67 4B 4C */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80AD2190  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80AD2194  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80AD2198  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80AD219C  7C 03 00 50 */	subf r0, r3, r0
/* 80AD21A0  7C 00 07 34 */	extsh r0, r0
/* 80AD21A4  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80AD21A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AD21AC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80AD21B0  3C 00 43 30 */	lis r0, 0x4330
/* 80AD21B4  90 01 00 68 */	stw r0, 0x68(r1)
/* 80AD21B8  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80AD21BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AD21C0  EC 62 00 32 */	fmuls f3, f2, f0
/* 80AD21C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AD21C8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80AD21CC  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80AD21D0  4B 67 5A 68 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80AD21D4  7F C3 F3 78 */	mr r3, r30
/* 80AD21D8  4B 67 6F B8 */	b setMtx__8daNpcT_cFv
/* 80AD21DC  80 1E 0F 7C */	lwz r0, 0xf7c(r30)
/* 80AD21E0  28 00 00 00 */	cmplwi r0, 0
/* 80AD21E4  41 82 00 60 */	beq lbl_80AD2244
/* 80AD21E8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AD21EC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD21F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AD21F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AD21F8  38 63 03 60 */	addi r3, r3, 0x360
/* 80AD21FC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AD2200  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AD2204  4B 87 42 AC */	b PSMTXCopy
/* 80AD2208  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AD220C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AD2210  38 81 00 34 */	addi r4, r1, 0x34
/* 80AD2214  4B 87 42 9C */	b PSMTXCopy
/* 80AD2218  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80AD221C  80 83 00 04 */	lwz r4, 4(r3)
/* 80AD2220  38 61 00 34 */	addi r3, r1, 0x34
/* 80AD2224  38 84 00 24 */	addi r4, r4, 0x24
/* 80AD2228  4B 87 42 88 */	b PSMTXCopy
/* 80AD222C  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80AD2230  38 80 00 00 */	li r4, 0
/* 80AD2234  38 A0 00 00 */	li r5, 0
/* 80AD2238  4B 53 EE 78 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80AD223C  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80AD2240  4B 53 EF AC */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_80AD2244:
/* 80AD2244  7F C3 F3 78 */	mr r3, r30
/* 80AD2248  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AD224C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AD2250  7D 89 03 A6 */	mtctr r12
/* 80AD2254  4E 80 04 21 */	bctrl 
/* 80AD2258  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80AD225C  80 84 00 04 */	lwz r4, 4(r4)
/* 80AD2260  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80AD2264  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80AD2268  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80AD226C  7C 64 02 14 */	add r3, r4, r0
/* 80AD2270  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AD2274  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AD2278  4B 87 42 38 */	b PSMTXCopy
/* 80AD227C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AD2280  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AD2284  38 81 00 28 */	addi r4, r1, 0x28
/* 80AD2288  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AD228C  4B 87 4A E0 */	b PSMTXMultVec
/* 80AD2290  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AD2294  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AD2298  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AD229C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AD22A0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AD22A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AD22A8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AD22AC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AD22B0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80AD22B4  38 A0 00 00 */	li r5, 0
/* 80AD22B8  48 00 21 25 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80AD22BC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AD22C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AD22C4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AD22C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AD22CC  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AD22D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AD22D4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AD22D8  38 81 00 10 */	addi r4, r1, 0x10
/* 80AD22DC  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80AD22E0  38 C0 00 01 */	li r6, 1
/* 80AD22E4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80AD22E8  38 E0 00 00 */	li r7, 0
/* 80AD22EC  48 00 1F D5 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80AD22F0  7F C3 F3 78 */	mr r3, r30
/* 80AD22F4  48 00 06 51 */	bl checkStageIsSeira2sShop__14daNpc_Seira2_cFv
/* 80AD22F8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD22FC  41 82 00 6C */	beq lbl_80AD2368
/* 80AD2300  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80AD2304  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AD2308  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80AD230C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AD2310  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80AD2314  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AD2318  88 1E 10 C1 */	lbz r0, 0x10c1(r30)
/* 80AD231C  28 00 00 01 */	cmplwi r0, 1
/* 80AD2320  41 82 00 08 */	beq lbl_80AD2328
/* 80AD2324  40 82 00 14 */	bne lbl_80AD2338
lbl_80AD2328:
/* 80AD2328  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80AD232C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80AD2330  EC 01 00 2A */	fadds f0, f1, f0
/* 80AD2334  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_80AD2338:
/* 80AD2338  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AD233C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD2340  38 63 00 24 */	addi r3, r3, 0x24
/* 80AD2344  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AD2348  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AD234C  4B 87 41 64 */	b PSMTXCopy
/* 80AD2350  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AD2354  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AD2358  38 81 00 28 */	addi r4, r1, 0x28
/* 80AD235C  38 BE 05 50 */	addi r5, r30, 0x550
/* 80AD2360  4B 87 4A 0C */	b PSMTXMultVec
/* 80AD2364  48 00 00 2C */	b lbl_80AD2390
lbl_80AD2368:
/* 80AD2368  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AD236C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AD2370  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AD2374  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AD2378  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AD237C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80AD2380  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80AD2384  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AD2388  EC 01 00 2A */	fadds f0, f1, f0
/* 80AD238C  D0 1E 05 54 */	stfs f0, 0x554(r30)
lbl_80AD2390:
/* 80AD2390  39 61 00 90 */	addi r11, r1, 0x90
/* 80AD2394  4B 88 FE 8C */	b _restgpr_27
/* 80AD2398  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80AD239C  7C 08 03 A6 */	mtlr r0
/* 80AD23A0  38 21 00 90 */	addi r1, r1, 0x90
/* 80AD23A4  4E 80 00 20 */	blr 
