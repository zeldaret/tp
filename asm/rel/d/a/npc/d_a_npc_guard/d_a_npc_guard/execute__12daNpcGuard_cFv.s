lbl_809F2044:
/* 809F2044  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809F2048  7C 08 02 A6 */	mflr r0
/* 809F204C  90 01 00 54 */	stw r0, 0x54(r1)
/* 809F2050  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 809F2054  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 809F2058  39 61 00 40 */	addi r11, r1, 0x40
/* 809F205C  4B 97 01 71 */	bl _savegpr_25
/* 809F2060  7C 7D 1B 78 */	mr r29, r3
/* 809F2064  3C 60 80 9F */	lis r3, lit_3900@ha /* 0x809F2C50@ha */
/* 809F2068  3B E3 2C 50 */	addi r31, r3, lit_3900@l /* 0x809F2C50@l */
/* 809F206C  80 1D 0A 98 */	lwz r0, 0xa98(r29)
/* 809F2070  2C 00 00 10 */	cmpwi r0, 0x10
/* 809F2074  40 80 00 1C */	bge lbl_809F2090
/* 809F2078  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F207C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F2080  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 809F2084  7C 63 02 14 */	add r3, r3, r0
/* 809F2088  C0 03 02 08 */	lfs f0, 0x208(r3)
/* 809F208C  48 00 00 18 */	b lbl_809F20A4
lbl_809F2090:
/* 809F2090  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F2094  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F2098  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 809F209C  7C 63 02 14 */	add r3, r3, r0
/* 809F20A0  C0 03 FF 38 */	lfs f0, -0xc8(r3)
lbl_809F20A4:
/* 809F20A4  D0 1D 08 40 */	stfs f0, 0x840(r29)
/* 809F20A8  38 7D 08 10 */	addi r3, r29, 0x810
/* 809F20AC  80 1D 0A 98 */	lwz r0, 0xa98(r29)
/* 809F20B0  2C 00 00 00 */	cmpwi r0, 0
/* 809F20B4  41 82 00 0C */	beq lbl_809F20C0
/* 809F20B8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 809F20BC  48 00 00 08 */	b lbl_809F20C4
lbl_809F20C0:
/* 809F20C0  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
lbl_809F20C4:
/* 809F20C4  4B 68 3E 7D */	bl SetWallR__12dBgS_AcchCirFf
/* 809F20C8  80 1D 0B 0C */	lwz r0, 0xb0c(r29)
/* 809F20CC  2C 00 00 06 */	cmpwi r0, 6
/* 809F20D0  41 82 00 9C */	beq lbl_809F216C
/* 809F20D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F20D8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F20DC  80 1B 5F 1C */	lwz r0, 0x5f1c(r27)
/* 809F20E0  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 809F20E4  41 82 00 4C */	beq lbl_809F2130
/* 809F20E8  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 809F20EC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809F20F0  81 8C 01 A8 */	lwz r12, 0x1a8(r12)
/* 809F20F4  7D 89 03 A6 */	mtctr r12
/* 809F20F8  4E 80 04 21 */	bctrl 
/* 809F20FC  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 809F2100  EF E0 08 2A */	fadds f31, f0, f1
/* 809F2104  7F A3 EB 78 */	mr r3, r29
/* 809F2108  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 809F210C  4B 62 88 59 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F2110  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 809F2114  4C 40 13 82 */	cror 2, 0, 2
/* 809F2118  40 82 00 10 */	bne lbl_809F2128
/* 809F211C  38 00 00 01 */	li r0, 1
/* 809F2120  98 1D 0D A2 */	stb r0, 0xda2(r29)
/* 809F2124  48 00 00 0C */	b lbl_809F2130
lbl_809F2128:
/* 809F2128  38 00 00 00 */	li r0, 0
/* 809F212C  98 1D 0D A2 */	stb r0, 0xda2(r29)
lbl_809F2130:
/* 809F2130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F2134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F2138  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809F213C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 809F2140  28 00 00 33 */	cmplwi r0, 0x33
/* 809F2144  41 82 00 10 */	beq lbl_809F2154
/* 809F2148  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809F214C  28 00 00 34 */	cmplwi r0, 0x34
/* 809F2150  40 82 00 1C */	bne lbl_809F216C
lbl_809F2154:
/* 809F2154  88 1D 0D A2 */	lbz r0, 0xda2(r29)
/* 809F2158  28 00 00 00 */	cmplwi r0, 0
/* 809F215C  41 82 00 10 */	beq lbl_809F216C
/* 809F2160  7F A3 EB 78 */	mr r3, r29
/* 809F2164  38 80 00 06 */	li r4, 6
/* 809F2168  4B FF DC B9 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809F216C:
/* 809F216C  7F A3 EB 78 */	mr r3, r29
/* 809F2170  4B FF DD 1D */	bl callExecute__12daNpcGuard_cFv
/* 809F2174  38 7D 0D 94 */	addi r3, r29, 0xd94
/* 809F2178  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 809F217C  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 809F2180  C0 7F 00 E4 */	lfs f3, 0xe4(r31)
/* 809F2184  4B 87 D8 B9 */	bl cLib_addCalc2__FPffff
/* 809F2188  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 809F218C  38 80 00 00 */	li r4, 0
/* 809F2190  38 A0 00 00 */	li r5, 0
/* 809F2194  4B 61 EF 1D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 809F2198  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 809F219C  80 63 00 04 */	lwz r3, 4(r3)
/* 809F21A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809F21A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809F21A8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809F21AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F21B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F21B4  4B 95 42 FD */	bl PSMTXCopy
/* 809F21B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F21BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F21C0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809F21C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 809F21C8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809F21CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809F21D0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809F21D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809F21D8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809F21DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809F21E0  38 7D 09 B0 */	addi r3, r29, 0x9b0
/* 809F21E4  38 81 00 08 */	addi r4, r1, 8
/* 809F21E8  4B 87 CF F5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809F21EC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 809F21F0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 809F21F4  40 82 01 54 */	bne lbl_809F2348
/* 809F21F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F21FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F2200  3B C3 23 3C */	addi r30, r3, 0x233c
/* 809F2204  7F C3 F3 78 */	mr r3, r30
/* 809F2208  38 9D 08 8C */	addi r4, r29, 0x88c
/* 809F220C  4B 87 29 9D */	bl Set__4cCcSFP8cCcD_Obj
/* 809F2210  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 809F2214  80 63 00 04 */	lwz r3, 4(r3)
/* 809F2218  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809F221C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809F2220  38 63 02 10 */	addi r3, r3, 0x210
/* 809F2224  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F2228  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F222C  4B 95 42 85 */	bl PSMTXCopy
/* 809F2230  80 9D 0A 98 */	lwz r4, 0xa98(r29)
/* 809F2234  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F2238  40 80 00 1C */	bge lbl_809F2254
/* 809F223C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F2240  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F2244  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F2248  7C 63 02 14 */	add r3, r3, r0
/* 809F224C  C0 63 01 E8 */	lfs f3, 0x1e8(r3)
/* 809F2250  48 00 00 18 */	b lbl_809F2268
lbl_809F2254:
/* 809F2254  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F2258  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F225C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F2260  7C 63 02 14 */	add r3, r3, r0
/* 809F2264  C0 63 FF 18 */	lfs f3, -0xe8(r3)
lbl_809F2268:
/* 809F2268  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F226C  40 80 00 1C */	bge lbl_809F2288
/* 809F2270  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F2274  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F2278  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F227C  7C 63 02 14 */	add r3, r3, r0
/* 809F2280  C0 43 01 E8 */	lfs f2, 0x1e8(r3)
/* 809F2284  48 00 00 18 */	b lbl_809F229C
lbl_809F2288:
/* 809F2288  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F228C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F2290  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F2294  7C 63 02 14 */	add r3, r3, r0
/* 809F2298  C0 43 FF 18 */	lfs f2, -0xe8(r3)
lbl_809F229C:
/* 809F229C  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F22A0  40 80 00 1C */	bge lbl_809F22BC
/* 809F22A4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F22A8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F22AC  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F22B0  7C 63 02 14 */	add r3, r3, r0
/* 809F22B4  C0 23 01 E8 */	lfs f1, 0x1e8(r3)
/* 809F22B8  48 00 00 18 */	b lbl_809F22D0
lbl_809F22BC:
/* 809F22BC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F22C0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F22C4  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F22C8  7C 63 02 14 */	add r3, r3, r0
/* 809F22CC  C0 23 FF 18 */	lfs f1, -0xe8(r3)
lbl_809F22D0:
/* 809F22D0  4B 61 AB 69 */	bl scaleM__14mDoMtx_stack_cFfff
/* 809F22D4  3B 40 00 00 */	li r26, 0
/* 809F22D8  7F 5C D3 78 */	mr r28, r26
/* 809F22DC  C3 FF 00 20 */	lfs f31, 0x20(r31)
/* 809F22E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F22E4  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_809F22E8:
/* 809F22E8  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 809F22EC  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 809F22F0  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 809F22F4  2C 1A 00 00 */	cmpwi r26, 0
/* 809F22F8  40 82 00 0C */	bne lbl_809F2304
/* 809F22FC  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 809F2300  48 00 00 08 */	b lbl_809F2308
lbl_809F2304:
/* 809F2304  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
lbl_809F2308:
/* 809F2308  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809F230C  7F 63 DB 78 */	mr r3, r27
/* 809F2310  38 81 00 14 */	addi r4, r1, 0x14
/* 809F2314  7C 85 23 78 */	mr r5, r4
/* 809F2318  4B 95 4A 55 */	bl PSMTXMultVec
/* 809F231C  7F 3D E2 14 */	add r25, r29, r28
/* 809F2320  38 79 0C 38 */	addi r3, r25, 0xc38
/* 809F2324  38 81 00 14 */	addi r4, r1, 0x14
/* 809F2328  4B 87 D3 21 */	bl SetC__8cM3dGSphFRC4cXyz
/* 809F232C  7F C3 F3 78 */	mr r3, r30
/* 809F2330  38 99 0B 14 */	addi r4, r25, 0xb14
/* 809F2334  4B 87 28 75 */	bl Set__4cCcSFP8cCcD_Obj
/* 809F2338  3B 5A 00 01 */	addi r26, r26, 1
/* 809F233C  2C 1A 00 02 */	cmpwi r26, 2
/* 809F2340  3B 9C 01 38 */	addi r28, r28, 0x138
/* 809F2344  41 80 FF A4 */	blt lbl_809F22E8
lbl_809F2348:
/* 809F2348  7F A3 EB 78 */	mr r3, r29
/* 809F234C  4B FF F4 85 */	bl setMtx__12daNpcGuard_cFv
/* 809F2350  38 60 00 01 */	li r3, 1
/* 809F2354  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 809F2358  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 809F235C  39 61 00 40 */	addi r11, r1, 0x40
/* 809F2360  4B 96 FE B9 */	bl _restgpr_25
/* 809F2364  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809F2368  7C 08 03 A6 */	mtlr r0
/* 809F236C  38 21 00 50 */	addi r1, r1, 0x50
/* 809F2370  4E 80 00 20 */	blr 
