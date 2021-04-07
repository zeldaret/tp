lbl_80467840:
/* 80467840  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80467844  7C 08 02 A6 */	mflr r0
/* 80467848  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046784C  39 61 00 30 */	addi r11, r1, 0x30
/* 80467850  4B EF A9 8D */	bl _savegpr_29
/* 80467854  7C 7E 1B 78 */	mr r30, r3
/* 80467858  3C 60 80 46 */	lis r3, l_bmd@ha /* 0x80467F04@ha */
/* 8046785C  3B E3 7F 04 */	addi r31, r3, l_bmd@l /* 0x80467F04@l */
/* 80467860  38 00 00 00 */	li r0, 0
/* 80467864  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80467868  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8046786C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80467870  3C 60 80 45 */	lis r3, OPEN_ACCEL__7daDsh_c@ha /* 0x80451D34@ha */
/* 80467874  C0 03 1D 34 */	lfs f0, OPEN_ACCEL__7daDsh_c@l(r3)  /* 0x80451D34@l */
/* 80467878  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8046787C  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 80467880  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80467884  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80467888  EC 21 00 2A */	fadds f1, f1, f0
/* 8046788C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80467890  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80467894  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80467898  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8046789C  38 61 00 10 */	addi r3, r1, 0x10
/* 804678A0  4B BB 64 E5 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 804678A4  7C 7D 1B 78 */	mr r29, r3
/* 804678A8  38 61 00 10 */	addi r3, r1, 0x10
/* 804678AC  4B BB 64 11 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 804678B0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804678B4  41 82 00 6C */	beq lbl_80467920
/* 804678B8  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 804678BC  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
/* 804678C0  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 804678C4  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 804678C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804678CC  40 81 00 54 */	ble lbl_80467920
/* 804678D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804678D4  7C 03 07 74 */	extsb r3, r0
/* 804678D8  4B BC 57 95 */	bl dComIfGp_getReverb__Fi
/* 804678DC  7C 67 1B 78 */	mr r7, r3
/* 804678E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080198@ha */
/* 804678E4  38 03 01 98 */	addi r0, r3, 0x0198 /* 0x00080198@l */
/* 804678E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804678EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804678F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804678F4  80 63 00 00 */	lwz r3, 0(r3)
/* 804678F8  38 81 00 0C */	addi r4, r1, 0xc
/* 804678FC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80467900  38 C0 00 00 */	li r6, 0
/* 80467904  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80467908  FC 40 08 90 */	fmr f2, f1
/* 8046790C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80467910  FC 80 18 90 */	fmr f4, f3
/* 80467914  39 00 00 00 */	li r8, 0
/* 80467918  4B E4 40 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8046791C  48 00 00 50 */	b lbl_8046796C
lbl_80467920:
/* 80467920  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80467924  7C 03 07 74 */	extsb r3, r0
/* 80467928  4B BC 57 45 */	bl dComIfGp_getReverb__Fi
/* 8046792C  7C 67 1B 78 */	mr r7, r3
/* 80467930  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080190@ha */
/* 80467934  38 03 01 90 */	addi r0, r3, 0x0190 /* 0x00080190@l */
/* 80467938  90 01 00 08 */	stw r0, 8(r1)
/* 8046793C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80467940  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80467944  80 63 00 00 */	lwz r3, 0(r3)
/* 80467948  38 81 00 08 */	addi r4, r1, 8
/* 8046794C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80467950  38 C0 00 00 */	li r6, 0
/* 80467954  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80467958  FC 40 08 90 */	fmr f2, f1
/* 8046795C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80467960  FC 80 18 90 */	fmr f4, f3
/* 80467964  39 00 00 00 */	li r8, 0
/* 80467968  4B E4 40 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8046796C:
/* 8046796C  38 60 00 01 */	li r3, 1
/* 80467970  39 61 00 30 */	addi r11, r1, 0x30
/* 80467974  4B EF A8 B5 */	bl _restgpr_29
/* 80467978  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046797C  7C 08 03 A6 */	mtlr r0
/* 80467980  38 21 00 30 */	addi r1, r1, 0x30
/* 80467984  4E 80 00 20 */	blr 
