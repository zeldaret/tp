lbl_8047684C:
/* 8047684C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80476850  7C 08 02 A6 */	mflr r0
/* 80476854  90 01 00 24 */	stw r0, 0x24(r1)
/* 80476858  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8047685C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80476860  7C 7F 1B 78 */	mr r31, r3
/* 80476864  4B FF FD B5 */	bl check_bg_damage_proc_base__12daObjCarry_cFv
/* 80476868  7C 7E 1B 78 */	mr r30, r3
/* 8047686C  88 1F 0D 74 */	lbz r0, 0xd74(r31)
/* 80476870  28 00 00 00 */	cmplwi r0, 0
/* 80476874  41 82 00 08 */	beq lbl_8047687C
/* 80476878  3B C0 00 00 */	li r30, 0
lbl_8047687C:
/* 8047687C  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80476880  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 80476884  41 82 00 6C */	beq lbl_804768F0
/* 80476888  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 8047688C  41 82 00 64 */	beq lbl_804768F0
/* 80476890  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80476894  7C 03 07 74 */	extsb r3, r0
/* 80476898  4B BB 67 D5 */	bl dComIfGp_getReverb__Fi
/* 8047689C  7C 67 1B 78 */	mr r7, r3
/* 804768A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D4@ha */
/* 804768A4  38 03 00 D4 */	addi r0, r3, 0x00D4 /* 0x000800D4@l */
/* 804768A8  90 01 00 08 */	stw r0, 8(r1)
/* 804768AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804768B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804768B4  80 63 00 00 */	lwz r3, 0(r3)
/* 804768B8  38 81 00 08 */	addi r4, r1, 8
/* 804768BC  38 BF 05 38 */	addi r5, r31, 0x538
/* 804768C0  38 C0 00 00 */	li r6, 0
/* 804768C4  3D 00 80 48 */	lis r8, lit_4685@ha /* 0x8047A3CC@ha */
/* 804768C8  C0 28 A3 CC */	lfs f1, lit_4685@l(r8)  /* 0x8047A3CC@l */
/* 804768CC  FC 40 08 90 */	fmr f2, f1
/* 804768D0  3D 00 80 48 */	lis r8, lit_5550@ha /* 0x8047A40C@ha */
/* 804768D4  C0 68 A4 0C */	lfs f3, lit_5550@l(r8)  /* 0x8047A40C@l */
/* 804768D8  FC 80 18 90 */	fmr f4, f3
/* 804768DC  39 00 00 00 */	li r8, 0
/* 804768E0  4B E3 50 A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804768E4  38 00 00 01 */	li r0, 1
/* 804768E8  98 1F 0D B3 */	stb r0, 0xdb3(r31)
/* 804768EC  3B C0 00 01 */	li r30, 1
lbl_804768F0:
/* 804768F0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 804768F4  41 82 00 20 */	beq lbl_80476914
/* 804768F8  7F E3 FB 78 */	mr r3, r31
/* 804768FC  38 80 00 01 */	li r4, 1
/* 80476900  38 A0 00 01 */	li r5, 1
/* 80476904  38 C0 00 01 */	li r6, 1
/* 80476908  48 00 00 39 */	bl obj_break__12daObjCarry_cFbbb
/* 8047690C  7F E3 FB 78 */	mr r3, r31
/* 80476910  4B BA 33 6D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80476914:
/* 80476914  7F C3 F3 78 */	mr r3, r30
/* 80476918  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8047691C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80476920  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80476924  7C 08 03 A6 */	mtlr r0
/* 80476928  38 21 00 20 */	addi r1, r1, 0x20
/* 8047692C  4E 80 00 20 */	blr 
