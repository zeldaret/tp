lbl_809B7238:
/* 809B7238  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B723C  7C 08 02 A6 */	mflr r0
/* 809B7240  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B7244  39 61 00 30 */	addi r11, r1, 0x30
/* 809B7248  4B 9A AF 95 */	bl _savegpr_29
/* 809B724C  7C 7E 1B 78 */	mr r30, r3
/* 809B7250  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B7254  3B E3 92 E4 */	addi r31, r3, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B7258  80 64 00 00 */	lwz r3, 0(r4)
/* 809B725C  38 03 FF F6 */	addi r0, r3, -10
/* 809B7260  28 00 00 32 */	cmplwi r0, 0x32
/* 809B7264  41 81 02 2C */	bgt lbl_809B7490
/* 809B7268  3C 60 80 9C */	lis r3, lit_6458@ha /* 0x809BA0BC@ha */
/* 809B726C  38 63 A0 BC */	addi r3, r3, lit_6458@l /* 0x809BA0BC@l */
/* 809B7270  54 00 10 3A */	slwi r0, r0, 2
/* 809B7274  7C 03 00 2E */	lwzx r0, r3, r0
/* 809B7278  7C 09 03 A6 */	mtctr r0
/* 809B727C  4E 80 04 20 */	bctr 
lbl_809B7280:
/* 809B7280  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B7284  2C 00 00 03 */	cmpwi r0, 3
/* 809B7288  41 82 00 24 */	beq lbl_809B72AC
/* 809B728C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B7290  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B7294  4B 78 E6 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B7298  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B729C  38 00 00 03 */	li r0, 3
/* 809B72A0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B72A4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B72A8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B72AC:
/* 809B72AC  38 00 00 3D */	li r0, 0x3d
/* 809B72B0  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B72B4  38 60 00 0A */	li r3, 0xa
/* 809B72B8  4B 7F 15 2D */	bl dKy_change_colpat__FUc
/* 809B72BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B72C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B72C4  80 63 00 00 */	lwz r3, 0(r3)
/* 809B72C8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B72CC  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B72D0  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B72D4  4B 8F 88 C1 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B72D8  48 00 01 B8 */	b lbl_809B7490
lbl_809B72DC:
/* 809B72DC  38 00 00 00 */	li r0, 0
/* 809B72E0  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B72E4  38 00 00 64 */	li r0, 0x64
/* 809B72E8  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B72EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B72F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B72F4  80 63 00 00 */	lwz r3, 0(r3)
/* 809B72F8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B72FC  4B 8F 8B 1D */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 809B7300  38 60 00 0C */	li r3, 0xc
/* 809B7304  4B 7F 14 E1 */	bl dKy_change_colpat__FUc
/* 809B7308  48 00 01 88 */	b lbl_809B7490
lbl_809B730C:
/* 809B730C  38 60 00 0B */	li r3, 0xb
/* 809B7310  4B 79 E4 25 */	bl daNpcF_offTmpBit__FUl
/* 809B7314  7F C3 F3 78 */	mr r3, r30
/* 809B7318  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B731C  38 A0 00 00 */	li r5, 0
/* 809B7320  4B 79 48 D1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B7324  38 00 00 8F */	li r0, 0x8f
/* 809B7328  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B732C  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 809B7330  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B7334  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B7338  2C 00 00 04 */	cmpwi r0, 4
/* 809B733C  41 82 00 24 */	beq lbl_809B7360
/* 809B7340  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B7344  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B7348  4B 78 E5 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B734C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B7350  38 00 00 04 */	li r0, 4
/* 809B7354  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B7358  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B735C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B7360:
/* 809B7360  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809B7364  2C 00 00 00 */	cmpwi r0, 0
/* 809B7368  41 82 01 28 */	beq lbl_809B7490
/* 809B736C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809B7370  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809B7374  4B 78 E5 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B7378  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809B737C  38 00 00 00 */	li r0, 0
/* 809B7380  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809B7384  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B7388  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
/* 809B738C  48 00 01 04 */	b lbl_809B7490
lbl_809B7390:
/* 809B7390  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B7394  2C 00 00 03 */	cmpwi r0, 3
/* 809B7398  41 82 00 24 */	beq lbl_809B73BC
/* 809B739C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B73A0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B73A4  4B 78 E4 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B73A8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B73AC  38 00 00 03 */	li r0, 3
/* 809B73B0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B73B4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B73B8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B73BC:
/* 809B73BC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809B73C0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B73C4  48 00 00 CC */	b lbl_809B7490
lbl_809B73C8:
/* 809B73C8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809B73CC  D0 1E 0F E8 */	stfs f0, 0xfe8(r30)
/* 809B73D0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809B73D4  D0 1E 0F EC */	stfs f0, 0xfec(r30)
/* 809B73D8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809B73DC  D0 1E 0F F0 */	stfs f0, 0xff0(r30)
/* 809B73E0  38 00 00 1E */	li r0, 0x1e
/* 809B73E4  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B73E8  48 00 00 A8 */	b lbl_809B7490
lbl_809B73EC:
/* 809B73EC  C0 5F 01 AC */	lfs f2, 0x1ac(r31)
/* 809B73F0  D0 41 00 08 */	stfs f2, 8(r1)
/* 809B73F4  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 809B73F8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809B73FC  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 809B7400  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B7404  D0 5E 04 D0 */	stfs f2, 0x4d0(r30)
/* 809B7408  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 809B740C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 809B7410  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809B7414  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B7418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B741C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B7420  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809B7424  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 809B7428  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809B742C  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 809B7430  7D 89 03 A6 */	mtctr r12
/* 809B7434  4E 80 04 21 */	bctrl 
/* 809B7438  7F C3 F3 78 */	mr r3, r30
/* 809B743C  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B7440  38 A0 00 00 */	li r5, 0
/* 809B7444  4B 79 47 AD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B7448  48 00 00 48 */	b lbl_809B7490
lbl_809B744C:
/* 809B744C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 809B7450  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809B7454  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 809B7458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B745C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B7460  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809B7464  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809B7468  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 809B746C  7D 89 03 A6 */	mtctr r12
/* 809B7470  4E 80 04 21 */	bctrl 
/* 809B7474  48 00 00 1C */	b lbl_809B7490
lbl_809B7478:
/* 809B7478  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B747C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B7480  80 63 00 00 */	lwz r3, 0(r3)
/* 809B7484  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B7488  38 80 00 2D */	li r4, 0x2d
/* 809B748C  4B 8F 8A 51 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_809B7490:
/* 809B7490  38 60 00 00 */	li r3, 0
/* 809B7494  39 61 00 30 */	addi r11, r1, 0x30
/* 809B7498  4B 9A AD 91 */	bl _restgpr_29
/* 809B749C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B74A0  7C 08 03 A6 */	mtlr r0
/* 809B74A4  38 21 00 30 */	addi r1, r1, 0x30
/* 809B74A8  4E 80 00 20 */	blr 
