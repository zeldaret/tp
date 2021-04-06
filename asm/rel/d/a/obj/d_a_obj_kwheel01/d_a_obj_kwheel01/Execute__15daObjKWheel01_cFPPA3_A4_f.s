lbl_80C4F048:
/* 80C4F048  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C4F04C  7C 08 02 A6 */	mflr r0
/* 80C4F050  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C4F054  39 61 00 40 */	addi r11, r1, 0x40
/* 80C4F058  4B 71 31 7D */	bl _savegpr_27
/* 80C4F05C  7C 7E 1B 78 */	mr r30, r3
/* 80C4F060  7C 9F 23 78 */	mr r31, r4
/* 80C4F064  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C4F068  4B 3F 98 05 */	bl eventUpdate__17dEvLib_callback_cFv
/* 80C4F06C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4F070  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C4F074  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C4F078  40 82 00 80 */	bne lbl_80C4F0F8
/* 80C4F07C  3C 60 80 C5 */	lis r3, searchKWheel00__FPvPv@ha /* 0x80C4EFEC@ha */
/* 80C4F080  38 63 EF EC */	addi r3, r3, searchKWheel00__FPvPv@l /* 0x80C4EFEC@l */
/* 80C4F084  7F C4 F3 78 */	mr r4, r30
/* 80C4F088  4B 3C A7 71 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C4F08C  28 03 00 00 */	cmplwi r3, 0
/* 80C4F090  41 82 01 34 */	beq lbl_80C4F1C4
/* 80C4F094  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4F098  54 00 C7 FF */	rlwinm. r0, r0, 0x18, 0x1f, 0x1f
/* 80C4F09C  41 82 00 20 */	beq lbl_80C4F0BC
/* 80C4F0A0  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80C4F0A4  A8 83 04 CC */	lha r4, 0x4cc(r3)
/* 80C4F0A8  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80C4F0AC  7C 04 00 50 */	subf r0, r4, r0
/* 80C4F0B0  7C 05 02 14 */	add r0, r5, r0
/* 80C4F0B4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80C4F0B8  48 00 00 1C */	b lbl_80C4F0D4
lbl_80C4F0BC:
/* 80C4F0BC  A8 83 04 CC */	lha r4, 0x4cc(r3)
/* 80C4F0C0  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80C4F0C4  7C 64 00 50 */	subf r3, r4, r0
/* 80C4F0C8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C4F0CC  7C 03 00 50 */	subf r0, r3, r0
/* 80C4F0D0  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80C4F0D4:
/* 80C4F0D4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C4F0D8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C4F0DC  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80C4F0E0  A8 1E 04 CA */	lha r0, 0x4ca(r30)
/* 80C4F0E4  7C 03 00 00 */	cmpw r3, r0
/* 80C4F0E8  41 82 00 DC */	beq lbl_80C4F1C4
/* 80C4F0EC  38 00 00 40 */	li r0, 0x40
/* 80C4F0F0  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 80C4F0F4  48 00 00 D0 */	b lbl_80C4F1C4
lbl_80C4F0F8:
/* 80C4F0F8  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 80C4F0FC  2C 00 00 00 */	cmpwi r0, 0
/* 80C4F100  40 82 00 74 */	bne lbl_80C4F174
/* 80C4F104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4F108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4F10C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C4F110  7C 05 07 74 */	extsb r5, r0
/* 80C4F114  4B 3E 62 4D */	bl isSwitch__10dSv_info_cCFii
/* 80C4F118  2C 03 00 00 */	cmpwi r3, 0
/* 80C4F11C  41 82 00 58 */	beq lbl_80C4F174
/* 80C4F120  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4F124  54 05 BE 3E */	rlwinm r5, r0, 0x17, 0x18, 0x1f
/* 80C4F128  2C 05 00 FF */	cmpwi r5, 0xff
/* 80C4F12C  41 82 00 34 */	beq lbl_80C4F160
/* 80C4F130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4F134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4F138  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80C4F13C  7F C4 F3 78 */	mr r4, r30
/* 80C4F140  4B 3F 85 59 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80C4F144  7C 64 07 34 */	extsh r4, r3
/* 80C4F148  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C4F14C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4F150  54 05 BE 3E */	rlwinm r5, r0, 0x17, 0x18, 0x1f
/* 80C4F154  38 C0 00 01 */	li r6, 1
/* 80C4F158  4B 3F 97 4D */	bl setEvent__17dEvLib_callback_cFiii
/* 80C4F15C  48 00 00 18 */	b lbl_80C4F174
lbl_80C4F160:
/* 80C4F160  7F C3 F3 78 */	mr r3, r30
/* 80C4F164  81 9E 05 9C */	lwz r12, 0x59c(r30)
/* 80C4F168  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C4F16C  7D 89 03 A6 */	mtctr r12
/* 80C4F170  4E 80 04 21 */	bctrl 
lbl_80C4F174:
/* 80C4F174  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 80C4F178  7C 60 07 35 */	extsh. r0, r3
/* 80C4F17C  41 82 00 30 */	beq lbl_80C4F1AC
/* 80C4F180  7C 60 07 35 */	extsh. r0, r3
/* 80C4F184  40 81 00 18 */	ble lbl_80C4F19C
/* 80C4F188  2C 03 00 40 */	cmpwi r3, 0x40
/* 80C4F18C  40 80 00 20 */	bge lbl_80C4F1AC
/* 80C4F190  38 03 00 02 */	addi r0, r3, 2
/* 80C4F194  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 80C4F198  48 00 00 14 */	b lbl_80C4F1AC
lbl_80C4F19C:
/* 80C4F19C  2C 03 FF C0 */	cmpwi r3, -64
/* 80C4F1A0  40 81 00 0C */	ble lbl_80C4F1AC
/* 80C4F1A4  38 03 FF FE */	addi r0, r3, -2
/* 80C4F1A8  B0 1E 06 1C */	sth r0, 0x61c(r30)
lbl_80C4F1AC:
/* 80C4F1AC  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80C4F1B0  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 80C4F1B4  7C 03 02 14 */	add r0, r3, r0
/* 80C4F1B8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80C4F1BC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C4F1C0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80C4F1C4:
/* 80C4F1C4  7F C3 F3 78 */	mr r3, r30
/* 80C4F1C8  4B FF FA 8D */	bl setMtx__15daObjKWheel01_cFv
/* 80C4F1CC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80C4F1D0  80 9E 06 18 */	lwz r4, 0x618(r30)
/* 80C4F1D4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C4F1D8  4B 6F 72 D9 */	bl PSMTXCopy
/* 80C4F1DC  38 1E 05 B8 */	addi r0, r30, 0x5b8
/* 80C4F1E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C4F1E4  3B E0 00 00 */	li r31, 0
/* 80C4F1E8  3B A0 00 00 */	li r29, 0
/* 80C4F1EC  3B 80 00 00 */	li r28, 0
lbl_80C4F1F0:
/* 80C4F1F0  38 00 00 01 */	li r0, 1
/* 80C4F1F4  7C 03 F8 30 */	slw r3, r0, r31
/* 80C4F1F8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4F1FC  54 00 4F 3E */	rlwinm r0, r0, 9, 0x1c, 0x1f
/* 80C4F200  7C 60 00 39 */	and. r0, r3, r0
/* 80C4F204  40 82 00 80 */	bne lbl_80C4F284
/* 80C4F208  38 1C 06 20 */	addi r0, r28, 0x620
/* 80C4F20C  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80C4F210  90 01 00 08 */	stw r0, 8(r1)
/* 80C4F214  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80C4F218  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80C4F21C  38 81 00 08 */	addi r4, r1, 8
/* 80C4F220  4B 3C A5 D9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C4F224  7C 7B 1B 79 */	or. r27, r3, r3
/* 80C4F228  41 82 00 5C */	beq lbl_80C4F284
/* 80C4F22C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80C4F230  3C 80 80 C5 */	lis r4, l_pos@ha /* 0x80C4F6FC@ha */
/* 80C4F234  38 04 F6 FC */	addi r0, r4, l_pos@l /* 0x80C4F6FC@l */
/* 80C4F238  7C 80 EA 14 */	add r4, r0, r29
/* 80C4F23C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C4F240  4B 6F 7B 2D */	bl PSMTXMultVec
/* 80C4F244  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C4F248  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80C4F24C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C4F250  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80C4F254  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C4F258  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80C4F25C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C4F260  A8 63 00 0E */	lha r3, 0xe(r3)
/* 80C4F264  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80C4F268  7C 00 1A 14 */	add r0, r0, r3
/* 80C4F26C  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80C4F270  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C4F274  A8 63 00 0E */	lha r3, 0xe(r3)
/* 80C4F278  A8 1B 04 B6 */	lha r0, 0x4b6(r27)
/* 80C4F27C  7C 00 1A 14 */	add r0, r0, r3
/* 80C4F280  B0 1B 04 B6 */	sth r0, 0x4b6(r27)
lbl_80C4F284:
/* 80C4F284  3B FF 00 01 */	addi r31, r31, 1
/* 80C4F288  2C 1F 00 04 */	cmpwi r31, 4
/* 80C4F28C  3B BD 00 0C */	addi r29, r29, 0xc
/* 80C4F290  3B 9C 00 04 */	addi r28, r28, 4
/* 80C4F294  41 80 FF 5C */	blt lbl_80C4F1F0
/* 80C4F298  3B 60 00 00 */	li r27, 0
/* 80C4F29C  3B E0 00 00 */	li r31, 0
/* 80C4F2A0  3B 80 00 01 */	li r28, 1
lbl_80C4F2A4:
/* 80C4F2A4  7F 83 D8 30 */	slw r3, r28, r27
/* 80C4F2A8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4F2AC  54 00 4F 3E */	rlwinm r0, r0, 9, 0x1c, 0x1f
/* 80C4F2B0  7C 60 00 39 */	and. r0, r3, r0
/* 80C4F2B4  40 82 00 10 */	bne lbl_80C4F2C4
/* 80C4F2B8  38 1F 06 30 */	addi r0, r31, 0x630
/* 80C4F2BC  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80C4F2C0  4B 42 C7 01 */	bl Move__4dBgWFv
lbl_80C4F2C4:
/* 80C4F2C4  3B 7B 00 01 */	addi r27, r27, 1
/* 80C4F2C8  2C 1B 00 04 */	cmpwi r27, 4
/* 80C4F2CC  3B FF 00 04 */	addi r31, r31, 4
/* 80C4F2D0  41 80 FF D4 */	blt lbl_80C4F2A4
/* 80C4F2D4  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 80C4F2D8  2C 00 00 00 */	cmpwi r0, 0
/* 80C4F2DC  41 82 00 4C */	beq lbl_80C4F328
/* 80C4F2E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008017D@ha */
/* 80C4F2E4  38 03 01 7D */	addi r0, r3, 0x017D /* 0x0008017D@l */
/* 80C4F2E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4F2EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C4F2F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C4F2F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C4F2F8  38 81 00 0C */	addi r4, r1, 0xc
/* 80C4F2FC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C4F300  38 C0 00 00 */	li r6, 0
/* 80C4F304  38 E0 00 00 */	li r7, 0
/* 80C4F308  3D 00 80 C5 */	lis r8, lit_3717@ha /* 0x80C4F6E4@ha */
/* 80C4F30C  C0 28 F6 E4 */	lfs f1, lit_3717@l(r8)  /* 0x80C4F6E4@l */
/* 80C4F310  FC 40 08 90 */	fmr f2, f1
/* 80C4F314  3D 00 80 C5 */	lis r8, lit_3888@ha /* 0x80C4F6E8@ha */
/* 80C4F318  C0 68 F6 E8 */	lfs f3, lit_3888@l(r8)  /* 0x80C4F6E8@l */
/* 80C4F31C  FC 80 18 90 */	fmr f4, f3
/* 80C4F320  39 00 00 00 */	li r8, 0
/* 80C4F324  4B 65 D1 E9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C4F328:
/* 80C4F328  38 60 00 01 */	li r3, 1
/* 80C4F32C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C4F330  4B 71 2E F1 */	bl _restgpr_27
/* 80C4F334  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C4F338  7C 08 03 A6 */	mtlr r0
/* 80C4F33C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C4F340  4E 80 00 20 */	blr 
