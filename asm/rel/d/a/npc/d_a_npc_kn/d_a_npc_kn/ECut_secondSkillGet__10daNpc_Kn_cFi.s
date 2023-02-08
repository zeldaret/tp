lbl_80A403B8:
/* 80A403B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A403BC  7C 08 02 A6 */	mflr r0
/* 80A403C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A403C4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A403C8  4B 92 1E 09 */	bl _savegpr_26
/* 80A403CC  7C 7F 1B 78 */	mr r31, r3
/* 80A403D0  7C 9A 23 78 */	mr r26, r4
/* 80A403D4  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A403D8  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A403DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A403E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A403E4  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A403E8  3B A0 00 00 */	li r29, 0
/* 80A403EC  3B 80 FF FF */	li r28, -1
/* 80A403F0  7F 63 DB 78 */	mr r3, r27
/* 80A403F4  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A403F8  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A403FC  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A40400  38 C0 00 03 */	li r6, 3
/* 80A40404  4B 60 7C E9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A40408  28 03 00 00 */	cmplwi r3, 0
/* 80A4040C  41 82 00 08 */	beq lbl_80A40414
/* 80A40410  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A40414:
/* 80A40414  7F 63 DB 78 */	mr r3, r27
/* 80A40418  7F 44 D3 78 */	mr r4, r26
/* 80A4041C  4B 60 79 31 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A40420  2C 03 00 00 */	cmpwi r3, 0
/* 80A40424  41 82 02 20 */	beq lbl_80A40644
/* 80A40428  28 1C 00 1E */	cmplwi r28, 0x1e
/* 80A4042C  41 81 02 18 */	bgt lbl_80A40644
/* 80A40430  3C 60 80 A4 */	lis r3, lit_14591@ha /* 0x80A430CC@ha */
/* 80A40434  38 63 30 CC */	addi r3, r3, lit_14591@l /* 0x80A430CC@l */
/* 80A40438  57 80 10 3A */	slwi r0, r28, 2
/* 80A4043C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A40440  7C 09 03 A6 */	mtctr r0
/* 80A40444  4E 80 04 20 */	bctr 
lbl_80A40448:
/* 80A40448  38 60 00 0B */	li r3, 0xb
/* 80A4044C  4B 70 C6 E1 */	bl daNpcT_offTmpBit__FUl
/* 80A40450  38 60 00 0C */	li r3, 0xc
/* 80A40454  4B 70 C6 D9 */	bl daNpcT_offTmpBit__FUl
/* 80A40458  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A4045C  2C 00 00 01 */	cmpwi r0, 1
/* 80A40460  41 82 00 24 */	beq lbl_80A40484
/* 80A40464  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A40468  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A4046C  4B 70 54 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A40470  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A40474  38 00 00 01 */	li r0, 1
/* 80A40478  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A4047C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A40480  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A40484:
/* 80A40484  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A40488  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A4048C  4B 70 54 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A40490  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A40494  38 00 00 1C */	li r0, 0x1c
/* 80A40498  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A4049C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A404A0  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A404A4  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A404A8  2C 00 00 01 */	cmpwi r0, 1
/* 80A404AC  41 82 00 28 */	beq lbl_80A404D4
/* 80A404B0  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A404B4  4B 70 52 49 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A404B8  38 00 00 00 */	li r0, 0
/* 80A404BC  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A404C0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A404C4  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A404C8  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A404CC  38 00 00 01 */	li r0, 1
/* 80A404D0  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A404D4:
/* 80A404D4  38 00 00 00 */	li r0, 0
/* 80A404D8  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A404DC  38 00 00 1E */	li r0, 0x1e
/* 80A404E0  90 1F 0D EC */	stw r0, 0xdec(r31)
/* 80A404E4  48 00 01 60 */	b lbl_80A40644
lbl_80A404E8:
/* 80A404E8  38 00 00 02 */	li r0, 2
/* 80A404EC  B0 1F 0D FE */	sth r0, 0xdfe(r31)
/* 80A404F0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A404F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A404F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A404FC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A40500  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A40504  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A40508  4B 5C C8 5D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A4050C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A40510  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80A40514  4B 83 06 F1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A40518  7C 64 1B 78 */	mr r4, r3
/* 80A4051C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A40520  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A40524  4B 5C BF 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A40528  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A4052C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A40530  38 81 00 14 */	addi r4, r1, 0x14
/* 80A40534  7C 85 23 78 */	mr r5, r4
/* 80A40538  4B 90 68 35 */	bl PSMTXMultVec
/* 80A4053C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A40540  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A40544  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A40548  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A4054C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A40550  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A40554  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A40558  EC 01 00 2A */	fadds f0, f1, f0
/* 80A4055C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A40560  38 61 00 08 */	addi r3, r1, 8
/* 80A40564  4B 5D D7 59 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A40568  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A4056C  41 82 00 10 */	beq lbl_80A4057C
/* 80A40570  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A40574  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A40578  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80A4057C:
/* 80A4057C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A40580  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A40584  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 80A40588  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 80A4058C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A40590  4B 83 06 75 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A40594  7C 65 07 34 */	extsh r5, r3
/* 80A40598  7F 63 DB 78 */	mr r3, r27
/* 80A4059C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A405A0  38 C0 00 00 */	li r6, 0
/* 80A405A4  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80A405A8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A405AC  7D 89 03 A6 */	mtctr r12
/* 80A405B0  4E 80 04 21 */	bctrl 
/* 80A405B4  7F E3 FB 78 */	mr r3, r31
/* 80A405B8  38 80 02 C5 */	li r4, 0x2c5
/* 80A405BC  38 A0 00 00 */	li r5, 0
/* 80A405C0  4B FF AE 29 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A405C4  48 00 00 80 */	b lbl_80A40644
lbl_80A405C8:
/* 80A405C8  7F E3 FB 78 */	mr r3, r31
/* 80A405CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A405D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A405D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A405D8  4B 5D A1 39 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A405DC  7C 64 1B 78 */	mr r4, r3
/* 80A405E0  7F E3 FB 78 */	mr r3, r31
/* 80A405E4  4B FF A5 0D */	bl setAngle__10daNpc_Kn_cFs
/* 80A405E8  48 00 00 5C */	b lbl_80A40644
lbl_80A405EC:
/* 80A405EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A405F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A405F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A405F8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A405FC  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000038@ha */
/* 80A40600  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x02000038@l */
/* 80A40604  4B 86 F5 91 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80A40608  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A4060C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A40610  80 63 00 00 */	lwz r3, 0(r3)
/* 80A40614  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A40618  4B 86 F8 01 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80A4061C  48 00 00 28 */	b lbl_80A40644
lbl_80A40620:
/* 80A40620  7F E3 FB 78 */	mr r3, r31
/* 80A40624  38 80 02 C5 */	li r4, 0x2c5
/* 80A40628  38 A0 00 00 */	li r5, 0
/* 80A4062C  4B FF AD BD */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A40630  48 00 00 14 */	b lbl_80A40644
lbl_80A40634:
/* 80A40634  7F E3 FB 78 */	mr r3, r31
/* 80A40638  38 80 02 C5 */	li r4, 0x2c5
/* 80A4063C  38 A0 00 00 */	li r5, 0
/* 80A40640  4B FF AD A9 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A40644:
/* 80A40644  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80A40648  41 82 01 8C */	beq lbl_80A407D4
/* 80A4064C  40 80 00 1C */	bge lbl_80A40668
/* 80A40650  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80A40654  41 82 01 28 */	beq lbl_80A4077C
/* 80A40658  40 80 02 3C */	bge lbl_80A40894
/* 80A4065C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A40660  41 82 00 14 */	beq lbl_80A40674
/* 80A40664  48 00 02 30 */	b lbl_80A40894
lbl_80A40668:
/* 80A40668  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 80A4066C  41 82 01 C4 */	beq lbl_80A40830
/* 80A40670  48 00 02 24 */	b lbl_80A40894
lbl_80A40674:
/* 80A40674  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80A40678  4B FF B6 D1 */	bl func_80A3BD48
/* 80A4067C  2C 03 00 00 */	cmpwi r3, 0
/* 80A40680  40 82 00 F0 */	bne lbl_80A40770
/* 80A40684  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A40688  D0 1F 15 B0 */	stfs f0, 0x15b0(r31)
/* 80A4068C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A40690  D0 1F 15 B4 */	stfs f0, 0x15b4(r31)
/* 80A40694  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A40698  D0 1F 15 B8 */	stfs f0, 0x15b8(r31)
/* 80A4069C  38 00 00 00 */	li r0, 0
/* 80A406A0  98 1F 15 BC */	stb r0, 0x15bc(r31)
/* 80A406A4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A406A8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A406AC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A406B0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A406B4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A406B8  7F E3 FB 78 */	mr r3, r31
/* 80A406BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A406C0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A406C4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A406C8  4B 5D A0 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A406CC  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A406D0  7C 60 07 34 */	extsh r0, r3
/* 80A406D4  7C 04 00 00 */	cmpw r4, r0
/* 80A406D8  40 82 00 0C */	bne lbl_80A406E4
/* 80A406DC  3B A0 00 01 */	li r29, 1
/* 80A406E0  48 00 01 B8 */	b lbl_80A40898
lbl_80A406E4:
/* 80A406E4  7F E3 FB 78 */	mr r3, r31
/* 80A406E8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A406EC  4B 5D A0 25 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A406F0  7C 64 1B 78 */	mr r4, r3
/* 80A406F4  7F E3 FB 78 */	mr r3, r31
/* 80A406F8  38 A0 00 01 */	li r5, 1
/* 80A406FC  38 C0 00 20 */	li r6, 0x20
/* 80A40700  38 E0 00 14 */	li r7, 0x14
/* 80A40704  39 00 00 00 */	li r8, 0
/* 80A40708  4B FF AB 19 */	bl step__10daNpc_Kn_cFsiiii
/* 80A4070C  2C 03 00 00 */	cmpwi r3, 0
/* 80A40710  41 82 01 88 */	beq lbl_80A40898
/* 80A40714  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A40718  2C 00 00 01 */	cmpwi r0, 1
/* 80A4071C  41 82 00 24 */	beq lbl_80A40740
/* 80A40720  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A40724  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A40728  4B 70 51 71 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A4072C  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A40730  38 00 00 01 */	li r0, 1
/* 80A40734  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A40738  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A4073C  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A40740:
/* 80A40740  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A40744  2C 00 00 00 */	cmpwi r0, 0
/* 80A40748  41 82 01 50 */	beq lbl_80A40898
/* 80A4074C  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A40750  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A40754  4B 70 51 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A40758  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A4075C  38 00 00 00 */	li r0, 0
/* 80A40760  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A40764  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A40768  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A4076C  48 00 01 2C */	b lbl_80A40898
lbl_80A40770:
/* 80A40770  7F E3 FB 78 */	mr r3, r31
/* 80A40774  4B FF 73 95 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A40778  48 00 01 20 */	b lbl_80A40898
lbl_80A4077C:
/* 80A4077C  7F E3 FB 78 */	mr r3, r31
/* 80A40780  38 80 00 00 */	li r4, 0
/* 80A40784  38 A0 00 00 */	li r5, 0
/* 80A40788  38 C0 00 00 */	li r6, 0
/* 80A4078C  38 E0 00 00 */	li r7, 0
/* 80A40790  4B FF AC B9 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A40794  2C 03 00 00 */	cmpwi r3, 0
/* 80A40798  41 82 01 00 */	beq lbl_80A40898
/* 80A4079C  3B A0 00 01 */	li r29, 1
/* 80A407A0  88 1F 17 0E */	lbz r0, 0x170e(r31)
/* 80A407A4  28 00 00 00 */	cmplwi r0, 0
/* 80A407A8  40 82 00 F0 */	bne lbl_80A40898
/* 80A407AC  38 00 00 01 */	li r0, 1
/* 80A407B0  98 1F 17 0E */	stb r0, 0x170e(r31)
/* 80A407B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A407B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A407BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A407C0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A407C4  38 80 00 32 */	li r4, 0x32
/* 80A407C8  38 A0 00 00 */	li r5, 0
/* 80A407CC  4B 86 EC 3D */	bl bgmStop__8Z2SeqMgrFUll
/* 80A407D0  48 00 00 C8 */	b lbl_80A40898
lbl_80A407D4:
/* 80A407D4  7F E3 FB 78 */	mr r3, r31
/* 80A407D8  38 80 00 00 */	li r4, 0
/* 80A407DC  38 A0 00 00 */	li r5, 0
/* 80A407E0  38 C0 00 00 */	li r6, 0
/* 80A407E4  38 E0 00 00 */	li r7, 0
/* 80A407E8  4B FF AC 61 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A407EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A407F0  41 82 00 08 */	beq lbl_80A407F8
/* 80A407F4  3B A0 00 01 */	li r29, 1
lbl_80A407F8:
/* 80A407F8  7F E3 FB 78 */	mr r3, r31
/* 80A407FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A40800  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A40804  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A40808  4B 5D 9F 09 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A4080C  7C 64 1B 78 */	mr r4, r3
/* 80A40810  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A40814  38 A0 00 02 */	li r5, 2
/* 80A40818  38 C0 08 00 */	li r6, 0x800
/* 80A4081C  4B 82 FD ED */	bl cLib_addCalcAngleS2__FPssss
/* 80A40820  7F E3 FB 78 */	mr r3, r31
/* 80A40824  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A40828  4B FF A2 C9 */	bl setAngle__10daNpc_Kn_cFs
/* 80A4082C  48 00 00 6C */	b lbl_80A40898
lbl_80A40830:
/* 80A40830  7F E3 FB 78 */	mr r3, r31
/* 80A40834  38 80 00 00 */	li r4, 0
/* 80A40838  38 A0 00 00 */	li r5, 0
/* 80A4083C  38 C0 00 00 */	li r6, 0
/* 80A40840  38 E0 00 00 */	li r7, 0
/* 80A40844  4B FF AC 05 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A40848  2C 03 00 00 */	cmpwi r3, 0
/* 80A4084C  41 82 00 10 */	beq lbl_80A4085C
/* 80A40850  7F E3 FB 78 */	mr r3, r31
/* 80A40854  38 80 00 01 */	li r4, 1
/* 80A40858  4B FE D4 5D */	bl setSceneChange__10daNpc_Kn_cFi
lbl_80A4085C:
/* 80A4085C  7F E3 FB 78 */	mr r3, r31
/* 80A40860  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A40864  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A40868  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A4086C  4B 5D 9E A5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A40870  7C 64 1B 78 */	mr r4, r3
/* 80A40874  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A40878  38 A0 00 02 */	li r5, 2
/* 80A4087C  38 C0 08 00 */	li r6, 0x800
/* 80A40880  4B 82 FD 89 */	bl cLib_addCalcAngleS2__FPssss
/* 80A40884  7F E3 FB 78 */	mr r3, r31
/* 80A40888  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A4088C  4B FF A2 65 */	bl setAngle__10daNpc_Kn_cFs
/* 80A40890  48 00 00 08 */	b lbl_80A40898
lbl_80A40894:
/* 80A40894  3B A0 00 01 */	li r29, 1
lbl_80A40898:
/* 80A40898  7F A3 EB 78 */	mr r3, r29
/* 80A4089C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A408A0  4B 92 19 7D */	bl _restgpr_26
/* 80A408A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A408A8  7C 08 03 A6 */	mtlr r0
/* 80A408AC  38 21 00 40 */	addi r1, r1, 0x40
/* 80A408B0  4E 80 00 20 */	blr 
