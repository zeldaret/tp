lbl_80A353E0:
/* 80A353E0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80A353E4  7C 08 02 A6 */	mflr r0
/* 80A353E8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A353EC  39 61 00 90 */	addi r11, r1, 0x90
/* 80A353F0  4B 92 CD E0 */	b _savegpr_26
/* 80A353F4  7C 7C 1B 78 */	mr r28, r3
/* 80A353F8  7C 9A 23 78 */	mr r26, r4
/* 80A353FC  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A35400  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A35404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A35408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3540C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A35410  3B C0 00 00 */	li r30, 0
/* 80A35414  3B A0 FF FF */	li r29, -1
/* 80A35418  7F 63 DB 78 */	mr r3, r27
/* 80A3541C  3C A0 80 A4 */	lis r5, stringBase0@ha
/* 80A35420  38 A5 0A F8 */	addi r5, r5, stringBase0@l
/* 80A35424  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A35428  38 C0 00 03 */	li r6, 3
/* 80A3542C  4B 61 2C C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A35430  28 03 00 00 */	cmplwi r3, 0
/* 80A35434  41 82 00 08 */	beq lbl_80A3543C
/* 80A35438  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A3543C:
/* 80A3543C  7F 63 DB 78 */	mr r3, r27
/* 80A35440  7F 44 D3 78 */	mr r4, r26
/* 80A35444  4B 61 29 08 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A35448  2C 03 00 00 */	cmpwi r3, 0
/* 80A3544C  41 82 03 88 */	beq lbl_80A357D4
/* 80A35450  28 1D 00 50 */	cmplwi r29, 0x50
/* 80A35454  41 81 03 80 */	bgt lbl_80A357D4
/* 80A35458  3C 60 80 A4 */	lis r3, lit_11517@ha
/* 80A3545C  38 63 25 64 */	addi r3, r3, lit_11517@l
/* 80A35460  57 A0 10 3A */	slwi r0, r29, 2
/* 80A35464  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A35468  7C 09 03 A6 */	mtctr r0
/* 80A3546C  4E 80 04 20 */	bctr 
lbl_80A35470:
/* 80A35470  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A35474  2C 00 00 01 */	cmpwi r0, 1
/* 80A35478  41 82 00 24 */	beq lbl_80A3549C
/* 80A3547C  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A35480  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A35484  4B 71 04 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35488  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A3548C  38 00 00 01 */	li r0, 1
/* 80A35490  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A35494  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A35498  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A3549C:
/* 80A3549C  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A354A0  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A354A4  40 82 00 30 */	bne lbl_80A354D4
/* 80A354A8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A354AC  41 82 03 28 */	beq lbl_80A357D4
/* 80A354B0  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A354B4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A354B8  4B 71 03 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A354BC  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A354C0  38 00 00 16 */	li r0, 0x16
/* 80A354C4  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A354C8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A354CC  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A354D0  48 00 03 04 */	b lbl_80A357D4
lbl_80A354D4:
/* 80A354D4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A354D8  41 82 02 FC */	beq lbl_80A357D4
/* 80A354DC  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A354E0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A354E4  4B 71 03 B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A354E8  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A354EC  38 00 00 10 */	li r0, 0x10
/* 80A354F0  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A354F4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A354F8  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A354FC  48 00 02 D8 */	b lbl_80A357D4
lbl_80A35500:
/* 80A35500  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A35504  2C 00 00 01 */	cmpwi r0, 1
/* 80A35508  41 82 00 28 */	beq lbl_80A35530
/* 80A3550C  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A35510  4B 71 01 EC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A35514  38 00 00 00 */	li r0, 0
/* 80A35518  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A3551C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A35520  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A35524  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A35528  38 00 00 01 */	li r0, 1
/* 80A3552C  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A35530:
/* 80A35530  38 00 00 00 */	li r0, 0
/* 80A35534  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A35538  48 00 02 9C */	b lbl_80A357D4
lbl_80A3553C:
/* 80A3553C  38 00 00 02 */	li r0, 2
/* 80A35540  B0 1C 0D FE */	sth r0, 0xdfe(r28)
/* 80A35544  7F 83 E3 78 */	mr r3, r28
/* 80A35548  38 80 02 F8 */	li r4, 0x2f8
/* 80A3554C  38 A0 00 00 */	li r5, 0
/* 80A35550  48 00 5E 99 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A35554  48 00 02 80 */	b lbl_80A357D4
lbl_80A35558:
/* 80A35558  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A3555C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A35560  80 63 00 00 */	lwz r3, 0(r3)
/* 80A35564  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A35568  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000070@ha */
/* 80A3556C  38 84 00 70 */	addi r4, r4, 0x0070 /* 0x01000070@l */
/* 80A35570  38 A0 00 00 */	li r5, 0
/* 80A35574  38 C0 00 00 */	li r6, 0
/* 80A35578  4B 87 9A 98 */	b bgmStart__8Z2SeqMgrFUlUll
lbl_80A3557C:
/* 80A3557C  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A35580  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A35584  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A35588  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A3558C  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A35590  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A35594  7F 83 E3 78 */	mr r3, r28
/* 80A35598  38 81 00 28 */	addi r4, r1, 0x28
/* 80A3559C  48 00 54 BD */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A355A0  7F 83 E3 78 */	mr r3, r28
/* 80A355A4  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A355A8  48 00 55 49 */	bl setAngle__10daNpc_Kn_cFs
/* 80A355AC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A355B0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A355B4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A355B8  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A355BC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A355C0  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A355C4  4B 5D 77 A0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A355C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A355CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A355D0  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A355D4  4B 5D 6E 60 */	b mDoMtx_YrotM__FPA4_fs
/* 80A355D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A355DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A355E0  38 81 00 64 */	addi r4, r1, 0x64
/* 80A355E4  7C 85 23 78 */	mr r5, r4
/* 80A355E8  4B 91 17 84 */	b PSMTXMultVec
/* 80A355EC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A355F0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A355F4  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80A355F8  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80A355FC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A35600  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A35604  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A35608  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3560C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A35610  38 61 00 58 */	addi r3, r1, 0x58
/* 80A35614  4B 5E 86 A8 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A35618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A3561C  41 82 00 10 */	beq lbl_80A3562C
/* 80A35620  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A35624  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A35628  D0 01 00 68 */	stfs f0, 0x68(r1)
lbl_80A3562C:
/* 80A3562C  7F 83 E3 78 */	mr r3, r28
/* 80A35630  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A35634  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80A35638  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A3563C  4B 5E 50 D4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A35640  7C 65 1B 78 */	mr r5, r3
/* 80A35644  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A35648  38 81 00 64 */	addi r4, r1, 0x64
/* 80A3564C  3C A5 00 01 */	addis r5, r5, 1
/* 80A35650  38 05 80 00 */	addi r0, r5, -32768
/* 80A35654  7C 05 07 34 */	extsh r5, r0
/* 80A35658  38 C0 00 00 */	li r6, 0
/* 80A3565C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A35660  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A35664  7D 89 03 A6 */	mtctr r12
/* 80A35668  4E 80 04 21 */	bctrl 
/* 80A3566C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A35670  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 80A35674  60 00 02 00 */	ori r0, r0, 0x200
/* 80A35678  90 03 05 7C */	stw r0, 0x57c(r3)
/* 80A3567C  48 00 01 58 */	b lbl_80A357D4
lbl_80A35680:
/* 80A35680  7F 83 E3 78 */	mr r3, r28
/* 80A35684  38 80 02 F9 */	li r4, 0x2f9
/* 80A35688  38 A0 00 00 */	li r5, 0
/* 80A3568C  48 00 5D 5D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A35690  48 00 01 44 */	b lbl_80A357D4
lbl_80A35694:
/* 80A35694  38 60 00 0B */	li r3, 0xb
/* 80A35698  4B 71 74 94 */	b daNpcT_offTmpBit__FUl
/* 80A3569C  7F 83 E3 78 */	mr r3, r28
/* 80A356A0  38 80 02 FA */	li r4, 0x2fa
/* 80A356A4  38 A0 00 00 */	li r5, 0
/* 80A356A8  48 00 5D 41 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A356AC  48 00 01 28 */	b lbl_80A357D4
lbl_80A356B0:
/* 80A356B0  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A356B4  2C 00 00 01 */	cmpwi r0, 1
/* 80A356B8  41 82 00 24 */	beq lbl_80A356DC
/* 80A356BC  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A356C0  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A356C4  4B 71 01 D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A356C8  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A356CC  38 00 00 01 */	li r0, 1
/* 80A356D0  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A356D4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A356D8  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A356DC:
/* 80A356DC  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A356E0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A356E4  4B 71 01 B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A356E8  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A356EC  38 00 00 0A */	li r0, 0xa
/* 80A356F0  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A356F4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A356F8  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A356FC  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A35700  2C 00 00 00 */	cmpwi r0, 0
/* 80A35704  41 82 00 24 */	beq lbl_80A35728
/* 80A35708  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A3570C  4B 70 FF F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A35710  38 00 00 00 */	li r0, 0
/* 80A35714  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A35718  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3571C  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A35720  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A35724  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A35728:
/* 80A35728  38 00 00 00 */	li r0, 0
/* 80A3572C  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A35730  48 00 00 A4 */	b lbl_80A357D4
lbl_80A35734:
/* 80A35734  7F 83 E3 78 */	mr r3, r28
/* 80A35738  38 80 02 FA */	li r4, 0x2fa
/* 80A3573C  38 A0 00 00 */	li r5, 0
/* 80A35740  48 00 5C A9 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A35744  48 00 00 90 */	b lbl_80A357D4
lbl_80A35748:
/* 80A35748  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3574C  2C 00 00 01 */	cmpwi r0, 1
/* 80A35750  41 82 00 24 */	beq lbl_80A35774
/* 80A35754  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A35758  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3575C  4B 71 01 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35760  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A35764  38 00 00 01 */	li r0, 1
/* 80A35768  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3576C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A35770  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A35774:
/* 80A35774  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A35778  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3577C  4B 71 01 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35780  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A35784  38 00 00 18 */	li r0, 0x18
/* 80A35788  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3578C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A35790  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A35794  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A35798  2C 00 00 00 */	cmpwi r0, 0
/* 80A3579C  41 82 00 24 */	beq lbl_80A357C0
/* 80A357A0  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A357A4  4B 70 FF 58 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A357A8  38 00 00 00 */	li r0, 0
/* 80A357AC  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A357B0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A357B4  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A357B8  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A357BC  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A357C0:
/* 80A357C0  38 00 00 00 */	li r0, 0
/* 80A357C4  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A357C8  48 00 00 0C */	b lbl_80A357D4
lbl_80A357CC:
/* 80A357CC  38 00 00 78 */	li r0, 0x78
/* 80A357D0  90 1C 0D EC */	stw r0, 0xdec(r28)
lbl_80A357D4:
/* 80A357D4  28 1D 00 50 */	cmplwi r29, 0x50
/* 80A357D8  41 81 05 90 */	bgt lbl_80A35D68
/* 80A357DC  3C 60 80 A4 */	lis r3, lit_11518@ha
/* 80A357E0  38 63 24 20 */	addi r3, r3, lit_11518@l
/* 80A357E4  57 A0 10 3A */	slwi r0, r29, 2
/* 80A357E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A357EC  7C 09 03 A6 */	mtctr r0
/* 80A357F0  4E 80 04 20 */	bctr 
lbl_80A357F4:
/* 80A357F4  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80A357F8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A357FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A35800  4C 40 13 82 */	cror 2, 0, 2
/* 80A35804  40 82 05 68 */	bne lbl_80A35D6C
/* 80A35808  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 80A3580C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A35810  41 82 05 5C */	beq lbl_80A35D6C
/* 80A35814  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A35818  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80A3581C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80A35820  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80A35824  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A35828  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A3582C  40 82 00 30 */	bne lbl_80A3585C
/* 80A35830  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A35834  41 82 00 50 */	beq lbl_80A35884
/* 80A35838  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3583C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A35840  4B 71 00 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35844  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A35848  38 00 00 13 */	li r0, 0x13
/* 80A3584C  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A35850  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A35854  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A35858  48 00 00 2C */	b lbl_80A35884
lbl_80A3585C:
/* 80A3585C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A35860  41 82 00 24 */	beq lbl_80A35884
/* 80A35864  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A35868  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3586C  4B 71 00 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35870  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A35874  38 00 00 0F */	li r0, 0xf
/* 80A35878  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3587C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A35880  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
lbl_80A35884:
/* 80A35884  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A35888  2C 00 00 01 */	cmpwi r0, 1
/* 80A3588C  41 82 00 24 */	beq lbl_80A358B0
/* 80A35890  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A35894  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A35898  4B 71 00 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3589C  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A358A0  38 00 00 01 */	li r0, 1
/* 80A358A4  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A358A8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A358AC  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A358B0:
/* 80A358B0  7F 83 E3 78 */	mr r3, r28
/* 80A358B4  48 00 1C A5 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A358B8  3B C0 00 01 */	li r30, 1
/* 80A358BC  48 00 04 B0 */	b lbl_80A35D6C
lbl_80A358C0:
/* 80A358C0  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A358C4  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A358C8  41 82 00 0C */	beq lbl_80A358D4
/* 80A358CC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A358D0  40 82 04 9C */	bne lbl_80A35D6C
lbl_80A358D4:
/* 80A358D4  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A358D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A358DC  40 81 00 0C */	ble lbl_80A358E8
/* 80A358E0  3B C0 00 01 */	li r30, 1
/* 80A358E4  48 00 04 88 */	b lbl_80A35D6C
lbl_80A358E8:
/* 80A358E8  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A358EC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A358F0  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80A358F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A358F8  4C 41 13 82 */	cror 2, 1, 2
/* 80A358FC  40 82 04 70 */	bne lbl_80A35D6C
/* 80A35900  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80A35904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A35908  40 80 04 64 */	bge lbl_80A35D6C
/* 80A3590C  7F 83 E3 78 */	mr r3, r28
/* 80A35910  48 00 1C 49 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A35914  48 00 04 58 */	b lbl_80A35D6C
lbl_80A35918:
/* 80A35918  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3591C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A35920  41 82 00 0C */	beq lbl_80A3592C
/* 80A35924  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A35928  40 82 04 44 */	bne lbl_80A35D6C
lbl_80A3592C:
/* 80A3592C  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A35930  2C 00 00 00 */	cmpwi r0, 0
/* 80A35934  40 81 04 38 */	ble lbl_80A35D6C
/* 80A35938  3B C0 00 01 */	li r30, 1
/* 80A3593C  48 00 04 30 */	b lbl_80A35D6C
lbl_80A35940:
/* 80A35940  7F 83 E3 78 */	mr r3, r28
/* 80A35944  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A35948  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80A3594C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A35950  4B 5E 4D C0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A35954  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A35958  7C 60 07 34 */	extsh r0, r3
/* 80A3595C  7C 04 00 00 */	cmpw r4, r0
/* 80A35960  41 82 00 94 */	beq lbl_80A359F4
/* 80A35964  7F 83 E3 78 */	mr r3, r28
/* 80A35968  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A3596C  4B 5E 4D A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A35970  7C 64 1B 78 */	mr r4, r3
/* 80A35974  7F 83 E3 78 */	mr r3, r28
/* 80A35978  38 A0 00 01 */	li r5, 1
/* 80A3597C  38 C0 00 20 */	li r6, 0x20
/* 80A35980  38 E0 00 14 */	li r7, 0x14
/* 80A35984  39 00 00 00 */	li r8, 0
/* 80A35988  48 00 58 99 */	bl step__10daNpc_Kn_cFsiiii
/* 80A3598C  2C 03 00 00 */	cmpwi r3, 0
/* 80A35990  41 82 03 DC */	beq lbl_80A35D6C
/* 80A35994  3B C0 00 01 */	li r30, 1
/* 80A35998  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3599C  2C 00 00 01 */	cmpwi r0, 1
/* 80A359A0  41 82 00 24 */	beq lbl_80A359C4
/* 80A359A4  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A359A8  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A359AC  4B 70 FE EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A359B0  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A359B4  38 00 00 01 */	li r0, 1
/* 80A359B8  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A359BC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A359C0  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A359C4:
/* 80A359C4  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A359C8  2C 00 00 00 */	cmpwi r0, 0
/* 80A359CC  41 82 03 A0 */	beq lbl_80A35D6C
/* 80A359D0  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A359D4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A359D8  4B 70 FE C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A359DC  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A359E0  38 00 00 00 */	li r0, 0
/* 80A359E4  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A359E8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A359EC  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A359F0  48 00 03 7C */	b lbl_80A35D6C
lbl_80A359F4:
/* 80A359F4  3B C0 00 01 */	li r30, 1
/* 80A359F8  48 00 03 74 */	b lbl_80A35D6C
lbl_80A359FC:
/* 80A359FC  7F 83 E3 78 */	mr r3, r28
/* 80A35A00  38 80 00 00 */	li r4, 0
/* 80A35A04  38 A0 00 00 */	li r5, 0
/* 80A35A08  38 C0 00 00 */	li r6, 0
/* 80A35A0C  38 E0 00 00 */	li r7, 0
/* 80A35A10  48 00 5A 39 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A35A14  2C 03 00 00 */	cmpwi r3, 0
/* 80A35A18  41 82 03 54 */	beq lbl_80A35D6C
/* 80A35A1C  3B C0 00 01 */	li r30, 1
/* 80A35A20  48 00 03 4C */	b lbl_80A35D6C
lbl_80A35A24:
/* 80A35A24  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A35A28  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A35A2C  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A35A30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A35A34  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A35A38  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A35A3C  7F 83 E3 78 */	mr r3, r28
/* 80A35A40  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A35A44  48 00 50 15 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A35A48  7F 83 E3 78 */	mr r3, r28
/* 80A35A4C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A35A50  48 00 50 A1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A35A54  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A35A58  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A35A5C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A35A60  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A35A64  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A35A68  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A35A6C  4B 5D 72 F8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A35A70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A35A74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A35A78  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A35A7C  4B 5D 69 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80A35A80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A35A84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A35A88  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A35A8C  7C 85 23 78 */	mr r5, r4
/* 80A35A90  4B 91 12 DC */	b PSMTXMultVec
/* 80A35A94  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A35A98  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A35A9C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80A35AA0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80A35AA4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A35AA8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A35AAC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A35AB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80A35AB4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A35AB8  38 61 00 40 */	addi r3, r1, 0x40
/* 80A35ABC  4B 5E 82 00 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A35AC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A35AC4  41 82 00 10 */	beq lbl_80A35AD4
/* 80A35AC8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A35ACC  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A35AD0  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80A35AD4:
/* 80A35AD4  7F 83 E3 78 */	mr r3, r28
/* 80A35AD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A35ADC  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A35AE0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A35AE4  4B 5E 4C 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A35AE8  7C 65 1B 78 */	mr r5, r3
/* 80A35AEC  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A35AF0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A35AF4  3C A5 00 01 */	addis r5, r5, 1
/* 80A35AF8  38 05 80 00 */	addi r0, r5, -32768
/* 80A35AFC  7C 05 07 34 */	extsh r5, r0
/* 80A35B00  38 C0 00 00 */	li r6, 0
/* 80A35B04  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A35B08  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A35B0C  7D 89 03 A6 */	mtctr r12
/* 80A35B10  4E 80 04 21 */	bctrl 
/* 80A35B14  3B C0 00 01 */	li r30, 1
/* 80A35B18  48 00 02 54 */	b lbl_80A35D6C
lbl_80A35B1C:
/* 80A35B1C  7F 83 E3 78 */	mr r3, r28
/* 80A35B20  38 80 00 00 */	li r4, 0
/* 80A35B24  38 A0 00 00 */	li r5, 0
/* 80A35B28  38 C0 00 00 */	li r6, 0
/* 80A35B2C  38 E0 00 00 */	li r7, 0
/* 80A35B30  48 00 59 19 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A35B34  2C 03 00 00 */	cmpwi r3, 0
/* 80A35B38  41 82 02 34 */	beq lbl_80A35D6C
/* 80A35B3C  3B C0 00 01 */	li r30, 1
/* 80A35B40  48 00 02 2C */	b lbl_80A35D6C
lbl_80A35B44:
/* 80A35B44  80 9C 0B B0 */	lwz r4, 0xbb0(r28)
/* 80A35B48  2C 04 00 0A */	cmpwi r4, 0xa
/* 80A35B4C  40 82 01 24 */	bne lbl_80A35C70
/* 80A35B50  38 60 00 00 */	li r3, 0
/* 80A35B54  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A35B58  2C 00 00 00 */	cmpwi r0, 0
/* 80A35B5C  40 82 00 14 */	bne lbl_80A35B70
/* 80A35B60  80 1C 0B BC */	lwz r0, 0xbbc(r28)
/* 80A35B64  2C 00 FF FF */	cmpwi r0, -1
/* 80A35B68  40 82 00 08 */	bne lbl_80A35B70
/* 80A35B6C  38 60 00 01 */	li r3, 1
lbl_80A35B70:
/* 80A35B70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A35B74  40 82 00 FC */	bne lbl_80A35C70
/* 80A35B78  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A35B7C  38 80 00 01 */	li r4, 1
/* 80A35B80  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A35B84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A35B88  40 82 00 18 */	bne lbl_80A35BA0
/* 80A35B8C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A35B90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A35B94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A35B98  41 82 00 08 */	beq lbl_80A35BA0
/* 80A35B9C  38 80 00 00 */	li r4, 0
lbl_80A35BA0:
/* 80A35BA0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A35BA4  41 82 01 C8 */	beq lbl_80A35D6C
/* 80A35BA8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A35BAC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A35BB0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A35BB4  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 80A35BB8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A35BBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A35BC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A35BC4  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A35BC8  4B 5D 68 14 */	b mDoMtx_YrotS__FPA4_fs
/* 80A35BCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A35BD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A35BD4  38 81 00 34 */	addi r4, r1, 0x34
/* 80A35BD8  7C 85 23 78 */	mr r5, r4
/* 80A35BDC  4B 91 11 90 */	b PSMTXMultVec
/* 80A35BE0  38 61 00 34 */	addi r3, r1, 0x34
/* 80A35BE4  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80A35BE8  7C 65 1B 78 */	mr r5, r3
/* 80A35BEC  4B 91 14 A4 */	b PSVECAdd
/* 80A35BF0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A35BF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A35BF8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A35BFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A35C00  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A35C04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A35C08  7F 83 E3 78 */	mr r3, r28
/* 80A35C0C  38 81 00 10 */	addi r4, r1, 0x10
/* 80A35C10  48 00 4E 49 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A35C14  7F 83 E3 78 */	mr r3, r28
/* 80A35C18  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A35C1C  48 00 4E D5 */	bl setAngle__10daNpc_Kn_cFs
/* 80A35C20  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A35C24  2C 00 00 01 */	cmpwi r0, 1
/* 80A35C28  41 82 00 24 */	beq lbl_80A35C4C
/* 80A35C2C  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A35C30  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A35C34  4B 70 FC 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35C38  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A35C3C  38 00 00 01 */	li r0, 1
/* 80A35C40  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A35C44  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A35C48  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A35C4C:
/* 80A35C4C  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A35C50  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A35C54  4B 70 FC 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35C58  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A35C5C  38 00 00 00 */	li r0, 0
/* 80A35C60  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A35C64  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A35C68  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A35C6C  48 00 01 00 */	b lbl_80A35D6C
lbl_80A35C70:
/* 80A35C70  2C 04 00 00 */	cmpwi r4, 0
/* 80A35C74  40 82 00 F8 */	bne lbl_80A35D6C
/* 80A35C78  38 60 00 00 */	li r3, 0
/* 80A35C7C  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A35C80  2C 00 00 00 */	cmpwi r0, 0
/* 80A35C84  40 82 00 14 */	bne lbl_80A35C98
/* 80A35C88  80 1C 0B BC */	lwz r0, 0xbbc(r28)
/* 80A35C8C  2C 00 FF FF */	cmpwi r0, -1
/* 80A35C90  40 82 00 08 */	bne lbl_80A35C98
/* 80A35C94  38 60 00 01 */	li r3, 1
lbl_80A35C98:
/* 80A35C98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A35C9C  40 82 00 D0 */	bne lbl_80A35D6C
/* 80A35CA0  3B C0 00 01 */	li r30, 1
/* 80A35CA4  48 00 00 C8 */	b lbl_80A35D6C
lbl_80A35CA8:
/* 80A35CA8  7F 83 E3 78 */	mr r3, r28
/* 80A35CAC  38 80 00 00 */	li r4, 0
/* 80A35CB0  38 A0 00 00 */	li r5, 0
/* 80A35CB4  38 C0 00 00 */	li r6, 0
/* 80A35CB8  38 E0 00 00 */	li r7, 0
/* 80A35CBC  48 00 57 8D */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A35CC0  2C 03 00 00 */	cmpwi r3, 0
/* 80A35CC4  41 82 00 A8 */	beq lbl_80A35D6C
/* 80A35CC8  3B C0 00 01 */	li r30, 1
/* 80A35CCC  48 00 00 A0 */	b lbl_80A35D6C
lbl_80A35CD0:
/* 80A35CD0  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A35CD4  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A35CD8  40 82 00 94 */	bne lbl_80A35D6C
/* 80A35CDC  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A35CE0  2C 00 00 00 */	cmpwi r0, 0
/* 80A35CE4  40 81 00 88 */	ble lbl_80A35D6C
/* 80A35CE8  3B C0 00 01 */	li r30, 1
/* 80A35CEC  3B 60 00 00 */	li r27, 0
/* 80A35CF0  3B A0 00 00 */	li r29, 0
lbl_80A35CF4:
/* 80A35CF4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80A35CF8  7C 07 07 74 */	extsb r7, r0
/* 80A35CFC  93 A1 00 08 */	stw r29, 8(r1)
/* 80A35D00  38 60 02 5A */	li r3, 0x25a
/* 80A35D04  28 1C 00 00 */	cmplwi r28, 0
/* 80A35D08  41 82 00 0C */	beq lbl_80A35D14
/* 80A35D0C  80 9C 00 04 */	lwz r4, 4(r28)
/* 80A35D10  48 00 00 08 */	b lbl_80A35D18
lbl_80A35D14:
/* 80A35D14  38 80 FF FF */	li r4, -1
lbl_80A35D18:
/* 80A35D18  38 1B 00 01 */	addi r0, r27, 1
/* 80A35D1C  54 05 40 2E */	slwi r5, r0, 8
/* 80A35D20  38 A5 00 06 */	addi r5, r5, 6
/* 80A35D24  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 80A35D28  39 1C 04 DC */	addi r8, r28, 0x4dc
/* 80A35D2C  39 20 00 00 */	li r9, 0
/* 80A35D30  39 40 FF FF */	li r10, -1
/* 80A35D34  4B 5E 41 BC */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80A35D38  3B 7B 00 01 */	addi r27, r27, 1
/* 80A35D3C  2C 1B 00 02 */	cmpwi r27, 2
/* 80A35D40  41 80 FF B4 */	blt lbl_80A35CF4
/* 80A35D44  48 00 00 28 */	b lbl_80A35D6C
lbl_80A35D48:
/* 80A35D48  38 7C 0D EC */	addi r3, r28, 0xdec
/* 80A35D4C  48 00 5F FD */	bl func_80A3BD48
/* 80A35D50  2C 03 00 00 */	cmpwi r3, 0
/* 80A35D54  40 82 00 18 */	bne lbl_80A35D6C
/* 80A35D58  3B C0 00 01 */	li r30, 1
/* 80A35D5C  38 00 00 0D */	li r0, 0xd
/* 80A35D60  98 1C 15 AE */	stb r0, 0x15ae(r28)
/* 80A35D64  48 00 00 08 */	b lbl_80A35D6C
lbl_80A35D68:
/* 80A35D68  3B C0 00 01 */	li r30, 1
lbl_80A35D6C:
/* 80A35D6C  7F C3 F3 78 */	mr r3, r30
/* 80A35D70  39 61 00 90 */	addi r11, r1, 0x90
/* 80A35D74  4B 92 C4 A8 */	b _restgpr_26
/* 80A35D78  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80A35D7C  7C 08 03 A6 */	mtlr r0
/* 80A35D80  38 21 00 90 */	addi r1, r1, 0x90
/* 80A35D84  4E 80 00 20 */	blr 
