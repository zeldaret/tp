lbl_8020E070:
/* 8020E070  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8020E074  7C 08 02 A6 */	mflr r0
/* 8020E078  90 01 00 34 */	stw r0, 0x34(r1)
/* 8020E07C  39 61 00 30 */	addi r11, r1, 0x30
/* 8020E080  48 15 41 5D */	bl _savegpr_29
/* 8020E084  7C 7D 1B 78 */	mr r29, r3
/* 8020E088  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020E08C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020E090  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 8020E094  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020E098  40 82 03 AC */	bne lbl_8020E444
/* 8020E09C  4B FF F8 65 */	bl isMapOpenCheck__11dMeterMap_cFv
/* 8020E0A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E0A4  40 82 00 64 */	bne lbl_8020E108
/* 8020E0A8  7F A3 EB 78 */	mr r3, r29
/* 8020E0AC  4B FF F5 ED */	bl isEventRunCheck__11dMeterMap_cFv
/* 8020E0B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E0B4  40 82 00 54 */	bne lbl_8020E108
/* 8020E0B8  4B FE BE F5 */	bl dMw_LEFT_TRIGGER__Fv
/* 8020E0BC  2C 03 00 00 */	cmpwi r3, 0
/* 8020E0C0  40 82 00 10 */	bne lbl_8020E0D0
/* 8020E0C4  4B FE BF 31 */	bl dMw_RIGHT_TRIGGER__Fv
/* 8020E0C8  2C 03 00 00 */	cmpwi r3, 0
/* 8020E0CC  41 82 03 78 */	beq lbl_8020E444
lbl_8020E0D0:
/* 8020E0D0  38 00 00 4A */	li r0, 0x4a
/* 8020E0D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8020E0D8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020E0DC  38 81 00 18 */	addi r4, r1, 0x18
/* 8020E0E0  38 A0 00 00 */	li r5, 0
/* 8020E0E4  38 C0 00 00 */	li r6, 0
/* 8020E0E8  38 E0 00 00 */	li r7, 0
/* 8020E0EC  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020E0F0  FC 40 08 90 */	fmr f2, f1
/* 8020E0F4  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020E0F8  FC 80 18 90 */	fmr f4, f3
/* 8020E0FC  39 00 00 00 */	li r8, 0
/* 8020E100  48 09 D8 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020E104  48 00 03 40 */	b lbl_8020E444
lbl_8020E108:
/* 8020E108  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020E10C  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
/* 8020E110  88 1E 00 C1 */	lbz r0, 0xc1(r30)
/* 8020E114  28 00 00 01 */	cmplwi r0, 1
/* 8020E118  41 82 00 2C */	beq lbl_8020E144
/* 8020E11C  28 00 00 07 */	cmplwi r0, 7
/* 8020E120  41 82 00 24 */	beq lbl_8020E144
/* 8020E124  28 00 00 03 */	cmplwi r0, 3
/* 8020E128  41 82 00 1C */	beq lbl_8020E144
/* 8020E12C  28 00 00 05 */	cmplwi r0, 5
/* 8020E130  41 82 00 14 */	beq lbl_8020E144
/* 8020E134  28 00 00 02 */	cmplwi r0, 2
/* 8020E138  41 82 00 0C */	beq lbl_8020E144
/* 8020E13C  28 00 00 06 */	cmplwi r0, 6
/* 8020E140  40 82 01 4C */	bne lbl_8020E28C
lbl_8020E144:
/* 8020E144  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020E148  3B E3 01 88 */	addi r31, r3, g_meter2_info@l
/* 8020E14C  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 8020E150  28 00 00 00 */	cmplwi r0, 0
/* 8020E154  40 82 00 58 */	bne lbl_8020E1AC
/* 8020E158  88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 8020E15C  28 00 00 00 */	cmplwi r0, 0
/* 8020E160  40 82 00 4C */	bne lbl_8020E1AC
/* 8020E164  7F A3 EB 78 */	mr r3, r29
/* 8020E168  4B FF F7 0D */	bl setDispPosInsideFlg_SE_On__11dMeterMap_cFv
/* 8020E16C  38 00 00 B8 */	li r0, 0xb8
/* 8020E170  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020E174  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020E178  38 81 00 14 */	addi r4, r1, 0x14
/* 8020E17C  38 A0 00 00 */	li r5, 0
/* 8020E180  38 C0 00 00 */	li r6, 0
/* 8020E184  38 E0 00 00 */	li r7, 0
/* 8020E188  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020E18C  FC 40 08 90 */	fmr f2, f1
/* 8020E190  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020E194  FC 80 18 90 */	fmr f4, f3
/* 8020E198  39 00 00 00 */	li r8, 0
/* 8020E19C  48 09 D7 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020E1A0  48 01 08 31 */	bl dMeter2Info_set2DVibration__Fv
/* 8020E1A4  38 00 00 01 */	li r0, 1
/* 8020E1A8  98 1F 00 BF */	stb r0, 0xbf(r31)
lbl_8020E1AC:
/* 8020E1AC  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 8020E1B0  28 00 00 01 */	cmplwi r0, 1
/* 8020E1B4  40 82 00 CC */	bne lbl_8020E280
/* 8020E1B8  88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 8020E1BC  28 00 00 00 */	cmplwi r0, 0
/* 8020E1C0  41 82 00 C0 */	beq lbl_8020E280
/* 8020E1C4  48 00 04 5D */	bl isFmapScreen__11dMeterMap_cFv
/* 8020E1C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E1CC  41 82 00 B4 */	beq lbl_8020E280
/* 8020E1D0  88 1E 00 C1 */	lbz r0, 0xc1(r30)
/* 8020E1D4  28 00 00 07 */	cmplwi r0, 7
/* 8020E1D8  41 81 00 60 */	bgt lbl_8020E238
/* 8020E1DC  3C 60 80 3C */	lis r3, lit_4516@ha
/* 8020E1E0  38 63 F2 D8 */	addi r3, r3, lit_4516@l
/* 8020E1E4  54 00 10 3A */	slwi r0, r0, 2
/* 8020E1E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8020E1EC  7C 09 03 A6 */	mtctr r0
/* 8020E1F0  4E 80 04 20 */	bctr 
/* 8020E1F4  38 00 00 04 */	li r0, 4
/* 8020E1F8  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020E1FC  48 00 00 3C */	b lbl_8020E238
/* 8020E200  38 00 00 07 */	li r0, 7
/* 8020E204  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020E208  48 00 00 30 */	b lbl_8020E238
/* 8020E20C  38 00 00 08 */	li r0, 8
/* 8020E210  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020E214  48 00 00 24 */	b lbl_8020E238
/* 8020E218  38 00 00 09 */	li r0, 9
/* 8020E21C  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020E220  48 00 00 18 */	b lbl_8020E238
/* 8020E224  38 00 00 05 */	li r0, 5
/* 8020E228  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020E22C  48 00 00 0C */	b lbl_8020E238
/* 8020E230  38 00 00 03 */	li r0, 3
/* 8020E234  98 1F 00 BF */	stb r0, 0xbf(r31)
lbl_8020E238:
/* 8020E238  38 00 04 00 */	li r0, 0x400
/* 8020E23C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020E240  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020E244  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 8020E248  38 00 00 B8 */	li r0, 0xb8
/* 8020E24C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8020E250  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020E254  38 81 00 10 */	addi r4, r1, 0x10
/* 8020E258  38 A0 00 00 */	li r5, 0
/* 8020E25C  38 C0 00 00 */	li r6, 0
/* 8020E260  38 E0 00 00 */	li r7, 0
/* 8020E264  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020E268  FC 40 08 90 */	fmr f2, f1
/* 8020E26C  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020E270  FC 80 18 90 */	fmr f4, f3
/* 8020E274  39 00 00 00 */	li r8, 0
/* 8020E278  48 09 D7 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020E27C  48 01 07 55 */	bl dMeter2Info_set2DVibration__Fv
lbl_8020E280:
/* 8020E280  38 00 00 00 */	li r0, 0
/* 8020E284  98 1E 00 C1 */	stb r0, 0xc1(r30)
/* 8020E288  48 00 01 18 */	b lbl_8020E3A0
lbl_8020E28C:
/* 8020E28C  28 00 00 04 */	cmplwi r0, 4
/* 8020E290  40 82 00 EC */	bne lbl_8020E37C
/* 8020E294  38 00 00 00 */	li r0, 0
/* 8020E298  98 1E 00 C1 */	stb r0, 0xc1(r30)
/* 8020E29C  48 00 04 71 */	bl isDmapScreen__11dMeterMap_cFv
/* 8020E2A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E2A4  41 82 00 FC */	beq lbl_8020E3A0
/* 8020E2A8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020E2AC  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
/* 8020E2B0  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 8020E2B4  28 00 00 00 */	cmplwi r0, 0
/* 8020E2B8  40 82 00 58 */	bne lbl_8020E310
/* 8020E2BC  88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 8020E2C0  28 00 00 00 */	cmplwi r0, 0
/* 8020E2C4  40 82 00 4C */	bne lbl_8020E310
/* 8020E2C8  7F A3 EB 78 */	mr r3, r29
/* 8020E2CC  4B FF F5 A9 */	bl setDispPosInsideFlg_SE_On__11dMeterMap_cFv
/* 8020E2D0  38 00 00 B8 */	li r0, 0xb8
/* 8020E2D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020E2D8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020E2DC  38 81 00 0C */	addi r4, r1, 0xc
/* 8020E2E0  38 A0 00 00 */	li r5, 0
/* 8020E2E4  38 C0 00 00 */	li r6, 0
/* 8020E2E8  38 E0 00 00 */	li r7, 0
/* 8020E2EC  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020E2F0  FC 40 08 90 */	fmr f2, f1
/* 8020E2F4  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020E2F8  FC 80 18 90 */	fmr f4, f3
/* 8020E2FC  39 00 00 00 */	li r8, 0
/* 8020E300  48 09 D6 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020E304  48 01 06 CD */	bl dMeter2Info_set2DVibration__Fv
/* 8020E308  38 00 00 01 */	li r0, 1
/* 8020E30C  98 1E 00 BF */	stb r0, 0xbf(r30)
lbl_8020E310:
/* 8020E310  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 8020E314  28 00 00 01 */	cmplwi r0, 1
/* 8020E318  40 82 00 88 */	bne lbl_8020E3A0
/* 8020E31C  88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 8020E320  28 00 00 00 */	cmplwi r0, 0
/* 8020E324  41 82 00 7C */	beq lbl_8020E3A0
/* 8020E328  38 00 00 06 */	li r0, 6
/* 8020E32C  98 1E 00 BF */	stb r0, 0xbf(r30)
/* 8020E330  38 00 04 00 */	li r0, 0x400
/* 8020E334  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020E338  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020E33C  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 8020E340  38 00 00 B8 */	li r0, 0xb8
/* 8020E344  90 01 00 08 */	stw r0, 8(r1)
/* 8020E348  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020E34C  38 81 00 08 */	addi r4, r1, 8
/* 8020E350  38 A0 00 00 */	li r5, 0
/* 8020E354  38 C0 00 00 */	li r6, 0
/* 8020E358  38 E0 00 00 */	li r7, 0
/* 8020E35C  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020E360  FC 40 08 90 */	fmr f2, f1
/* 8020E364  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020E368  FC 80 18 90 */	fmr f4, f3
/* 8020E36C  39 00 00 00 */	li r8, 0
/* 8020E370  48 09 D6 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020E374  48 01 06 5D */	bl dMeter2Info_set2DVibration__Fv
/* 8020E378  48 00 00 28 */	b lbl_8020E3A0
lbl_8020E37C:
/* 8020E37C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 8020E380  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 8020E384  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8020E388  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8020E38C  40 82 00 14 */	bne lbl_8020E3A0
/* 8020E390  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8020E394  40 82 00 0C */	bne lbl_8020E3A0
/* 8020E398  7F A3 EB 78 */	mr r3, r29
/* 8020E39C  48 00 06 31 */	bl keyCheck__11dMeterMap_cFv
lbl_8020E3A0:
/* 8020E3A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020E3A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020E3A8  3B C3 09 58 */	addi r30, r3, 0x958
/* 8020E3AC  7F C3 F3 78 */	mr r3, r30
/* 8020E3B0  38 80 00 01 */	li r4, 1
/* 8020E3B4  4B E2 65 81 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8020E3B8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8020E3BC  7C 00 18 00 */	cmpw r0, r3
/* 8020E3C0  41 82 00 38 */	beq lbl_8020E3F8
/* 8020E3C4  88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 8020E3C8  28 00 00 00 */	cmplwi r0, 0
/* 8020E3CC  40 82 00 1C */	bne lbl_8020E3E8
/* 8020E3D0  7F A3 EB 78 */	mr r3, r29
/* 8020E3D4  4B FF F4 A1 */	bl setDispPosInsideFlg_SE_On__11dMeterMap_cFv
/* 8020E3D8  38 00 00 01 */	li r0, 1
/* 8020E3DC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020E3E0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020E3E4  98 03 00 BF */	stb r0, 0xbf(r3)
lbl_8020E3E8:
/* 8020E3E8  7F C3 F3 78 */	mr r3, r30
/* 8020E3EC  38 80 00 01 */	li r4, 1
/* 8020E3F0  4B E2 65 45 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8020E3F4  90 7D 00 0C */	stw r3, 0xc(r29)
lbl_8020E3F8:
/* 8020E3F8  7F C3 F3 78 */	mr r3, r30
/* 8020E3FC  38 80 00 00 */	li r4, 0
/* 8020E400  4B E2 65 35 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8020E404  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8020E408  7C 00 18 00 */	cmpw r0, r3
/* 8020E40C  41 82 00 38 */	beq lbl_8020E444
/* 8020E410  88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 8020E414  28 00 00 00 */	cmplwi r0, 0
/* 8020E418  40 82 00 1C */	bne lbl_8020E434
/* 8020E41C  7F A3 EB 78 */	mr r3, r29
/* 8020E420  4B FF F4 55 */	bl setDispPosInsideFlg_SE_On__11dMeterMap_cFv
/* 8020E424  38 00 00 01 */	li r0, 1
/* 8020E428  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020E42C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020E430  98 03 00 BF */	stb r0, 0xbf(r3)
lbl_8020E434:
/* 8020E434  7F C3 F3 78 */	mr r3, r30
/* 8020E438  38 80 00 00 */	li r4, 0
/* 8020E43C  4B E2 64 F9 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8020E440  90 7D 00 10 */	stw r3, 0x10(r29)
lbl_8020E444:
/* 8020E444  39 61 00 30 */	addi r11, r1, 0x30
/* 8020E448  48 15 3D E1 */	bl _restgpr_29
/* 8020E44C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8020E450  7C 08 03 A6 */	mtlr r0
/* 8020E454  38 21 00 30 */	addi r1, r1, 0x30
/* 8020E458  4E 80 00 20 */	blr 
