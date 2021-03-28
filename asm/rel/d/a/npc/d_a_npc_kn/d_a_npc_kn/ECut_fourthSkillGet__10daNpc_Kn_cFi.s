lbl_80A33D80:
/* 80A33D80  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A33D84  7C 08 02 A6 */	mflr r0
/* 80A33D88  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A33D8C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A33D90  4B 92 E4 40 */	b _savegpr_26
/* 80A33D94  7C 7F 1B 78 */	mr r31, r3
/* 80A33D98  7C 9A 23 78 */	mr r26, r4
/* 80A33D9C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A33DA0  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A33DA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A33DA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A33DAC  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A33DB0  3B A0 00 00 */	li r29, 0
/* 80A33DB4  3B 80 FF FF */	li r28, -1
/* 80A33DB8  7F 63 DB 78 */	mr r3, r27
/* 80A33DBC  3C A0 80 A4 */	lis r5, stringBase0@ha
/* 80A33DC0  38 A5 0A F8 */	addi r5, r5, stringBase0@l
/* 80A33DC4  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A33DC8  38 C0 00 03 */	li r6, 3
/* 80A33DCC  4B 61 43 20 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A33DD0  28 03 00 00 */	cmplwi r3, 0
/* 80A33DD4  41 82 00 08 */	beq lbl_80A33DDC
/* 80A33DD8  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A33DDC:
/* 80A33DDC  7F 63 DB 78 */	mr r3, r27
/* 80A33DE0  7F 44 D3 78 */	mr r4, r26
/* 80A33DE4  4B 61 3F 68 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A33DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80A33DEC  41 82 02 5C */	beq lbl_80A34048
/* 80A33DF0  28 1C 00 1E */	cmplwi r28, 0x1e
/* 80A33DF4  41 81 02 54 */	bgt lbl_80A34048
/* 80A33DF8  3C 60 80 A4 */	lis r3, lit_10671@ha
/* 80A33DFC  38 63 20 74 */	addi r3, r3, lit_10671@l
/* 80A33E00  57 80 10 3A */	slwi r0, r28, 2
/* 80A33E04  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A33E08  7C 09 03 A6 */	mtctr r0
/* 80A33E0C  4E 80 04 20 */	bctr 
lbl_80A33E10:
/* 80A33E10  38 60 00 0B */	li r3, 0xb
/* 80A33E14  4B 71 8D 18 */	b daNpcT_offTmpBit__FUl
/* 80A33E18  38 60 00 0C */	li r3, 0xc
/* 80A33E1C  4B 71 8D 10 */	b daNpcT_offTmpBit__FUl
/* 80A33E20  48 00 02 28 */	b lbl_80A34048
lbl_80A33E24:
/* 80A33E24  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A33E28  2C 00 00 01 */	cmpwi r0, 1
/* 80A33E2C  41 82 00 24 */	beq lbl_80A33E50
/* 80A33E30  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A33E34  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A33E38  4B 71 1A 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33E3C  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A33E40  38 00 00 01 */	li r0, 1
/* 80A33E44  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A33E48  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A33E4C  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A33E50:
/* 80A33E50  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A33E54  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A33E58  40 82 00 30 */	bne lbl_80A33E88
/* 80A33E5C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A33E60  41 82 01 E8 */	beq lbl_80A34048
/* 80A33E64  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A33E68  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A33E6C  4B 71 1A 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33E70  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A33E74  38 00 00 16 */	li r0, 0x16
/* 80A33E78  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A33E7C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A33E80  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A33E84  48 00 01 C4 */	b lbl_80A34048
lbl_80A33E88:
/* 80A33E88  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A33E8C  41 82 01 BC */	beq lbl_80A34048
/* 80A33E90  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A33E94  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A33E98  4B 71 1A 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33E9C  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A33EA0  38 00 00 10 */	li r0, 0x10
/* 80A33EA4  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A33EA8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A33EAC  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A33EB0  48 00 01 98 */	b lbl_80A34048
lbl_80A33EB4:
/* 80A33EB4  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A33EB8  2C 00 00 00 */	cmpwi r0, 0
/* 80A33EBC  41 82 00 24 */	beq lbl_80A33EE0
/* 80A33EC0  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A33EC4  4B 71 18 38 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A33EC8  38 00 00 00 */	li r0, 0
/* 80A33ECC  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A33ED0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A33ED4  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A33ED8  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A33EDC  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A33EE0:
/* 80A33EE0  38 00 00 00 */	li r0, 0
/* 80A33EE4  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A33EE8  48 00 01 60 */	b lbl_80A34048
lbl_80A33EEC:
/* 80A33EEC  38 00 00 02 */	li r0, 2
/* 80A33EF0  B0 1F 0D FE */	sth r0, 0xdfe(r31)
/* 80A33EF4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A33EF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A33EFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A33F00  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80A33F04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A33F08  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A33F0C  4B 5D 8E 58 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A33F10  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A33F14  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80A33F18  4B 83 CC EC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A33F1C  7C 64 1B 78 */	mr r4, r3
/* 80A33F20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A33F24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A33F28  4B 5D 85 0C */	b mDoMtx_YrotM__FPA4_fs
/* 80A33F2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A33F30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A33F34  38 81 00 14 */	addi r4, r1, 0x14
/* 80A33F38  7C 85 23 78 */	mr r5, r4
/* 80A33F3C  4B 91 2E 30 */	b PSMTXMultVec
/* 80A33F40  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A33F44  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A33F48  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A33F4C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A33F50  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A33F54  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A33F58  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A33F5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A33F60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A33F64  38 61 00 08 */	addi r3, r1, 8
/* 80A33F68  4B 5E 9D 54 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A33F6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A33F70  41 82 00 10 */	beq lbl_80A33F80
/* 80A33F74  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A33F78  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A33F7C  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80A33F80:
/* 80A33F80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A33F84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A33F88  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 80A33F8C  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 80A33F90  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A33F94  4B 83 CC 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A33F98  7C 65 07 34 */	extsh r5, r3
/* 80A33F9C  7F 63 DB 78 */	mr r3, r27
/* 80A33FA0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A33FA4  38 C0 00 00 */	li r6, 0
/* 80A33FA8  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80A33FAC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A33FB0  7D 89 03 A6 */	mtctr r12
/* 80A33FB4  4E 80 04 21 */	bctrl 
/* 80A33FB8  7F E3 FB 78 */	mr r3, r31
/* 80A33FBC  38 80 02 F5 */	li r4, 0x2f5
/* 80A33FC0  38 A0 00 00 */	li r5, 0
/* 80A33FC4  48 00 74 25 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A33FC8  48 00 00 80 */	b lbl_80A34048
lbl_80A33FCC:
/* 80A33FCC  7F E3 FB 78 */	mr r3, r31
/* 80A33FD0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A33FD4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A33FD8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A33FDC  4B 5E 67 34 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A33FE0  7C 64 1B 78 */	mr r4, r3
/* 80A33FE4  7F E3 FB 78 */	mr r3, r31
/* 80A33FE8  48 00 6B 09 */	bl setAngle__10daNpc_Kn_cFs
/* 80A33FEC  48 00 00 5C */	b lbl_80A34048
lbl_80A33FF0:
/* 80A33FF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A33FF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A33FF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A33FFC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A34000  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000038@ha */
/* 80A34004  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x02000038@l */
/* 80A34008  4B 87 BB 8C */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80A3400C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A34010  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A34014  80 63 00 00 */	lwz r3, 0(r3)
/* 80A34018  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A3401C  4B 87 BD FC */	b bgmStreamPlay__8Z2SeqMgrFv
/* 80A34020  48 00 00 28 */	b lbl_80A34048
lbl_80A34024:
/* 80A34024  7F E3 FB 78 */	mr r3, r31
/* 80A34028  38 80 02 F5 */	li r4, 0x2f5
/* 80A3402C  38 A0 00 00 */	li r5, 0
/* 80A34030  48 00 73 B9 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A34034  48 00 00 14 */	b lbl_80A34048
lbl_80A34038:
/* 80A34038  7F E3 FB 78 */	mr r3, r31
/* 80A3403C  38 80 02 F5 */	li r4, 0x2f5
/* 80A34040  38 A0 00 00 */	li r5, 0
/* 80A34044  48 00 73 A5 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A34048:
/* 80A34048  28 1C 00 1E */	cmplwi r28, 0x1e
/* 80A3404C  41 81 03 3C */	bgt lbl_80A34388
/* 80A34050  3C 60 80 A4 */	lis r3, lit_10672@ha
/* 80A34054  38 63 1F F8 */	addi r3, r3, lit_10672@l
/* 80A34058  57 80 10 3A */	slwi r0, r28, 2
/* 80A3405C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A34060  7C 09 03 A6 */	mtctr r0
/* 80A34064  4E 80 04 20 */	bctr 
lbl_80A34068:
/* 80A34068  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80A3406C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A34070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A34074  4C 40 13 82 */	cror 2, 0, 2
/* 80A34078  40 82 03 14 */	bne lbl_80A3438C
/* 80A3407C  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80A34080  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A34084  41 82 03 08 */	beq lbl_80A3438C
/* 80A34088  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A3408C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A34090  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A34094  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A34098  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3409C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A340A0  40 82 00 30 */	bne lbl_80A340D0
/* 80A340A4  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A340A8  41 82 00 50 */	beq lbl_80A340F8
/* 80A340AC  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A340B0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A340B4  4B 71 17 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A340B8  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A340BC  38 00 00 13 */	li r0, 0x13
/* 80A340C0  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A340C4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A340C8  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A340CC  48 00 00 2C */	b lbl_80A340F8
lbl_80A340D0:
/* 80A340D0  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A340D4  41 82 00 24 */	beq lbl_80A340F8
/* 80A340D8  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A340DC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A340E0  4B 71 17 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A340E4  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A340E8  38 00 00 0F */	li r0, 0xf
/* 80A340EC  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A340F0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A340F4  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A340F8:
/* 80A340F8  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A340FC  2C 00 00 01 */	cmpwi r0, 1
/* 80A34100  41 82 00 24 */	beq lbl_80A34124
/* 80A34104  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A34108  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A3410C  4B 71 17 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34110  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A34114  38 00 00 01 */	li r0, 1
/* 80A34118  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A3411C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A34120  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A34124:
/* 80A34124  7F E3 FB 78 */	mr r3, r31
/* 80A34128  48 00 34 31 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A3412C  3B A0 00 01 */	li r29, 1
/* 80A34130  48 00 02 5C */	b lbl_80A3438C
lbl_80A34134:
/* 80A34134  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A34138  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A3413C  41 82 00 0C */	beq lbl_80A34148
/* 80A34140  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A34144  40 82 02 48 */	bne lbl_80A3438C
lbl_80A34148:
/* 80A34148  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A3414C  2C 00 00 00 */	cmpwi r0, 0
/* 80A34150  40 81 00 0C */	ble lbl_80A3415C
/* 80A34154  3B A0 00 01 */	li r29, 1
/* 80A34158  48 00 02 34 */	b lbl_80A3438C
lbl_80A3415C:
/* 80A3415C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A34160  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A34164  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80A34168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3416C  4C 41 13 82 */	cror 2, 1, 2
/* 80A34170  40 82 02 1C */	bne lbl_80A3438C
/* 80A34174  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80A34178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3417C  40 80 02 10 */	bge lbl_80A3438C
/* 80A34180  7F E3 FB 78 */	mr r3, r31
/* 80A34184  48 00 33 D5 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A34188  48 00 02 04 */	b lbl_80A3438C
lbl_80A3418C:
/* 80A3418C  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A34190  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A34194  41 82 00 0C */	beq lbl_80A341A0
/* 80A34198  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A3419C  40 82 01 F0 */	bne lbl_80A3438C
lbl_80A341A0:
/* 80A341A0  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A341A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A341A8  40 81 01 E4 */	ble lbl_80A3438C
/* 80A341AC  3B A0 00 01 */	li r29, 1
/* 80A341B0  48 00 01 DC */	b lbl_80A3438C
lbl_80A341B4:
/* 80A341B4  7F E3 FB 78 */	mr r3, r31
/* 80A341B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A341BC  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A341C0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A341C4  4B 5E 65 4C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A341C8  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A341CC  7C 60 07 34 */	extsh r0, r3
/* 80A341D0  7C 04 00 00 */	cmpw r4, r0
/* 80A341D4  41 82 00 94 */	beq lbl_80A34268
/* 80A341D8  7F E3 FB 78 */	mr r3, r31
/* 80A341DC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A341E0  4B 5E 65 30 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A341E4  7C 64 1B 78 */	mr r4, r3
/* 80A341E8  7F E3 FB 78 */	mr r3, r31
/* 80A341EC  38 A0 00 01 */	li r5, 1
/* 80A341F0  38 C0 00 20 */	li r6, 0x20
/* 80A341F4  38 E0 00 14 */	li r7, 0x14
/* 80A341F8  39 00 00 00 */	li r8, 0
/* 80A341FC  48 00 70 25 */	bl step__10daNpc_Kn_cFsiiii
/* 80A34200  2C 03 00 00 */	cmpwi r3, 0
/* 80A34204  41 82 01 88 */	beq lbl_80A3438C
/* 80A34208  3B A0 00 01 */	li r29, 1
/* 80A3420C  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A34210  2C 00 00 01 */	cmpwi r0, 1
/* 80A34214  41 82 00 24 */	beq lbl_80A34238
/* 80A34218  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A3421C  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A34220  4B 71 16 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34224  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A34228  38 00 00 01 */	li r0, 1
/* 80A3422C  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A34230  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A34234  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A34238:
/* 80A34238  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3423C  2C 00 00 00 */	cmpwi r0, 0
/* 80A34240  41 82 01 4C */	beq lbl_80A3438C
/* 80A34244  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A34248  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3424C  4B 71 16 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34250  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A34254  38 00 00 00 */	li r0, 0
/* 80A34258  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A3425C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A34260  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A34264  48 00 01 28 */	b lbl_80A3438C
lbl_80A34268:
/* 80A34268  3B A0 00 01 */	li r29, 1
/* 80A3426C  48 00 01 20 */	b lbl_80A3438C
lbl_80A34270:
/* 80A34270  7F E3 FB 78 */	mr r3, r31
/* 80A34274  38 80 00 00 */	li r4, 0
/* 80A34278  38 A0 00 00 */	li r5, 0
/* 80A3427C  38 C0 00 00 */	li r6, 0
/* 80A34280  38 E0 00 00 */	li r7, 0
/* 80A34284  48 00 71 C5 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A34288  2C 03 00 00 */	cmpwi r3, 0
/* 80A3428C  41 82 01 00 */	beq lbl_80A3438C
/* 80A34290  3B A0 00 01 */	li r29, 1
/* 80A34294  88 1F 17 0E */	lbz r0, 0x170e(r31)
/* 80A34298  28 00 00 00 */	cmplwi r0, 0
/* 80A3429C  40 82 00 F0 */	bne lbl_80A3438C
/* 80A342A0  38 00 00 01 */	li r0, 1
/* 80A342A4  98 1F 17 0E */	stb r0, 0x170e(r31)
/* 80A342A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A342AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A342B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A342B4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A342B8  38 80 00 32 */	li r4, 0x32
/* 80A342BC  38 A0 00 00 */	li r5, 0
/* 80A342C0  4B 87 B1 48 */	b bgmStop__8Z2SeqMgrFUll
/* 80A342C4  48 00 00 C8 */	b lbl_80A3438C
lbl_80A342C8:
/* 80A342C8  7F E3 FB 78 */	mr r3, r31
/* 80A342CC  38 80 00 00 */	li r4, 0
/* 80A342D0  38 A0 00 00 */	li r5, 0
/* 80A342D4  38 C0 00 00 */	li r6, 0
/* 80A342D8  38 E0 00 00 */	li r7, 0
/* 80A342DC  48 00 71 6D */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A342E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A342E4  41 82 00 08 */	beq lbl_80A342EC
/* 80A342E8  3B A0 00 01 */	li r29, 1
lbl_80A342EC:
/* 80A342EC  7F E3 FB 78 */	mr r3, r31
/* 80A342F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A342F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A342F8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A342FC  4B 5E 64 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A34300  7C 64 1B 78 */	mr r4, r3
/* 80A34304  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A34308  38 A0 00 02 */	li r5, 2
/* 80A3430C  38 C0 08 00 */	li r6, 0x800
/* 80A34310  4B 83 C2 F8 */	b cLib_addCalcAngleS2__FPssss
/* 80A34314  7F E3 FB 78 */	mr r3, r31
/* 80A34318  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A3431C  48 00 67 D5 */	bl setAngle__10daNpc_Kn_cFs
/* 80A34320  48 00 00 6C */	b lbl_80A3438C
lbl_80A34324:
/* 80A34324  7F E3 FB 78 */	mr r3, r31
/* 80A34328  38 80 00 00 */	li r4, 0
/* 80A3432C  38 A0 00 00 */	li r5, 0
/* 80A34330  38 C0 00 00 */	li r6, 0
/* 80A34334  38 E0 00 00 */	li r7, 0
/* 80A34338  48 00 71 11 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3433C  2C 03 00 00 */	cmpwi r3, 0
/* 80A34340  41 82 00 10 */	beq lbl_80A34350
/* 80A34344  7F E3 FB 78 */	mr r3, r31
/* 80A34348  38 80 00 01 */	li r4, 1
/* 80A3434C  4B FF 99 69 */	bl setSceneChange__10daNpc_Kn_cFi
lbl_80A34350:
/* 80A34350  7F E3 FB 78 */	mr r3, r31
/* 80A34354  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A34358  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3435C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A34360  4B 5E 63 B0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A34364  7C 64 1B 78 */	mr r4, r3
/* 80A34368  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A3436C  38 A0 00 02 */	li r5, 2
/* 80A34370  38 C0 08 00 */	li r6, 0x800
/* 80A34374  4B 83 C2 94 */	b cLib_addCalcAngleS2__FPssss
/* 80A34378  7F E3 FB 78 */	mr r3, r31
/* 80A3437C  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A34380  48 00 67 71 */	bl setAngle__10daNpc_Kn_cFs
/* 80A34384  48 00 00 08 */	b lbl_80A3438C
lbl_80A34388:
/* 80A34388  3B A0 00 01 */	li r29, 1
lbl_80A3438C:
/* 80A3438C  7F A3 EB 78 */	mr r3, r29
/* 80A34390  39 61 00 40 */	addi r11, r1, 0x40
/* 80A34394  4B 92 DE 88 */	b _restgpr_26
/* 80A34398  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A3439C  7C 08 03 A6 */	mtlr r0
/* 80A343A0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A343A4  4E 80 00 20 */	blr 
