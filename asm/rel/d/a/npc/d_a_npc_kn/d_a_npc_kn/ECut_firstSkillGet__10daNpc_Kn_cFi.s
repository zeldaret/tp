lbl_80A3E550:
/* 80A3E550  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A3E554  7C 08 02 A6 */	mflr r0
/* 80A3E558  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A3E55C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A3E560  4B 92 3C 70 */	b _savegpr_26
/* 80A3E564  7C 7F 1B 78 */	mr r31, r3
/* 80A3E568  7C 9A 23 78 */	mr r26, r4
/* 80A3E56C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3E570  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A3E574  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3E578  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3E57C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A3E580  3B A0 00 00 */	li r29, 0
/* 80A3E584  3B 80 FF FF */	li r28, -1
/* 80A3E588  7F 63 DB 78 */	mr r3, r27
/* 80A3E58C  3C A0 80 A4 */	lis r5, stringBase0@ha
/* 80A3E590  38 A5 0A F8 */	addi r5, r5, stringBase0@l
/* 80A3E594  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A3E598  38 C0 00 03 */	li r6, 3
/* 80A3E59C  4B 60 9B 50 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A3E5A0  28 03 00 00 */	cmplwi r3, 0
/* 80A3E5A4  41 82 00 08 */	beq lbl_80A3E5AC
/* 80A3E5A8  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A3E5AC:
/* 80A3E5AC  7F 63 DB 78 */	mr r3, r27
/* 80A3E5B0  7F 44 D3 78 */	mr r4, r26
/* 80A3E5B4  4B 60 97 98 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A3E5B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A3E5BC  41 82 02 E0 */	beq lbl_80A3E89C
/* 80A3E5C0  28 1C 00 3C */	cmplwi r28, 0x3c
/* 80A3E5C4  41 81 02 D8 */	bgt lbl_80A3E89C
/* 80A3E5C8  3C 60 80 A4 */	lis r3, lit_13763@ha
/* 80A3E5CC  38 63 2E 04 */	addi r3, r3, lit_13763@l
/* 80A3E5D0  57 80 10 3A */	slwi r0, r28, 2
/* 80A3E5D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A3E5D8  7C 09 03 A6 */	mtctr r0
/* 80A3E5DC  4E 80 04 20 */	bctr 
lbl_80A3E5E0:
/* 80A3E5E0  38 60 00 0B */	li r3, 0xb
/* 80A3E5E4  4B 70 E5 48 */	b daNpcT_offTmpBit__FUl
/* 80A3E5E8  38 60 00 0C */	li r3, 0xc
/* 80A3E5EC  4B 70 E5 40 */	b daNpcT_offTmpBit__FUl
/* 80A3E5F0  38 60 00 0D */	li r3, 0xd
/* 80A3E5F4  4B 70 E5 38 */	b daNpcT_offTmpBit__FUl
/* 80A3E5F8  38 60 00 0E */	li r3, 0xe
/* 80A3E5FC  4B 70 E5 30 */	b daNpcT_offTmpBit__FUl
/* 80A3E600  38 60 00 0F */	li r3, 0xf
/* 80A3E604  4B 70 E5 28 */	b daNpcT_offTmpBit__FUl
/* 80A3E608  38 00 00 1E */	li r0, 0x1e
/* 80A3E60C  90 1F 0D EC */	stw r0, 0xdec(r31)
/* 80A3E610  48 00 02 8C */	b lbl_80A3E89C
lbl_80A3E614:
/* 80A3E614  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A3E618  2C 00 00 01 */	cmpwi r0, 1
/* 80A3E61C  41 82 00 24 */	beq lbl_80A3E640
/* 80A3E620  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A3E624  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A3E628  4B 70 72 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3E62C  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A3E630  38 00 00 01 */	li r0, 1
/* 80A3E634  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A3E638  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3E63C  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A3E640:
/* 80A3E640  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3E644  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A3E648  41 82 02 54 */	beq lbl_80A3E89C
/* 80A3E64C  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A3E650  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3E654  4B 70 72 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3E658  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A3E65C  38 00 00 15 */	li r0, 0x15
/* 80A3E660  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A3E664  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3E668  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A3E66C  48 00 02 30 */	b lbl_80A3E89C
lbl_80A3E670:
/* 80A3E670  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A3E674  2C 00 00 01 */	cmpwi r0, 1
/* 80A3E678  41 82 00 24 */	beq lbl_80A3E69C
/* 80A3E67C  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A3E680  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A3E684  4B 70 72 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3E688  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A3E68C  38 00 00 01 */	li r0, 1
/* 80A3E690  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A3E694  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3E698  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A3E69C:
/* 80A3E69C  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3E6A0  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A3E6A4  41 82 01 F8 */	beq lbl_80A3E89C
/* 80A3E6A8  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A3E6AC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3E6B0  4B 70 71 E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3E6B4  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A3E6B8  38 00 00 16 */	li r0, 0x16
/* 80A3E6BC  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A3E6C0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3E6C4  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A3E6C8  48 00 01 D4 */	b lbl_80A3E89C
lbl_80A3E6CC:
/* 80A3E6CC  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A3E6D0  2C 00 00 00 */	cmpwi r0, 0
/* 80A3E6D4  41 82 00 24 */	beq lbl_80A3E6F8
/* 80A3E6D8  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A3E6DC  4B 70 70 20 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A3E6E0  38 00 00 00 */	li r0, 0
/* 80A3E6E4  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A3E6E8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A3E6EC  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A3E6F0  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A3E6F4  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A3E6F8:
/* 80A3E6F8  38 00 00 00 */	li r0, 0
/* 80A3E6FC  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A3E700  48 00 01 9C */	b lbl_80A3E89C
lbl_80A3E704:
/* 80A3E704  38 00 00 02 */	li r0, 2
/* 80A3E708  B0 1F 0D FE */	sth r0, 0xdfe(r31)
/* 80A3E70C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A3E710  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3E714  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A3E718  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A3E71C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A3E720  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A3E724  4B 5C E6 40 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A3E728  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A3E72C  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80A3E730  4B 83 24 D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A3E734  7C 64 1B 78 */	mr r4, r3
/* 80A3E738  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3E73C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3E740  4B 5C DC F4 */	b mDoMtx_YrotM__FPA4_fs
/* 80A3E744  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3E748  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3E74C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A3E750  7C 85 23 78 */	mr r5, r4
/* 80A3E754  4B 90 86 18 */	b PSMTXMultVec
/* 80A3E758  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A3E75C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3E760  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A3E764  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A3E768  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A3E76C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3E770  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A3E774  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3E778  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3E77C  38 61 00 08 */	addi r3, r1, 8
/* 80A3E780  4B 5D F5 3C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A3E784  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A3E788  41 82 00 10 */	beq lbl_80A3E798
/* 80A3E78C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A3E790  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A3E794  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80A3E798:
/* 80A3E798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3E79C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3E7A0  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 80A3E7A4  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 80A3E7A8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A3E7AC  4B 83 24 58 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A3E7B0  7C 65 07 34 */	extsh r5, r3
/* 80A3E7B4  7F 63 DB 78 */	mr r3, r27
/* 80A3E7B8  38 81 00 14 */	addi r4, r1, 0x14
/* 80A3E7BC  38 C0 00 00 */	li r6, 0
/* 80A3E7C0  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80A3E7C4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A3E7C8  7D 89 03 A6 */	mtctr r12
/* 80A3E7CC  4E 80 04 21 */	bctrl 
/* 80A3E7D0  7F E3 FB 78 */	mr r3, r31
/* 80A3E7D4  38 80 02 DD */	li r4, 0x2dd
/* 80A3E7D8  38 A0 00 00 */	li r5, 0
/* 80A3E7DC  4B FF CC 0D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E7E0  48 00 00 BC */	b lbl_80A3E89C
lbl_80A3E7E4:
/* 80A3E7E4  7F E3 FB 78 */	mr r3, r31
/* 80A3E7E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3E7EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3E7F0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3E7F4  4B 5D BF 1C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3E7F8  7C 64 1B 78 */	mr r4, r3
/* 80A3E7FC  7F E3 FB 78 */	mr r3, r31
/* 80A3E800  4B FF C2 F1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3E804  48 00 00 98 */	b lbl_80A3E89C
lbl_80A3E808:
/* 80A3E808  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A3E80C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A3E810  80 63 00 00 */	lwz r3, 0(r3)
/* 80A3E814  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A3E818  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000038@ha */
/* 80A3E81C  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x02000038@l */
/* 80A3E820  4B 87 13 74 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80A3E824  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A3E828  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A3E82C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A3E830  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A3E834  4B 87 15 E4 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 80A3E838  48 00 00 64 */	b lbl_80A3E89C
lbl_80A3E83C:
/* 80A3E83C  7F E3 FB 78 */	mr r3, r31
/* 80A3E840  38 80 02 DD */	li r4, 0x2dd
/* 80A3E844  38 A0 00 00 */	li r5, 0
/* 80A3E848  4B FF CB A1 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E84C  48 00 00 50 */	b lbl_80A3E89C
lbl_80A3E850:
/* 80A3E850  7F E3 FB 78 */	mr r3, r31
/* 80A3E854  38 80 02 DD */	li r4, 0x2dd
/* 80A3E858  38 A0 00 00 */	li r5, 0
/* 80A3E85C  4B FF CB 8D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E860  48 00 00 3C */	b lbl_80A3E89C
lbl_80A3E864:
/* 80A3E864  7F E3 FB 78 */	mr r3, r31
/* 80A3E868  38 80 02 DD */	li r4, 0x2dd
/* 80A3E86C  38 A0 00 00 */	li r5, 0
/* 80A3E870  4B FF CB 79 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E874  48 00 00 28 */	b lbl_80A3E89C
lbl_80A3E878:
/* 80A3E878  7F E3 FB 78 */	mr r3, r31
/* 80A3E87C  38 80 02 DD */	li r4, 0x2dd
/* 80A3E880  38 A0 00 00 */	li r5, 0
/* 80A3E884  4B FF CB 65 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E888  48 00 00 14 */	b lbl_80A3E89C
lbl_80A3E88C:
/* 80A3E88C  7F E3 FB 78 */	mr r3, r31
/* 80A3E890  38 80 02 DD */	li r4, 0x2dd
/* 80A3E894  38 A0 00 00 */	li r5, 0
/* 80A3E898  4B FF CB 51 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A3E89C:
/* 80A3E89C  28 1C 00 3C */	cmplwi r28, 0x3c
/* 80A3E8A0  41 81 02 C4 */	bgt lbl_80A3EB64
/* 80A3E8A4  3C 60 80 A4 */	lis r3, lit_13764@ha
/* 80A3E8A8  38 63 2D 10 */	addi r3, r3, lit_13764@l
/* 80A3E8AC  57 80 10 3A */	slwi r0, r28, 2
/* 80A3E8B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A3E8B4  7C 09 03 A6 */	mtctr r0
/* 80A3E8B8  4E 80 04 20 */	bctr 
lbl_80A3E8BC:
/* 80A3E8BC  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80A3E8C0  4B FF D4 89 */	bl func_80A3BD48
/* 80A3E8C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A3E8C8  40 82 02 A0 */	bne lbl_80A3EB68
/* 80A3E8CC  3B A0 00 01 */	li r29, 1
/* 80A3E8D0  48 00 02 98 */	b lbl_80A3EB68
lbl_80A3E8D4:
/* 80A3E8D4  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3E8D8  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A3E8DC  40 82 02 8C */	bne lbl_80A3EB68
/* 80A3E8E0  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A3E8E4  2C 00 00 00 */	cmpwi r0, 0
/* 80A3E8E8  40 81 02 80 */	ble lbl_80A3EB68
/* 80A3E8EC  A0 1F 0E 26 */	lhz r0, 0xe26(r31)
/* 80A3E8F0  28 00 00 00 */	cmplwi r0, 0
/* 80A3E8F4  41 82 02 74 */	beq lbl_80A3EB68
/* 80A3E8F8  3B A0 00 01 */	li r29, 1
/* 80A3E8FC  48 00 02 6C */	b lbl_80A3EB68
lbl_80A3E900:
/* 80A3E900  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3E904  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A3E908  40 82 02 60 */	bne lbl_80A3EB68
/* 80A3E90C  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A3E910  2C 00 00 00 */	cmpwi r0, 0
/* 80A3E914  40 81 02 54 */	ble lbl_80A3EB68
/* 80A3E918  3B A0 00 01 */	li r29, 1
/* 80A3E91C  48 00 02 4C */	b lbl_80A3EB68
lbl_80A3E920:
/* 80A3E920  7F E3 FB 78 */	mr r3, r31
/* 80A3E924  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3E928  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A3E92C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A3E930  4B 5D BD E0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3E934  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A3E938  7C 60 07 34 */	extsh r0, r3
/* 80A3E93C  7C 04 00 00 */	cmpw r4, r0
/* 80A3E940  41 82 00 94 */	beq lbl_80A3E9D4
/* 80A3E944  7F E3 FB 78 */	mr r3, r31
/* 80A3E948  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A3E94C  4B 5D BD C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3E950  7C 64 1B 78 */	mr r4, r3
/* 80A3E954  7F E3 FB 78 */	mr r3, r31
/* 80A3E958  38 A0 00 01 */	li r5, 1
/* 80A3E95C  38 C0 00 20 */	li r6, 0x20
/* 80A3E960  38 E0 00 14 */	li r7, 0x14
/* 80A3E964  39 00 00 00 */	li r8, 0
/* 80A3E968  4B FF C8 B9 */	bl step__10daNpc_Kn_cFsiiii
/* 80A3E96C  2C 03 00 00 */	cmpwi r3, 0
/* 80A3E970  41 82 01 F8 */	beq lbl_80A3EB68
/* 80A3E974  3B A0 00 01 */	li r29, 1
/* 80A3E978  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A3E97C  2C 00 00 01 */	cmpwi r0, 1
/* 80A3E980  41 82 00 24 */	beq lbl_80A3E9A4
/* 80A3E984  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A3E988  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A3E98C  4B 70 6F 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3E990  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A3E994  38 00 00 01 */	li r0, 1
/* 80A3E998  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A3E99C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3E9A0  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A3E9A4:
/* 80A3E9A4  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3E9A8  2C 00 00 00 */	cmpwi r0, 0
/* 80A3E9AC  41 82 01 BC */	beq lbl_80A3EB68
/* 80A3E9B0  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A3E9B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3E9B8  4B 70 6E E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3E9BC  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A3E9C0  38 00 00 00 */	li r0, 0
/* 80A3E9C4  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A3E9C8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3E9CC  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A3E9D0  48 00 01 98 */	b lbl_80A3EB68
lbl_80A3E9D4:
/* 80A3E9D4  3B A0 00 01 */	li r29, 1
/* 80A3E9D8  48 00 01 90 */	b lbl_80A3EB68
lbl_80A3E9DC:
/* 80A3E9DC  7F E3 FB 78 */	mr r3, r31
/* 80A3E9E0  38 80 00 00 */	li r4, 0
/* 80A3E9E4  38 A0 00 00 */	li r5, 0
/* 80A3E9E8  38 C0 00 00 */	li r6, 0
/* 80A3E9EC  38 E0 00 00 */	li r7, 0
/* 80A3E9F0  4B FF CA 59 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3E9F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A3E9F8  41 82 01 70 */	beq lbl_80A3EB68
/* 80A3E9FC  3B A0 00 01 */	li r29, 1
/* 80A3EA00  88 1F 17 0E */	lbz r0, 0x170e(r31)
/* 80A3EA04  28 00 00 00 */	cmplwi r0, 0
/* 80A3EA08  40 82 01 60 */	bne lbl_80A3EB68
/* 80A3EA0C  38 00 00 01 */	li r0, 1
/* 80A3EA10  98 1F 17 0E */	stb r0, 0x170e(r31)
/* 80A3EA14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A3EA18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A3EA1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A3EA20  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A3EA24  38 80 00 32 */	li r4, 0x32
/* 80A3EA28  38 A0 00 00 */	li r5, 0
/* 80A3EA2C  4B 87 09 DC */	b bgmStop__8Z2SeqMgrFUll
/* 80A3EA30  48 00 01 38 */	b lbl_80A3EB68
lbl_80A3EA34:
/* 80A3EA34  7F E3 FB 78 */	mr r3, r31
/* 80A3EA38  38 80 00 00 */	li r4, 0
/* 80A3EA3C  38 A0 00 00 */	li r5, 0
/* 80A3EA40  38 C0 00 00 */	li r6, 0
/* 80A3EA44  38 E0 00 00 */	li r7, 0
/* 80A3EA48  4B FF CA 01 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3EA4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A3EA50  41 82 00 08 */	beq lbl_80A3EA58
/* 80A3EA54  3B A0 00 01 */	li r29, 1
lbl_80A3EA58:
/* 80A3EA58  7F E3 FB 78 */	mr r3, r31
/* 80A3EA5C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3EA60  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3EA64  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3EA68  4B 5D BC A8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3EA6C  7C 64 1B 78 */	mr r4, r3
/* 80A3EA70  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A3EA74  38 A0 00 02 */	li r5, 2
/* 80A3EA78  38 C0 08 00 */	li r6, 0x800
/* 80A3EA7C  4B 83 1B 8C */	b cLib_addCalcAngleS2__FPssss
/* 80A3EA80  7F E3 FB 78 */	mr r3, r31
/* 80A3EA84  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A3EA88  4B FF C0 69 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3EA8C  48 00 00 DC */	b lbl_80A3EB68
lbl_80A3EA90:
/* 80A3EA90  7F E3 FB 78 */	mr r3, r31
/* 80A3EA94  38 80 00 00 */	li r4, 0
/* 80A3EA98  38 A0 00 00 */	li r5, 0
/* 80A3EA9C  38 C0 00 00 */	li r6, 0
/* 80A3EAA0  38 E0 00 00 */	li r7, 0
/* 80A3EAA4  4B FF C9 A5 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3EAA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A3EAAC  41 82 00 08 */	beq lbl_80A3EAB4
/* 80A3EAB0  3B A0 00 01 */	li r29, 1
lbl_80A3EAB4:
/* 80A3EAB4  7F E3 FB 78 */	mr r3, r31
/* 80A3EAB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3EABC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3EAC0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3EAC4  4B 5D BC 4C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3EAC8  7C 64 1B 78 */	mr r4, r3
/* 80A3EACC  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A3EAD0  38 A0 00 02 */	li r5, 2
/* 80A3EAD4  38 C0 08 00 */	li r6, 0x800
/* 80A3EAD8  4B 83 1B 30 */	b cLib_addCalcAngleS2__FPssss
/* 80A3EADC  7F E3 FB 78 */	mr r3, r31
/* 80A3EAE0  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A3EAE4  4B FF C0 0D */	bl setAngle__10daNpc_Kn_cFs
/* 80A3EAE8  48 00 00 80 */	b lbl_80A3EB68
lbl_80A3EAEC:
/* 80A3EAEC  7F E3 FB 78 */	mr r3, r31
/* 80A3EAF0  38 80 00 00 */	li r4, 0
/* 80A3EAF4  38 A0 00 00 */	li r5, 0
/* 80A3EAF8  38 C0 00 00 */	li r6, 0
/* 80A3EAFC  38 E0 00 00 */	li r7, 0
/* 80A3EB00  4B FF C9 49 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3EB04  2C 03 00 00 */	cmpwi r3, 0
/* 80A3EB08  41 82 00 60 */	beq lbl_80A3EB68
/* 80A3EB0C  3B A0 00 01 */	li r29, 1
/* 80A3EB10  48 00 00 58 */	b lbl_80A3EB68
lbl_80A3EB14:
/* 80A3EB14  7F E3 FB 78 */	mr r3, r31
/* 80A3EB18  38 80 00 00 */	li r4, 0
/* 80A3EB1C  38 A0 00 00 */	li r5, 0
/* 80A3EB20  38 C0 00 00 */	li r6, 0
/* 80A3EB24  38 E0 00 00 */	li r7, 0
/* 80A3EB28  4B FF C9 21 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3EB2C  2C 03 00 00 */	cmpwi r3, 0
/* 80A3EB30  41 82 00 38 */	beq lbl_80A3EB68
/* 80A3EB34  3B A0 00 01 */	li r29, 1
/* 80A3EB38  48 00 00 30 */	b lbl_80A3EB68
lbl_80A3EB3C:
/* 80A3EB3C  7F E3 FB 78 */	mr r3, r31
/* 80A3EB40  38 80 00 00 */	li r4, 0
/* 80A3EB44  38 A0 00 00 */	li r5, 0
/* 80A3EB48  38 C0 00 00 */	li r6, 0
/* 80A3EB4C  38 E0 00 00 */	li r7, 0
/* 80A3EB50  4B FF C8 F9 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3EB54  2C 03 00 00 */	cmpwi r3, 0
/* 80A3EB58  41 82 00 10 */	beq lbl_80A3EB68
/* 80A3EB5C  3B A0 00 01 */	li r29, 1
/* 80A3EB60  48 00 00 08 */	b lbl_80A3EB68
lbl_80A3EB64:
/* 80A3EB64  3B A0 00 01 */	li r29, 1
lbl_80A3EB68:
/* 80A3EB68  7F A3 EB 78 */	mr r3, r29
/* 80A3EB6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A3EB70  4B 92 36 AC */	b _restgpr_26
/* 80A3EB74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A3EB78  7C 08 03 A6 */	mtlr r0
/* 80A3EB7C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A3EB80  4E 80 00 20 */	blr 
