lbl_805D203C:
/* 805D203C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805D2040  7C 08 02 A6 */	mflr r0
/* 805D2044  90 01 00 94 */	stw r0, 0x94(r1)
/* 805D2048  39 61 00 90 */	addi r11, r1, 0x90
/* 805D204C  4B D9 01 7C */	b _savegpr_24
/* 805D2050  7C 7D 1B 78 */	mr r29, r3
/* 805D2054  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D2058  3B E3 CA 54 */	addi r31, r3, lit_3932@l
/* 805D205C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805D2060  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805D2064  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D2068  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D206C  38 7D 07 D4 */	addi r3, r29, 0x7d4
/* 805D2070  C0 3F 02 F0 */	lfs f1, 0x2f0(r31)
/* 805D2074  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 805D2078  C0 7F 02 B0 */	lfs f3, 0x2b0(r31)
/* 805D207C  4B C9 D9 C0 */	b cLib_addCalc2__FPffff
/* 805D2080  C0 1D 07 D4 */	lfs f0, 0x7d4(r29)
/* 805D2084  FC 00 00 1E */	fctiwz f0, f0
/* 805D2088  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 805D208C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805D2090  3C 60 80 5E */	lis r3, struct_805DDB10+0x2@ha
/* 805D2094  98 03 DB 12 */	stb r0, struct_805DDB10+0x2@l(r3)
/* 805D2098  3B C0 00 00 */	li r30, 0
/* 805D209C  3B 80 00 00 */	li r28, 0
/* 805D20A0  3B 60 00 00 */	li r27, 0
/* 805D20A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D20A8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 805D20AC  3C 60 80 5E */	lis r3, effId_7205@ha
/* 805D20B0  3B 23 D5 E8 */	addi r25, r3, effId_7205@l
lbl_805D20B4:
/* 805D20B4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 805D20B8  38 00 00 FF */	li r0, 0xff
/* 805D20BC  90 01 00 08 */	stw r0, 8(r1)
/* 805D20C0  38 80 00 00 */	li r4, 0
/* 805D20C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D20C8  38 00 FF FF */	li r0, -1
/* 805D20CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D20D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D20D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D20D8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805D20DC  3B 5B 2E AC */	addi r26, r27, 0x2eac
/* 805D20E0  7C 9D D0 2E */	lwzx r4, r29, r26
/* 805D20E4  38 A0 00 00 */	li r5, 0
/* 805D20E8  7C D9 E2 2E */	lhzx r6, r25, r28
/* 805D20EC  38 FD 07 54 */	addi r7, r29, 0x754
/* 805D20F0  39 00 00 00 */	li r8, 0
/* 805D20F4  39 3D 07 A8 */	addi r9, r29, 0x7a8
/* 805D20F8  39 41 00 50 */	addi r10, r1, 0x50
/* 805D20FC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805D2100  4B A7 B3 CC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D2104  7C 7D D1 2E */	stwx r3, r29, r26
/* 805D2108  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 805D210C  38 63 02 10 */	addi r3, r3, 0x210
/* 805D2110  7C 9D D0 2E */	lwzx r4, r29, r26
/* 805D2114  4B A7 98 04 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 805D2118  7C 7A 1B 79 */	or. r26, r3, r3
/* 805D211C  41 82 00 38 */	beq lbl_805D2154
/* 805D2120  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805D2124  80 63 00 04 */	lwz r3, 4(r3)
/* 805D2128  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805D212C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D2130  38 63 01 20 */	addi r3, r3, 0x120
/* 805D2134  38 9A 00 68 */	addi r4, r26, 0x68
/* 805D2138  38 BA 00 98 */	addi r5, r26, 0x98
/* 805D213C  38 DA 00 A4 */	addi r6, r26, 0xa4
/* 805D2140  4B CA E6 C8 */	b func_80280808
/* 805D2144  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 805D2148  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 805D214C  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 805D2150  D0 3A 00 B4 */	stfs f1, 0xb4(r26)
lbl_805D2154:
/* 805D2154  3B DE 00 01 */	addi r30, r30, 1
/* 805D2158  2C 1E 00 03 */	cmpwi r30, 3
/* 805D215C  3B 9C 00 02 */	addi r28, r28, 2
/* 805D2160  3B 7B 00 04 */	addi r27, r27, 4
/* 805D2164  41 80 FF 50 */	blt lbl_805D20B4
/* 805D2168  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080278@ha */
/* 805D216C  38 03 02 78 */	addi r0, r3, 0x0278 /* 0x00080278@l */
/* 805D2170  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D2174  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805D2178  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805D217C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D2180  38 81 00 20 */	addi r4, r1, 0x20
/* 805D2184  38 BD 07 54 */	addi r5, r29, 0x754
/* 805D2188  38 C0 00 00 */	li r6, 0
/* 805D218C  38 E0 00 00 */	li r7, 0
/* 805D2190  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805D2194  FC 40 08 90 */	fmr f2, f1
/* 805D2198  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 805D219C  FC 80 18 90 */	fmr f4, f3
/* 805D21A0  39 00 00 00 */	li r8, 0
/* 805D21A4  4B CD A3 68 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805D21A8  80 7D 08 30 */	lwz r3, 0x830(r29)
/* 805D21AC  38 03 00 01 */	addi r0, r3, 1
/* 805D21B0  90 1D 08 30 */	stw r0, 0x830(r29)
/* 805D21B4  80 1D 08 30 */	lwz r0, 0x830(r29)
/* 805D21B8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805D21BC  90 1D 08 30 */	stw r0, 0x830(r29)
/* 805D21C0  80 1D 08 30 */	lwz r0, 0x830(r29)
/* 805D21C4  2C 00 00 00 */	cmpwi r0, 0
/* 805D21C8  40 82 00 8C */	bne lbl_805D2254
/* 805D21CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 805D21D0  38 9D 07 00 */	addi r4, r29, 0x700
/* 805D21D4  38 BD 07 0C */	addi r5, r29, 0x70c
/* 805D21D8  4B C9 49 5C */	b __mi__4cXyzCFRC3Vec
/* 805D21DC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805D21E0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805D21E4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805D21E8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805D21EC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805D21F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805D21F4  38 61 00 44 */	addi r3, r1, 0x44
/* 805D21F8  4B C9 4F 58 */	b atan2sY_XZ__4cXyzCFv
/* 805D21FC  7C 03 00 D0 */	neg r0, r3
/* 805D2200  B0 01 00 24 */	sth r0, 0x24(r1)
/* 805D2204  38 61 00 44 */	addi r3, r1, 0x44
/* 805D2208  4B C9 4F 20 */	b atan2sX_Z__4cXyzCFv
/* 805D220C  B0 61 00 26 */	sth r3, 0x26(r1)
/* 805D2210  38 00 00 00 */	li r0, 0
/* 805D2214  B0 01 00 28 */	sth r0, 0x28(r1)
/* 805D2218  C0 1D 07 0C */	lfs f0, 0x70c(r29)
/* 805D221C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805D2220  C0 1D 07 10 */	lfs f0, 0x710(r29)
/* 805D2224  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805D2228  C0 1D 07 14 */	lfs f0, 0x714(r29)
/* 805D222C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805D2230  38 60 00 F6 */	li r3, 0xf6
/* 805D2234  38 80 00 01 */	li r4, 1
/* 805D2238  38 A1 00 38 */	addi r5, r1, 0x38
/* 805D223C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805D2240  7C 06 07 74 */	extsb r6, r0
/* 805D2244  38 E1 00 24 */	addi r7, r1, 0x24
/* 805D2248  39 00 00 00 */	li r8, 0
/* 805D224C  39 20 FF FF */	li r9, -1
/* 805D2250  4B A4 7B 48 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_805D2254:
/* 805D2254  39 61 00 90 */	addi r11, r1, 0x90
/* 805D2258  4B D8 FF BC */	b _restgpr_24
/* 805D225C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805D2260  7C 08 03 A6 */	mtlr r0
/* 805D2264  38 21 00 90 */	addi r1, r1, 0x90
/* 805D2268  4E 80 00 20 */	blr 
