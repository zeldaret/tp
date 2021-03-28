lbl_80A3F99C:
/* 80A3F99C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A3F9A0  7C 08 02 A6 */	mflr r0
/* 80A3F9A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A3F9A8  39 61 00 60 */	addi r11, r1, 0x60
/* 80A3F9AC  4B 92 28 24 */	b _savegpr_26
/* 80A3F9B0  7C 7C 1B 78 */	mr r28, r3
/* 80A3F9B4  7C 9A 23 78 */	mr r26, r4
/* 80A3F9B8  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3F9BC  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A3F9C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3F9C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3F9C8  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A3F9CC  3B C0 00 00 */	li r30, 0
/* 80A3F9D0  3B A0 FF FF */	li r29, -1
/* 80A3F9D4  7F 63 DB 78 */	mr r3, r27
/* 80A3F9D8  3C A0 80 A4 */	lis r5, stringBase0@ha
/* 80A3F9DC  38 A5 0A F8 */	addi r5, r5, stringBase0@l
/* 80A3F9E0  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A3F9E4  38 C0 00 03 */	li r6, 3
/* 80A3F9E8  4B 60 87 04 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A3F9EC  28 03 00 00 */	cmplwi r3, 0
/* 80A3F9F0  41 82 00 08 */	beq lbl_80A3F9F8
/* 80A3F9F4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A3F9F8:
/* 80A3F9F8  7F 63 DB 78 */	mr r3, r27
/* 80A3F9FC  7F 44 D3 78 */	mr r4, r26
/* 80A3FA00  4B 60 83 4C */	b getIsAddvance__16dEvent_manager_cFi
/* 80A3FA04  2C 03 00 00 */	cmpwi r3, 0
/* 80A3FA08  41 82 03 08 */	beq lbl_80A3FD10
/* 80A3FA0C  28 1D 00 32 */	cmplwi r29, 0x32
/* 80A3FA10  41 81 03 00 */	bgt lbl_80A3FD10
/* 80A3FA14  3C 60 80 A4 */	lis r3, lit_14386@ha
/* 80A3FA18  38 63 30 00 */	addi r3, r3, lit_14386@l
/* 80A3FA1C  57 A0 10 3A */	slwi r0, r29, 2
/* 80A3FA20  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A3FA24  7C 09 03 A6 */	mtctr r0
/* 80A3FA28  4E 80 04 20 */	bctr 
lbl_80A3FA2C:
/* 80A3FA2C  38 00 00 1E */	li r0, 0x1e
/* 80A3FA30  90 1C 0D EC */	stw r0, 0xdec(r28)
/* 80A3FA34  48 00 02 DC */	b lbl_80A3FD10
lbl_80A3FA38:
/* 80A3FA38  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3FA3C  2C 00 00 01 */	cmpwi r0, 1
/* 80A3FA40  41 82 00 24 */	beq lbl_80A3FA64
/* 80A3FA44  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A3FA48  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3FA4C  4B 70 5E 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3FA50  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A3FA54  38 00 00 01 */	li r0, 1
/* 80A3FA58  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3FA5C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3FA60  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A3FA64:
/* 80A3FA64  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3FA68  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A3FA6C  41 82 02 A4 */	beq lbl_80A3FD10
/* 80A3FA70  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3FA74  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3FA78  4B 70 5E 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3FA7C  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A3FA80  38 00 00 15 */	li r0, 0x15
/* 80A3FA84  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3FA88  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3FA8C  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A3FA90  48 00 02 80 */	b lbl_80A3FD10
lbl_80A3FA94:
/* 80A3FA94  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3FA98  2C 00 00 01 */	cmpwi r0, 1
/* 80A3FA9C  41 82 00 24 */	beq lbl_80A3FAC0
/* 80A3FAA0  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A3FAA4  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3FAA8  4B 70 5D F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3FAAC  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A3FAB0  38 00 00 01 */	li r0, 1
/* 80A3FAB4  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3FAB8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3FABC  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A3FAC0:
/* 80A3FAC0  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3FAC4  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A3FAC8  41 82 02 48 */	beq lbl_80A3FD10
/* 80A3FACC  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3FAD0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3FAD4  4B 70 5D C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3FAD8  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A3FADC  38 00 00 16 */	li r0, 0x16
/* 80A3FAE0  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3FAE4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3FAE8  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A3FAEC  48 00 02 24 */	b lbl_80A3FD10
lbl_80A3FAF0:
/* 80A3FAF0  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A3FAF4  2C 00 00 00 */	cmpwi r0, 0
/* 80A3FAF8  41 82 00 24 */	beq lbl_80A3FB1C
/* 80A3FAFC  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A3FB00  4B 70 5B FC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A3FB04  38 00 00 00 */	li r0, 0
/* 80A3FB08  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A3FB0C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3FB10  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A3FB14  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A3FB18  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A3FB1C:
/* 80A3FB1C  38 00 00 00 */	li r0, 0
/* 80A3FB20  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A3FB24  48 00 01 EC */	b lbl_80A3FD10
lbl_80A3FB28:
/* 80A3FB28  38 00 00 02 */	li r0, 2
/* 80A3FB2C  B0 1C 0D FE */	sth r0, 0xdfe(r28)
/* 80A3FB30  7F 83 E3 78 */	mr r3, r28
/* 80A3FB34  38 80 02 D7 */	li r4, 0x2d7
/* 80A3FB38  38 A0 00 00 */	li r5, 0
/* 80A3FB3C  4B FF B8 AD */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3FB40  48 00 01 D0 */	b lbl_80A3FD10
lbl_80A3FB44:
/* 80A3FB44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A3FB48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A3FB4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A3FB50  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A3FB54  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000070@ha */
/* 80A3FB58  38 84 00 70 */	addi r4, r4, 0x0070 /* 0x01000070@l */
/* 80A3FB5C  38 A0 00 00 */	li r5, 0
/* 80A3FB60  38 C0 00 00 */	li r6, 0
/* 80A3FB64  4B 86 F4 AC */	b bgmStart__8Z2SeqMgrFUlUll
/* 80A3FB68  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A3FB6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3FB70  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A3FB74  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3FB78  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A3FB7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3FB80  7F 83 E3 78 */	mr r3, r28
/* 80A3FB84  38 81 00 08 */	addi r4, r1, 8
/* 80A3FB88  4B FF AE D1 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A3FB8C  7F 83 E3 78 */	mr r3, r28
/* 80A3FB90  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A3FB94  4B FF AF 5D */	bl setAngle__10daNpc_Kn_cFs
/* 80A3FB98  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3FB9C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A3FBA0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A3FBA4  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A3FBA8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A3FBAC  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A3FBB0  4B 5C D1 B4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A3FBB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3FBB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3FBBC  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A3FBC0  4B 5C C8 74 */	b mDoMtx_YrotM__FPA4_fs
/* 80A3FBC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3FBC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3FBCC  38 81 00 38 */	addi r4, r1, 0x38
/* 80A3FBD0  7C 85 23 78 */	mr r5, r4
/* 80A3FBD4  4B 90 71 98 */	b PSMTXMultVec
/* 80A3FBD8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A3FBDC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A3FBE0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80A3FBE4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A3FBE8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80A3FBEC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A3FBF0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A3FBF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3FBF8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A3FBFC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A3FC00  4B 5D E0 BC */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A3FC04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A3FC08  41 82 00 18 */	beq lbl_80A3FC20
/* 80A3FC0C  C0 3F 02 2C */	lfs f1, 0x22c(r31)
/* 80A3FC10  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A3FC14  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A3FC18  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3FC1C  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80A3FC20:
/* 80A3FC20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3FC24  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80A3FC28  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A3FC2C  38 81 00 38 */	addi r4, r1, 0x38
/* 80A3FC30  A8 BC 04 B6 */	lha r5, 0x4b6(r28)
/* 80A3FC34  3C A5 00 01 */	addis r5, r5, 1
/* 80A3FC38  38 05 80 00 */	addi r0, r5, -32768
/* 80A3FC3C  7C 05 07 34 */	extsh r5, r0
/* 80A3FC40  38 C0 00 00 */	li r6, 0
/* 80A3FC44  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A3FC48  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A3FC4C  7D 89 03 A6 */	mtctr r12
/* 80A3FC50  4E 80 04 21 */	bctrl 
/* 80A3FC54  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A3FC58  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 80A3FC5C  60 00 00 08 */	ori r0, r0, 8
/* 80A3FC60  90 03 05 7C */	stw r0, 0x57c(r3)
/* 80A3FC64  48 00 00 AC */	b lbl_80A3FD10
lbl_80A3FC68:
/* 80A3FC68  7F 83 E3 78 */	mr r3, r28
/* 80A3FC6C  38 80 02 C6 */	li r4, 0x2c6
/* 80A3FC70  38 A0 00 00 */	li r5, 0
/* 80A3FC74  4B FF B7 75 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3FC78  48 00 00 98 */	b lbl_80A3FD10
lbl_80A3FC7C:
/* 80A3FC7C  7F 83 E3 78 */	mr r3, r28
/* 80A3FC80  38 80 02 BE */	li r4, 0x2be
/* 80A3FC84  38 A0 00 00 */	li r5, 0
/* 80A3FC88  4B FF B7 61 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3FC8C  48 00 00 84 */	b lbl_80A3FD10
lbl_80A3FC90:
/* 80A3FC90  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3FC94  2C 00 00 01 */	cmpwi r0, 1
/* 80A3FC98  41 82 00 24 */	beq lbl_80A3FCBC
/* 80A3FC9C  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A3FCA0  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3FCA4  4B 70 5B F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3FCA8  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A3FCAC  38 00 00 01 */	li r0, 1
/* 80A3FCB0  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3FCB4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3FCB8  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A3FCBC:
/* 80A3FCBC  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3FCC0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3FCC4  4B 70 5B D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3FCC8  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A3FCCC  38 00 00 18 */	li r0, 0x18
/* 80A3FCD0  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3FCD4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3FCD8  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A3FCDC  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A3FCE0  2C 00 00 00 */	cmpwi r0, 0
/* 80A3FCE4  41 82 00 24 */	beq lbl_80A3FD08
/* 80A3FCE8  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A3FCEC  4B 70 5A 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A3FCF0  38 00 00 00 */	li r0, 0
/* 80A3FCF4  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A3FCF8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3FCFC  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A3FD00  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A3FD04  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A3FD08:
/* 80A3FD08  38 00 00 00 */	li r0, 0
/* 80A3FD0C  98 1C 0D 33 */	stb r0, 0xd33(r28)
lbl_80A3FD10:
/* 80A3FD10  28 1D 00 32 */	cmplwi r29, 0x32
/* 80A3FD14  41 81 02 80 */	bgt lbl_80A3FF94
/* 80A3FD18  3C 60 80 A4 */	lis r3, lit_14387@ha
/* 80A3FD1C  38 63 2F 34 */	addi r3, r3, lit_14387@l
/* 80A3FD20  57 A0 10 3A */	slwi r0, r29, 2
/* 80A3FD24  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A3FD28  7C 09 03 A6 */	mtctr r0
/* 80A3FD2C  4E 80 04 20 */	bctr 
lbl_80A3FD30:
/* 80A3FD30  38 7C 0D EC */	addi r3, r28, 0xdec
/* 80A3FD34  4B FF C0 15 */	bl func_80A3BD48
/* 80A3FD38  2C 03 00 00 */	cmpwi r3, 0
/* 80A3FD3C  40 82 02 5C */	bne lbl_80A3FF98
/* 80A3FD40  3B C0 00 01 */	li r30, 1
/* 80A3FD44  48 00 02 54 */	b lbl_80A3FF98
lbl_80A3FD48:
/* 80A3FD48  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3FD4C  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A3FD50  40 82 02 48 */	bne lbl_80A3FF98
/* 80A3FD54  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A3FD58  2C 00 00 00 */	cmpwi r0, 0
/* 80A3FD5C  40 81 02 3C */	ble lbl_80A3FF98
/* 80A3FD60  A0 1C 0E 26 */	lhz r0, 0xe26(r28)
/* 80A3FD64  28 00 00 00 */	cmplwi r0, 0
/* 80A3FD68  41 82 02 30 */	beq lbl_80A3FF98
/* 80A3FD6C  3B C0 00 01 */	li r30, 1
/* 80A3FD70  48 00 02 28 */	b lbl_80A3FF98
lbl_80A3FD74:
/* 80A3FD74  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3FD78  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A3FD7C  40 82 02 1C */	bne lbl_80A3FF98
/* 80A3FD80  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A3FD84  2C 00 00 00 */	cmpwi r0, 0
/* 80A3FD88  40 81 02 10 */	ble lbl_80A3FF98
/* 80A3FD8C  3B C0 00 01 */	li r30, 1
/* 80A3FD90  48 00 02 08 */	b lbl_80A3FF98
lbl_80A3FD94:
/* 80A3FD94  7F 83 E3 78 */	mr r3, r28
/* 80A3FD98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3FD9C  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80A3FDA0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A3FDA4  4B 5D A9 6C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3FDA8  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A3FDAC  7C 60 07 34 */	extsh r0, r3
/* 80A3FDB0  7C 04 00 00 */	cmpw r4, r0
/* 80A3FDB4  41 82 00 94 */	beq lbl_80A3FE48
/* 80A3FDB8  7F 83 E3 78 */	mr r3, r28
/* 80A3FDBC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A3FDC0  4B 5D A9 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3FDC4  7C 64 1B 78 */	mr r4, r3
/* 80A3FDC8  7F 83 E3 78 */	mr r3, r28
/* 80A3FDCC  38 A0 00 01 */	li r5, 1
/* 80A3FDD0  38 C0 00 20 */	li r6, 0x20
/* 80A3FDD4  38 E0 00 14 */	li r7, 0x14
/* 80A3FDD8  39 00 00 00 */	li r8, 0
/* 80A3FDDC  4B FF B4 45 */	bl step__10daNpc_Kn_cFsiiii
/* 80A3FDE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A3FDE4  41 82 01 B4 */	beq lbl_80A3FF98
/* 80A3FDE8  3B C0 00 01 */	li r30, 1
/* 80A3FDEC  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3FDF0  2C 00 00 01 */	cmpwi r0, 1
/* 80A3FDF4  41 82 00 24 */	beq lbl_80A3FE18
/* 80A3FDF8  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A3FDFC  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3FE00  4B 70 5A 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3FE04  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A3FE08  38 00 00 01 */	li r0, 1
/* 80A3FE0C  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3FE10  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3FE14  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A3FE18:
/* 80A3FE18  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3FE1C  2C 00 00 00 */	cmpwi r0, 0
/* 80A3FE20  41 82 01 78 */	beq lbl_80A3FF98
/* 80A3FE24  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3FE28  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3FE2C  4B 70 5A 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3FE30  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A3FE34  38 00 00 00 */	li r0, 0
/* 80A3FE38  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3FE3C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3FE40  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A3FE44  48 00 01 54 */	b lbl_80A3FF98
lbl_80A3FE48:
/* 80A3FE48  3B C0 00 01 */	li r30, 1
/* 80A3FE4C  48 00 01 4C */	b lbl_80A3FF98
lbl_80A3FE50:
/* 80A3FE50  7F 83 E3 78 */	mr r3, r28
/* 80A3FE54  38 80 00 00 */	li r4, 0
/* 80A3FE58  38 A0 00 00 */	li r5, 0
/* 80A3FE5C  38 C0 00 00 */	li r6, 0
/* 80A3FE60  38 E0 00 00 */	li r7, 0
/* 80A3FE64  4B FF B5 E5 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3FE68  2C 03 00 00 */	cmpwi r3, 0
/* 80A3FE6C  41 82 01 2C */	beq lbl_80A3FF98
/* 80A3FE70  3B C0 00 01 */	li r30, 1
/* 80A3FE74  48 00 01 24 */	b lbl_80A3FF98
lbl_80A3FE78:
/* 80A3FE78  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3FE7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A3FE80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A3FE84  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A3FE88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A3FE8C  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A3FE90  4B 5C CE D4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A3FE94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3FE98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3FE9C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A3FEA0  4B 5C C5 94 */	b mDoMtx_YrotM__FPA4_fs
/* 80A3FEA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3FEA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3FEAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80A3FEB0  7C 85 23 78 */	mr r5, r4
/* 80A3FEB4  4B 90 6E B8 */	b PSMTXMultVec
/* 80A3FEB8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A3FEBC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3FEC0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80A3FEC4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A3FEC8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A3FECC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A3FED0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A3FED4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3FED8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A3FEDC  38 61 00 14 */	addi r3, r1, 0x14
/* 80A3FEE0  4B 5D DD DC */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A3FEE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A3FEE8  41 82 00 10 */	beq lbl_80A3FEF8
/* 80A3FEEC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A3FEF0  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A3FEF4  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80A3FEF8:
/* 80A3FEF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3FEFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3FF00  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A3FF04  38 81 00 20 */	addi r4, r1, 0x20
/* 80A3FF08  A8 BC 04 B6 */	lha r5, 0x4b6(r28)
/* 80A3FF0C  3C A5 00 01 */	addis r5, r5, 1
/* 80A3FF10  38 05 80 00 */	addi r0, r5, -32768
/* 80A3FF14  7C 05 07 34 */	extsh r5, r0
/* 80A3FF18  38 C0 00 00 */	li r6, 0
/* 80A3FF1C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A3FF20  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A3FF24  7D 89 03 A6 */	mtctr r12
/* 80A3FF28  4E 80 04 21 */	bctrl 
/* 80A3FF2C  3B C0 00 01 */	li r30, 1
/* 80A3FF30  48 00 00 68 */	b lbl_80A3FF98
lbl_80A3FF34:
/* 80A3FF34  7F 83 E3 78 */	mr r3, r28
/* 80A3FF38  38 80 00 00 */	li r4, 0
/* 80A3FF3C  38 A0 00 00 */	li r5, 0
/* 80A3FF40  38 C0 00 00 */	li r6, 0
/* 80A3FF44  38 E0 00 00 */	li r7, 0
/* 80A3FF48  4B FF B5 01 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3FF4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A3FF50  41 82 00 48 */	beq lbl_80A3FF98
/* 80A3FF54  3B C0 00 01 */	li r30, 1
/* 80A3FF58  48 00 00 40 */	b lbl_80A3FF98
lbl_80A3FF5C:
/* 80A3FF5C  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3FF60  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A3FF64  40 82 00 34 */	bne lbl_80A3FF98
/* 80A3FF68  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A3FF6C  2C 00 00 00 */	cmpwi r0, 0
/* 80A3FF70  40 81 00 28 */	ble lbl_80A3FF98
/* 80A3FF74  3B C0 00 01 */	li r30, 1
/* 80A3FF78  38 00 00 05 */	li r0, 5
/* 80A3FF7C  98 1C 15 AE */	stb r0, 0x15ae(r28)
/* 80A3FF80  A0 7C 05 8E */	lhz r3, 0x58e(r28)
/* 80A3FF84  38 00 FF E8 */	li r0, -24
/* 80A3FF88  7C 60 00 38 */	and r0, r3, r0
/* 80A3FF8C  B0 1C 05 8E */	sth r0, 0x58e(r28)
/* 80A3FF90  48 00 00 08 */	b lbl_80A3FF98
lbl_80A3FF94:
/* 80A3FF94  3B C0 00 01 */	li r30, 1
lbl_80A3FF98:
/* 80A3FF98  7F C3 F3 78 */	mr r3, r30
/* 80A3FF9C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A3FFA0  4B 92 22 7C */	b _restgpr_26
/* 80A3FFA4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A3FFA8  7C 08 03 A6 */	mtlr r0
/* 80A3FFAC  38 21 00 60 */	addi r1, r1, 0x60
/* 80A3FFB0  4E 80 00 20 */	blr 
