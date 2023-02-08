lbl_80A35D88:
/* 80A35D88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A35D8C  7C 08 02 A6 */	mflr r0
/* 80A35D90  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A35D94  39 61 00 40 */	addi r11, r1, 0x40
/* 80A35D98  4B 92 C4 39 */	bl _savegpr_26
/* 80A35D9C  7C 7E 1B 78 */	mr r30, r3
/* 80A35DA0  7C 9A 23 78 */	mr r26, r4
/* 80A35DA4  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A35DA8  3B A3 08 C8 */	addi r29, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A35DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A35DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A35DB4  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A35DB8  3B E0 00 00 */	li r31, 0
/* 80A35DBC  3B 80 FF FF */	li r28, -1
/* 80A35DC0  7F 63 DB 78 */	mr r3, r27
/* 80A35DC4  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A35DC8  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A35DCC  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A35DD0  38 C0 00 03 */	li r6, 3
/* 80A35DD4  4B 61 23 19 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A35DD8  28 03 00 00 */	cmplwi r3, 0
/* 80A35DDC  41 82 00 08 */	beq lbl_80A35DE4
/* 80A35DE0  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A35DE4:
/* 80A35DE4  7F 63 DB 78 */	mr r3, r27
/* 80A35DE8  7F 44 D3 78 */	mr r4, r26
/* 80A35DEC  4B 61 1F 61 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A35DF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A35DF4  41 82 02 6C */	beq lbl_80A36060
/* 80A35DF8  28 1C 00 1E */	cmplwi r28, 0x1e
/* 80A35DFC  41 81 02 64 */	bgt lbl_80A36060
/* 80A35E00  3C 60 80 A4 */	lis r3, lit_11695@ha /* 0x80A42724@ha */
/* 80A35E04  38 63 27 24 */	addi r3, r3, lit_11695@l /* 0x80A42724@l */
/* 80A35E08  57 80 10 3A */	slwi r0, r28, 2
/* 80A35E0C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A35E10  7C 09 03 A6 */	mtctr r0
/* 80A35E14  4E 80 04 20 */	bctr 
lbl_80A35E18:
/* 80A35E18  38 60 00 0B */	li r3, 0xb
/* 80A35E1C  4B 71 6D 11 */	bl daNpcT_offTmpBit__FUl
/* 80A35E20  38 60 00 0C */	li r3, 0xc
/* 80A35E24  4B 71 6D 09 */	bl daNpcT_offTmpBit__FUl
/* 80A35E28  48 00 02 38 */	b lbl_80A36060
lbl_80A35E2C:
/* 80A35E2C  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A35E30  2C 00 00 01 */	cmpwi r0, 1
/* 80A35E34  41 82 00 24 */	beq lbl_80A35E58
/* 80A35E38  83 7E 0B 90 */	lwz r27, 0xb90(r30)
/* 80A35E3C  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A35E40  4B 70 FA 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35E44  93 7E 0B 90 */	stw r27, 0xb90(r30)
/* 80A35E48  38 00 00 01 */	li r0, 1
/* 80A35E4C  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A35E50  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A35E54  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A35E58:
/* 80A35E58  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A35E5C  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A35E60  40 82 00 30 */	bne lbl_80A35E90
/* 80A35E64  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A35E68  41 82 00 50 */	beq lbl_80A35EB8
/* 80A35E6C  83 7E 0B B4 */	lwz r27, 0xbb4(r30)
/* 80A35E70  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A35E74  4B 70 FA 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35E78  93 7E 0B B4 */	stw r27, 0xbb4(r30)
/* 80A35E7C  38 00 00 16 */	li r0, 0x16
/* 80A35E80  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A35E84  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A35E88  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A35E8C  48 00 00 2C */	b lbl_80A35EB8
lbl_80A35E90:
/* 80A35E90  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A35E94  41 82 00 24 */	beq lbl_80A35EB8
/* 80A35E98  83 7E 0B B4 */	lwz r27, 0xbb4(r30)
/* 80A35E9C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A35EA0  4B 70 F9 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35EA4  93 7E 0B B4 */	stw r27, 0xbb4(r30)
/* 80A35EA8  38 00 00 10 */	li r0, 0x10
/* 80A35EAC  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A35EB0  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A35EB4  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A35EB8:
/* 80A35EB8  3C 60 80 A3 */	lis r3, s_subEnd6__FPvPv@ha /* 0x80A2FC14@ha */
/* 80A35EBC  38 63 FC 14 */	addi r3, r3, s_subEnd6__FPvPv@l /* 0x80A2FC14@l */
/* 80A35EC0  7F C4 F3 78 */	mr r4, r30
/* 80A35EC4  4B 5E B4 75 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A35EC8  48 00 01 98 */	b lbl_80A36060
lbl_80A35ECC:
/* 80A35ECC  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A35ED0  2C 00 00 00 */	cmpwi r0, 0
/* 80A35ED4  41 82 00 24 */	beq lbl_80A35EF8
/* 80A35ED8  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A35EDC  4B 70 F8 21 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A35EE0  38 00 00 00 */	li r0, 0
/* 80A35EE4  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A35EE8  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80A35EEC  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A35EF0  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A35EF4  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A35EF8:
/* 80A35EF8  38 00 00 00 */	li r0, 0
/* 80A35EFC  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A35F00  48 00 01 60 */	b lbl_80A36060
lbl_80A35F04:
/* 80A35F04  38 00 00 02 */	li r0, 2
/* 80A35F08  B0 1E 0D FE */	sth r0, 0xdfe(r30)
/* 80A35F0C  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80A35F10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A35F14  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A35F18  C0 1D 01 CC */	lfs f0, 0x1cc(r29)
/* 80A35F1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A35F20  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A35F24  4B 5D 6E 41 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A35F28  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A35F2C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80A35F30  4B 83 AC D5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A35F34  7C 64 1B 78 */	mr r4, r3
/* 80A35F38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A35F3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A35F40  4B 5D 64 F5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A35F44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A35F48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A35F4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A35F50  7C 85 23 78 */	mr r5, r4
/* 80A35F54  4B 91 0E 19 */	bl PSMTXMultVec
/* 80A35F58  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A35F5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A35F60  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A35F64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A35F68  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A35F6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A35F70  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80A35F74  EC 01 00 2A */	fadds f0, f1, f0
/* 80A35F78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A35F7C  38 61 00 08 */	addi r3, r1, 8
/* 80A35F80  4B 5E 7D 3D */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A35F84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A35F88  41 82 00 10 */	beq lbl_80A35F98
/* 80A35F8C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A35F90  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A35F94  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80A35F98:
/* 80A35F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A35F9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A35FA0  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 80A35FA4  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 80A35FA8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A35FAC  4B 83 AC 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A35FB0  7C 65 07 34 */	extsh r5, r3
/* 80A35FB4  7F 63 DB 78 */	mr r3, r27
/* 80A35FB8  38 81 00 14 */	addi r4, r1, 0x14
/* 80A35FBC  38 C0 00 00 */	li r6, 0
/* 80A35FC0  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80A35FC4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A35FC8  7D 89 03 A6 */	mtctr r12
/* 80A35FCC  4E 80 04 21 */	bctrl 
/* 80A35FD0  7F C3 F3 78 */	mr r3, r30
/* 80A35FD4  38 80 02 FE */	li r4, 0x2fe
/* 80A35FD8  38 A0 00 00 */	li r5, 0
/* 80A35FDC  48 00 54 0D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A35FE0  48 00 00 80 */	b lbl_80A36060
lbl_80A35FE4:
/* 80A35FE4  7F C3 F3 78 */	mr r3, r30
/* 80A35FE8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A35FEC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A35FF0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A35FF4  4B 5E 47 1D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A35FF8  7C 64 1B 78 */	mr r4, r3
/* 80A35FFC  7F C3 F3 78 */	mr r3, r30
/* 80A36000  48 00 4A F1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A36004  48 00 00 5C */	b lbl_80A36060
lbl_80A36008:
/* 80A36008  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A3600C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A36010  80 63 00 00 */	lwz r3, 0(r3)
/* 80A36014  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A36018  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000038@ha */
/* 80A3601C  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x02000038@l */
/* 80A36020  4B 87 9B 75 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80A36024  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A36028  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A3602C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A36030  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A36034  4B 87 9D E5 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80A36038  48 00 00 28 */	b lbl_80A36060
lbl_80A3603C:
/* 80A3603C  7F C3 F3 78 */	mr r3, r30
/* 80A36040  38 80 02 FE */	li r4, 0x2fe
/* 80A36044  38 A0 00 00 */	li r5, 0
/* 80A36048  48 00 53 A1 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3604C  48 00 00 14 */	b lbl_80A36060
lbl_80A36050:
/* 80A36050  7F C3 F3 78 */	mr r3, r30
/* 80A36054  38 80 02 FE */	li r4, 0x2fe
/* 80A36058  38 A0 00 00 */	li r5, 0
/* 80A3605C  48 00 53 8D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A36060:
/* 80A36060  28 1C 00 1E */	cmplwi r28, 0x1e
/* 80A36064  41 81 03 3C */	bgt lbl_80A363A0
/* 80A36068  3C 60 80 A4 */	lis r3, lit_11696@ha /* 0x80A426A8@ha */
/* 80A3606C  38 63 26 A8 */	addi r3, r3, lit_11696@l /* 0x80A426A8@l */
/* 80A36070  57 80 10 3A */	slwi r0, r28, 2
/* 80A36074  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A36078  7C 09 03 A6 */	mtctr r0
/* 80A3607C  4E 80 04 20 */	bctr 
lbl_80A36080:
/* 80A36080  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80A36084  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80A36088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3608C  4C 40 13 82 */	cror 2, 0, 2
/* 80A36090  40 82 03 14 */	bne lbl_80A363A4
/* 80A36094  80 1E 06 FC */	lwz r0, 0x6fc(r30)
/* 80A36098  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A3609C  41 82 03 08 */	beq lbl_80A363A4
/* 80A360A0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A360A4  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A360A8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A360AC  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A360B0  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A360B4  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A360B8  40 82 00 30 */	bne lbl_80A360E8
/* 80A360BC  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A360C0  41 82 00 50 */	beq lbl_80A36110
/* 80A360C4  83 7E 0B B4 */	lwz r27, 0xbb4(r30)
/* 80A360C8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A360CC  4B 70 F7 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A360D0  93 7E 0B B4 */	stw r27, 0xbb4(r30)
/* 80A360D4  38 00 00 13 */	li r0, 0x13
/* 80A360D8  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A360DC  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A360E0  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A360E4  48 00 00 2C */	b lbl_80A36110
lbl_80A360E8:
/* 80A360E8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A360EC  41 82 00 24 */	beq lbl_80A36110
/* 80A360F0  83 7E 0B B4 */	lwz r27, 0xbb4(r30)
/* 80A360F4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A360F8  4B 70 F7 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A360FC  93 7E 0B B4 */	stw r27, 0xbb4(r30)
/* 80A36100  38 00 00 0F */	li r0, 0xf
/* 80A36104  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A36108  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A3610C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A36110:
/* 80A36110  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A36114  2C 00 00 01 */	cmpwi r0, 1
/* 80A36118  41 82 00 24 */	beq lbl_80A3613C
/* 80A3611C  83 7E 0B 90 */	lwz r27, 0xb90(r30)
/* 80A36120  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A36124  4B 70 F7 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36128  93 7E 0B 90 */	stw r27, 0xb90(r30)
/* 80A3612C  38 00 00 01 */	li r0, 1
/* 80A36130  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A36134  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A36138  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3613C:
/* 80A3613C  7F C3 F3 78 */	mr r3, r30
/* 80A36140  48 00 14 19 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A36144  3B E0 00 01 */	li r31, 1
/* 80A36148  48 00 02 5C */	b lbl_80A363A4
lbl_80A3614C:
/* 80A3614C  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A36150  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A36154  41 82 00 0C */	beq lbl_80A36160
/* 80A36158  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A3615C  40 82 02 48 */	bne lbl_80A363A4
lbl_80A36160:
/* 80A36160  80 1E 0B B8 */	lwz r0, 0xbb8(r30)
/* 80A36164  2C 00 00 00 */	cmpwi r0, 0
/* 80A36168  40 81 00 0C */	ble lbl_80A36174
/* 80A3616C  3B E0 00 01 */	li r31, 1
/* 80A36170  48 00 02 34 */	b lbl_80A363A4
lbl_80A36174:
/* 80A36174  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A36178  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A3617C  C0 1D 01 9C */	lfs f0, 0x19c(r29)
/* 80A36180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A36184  4C 41 13 82 */	cror 2, 1, 2
/* 80A36188  40 82 02 1C */	bne lbl_80A363A4
/* 80A3618C  C0 1D 01 A0 */	lfs f0, 0x1a0(r29)
/* 80A36190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A36194  40 80 02 10 */	bge lbl_80A363A4
/* 80A36198  7F C3 F3 78 */	mr r3, r30
/* 80A3619C  48 00 13 BD */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A361A0  48 00 02 04 */	b lbl_80A363A4
lbl_80A361A4:
/* 80A361A4  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A361A8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A361AC  41 82 00 0C */	beq lbl_80A361B8
/* 80A361B0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A361B4  40 82 01 F0 */	bne lbl_80A363A4
lbl_80A361B8:
/* 80A361B8  80 1E 0B B8 */	lwz r0, 0xbb8(r30)
/* 80A361BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A361C0  40 81 01 E4 */	ble lbl_80A363A4
/* 80A361C4  3B E0 00 01 */	li r31, 1
/* 80A361C8  48 00 01 DC */	b lbl_80A363A4
lbl_80A361CC:
/* 80A361CC  7F C3 F3 78 */	mr r3, r30
/* 80A361D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A361D4  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A361D8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A361DC  4B 5E 45 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A361E0  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A361E4  7C 60 07 34 */	extsh r0, r3
/* 80A361E8  7C 04 00 00 */	cmpw r4, r0
/* 80A361EC  41 82 00 94 */	beq lbl_80A36280
/* 80A361F0  7F C3 F3 78 */	mr r3, r30
/* 80A361F4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A361F8  4B 5E 45 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A361FC  7C 64 1B 78 */	mr r4, r3
/* 80A36200  7F C3 F3 78 */	mr r3, r30
/* 80A36204  38 A0 00 01 */	li r5, 1
/* 80A36208  38 C0 00 20 */	li r6, 0x20
/* 80A3620C  38 E0 00 14 */	li r7, 0x14
/* 80A36210  39 00 00 00 */	li r8, 0
/* 80A36214  48 00 50 0D */	bl step__10daNpc_Kn_cFsiiii
/* 80A36218  2C 03 00 00 */	cmpwi r3, 0
/* 80A3621C  41 82 01 88 */	beq lbl_80A363A4
/* 80A36220  3B E0 00 01 */	li r31, 1
/* 80A36224  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A36228  2C 00 00 01 */	cmpwi r0, 1
/* 80A3622C  41 82 00 24 */	beq lbl_80A36250
/* 80A36230  83 7E 0B 90 */	lwz r27, 0xb90(r30)
/* 80A36234  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A36238  4B 70 F6 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3623C  93 7E 0B 90 */	stw r27, 0xb90(r30)
/* 80A36240  38 00 00 01 */	li r0, 1
/* 80A36244  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A36248  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A3624C  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A36250:
/* 80A36250  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A36254  2C 00 00 00 */	cmpwi r0, 0
/* 80A36258  41 82 01 4C */	beq lbl_80A363A4
/* 80A3625C  83 7E 0B B4 */	lwz r27, 0xbb4(r30)
/* 80A36260  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A36264  4B 70 F6 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36268  93 7E 0B B4 */	stw r27, 0xbb4(r30)
/* 80A3626C  38 00 00 00 */	li r0, 0
/* 80A36270  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A36274  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A36278  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A3627C  48 00 01 28 */	b lbl_80A363A4
lbl_80A36280:
/* 80A36280  3B E0 00 01 */	li r31, 1
/* 80A36284  48 00 01 20 */	b lbl_80A363A4
lbl_80A36288:
/* 80A36288  7F C3 F3 78 */	mr r3, r30
/* 80A3628C  38 80 00 00 */	li r4, 0
/* 80A36290  38 A0 00 00 */	li r5, 0
/* 80A36294  38 C0 00 00 */	li r6, 0
/* 80A36298  38 E0 00 00 */	li r7, 0
/* 80A3629C  48 00 51 AD */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A362A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A362A4  41 82 01 00 */	beq lbl_80A363A4
/* 80A362A8  3B E0 00 01 */	li r31, 1
/* 80A362AC  88 1E 17 0E */	lbz r0, 0x170e(r30)
/* 80A362B0  28 00 00 00 */	cmplwi r0, 0
/* 80A362B4  40 82 00 F0 */	bne lbl_80A363A4
/* 80A362B8  38 00 00 01 */	li r0, 1
/* 80A362BC  98 1E 17 0E */	stb r0, 0x170e(r30)
/* 80A362C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A362C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A362C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A362CC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A362D0  38 80 00 32 */	li r4, 0x32
/* 80A362D4  38 A0 00 00 */	li r5, 0
/* 80A362D8  4B 87 91 31 */	bl bgmStop__8Z2SeqMgrFUll
/* 80A362DC  48 00 00 C8 */	b lbl_80A363A4
lbl_80A362E0:
/* 80A362E0  7F C3 F3 78 */	mr r3, r30
/* 80A362E4  38 80 00 00 */	li r4, 0
/* 80A362E8  38 A0 00 00 */	li r5, 0
/* 80A362EC  38 C0 00 00 */	li r6, 0
/* 80A362F0  38 E0 00 00 */	li r7, 0
/* 80A362F4  48 00 51 55 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A362F8  2C 03 00 00 */	cmpwi r3, 0
/* 80A362FC  41 82 00 08 */	beq lbl_80A36304
/* 80A36300  3B E0 00 01 */	li r31, 1
lbl_80A36304:
/* 80A36304  7F C3 F3 78 */	mr r3, r30
/* 80A36308  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3630C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A36310  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A36314  4B 5E 43 FD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A36318  7C 64 1B 78 */	mr r4, r3
/* 80A3631C  38 7E 0D AE */	addi r3, r30, 0xdae
/* 80A36320  38 A0 00 02 */	li r5, 2
/* 80A36324  38 C0 08 00 */	li r6, 0x800
/* 80A36328  4B 83 A2 E1 */	bl cLib_addCalcAngleS2__FPssss
/* 80A3632C  7F C3 F3 78 */	mr r3, r30
/* 80A36330  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A36334  48 00 47 BD */	bl setAngle__10daNpc_Kn_cFs
/* 80A36338  48 00 00 6C */	b lbl_80A363A4
lbl_80A3633C:
/* 80A3633C  7F C3 F3 78 */	mr r3, r30
/* 80A36340  38 80 00 00 */	li r4, 0
/* 80A36344  38 A0 00 00 */	li r5, 0
/* 80A36348  38 C0 00 00 */	li r6, 0
/* 80A3634C  38 E0 00 00 */	li r7, 0
/* 80A36350  48 00 50 F9 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A36354  2C 03 00 00 */	cmpwi r3, 0
/* 80A36358  41 82 00 10 */	beq lbl_80A36368
/* 80A3635C  7F C3 F3 78 */	mr r3, r30
/* 80A36360  38 80 00 01 */	li r4, 1
/* 80A36364  4B FF 79 51 */	bl setSceneChange__10daNpc_Kn_cFi
lbl_80A36368:
/* 80A36368  7F C3 F3 78 */	mr r3, r30
/* 80A3636C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A36370  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A36374  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A36378  4B 5E 43 99 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3637C  7C 64 1B 78 */	mr r4, r3
/* 80A36380  38 7E 0D AE */	addi r3, r30, 0xdae
/* 80A36384  38 A0 00 02 */	li r5, 2
/* 80A36388  38 C0 08 00 */	li r6, 0x800
/* 80A3638C  4B 83 A2 7D */	bl cLib_addCalcAngleS2__FPssss
/* 80A36390  7F C3 F3 78 */	mr r3, r30
/* 80A36394  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A36398  48 00 47 59 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3639C  48 00 00 08 */	b lbl_80A363A4
lbl_80A363A0:
/* 80A363A0  3B E0 00 01 */	li r31, 1
lbl_80A363A4:
/* 80A363A4  7F E3 FB 78 */	mr r3, r31
/* 80A363A8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A363AC  4B 92 BE 71 */	bl _restgpr_26
/* 80A363B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A363B4  7C 08 03 A6 */	mtlr r0
/* 80A363B8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A363BC  4E 80 00 20 */	blr 
