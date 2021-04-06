lbl_80A343A8:
/* 80A343A8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A343AC  7C 08 02 A6 */	mflr r0
/* 80A343B0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A343B4  39 61 00 80 */	addi r11, r1, 0x80
/* 80A343B8  4B 92 DE 19 */	bl _savegpr_26
/* 80A343BC  7C 7C 1B 78 */	mr r28, r3
/* 80A343C0  7C 9A 23 78 */	mr r26, r4
/* 80A343C4  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A343C8  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A343CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A343D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A343D4  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A343D8  3B C0 00 00 */	li r30, 0
/* 80A343DC  3B A0 FF FF */	li r29, -1
/* 80A343E0  7F 63 DB 78 */	mr r3, r27
/* 80A343E4  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A343E8  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A343EC  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A343F0  38 C0 00 03 */	li r6, 3
/* 80A343F4  4B 61 3C F9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A343F8  28 03 00 00 */	cmplwi r3, 0
/* 80A343FC  41 82 00 08 */	beq lbl_80A34404
/* 80A34400  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A34404:
/* 80A34404  7F 63 DB 78 */	mr r3, r27
/* 80A34408  7F 44 D3 78 */	mr r4, r26
/* 80A3440C  4B 61 39 41 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A34410  2C 03 00 00 */	cmpwi r3, 0
/* 80A34414  41 82 04 1C */	beq lbl_80A34830
/* 80A34418  28 1D 00 46 */	cmplwi r29, 0x46
/* 80A3441C  41 81 04 14 */	bgt lbl_80A34830
/* 80A34420  3C 60 80 A4 */	lis r3, lit_11022@ha /* 0x80A4220C@ha */
/* 80A34424  38 63 22 0C */	addi r3, r3, lit_11022@l /* 0x80A4220C@l */
/* 80A34428  57 A0 10 3A */	slwi r0, r29, 2
/* 80A3442C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A34430  7C 09 03 A6 */	mtctr r0
/* 80A34434  4E 80 04 20 */	bctr 
lbl_80A34438:
/* 80A34438  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3443C  2C 00 00 01 */	cmpwi r0, 1
/* 80A34440  41 82 00 24 */	beq lbl_80A34464
/* 80A34444  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A34448  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3444C  4B 71 14 4D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34450  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A34454  38 00 00 01 */	li r0, 1
/* 80A34458  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3445C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A34460  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A34464:
/* 80A34464  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A34468  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A3446C  40 82 00 30 */	bne lbl_80A3449C
/* 80A34470  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A34474  41 82 03 BC */	beq lbl_80A34830
/* 80A34478  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3447C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A34480  4B 71 14 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34484  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A34488  38 00 00 16 */	li r0, 0x16
/* 80A3448C  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A34490  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A34494  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A34498  48 00 03 98 */	b lbl_80A34830
lbl_80A3449C:
/* 80A3449C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A344A0  41 82 03 90 */	beq lbl_80A34830
/* 80A344A4  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A344A8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A344AC  4B 71 13 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A344B0  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A344B4  38 00 00 10 */	li r0, 0x10
/* 80A344B8  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A344BC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A344C0  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A344C4  48 00 03 6C */	b lbl_80A34830
lbl_80A344C8:
/* 80A344C8  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A344CC  2C 00 00 01 */	cmpwi r0, 1
/* 80A344D0  41 82 00 28 */	beq lbl_80A344F8
/* 80A344D4  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A344D8  4B 71 12 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A344DC  38 00 00 00 */	li r0, 0
/* 80A344E0  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A344E4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A344E8  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A344EC  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A344F0  38 00 00 01 */	li r0, 1
/* 80A344F4  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A344F8:
/* 80A344F8  38 00 00 00 */	li r0, 0
/* 80A344FC  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A34500  48 00 03 30 */	b lbl_80A34830
lbl_80A34504:
/* 80A34504  38 00 00 02 */	li r0, 2
/* 80A34508  B0 1C 0D FE */	sth r0, 0xdfe(r28)
/* 80A3450C  7F 83 E3 78 */	mr r3, r28
/* 80A34510  38 80 02 E7 */	li r4, 0x2e7
/* 80A34514  38 A0 00 00 */	li r5, 0
/* 80A34518  48 00 6E D1 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3451C  48 00 03 14 */	b lbl_80A34830
lbl_80A34520:
/* 80A34520  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A34524  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A34528  80 63 00 00 */	lwz r3, 0(r3)
/* 80A3452C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A34530  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000070@ha */
/* 80A34534  38 84 00 70 */	addi r4, r4, 0x0070 /* 0x01000070@l */
/* 80A34538  38 A0 00 00 */	li r5, 0
/* 80A3453C  38 C0 00 00 */	li r6, 0
/* 80A34540  4B 87 AA D1 */	bl bgmStart__8Z2SeqMgrFUlUll
lbl_80A34544:
/* 80A34544  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A34548  2C 00 00 01 */	cmpwi r0, 1
/* 80A3454C  41 82 00 24 */	beq lbl_80A34570
/* 80A34550  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A34554  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A34558  4B 71 13 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3455C  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A34560  38 00 00 01 */	li r0, 1
/* 80A34564  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A34568  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3456C  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A34570:
/* 80A34570  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A34574  40 82 00 3C */	bne lbl_80A345B0
/* 80A34578  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3457C  2C 00 00 03 */	cmpwi r0, 3
/* 80A34580  41 82 00 24 */	beq lbl_80A345A4
/* 80A34584  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A34588  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3458C  4B 71 13 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34590  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A34594  38 00 00 03 */	li r0, 3
/* 80A34598  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3459C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A345A0  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
lbl_80A345A4:
/* 80A345A4  38 00 00 01 */	li r0, 1
/* 80A345A8  98 1C 15 CD */	stb r0, 0x15cd(r28)
/* 80A345AC  48 00 00 38 */	b lbl_80A345E4
lbl_80A345B0:
/* 80A345B0  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A345B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A345B8  41 82 00 24 */	beq lbl_80A345DC
/* 80A345BC  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A345C0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A345C4  4B 71 12 D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A345C8  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A345CC  38 00 00 00 */	li r0, 0
/* 80A345D0  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A345D4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A345D8  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
lbl_80A345DC:
/* 80A345DC  38 00 00 00 */	li r0, 0
/* 80A345E0  98 1C 15 CD */	stb r0, 0x15cd(r28)
lbl_80A345E4:
/* 80A345E4  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A345E8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A345EC  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A345F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A345F4  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A345F8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A345FC  7F 83 E3 78 */	mr r3, r28
/* 80A34600  38 81 00 20 */	addi r4, r1, 0x20
/* 80A34604  48 00 64 55 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A34608  7F 83 E3 78 */	mr r3, r28
/* 80A3460C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A34610  48 00 64 E1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A34614  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A34618  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A3461C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A34620  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A34624  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A34628  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A3462C  4B 5D 87 39 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A34630  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A34634  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A34638  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A3463C  4B 5D 7D F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A34640  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A34644  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A34648  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A3464C  7C 85 23 78 */	mr r5, r4
/* 80A34650  4B 91 27 1D */	bl PSMTXMultVec
/* 80A34654  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A34658  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A3465C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80A34660  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80A34664  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A34668  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A3466C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A34670  EC 01 00 2A */	fadds f0, f1, f0
/* 80A34674  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A34678  38 61 00 50 */	addi r3, r1, 0x50
/* 80A3467C  4B 5E 96 41 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A34680  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A34684  41 82 00 10 */	beq lbl_80A34694
/* 80A34688  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A3468C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A34690  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_80A34694:
/* 80A34694  7F 83 E3 78 */	mr r3, r28
/* 80A34698  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3469C  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A346A0  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A346A4  4B 5E 60 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A346A8  7C 65 1B 78 */	mr r5, r3
/* 80A346AC  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A346B0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A346B4  3C A5 00 01 */	addis r5, r5, 1
/* 80A346B8  38 05 80 00 */	addi r0, r5, -32768
/* 80A346BC  7C 05 07 34 */	extsh r5, r0
/* 80A346C0  38 C0 00 00 */	li r6, 0
/* 80A346C4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A346C8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A346CC  7D 89 03 A6 */	mtctr r12
/* 80A346D0  4E 80 04 21 */	bctrl 
/* 80A346D4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A346D8  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 80A346DC  60 00 00 80 */	ori r0, r0, 0x80
/* 80A346E0  90 03 05 7C */	stw r0, 0x57c(r3)
/* 80A346E4  48 00 01 4C */	b lbl_80A34830
lbl_80A346E8:
/* 80A346E8  7F 83 E3 78 */	mr r3, r28
/* 80A346EC  38 80 02 E8 */	li r4, 0x2e8
/* 80A346F0  38 A0 00 00 */	li r5, 0
/* 80A346F4  48 00 6C F5 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A346F8  48 00 01 38 */	b lbl_80A34830
lbl_80A346FC:
/* 80A346FC  38 60 00 0B */	li r3, 0xb
/* 80A34700  4B 71 84 2D */	bl daNpcT_offTmpBit__FUl
/* 80A34704  7F 83 E3 78 */	mr r3, r28
/* 80A34708  38 80 02 E9 */	li r4, 0x2e9
/* 80A3470C  38 A0 00 00 */	li r5, 0
/* 80A34710  48 00 6C D9 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A34714  48 00 01 1C */	b lbl_80A34830
lbl_80A34718:
/* 80A34718  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3471C  2C 00 00 01 */	cmpwi r0, 1
/* 80A34720  41 82 00 24 */	beq lbl_80A34744
/* 80A34724  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A34728  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3472C  4B 71 11 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34730  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A34734  38 00 00 01 */	li r0, 1
/* 80A34738  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3473C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A34740  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A34744:
/* 80A34744  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A34748  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3474C  4B 71 11 4D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34750  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A34754  38 00 00 0C */	li r0, 0xc
/* 80A34758  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3475C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A34760  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A34764  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A34768  2C 00 00 00 */	cmpwi r0, 0
/* 80A3476C  41 82 00 24 */	beq lbl_80A34790
/* 80A34770  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A34774  4B 71 0F 89 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A34778  38 00 00 00 */	li r0, 0
/* 80A3477C  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A34780  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A34784  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A34788  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A3478C  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A34790:
/* 80A34790  38 00 00 00 */	li r0, 0
/* 80A34794  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A34798  48 00 00 98 */	b lbl_80A34830
lbl_80A3479C:
/* 80A3479C  7F 83 E3 78 */	mr r3, r28
/* 80A347A0  38 80 02 E9 */	li r4, 0x2e9
/* 80A347A4  38 A0 00 00 */	li r5, 0
/* 80A347A8  48 00 6C 41 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A347AC  48 00 00 84 */	b lbl_80A34830
lbl_80A347B0:
/* 80A347B0  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A347B4  2C 00 00 01 */	cmpwi r0, 1
/* 80A347B8  41 82 00 24 */	beq lbl_80A347DC
/* 80A347BC  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A347C0  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A347C4  4B 71 10 D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A347C8  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A347CC  38 00 00 01 */	li r0, 1
/* 80A347D0  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A347D4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A347D8  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A347DC:
/* 80A347DC  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A347E0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A347E4  4B 71 10 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A347E8  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A347EC  38 00 00 18 */	li r0, 0x18
/* 80A347F0  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A347F4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A347F8  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A347FC  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A34800  2C 00 00 00 */	cmpwi r0, 0
/* 80A34804  41 82 00 24 */	beq lbl_80A34828
/* 80A34808  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A3480C  4B 71 0E F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A34810  38 00 00 00 */	li r0, 0
/* 80A34814  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A34818  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3481C  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A34820  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A34824  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A34828:
/* 80A34828  38 00 00 00 */	li r0, 0
/* 80A3482C  98 1C 0D 33 */	stb r0, 0xd33(r28)
lbl_80A34830:
/* 80A34830  28 1D 00 46 */	cmplwi r29, 0x46
/* 80A34834  41 81 05 64 */	bgt lbl_80A34D98
/* 80A34838  3C 60 80 A4 */	lis r3, lit_11023@ha /* 0x80A420F0@ha */
/* 80A3483C  38 63 20 F0 */	addi r3, r3, lit_11023@l /* 0x80A420F0@l */
/* 80A34840  57 A0 10 3A */	slwi r0, r29, 2
/* 80A34844  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A34848  7C 09 03 A6 */	mtctr r0
/* 80A3484C  4E 80 04 20 */	bctr 
lbl_80A34850:
/* 80A34850  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80A34854  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A34858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3485C  4C 40 13 82 */	cror 2, 0, 2
/* 80A34860  40 82 05 3C */	bne lbl_80A34D9C
/* 80A34864  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 80A34868  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A3486C  41 82 05 30 */	beq lbl_80A34D9C
/* 80A34870  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A34874  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80A34878  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80A3487C  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80A34880  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A34884  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A34888  40 82 00 30 */	bne lbl_80A348B8
/* 80A3488C  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A34890  41 82 00 50 */	beq lbl_80A348E0
/* 80A34894  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A34898  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3489C  4B 71 0F FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A348A0  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A348A4  38 00 00 13 */	li r0, 0x13
/* 80A348A8  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A348AC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A348B0  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A348B4  48 00 00 2C */	b lbl_80A348E0
lbl_80A348B8:
/* 80A348B8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A348BC  41 82 00 24 */	beq lbl_80A348E0
/* 80A348C0  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A348C4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A348C8  4B 71 0F D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A348CC  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A348D0  38 00 00 0F */	li r0, 0xf
/* 80A348D4  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A348D8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A348DC  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
lbl_80A348E0:
/* 80A348E0  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A348E4  2C 00 00 01 */	cmpwi r0, 1
/* 80A348E8  41 82 00 24 */	beq lbl_80A3490C
/* 80A348EC  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A348F0  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A348F4  4B 71 0F A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A348F8  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A348FC  38 00 00 01 */	li r0, 1
/* 80A34900  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A34904  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A34908  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A3490C:
/* 80A3490C  7F 83 E3 78 */	mr r3, r28
/* 80A34910  48 00 2C 49 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A34914  3B C0 00 01 */	li r30, 1
/* 80A34918  48 00 04 84 */	b lbl_80A34D9C
lbl_80A3491C:
/* 80A3491C  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A34920  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A34924  41 82 00 0C */	beq lbl_80A34930
/* 80A34928  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A3492C  40 82 04 70 */	bne lbl_80A34D9C
lbl_80A34930:
/* 80A34930  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A34934  2C 00 00 00 */	cmpwi r0, 0
/* 80A34938  40 81 00 0C */	ble lbl_80A34944
/* 80A3493C  3B C0 00 01 */	li r30, 1
/* 80A34940  48 00 04 5C */	b lbl_80A34D9C
lbl_80A34944:
/* 80A34944  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A34948  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A3494C  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80A34950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A34954  4C 41 13 82 */	cror 2, 1, 2
/* 80A34958  40 82 04 44 */	bne lbl_80A34D9C
/* 80A3495C  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80A34960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A34964  40 80 04 38 */	bge lbl_80A34D9C
/* 80A34968  7F 83 E3 78 */	mr r3, r28
/* 80A3496C  48 00 2B ED */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A34970  48 00 04 2C */	b lbl_80A34D9C
lbl_80A34974:
/* 80A34974  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A34978  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A3497C  41 82 00 0C */	beq lbl_80A34988
/* 80A34980  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A34984  40 82 04 18 */	bne lbl_80A34D9C
lbl_80A34988:
/* 80A34988  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A3498C  2C 00 00 00 */	cmpwi r0, 0
/* 80A34990  40 81 04 0C */	ble lbl_80A34D9C
/* 80A34994  3B C0 00 01 */	li r30, 1
/* 80A34998  48 00 04 04 */	b lbl_80A34D9C
lbl_80A3499C:
/* 80A3499C  7F 83 E3 78 */	mr r3, r28
/* 80A349A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A349A4  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A349A8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A349AC  4B 5E 5D 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A349B0  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A349B4  7C 60 07 34 */	extsh r0, r3
/* 80A349B8  7C 04 00 00 */	cmpw r4, r0
/* 80A349BC  41 82 00 94 */	beq lbl_80A34A50
/* 80A349C0  7F 83 E3 78 */	mr r3, r28
/* 80A349C4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A349C8  4B 5E 5D 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A349CC  7C 64 1B 78 */	mr r4, r3
/* 80A349D0  7F 83 E3 78 */	mr r3, r28
/* 80A349D4  38 A0 00 01 */	li r5, 1
/* 80A349D8  38 C0 00 20 */	li r6, 0x20
/* 80A349DC  38 E0 00 14 */	li r7, 0x14
/* 80A349E0  39 00 00 00 */	li r8, 0
/* 80A349E4  48 00 68 3D */	bl step__10daNpc_Kn_cFsiiii
/* 80A349E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A349EC  41 82 03 B0 */	beq lbl_80A34D9C
/* 80A349F0  3B C0 00 01 */	li r30, 1
/* 80A349F4  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A349F8  2C 00 00 01 */	cmpwi r0, 1
/* 80A349FC  41 82 00 24 */	beq lbl_80A34A20
/* 80A34A00  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A34A04  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A34A08  4B 71 0E 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34A0C  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A34A10  38 00 00 01 */	li r0, 1
/* 80A34A14  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A34A18  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A34A1C  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A34A20:
/* 80A34A20  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A34A24  2C 00 00 00 */	cmpwi r0, 0
/* 80A34A28  41 82 03 74 */	beq lbl_80A34D9C
/* 80A34A2C  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A34A30  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A34A34  4B 71 0E 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34A38  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A34A3C  38 00 00 00 */	li r0, 0
/* 80A34A40  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A34A44  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A34A48  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A34A4C  48 00 03 50 */	b lbl_80A34D9C
lbl_80A34A50:
/* 80A34A50  3B C0 00 01 */	li r30, 1
/* 80A34A54  48 00 03 48 */	b lbl_80A34D9C
lbl_80A34A58:
/* 80A34A58  7F 83 E3 78 */	mr r3, r28
/* 80A34A5C  38 80 00 00 */	li r4, 0
/* 80A34A60  38 A0 00 00 */	li r5, 0
/* 80A34A64  38 C0 00 00 */	li r6, 0
/* 80A34A68  38 E0 00 00 */	li r7, 0
/* 80A34A6C  48 00 69 DD */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A34A70  2C 03 00 00 */	cmpwi r3, 0
/* 80A34A74  41 82 03 28 */	beq lbl_80A34D9C
/* 80A34A78  3B C0 00 01 */	li r30, 1
/* 80A34A7C  48 00 03 20 */	b lbl_80A34D9C
lbl_80A34A80:
/* 80A34A80  3B C0 00 01 */	li r30, 1
/* 80A34A84  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A34A88  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A34A8C  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A34A90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A34A94  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A34A98  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A34A9C  7F 83 E3 78 */	mr r3, r28
/* 80A34AA0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A34AA4  48 00 5F B5 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A34AA8  7F 83 E3 78 */	mr r3, r28
/* 80A34AAC  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A34AB0  48 00 60 41 */	bl setAngle__10daNpc_Kn_cFs
/* 80A34AB4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A34AB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A34ABC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A34AC0  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A34AC4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A34AC8  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A34ACC  4B 5D 82 99 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A34AD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A34AD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A34AD8  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A34ADC  4B 5D 79 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A34AE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A34AE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A34AE8  38 81 00 44 */	addi r4, r1, 0x44
/* 80A34AEC  7C 85 23 78 */	mr r5, r4
/* 80A34AF0  4B 91 22 7D */	bl PSMTXMultVec
/* 80A34AF4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A34AF8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A34AFC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80A34B00  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80A34B04  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A34B08  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A34B0C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A34B10  EC 01 00 2A */	fadds f0, f1, f0
/* 80A34B14  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A34B18  38 61 00 38 */	addi r3, r1, 0x38
/* 80A34B1C  4B 5E 91 A1 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A34B20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A34B24  41 82 00 10 */	beq lbl_80A34B34
/* 80A34B28  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A34B2C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A34B30  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_80A34B34:
/* 80A34B34  7F 83 E3 78 */	mr r3, r28
/* 80A34B38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A34B3C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A34B40  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A34B44  4B 5E 5B CD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A34B48  7C 65 1B 78 */	mr r5, r3
/* 80A34B4C  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A34B50  38 81 00 44 */	addi r4, r1, 0x44
/* 80A34B54  3C A5 00 01 */	addis r5, r5, 1
/* 80A34B58  38 05 80 00 */	addi r0, r5, -32768
/* 80A34B5C  7C 05 07 34 */	extsh r5, r0
/* 80A34B60  38 C0 00 00 */	li r6, 0
/* 80A34B64  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A34B68  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A34B6C  7D 89 03 A6 */	mtctr r12
/* 80A34B70  4E 80 04 21 */	bctrl 
/* 80A34B74  48 00 02 28 */	b lbl_80A34D9C
lbl_80A34B78:
/* 80A34B78  7F 83 E3 78 */	mr r3, r28
/* 80A34B7C  38 80 00 00 */	li r4, 0
/* 80A34B80  38 A0 00 00 */	li r5, 0
/* 80A34B84  38 C0 00 00 */	li r6, 0
/* 80A34B88  38 E0 00 00 */	li r7, 0
/* 80A34B8C  48 00 68 BD */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A34B90  2C 03 00 00 */	cmpwi r3, 0
/* 80A34B94  41 82 02 08 */	beq lbl_80A34D9C
/* 80A34B98  3B C0 00 01 */	li r30, 1
/* 80A34B9C  48 00 02 00 */	b lbl_80A34D9C
lbl_80A34BA0:
/* 80A34BA0  80 9C 0B B0 */	lwz r4, 0xbb0(r28)
/* 80A34BA4  2C 04 00 0C */	cmpwi r4, 0xc
/* 80A34BA8  40 82 01 68 */	bne lbl_80A34D10
/* 80A34BAC  38 60 00 00 */	li r3, 0
/* 80A34BB0  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A34BB4  2C 00 00 00 */	cmpwi r0, 0
/* 80A34BB8  40 82 00 14 */	bne lbl_80A34BCC
/* 80A34BBC  80 1C 0B BC */	lwz r0, 0xbbc(r28)
/* 80A34BC0  2C 00 FF FF */	cmpwi r0, -1
/* 80A34BC4  40 82 00 08 */	bne lbl_80A34BCC
/* 80A34BC8  38 60 00 01 */	li r3, 1
lbl_80A34BCC:
/* 80A34BCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A34BD0  40 82 01 40 */	bne lbl_80A34D10
/* 80A34BD4  80 9C 05 BC */	lwz r4, 0x5bc(r28)
/* 80A34BD8  38 60 00 01 */	li r3, 1
/* 80A34BDC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80A34BE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A34BE4  40 82 00 18 */	bne lbl_80A34BFC
/* 80A34BE8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A34BEC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80A34BF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A34BF4  41 82 00 08 */	beq lbl_80A34BFC
/* 80A34BF8  38 60 00 00 */	li r3, 0
lbl_80A34BFC:
/* 80A34BFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A34C00  41 82 00 CC */	beq lbl_80A34CCC
/* 80A34C04  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A34C08  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A34C0C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A34C10  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 80A34C14  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A34C18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A34C1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A34C20  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A34C24  4B 5D 77 B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A34C28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A34C2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A34C30  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A34C34  7C 85 23 78 */	mr r5, r4
/* 80A34C38  4B 91 21 35 */	bl PSMTXMultVec
/* 80A34C3C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A34C40  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80A34C44  7C 65 1B 78 */	mr r5, r3
/* 80A34C48  4B 91 24 49 */	bl PSVECAdd
/* 80A34C4C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A34C50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A34C54  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A34C58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A34C5C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A34C60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A34C64  7F 83 E3 78 */	mr r3, r28
/* 80A34C68  38 81 00 08 */	addi r4, r1, 8
/* 80A34C6C  48 00 5D ED */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A34C70  7F 83 E3 78 */	mr r3, r28
/* 80A34C74  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A34C78  48 00 5E 79 */	bl setAngle__10daNpc_Kn_cFs
/* 80A34C7C  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A34C80  2C 00 00 01 */	cmpwi r0, 1
/* 80A34C84  41 82 00 24 */	beq lbl_80A34CA8
/* 80A34C88  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A34C8C  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A34C90  4B 71 0C 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34C94  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A34C98  38 00 00 01 */	li r0, 1
/* 80A34C9C  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A34CA0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A34CA4  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A34CA8:
/* 80A34CA8  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A34CAC  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A34CB0  4B 71 0B E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34CB4  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A34CB8  38 00 00 07 */	li r0, 7
/* 80A34CBC  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A34CC0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A34CC4  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A34CC8  48 00 00 D4 */	b lbl_80A34D9C
lbl_80A34CCC:
/* 80A34CCC  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A34CD0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80A34CD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A34CD8  4C 41 13 82 */	cror 2, 1, 2
/* 80A34CDC  40 82 00 C0 */	bne lbl_80A34D9C
/* 80A34CE0  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80A34CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A34CE8  40 80 00 B4 */	bge lbl_80A34D9C
/* 80A34CEC  80 7C 0E 44 */	lwz r3, 0xe44(r28)
/* 80A34CF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A34CF4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80A34CF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A34CFC  80 63 00 08 */	lwz r3, 8(r3)
/* 80A34D00  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A34D04  60 00 00 01 */	ori r0, r0, 1
/* 80A34D08  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A34D0C  48 00 00 90 */	b lbl_80A34D9C
lbl_80A34D10:
/* 80A34D10  2C 04 00 07 */	cmpwi r4, 7
/* 80A34D14  40 82 00 88 */	bne lbl_80A34D9C
/* 80A34D18  38 60 00 00 */	li r3, 0
/* 80A34D1C  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A34D20  2C 00 00 00 */	cmpwi r0, 0
/* 80A34D24  40 82 00 14 */	bne lbl_80A34D38
/* 80A34D28  80 1C 0B BC */	lwz r0, 0xbbc(r28)
/* 80A34D2C  2C 00 FF FF */	cmpwi r0, -1
/* 80A34D30  40 82 00 08 */	bne lbl_80A34D38
/* 80A34D34  38 60 00 01 */	li r3, 1
lbl_80A34D38:
/* 80A34D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A34D3C  40 82 00 60 */	bne lbl_80A34D9C
/* 80A34D40  3B C0 00 01 */	li r30, 1
/* 80A34D44  48 00 00 58 */	b lbl_80A34D9C
lbl_80A34D48:
/* 80A34D48  7F 83 E3 78 */	mr r3, r28
/* 80A34D4C  38 80 00 00 */	li r4, 0
/* 80A34D50  38 A0 00 00 */	li r5, 0
/* 80A34D54  38 C0 00 00 */	li r6, 0
/* 80A34D58  38 E0 00 00 */	li r7, 0
/* 80A34D5C  48 00 66 ED */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A34D60  2C 03 00 00 */	cmpwi r3, 0
/* 80A34D64  41 82 00 38 */	beq lbl_80A34D9C
/* 80A34D68  3B C0 00 01 */	li r30, 1
/* 80A34D6C  48 00 00 30 */	b lbl_80A34D9C
lbl_80A34D70:
/* 80A34D70  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A34D74  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A34D78  40 82 00 24 */	bne lbl_80A34D9C
/* 80A34D7C  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A34D80  2C 00 00 00 */	cmpwi r0, 0
/* 80A34D84  40 81 00 18 */	ble lbl_80A34D9C
/* 80A34D88  3B C0 00 01 */	li r30, 1
/* 80A34D8C  38 00 00 0C */	li r0, 0xc
/* 80A34D90  98 1C 15 AE */	stb r0, 0x15ae(r28)
/* 80A34D94  48 00 00 08 */	b lbl_80A34D9C
lbl_80A34D98:
/* 80A34D98  3B C0 00 01 */	li r30, 1
lbl_80A34D9C:
/* 80A34D9C  7F C3 F3 78 */	mr r3, r30
/* 80A34DA0  39 61 00 80 */	addi r11, r1, 0x80
/* 80A34DA4  4B 92 D4 79 */	bl _restgpr_26
/* 80A34DA8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A34DAC  7C 08 03 A6 */	mtlr r0
/* 80A34DB0  38 21 00 80 */	addi r1, r1, 0x80
/* 80A34DB4  4E 80 00 20 */	blr 
