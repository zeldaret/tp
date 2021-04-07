lbl_8023E0F4:
/* 8023E0F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8023E0F8  7C 08 02 A6 */	mflr r0
/* 8023E0FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8023E100  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8023E104  7C 7F 1B 78 */	mr r31, r3
/* 8023E108  A8 63 00 5E */	lha r3, 0x5e(r3)
/* 8023E10C  2C 03 00 00 */	cmpwi r3, 0
/* 8023E110  40 81 00 10 */	ble lbl_8023E120
/* 8023E114  38 03 FF FF */	addi r0, r3, -1
/* 8023E118  B0 1F 00 5E */	sth r0, 0x5e(r31)
/* 8023E11C  48 00 02 D8 */	b lbl_8023E3F4
lbl_8023E120:
/* 8023E120  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8023E124  4B DF 40 79 */	bl checkTrigger__9STControlFv
/* 8023E128  7F E3 FB 78 */	mr r3, r31
/* 8023E12C  48 00 05 15 */	bl checkTriggerA__17dMsgScrnExplain_cFv
/* 8023E130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023E134  41 82 01 1C */	beq lbl_8023E250
/* 8023E138  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 8023E13C  28 00 00 02 */	cmplwi r0, 2
/* 8023E140  40 82 00 90 */	bne lbl_8023E1D0
/* 8023E144  88 1F 00 61 */	lbz r0, 0x61(r31)
/* 8023E148  28 00 00 00 */	cmplwi r0, 0
/* 8023E14C  40 82 00 4C */	bne lbl_8023E198
/* 8023E150  38 00 00 03 */	li r0, 3
/* 8023E154  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8023E158  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8023E15C  98 03 00 C0 */	stb r0, 0xc0(r3)
/* 8023E160  38 00 00 48 */	li r0, 0x48
/* 8023E164  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023E168  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023E16C  38 81 00 24 */	addi r4, r1, 0x24
/* 8023E170  38 A0 00 00 */	li r5, 0
/* 8023E174  38 C0 00 00 */	li r6, 0
/* 8023E178  38 E0 00 00 */	li r7, 0
/* 8023E17C  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023E180  FC 40 08 90 */	fmr f2, f1
/* 8023E184  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023E188  FC 80 18 90 */	fmr f4, f3
/* 8023E18C  39 00 00 00 */	li r8, 0
/* 8023E190  48 06 D7 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8023E194  48 00 00 7C */	b lbl_8023E210
lbl_8023E198:
/* 8023E198  38 00 00 6E */	li r0, 0x6e
/* 8023E19C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8023E1A0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023E1A4  38 81 00 20 */	addi r4, r1, 0x20
/* 8023E1A8  38 A0 00 00 */	li r5, 0
/* 8023E1AC  38 C0 00 00 */	li r6, 0
/* 8023E1B0  38 E0 00 00 */	li r7, 0
/* 8023E1B4  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023E1B8  FC 40 08 90 */	fmr f2, f1
/* 8023E1BC  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023E1C0  FC 80 18 90 */	fmr f4, f3
/* 8023E1C4  39 00 00 00 */	li r8, 0
/* 8023E1C8  48 06 D7 BD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8023E1CC  48 00 00 44 */	b lbl_8023E210
lbl_8023E1D0:
/* 8023E1D0  88 1F 00 66 */	lbz r0, 0x66(r31)
/* 8023E1D4  28 00 00 00 */	cmplwi r0, 0
/* 8023E1D8  40 82 00 38 */	bne lbl_8023E210
/* 8023E1DC  38 00 00 64 */	li r0, 0x64
/* 8023E1E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8023E1E4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023E1E8  38 81 00 10 */	addi r4, r1, 0x10
/* 8023E1EC  38 A0 00 00 */	li r5, 0
/* 8023E1F0  38 C0 00 00 */	li r6, 0
/* 8023E1F4  38 E0 00 00 */	li r7, 0
/* 8023E1F8  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023E1FC  FC 40 08 90 */	fmr f2, f1
/* 8023E200  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023E204  FC 80 18 90 */	fmr f4, f3
/* 8023E208  39 00 00 00 */	li r8, 0
/* 8023E20C  48 06 D7 79 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8023E210:
/* 8023E210  38 00 00 05 */	li r0, 5
/* 8023E214  98 1F 00 60 */	stb r0, 0x60(r31)
/* 8023E218  38 00 00 52 */	li r0, 0x52
/* 8023E21C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023E220  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023E224  38 81 00 0C */	addi r4, r1, 0xc
/* 8023E228  38 A0 00 00 */	li r5, 0
/* 8023E22C  38 C0 00 00 */	li r6, 0
/* 8023E230  38 E0 00 00 */	li r7, 0
/* 8023E234  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023E238  FC 40 08 90 */	fmr f2, f1
/* 8023E23C  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023E240  FC 80 18 90 */	fmr f4, f3
/* 8023E244  39 00 00 00 */	li r8, 0
/* 8023E248  48 06 D7 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8023E24C  48 00 01 A8 */	b lbl_8023E3F4
lbl_8023E250:
/* 8023E250  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 8023E254  28 00 00 00 */	cmplwi r0, 0
/* 8023E258  41 82 00 C8 */	beq lbl_8023E320
/* 8023E25C  7F E3 FB 78 */	mr r3, r31
/* 8023E260  48 00 03 F5 */	bl checkTriggerB__17dMsgScrnExplain_cFv
/* 8023E264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023E268  40 82 00 10 */	bne lbl_8023E278
/* 8023E26C  88 1F 00 65 */	lbz r0, 0x65(r31)
/* 8023E270  28 00 00 00 */	cmplwi r0, 0
/* 8023E274  41 82 00 AC */	beq lbl_8023E320
lbl_8023E278:
/* 8023E278  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 8023E27C  28 00 00 02 */	cmplwi r0, 2
/* 8023E280  40 82 00 3C */	bne lbl_8023E2BC
/* 8023E284  38 00 00 6E */	li r0, 0x6e
/* 8023E288  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8023E28C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023E290  38 81 00 1C */	addi r4, r1, 0x1c
/* 8023E294  38 A0 00 00 */	li r5, 0
/* 8023E298  38 C0 00 00 */	li r6, 0
/* 8023E29C  38 E0 00 00 */	li r7, 0
/* 8023E2A0  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023E2A4  FC 40 08 90 */	fmr f2, f1
/* 8023E2A8  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023E2AC  FC 80 18 90 */	fmr f4, f3
/* 8023E2B0  39 00 00 00 */	li r8, 0
/* 8023E2B4  48 06 D6 D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8023E2B8  48 00 00 28 */	b lbl_8023E2E0
lbl_8023E2BC:
/* 8023E2BC  28 00 00 01 */	cmplwi r0, 1
/* 8023E2C0  40 82 00 20 */	bne lbl_8023E2E0
/* 8023E2C4  88 1F 00 63 */	lbz r0, 0x63(r31)
/* 8023E2C8  28 00 00 FF */	cmplwi r0, 0xff
/* 8023E2CC  41 82 00 0C */	beq lbl_8023E2D8
/* 8023E2D0  98 1F 00 61 */	stb r0, 0x61(r31)
/* 8023E2D4  48 00 00 0C */	b lbl_8023E2E0
lbl_8023E2D8:
/* 8023E2D8  38 00 00 FF */	li r0, 0xff
/* 8023E2DC  98 1F 00 61 */	stb r0, 0x61(r31)
lbl_8023E2E0:
/* 8023E2E0  38 00 00 05 */	li r0, 5
/* 8023E2E4  98 1F 00 60 */	stb r0, 0x60(r31)
/* 8023E2E8  38 00 00 52 */	li r0, 0x52
/* 8023E2EC  90 01 00 08 */	stw r0, 8(r1)
/* 8023E2F0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023E2F4  38 81 00 08 */	addi r4, r1, 8
/* 8023E2F8  38 A0 00 00 */	li r5, 0
/* 8023E2FC  38 C0 00 00 */	li r6, 0
/* 8023E300  38 E0 00 00 */	li r7, 0
/* 8023E304  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023E308  FC 40 08 90 */	fmr f2, f1
/* 8023E30C  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023E310  FC 80 18 90 */	fmr f4, f3
/* 8023E314  39 00 00 00 */	li r8, 0
/* 8023E318  48 06 D6 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8023E31C  48 00 00 D8 */	b lbl_8023E3F4
lbl_8023E320:
/* 8023E320  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023E324  4B FF B9 41 */	bl isSelect__17dMsgScrn3Select_cFv
/* 8023E328  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023E32C  41 82 00 60 */	beq lbl_8023E38C
/* 8023E330  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8023E334  4B DF 41 F1 */	bl checkUpTrigger__9STControlFv
/* 8023E338  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023E33C  41 82 00 50 */	beq lbl_8023E38C
/* 8023E340  88 1F 00 61 */	lbz r0, 0x61(r31)
/* 8023E344  28 00 00 01 */	cmplwi r0, 1
/* 8023E348  40 82 00 AC */	bne lbl_8023E3F4
/* 8023E34C  38 00 00 00 */	li r0, 0
/* 8023E350  98 1F 00 61 */	stb r0, 0x61(r31)
/* 8023E354  38 00 00 A0 */	li r0, 0xa0
/* 8023E358  90 01 00 18 */	stw r0, 0x18(r1)
/* 8023E35C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023E360  38 81 00 18 */	addi r4, r1, 0x18
/* 8023E364  38 A0 00 00 */	li r5, 0
/* 8023E368  38 C0 00 00 */	li r6, 0
/* 8023E36C  38 E0 00 00 */	li r7, 0
/* 8023E370  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023E374  FC 40 08 90 */	fmr f2, f1
/* 8023E378  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023E37C  FC 80 18 90 */	fmr f4, f3
/* 8023E380  39 00 00 00 */	li r8, 0
/* 8023E384  48 06 D6 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8023E388  48 00 00 6C */	b lbl_8023E3F4
lbl_8023E38C:
/* 8023E38C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023E390  4B FF B8 D5 */	bl isSelect__17dMsgScrn3Select_cFv
/* 8023E394  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023E398  41 82 00 5C */	beq lbl_8023E3F4
/* 8023E39C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8023E3A0  4B DF 42 01 */	bl checkDownTrigger__9STControlFv
/* 8023E3A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023E3A8  41 82 00 4C */	beq lbl_8023E3F4
/* 8023E3AC  88 1F 00 61 */	lbz r0, 0x61(r31)
/* 8023E3B0  28 00 00 00 */	cmplwi r0, 0
/* 8023E3B4  40 82 00 40 */	bne lbl_8023E3F4
/* 8023E3B8  38 00 00 01 */	li r0, 1
/* 8023E3BC  98 1F 00 61 */	stb r0, 0x61(r31)
/* 8023E3C0  38 00 00 A0 */	li r0, 0xa0
/* 8023E3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023E3C8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023E3CC  38 81 00 14 */	addi r4, r1, 0x14
/* 8023E3D0  38 A0 00 00 */	li r5, 0
/* 8023E3D4  38 C0 00 00 */	li r6, 0
/* 8023E3D8  38 E0 00 00 */	li r7, 0
/* 8023E3DC  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023E3E0  FC 40 08 90 */	fmr f2, f1
/* 8023E3E4  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023E3E8  FC 80 18 90 */	fmr f4, f3
/* 8023E3EC  39 00 00 00 */	li r8, 0
/* 8023E3F0  48 06 D5 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8023E3F4:
/* 8023E3F4  88 1F 00 60 */	lbz r0, 0x60(r31)
/* 8023E3F8  28 00 00 04 */	cmplwi r0, 4
/* 8023E3FC  40 82 00 24 */	bne lbl_8023E420
/* 8023E400  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023E404  38 80 00 02 */	li r4, 2
/* 8023E408  88 BF 00 61 */	lbz r5, 0x61(r31)
/* 8023E40C  38 05 00 01 */	addi r0, r5, 1
/* 8023E410  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8023E414  38 C0 00 00 */	li r6, 0
/* 8023E418  4B FF BF 81 */	bl selAnimeMove__17dMsgScrn3Select_cFUcUcb
/* 8023E41C  48 00 00 0C */	b lbl_8023E428
lbl_8023E420:
/* 8023E420  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023E424  4B FF C2 5D */	bl selAnimeEnd__17dMsgScrn3Select_cFv
lbl_8023E428:
/* 8023E428  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8023E42C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8023E430  7C 08 03 A6 */	mtlr r0
/* 8023E434  38 21 00 30 */	addi r1, r1, 0x30
/* 8023E438  4E 80 00 20 */	blr 
