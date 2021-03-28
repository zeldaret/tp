lbl_80A34DB8:
/* 80A34DB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A34DBC  7C 08 02 A6 */	mflr r0
/* 80A34DC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A34DC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A34DC8  4B 92 D4 08 */	b _savegpr_26
/* 80A34DCC  7C 7F 1B 78 */	mr r31, r3
/* 80A34DD0  7C 9A 23 78 */	mr r26, r4
/* 80A34DD4  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A34DD8  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A34DDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A34DE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A34DE4  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A34DE8  3B A0 00 00 */	li r29, 0
/* 80A34DEC  3B 80 FF FF */	li r28, -1
/* 80A34DF0  7F 63 DB 78 */	mr r3, r27
/* 80A34DF4  3C A0 80 A4 */	lis r5, stringBase0@ha
/* 80A34DF8  38 A5 0A F8 */	addi r5, r5, stringBase0@l
/* 80A34DFC  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A34E00  38 C0 00 03 */	li r6, 3
/* 80A34E04  4B 61 32 E8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A34E08  28 03 00 00 */	cmplwi r3, 0
/* 80A34E0C  41 82 00 08 */	beq lbl_80A34E14
/* 80A34E10  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A34E14:
/* 80A34E14  7F 63 DB 78 */	mr r3, r27
/* 80A34E18  7F 44 D3 78 */	mr r4, r26
/* 80A34E1C  4B 61 2F 30 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A34E20  2C 03 00 00 */	cmpwi r3, 0
/* 80A34E24  41 82 02 5C */	beq lbl_80A35080
/* 80A34E28  28 1C 00 1E */	cmplwi r28, 0x1e
/* 80A34E2C  41 81 02 54 */	bgt lbl_80A35080
/* 80A34E30  3C 60 80 A4 */	lis r3, lit_11198@ha
/* 80A34E34  38 63 23 A4 */	addi r3, r3, lit_11198@l
/* 80A34E38  57 80 10 3A */	slwi r0, r28, 2
/* 80A34E3C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A34E40  7C 09 03 A6 */	mtctr r0
/* 80A34E44  4E 80 04 20 */	bctr 
lbl_80A34E48:
/* 80A34E48  38 60 00 0B */	li r3, 0xb
/* 80A34E4C  4B 71 7C E0 */	b daNpcT_offTmpBit__FUl
/* 80A34E50  38 60 00 0C */	li r3, 0xc
/* 80A34E54  4B 71 7C D8 */	b daNpcT_offTmpBit__FUl
/* 80A34E58  48 00 02 28 */	b lbl_80A35080
lbl_80A34E5C:
/* 80A34E5C  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A34E60  2C 00 00 01 */	cmpwi r0, 1
/* 80A34E64  41 82 00 24 */	beq lbl_80A34E88
/* 80A34E68  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A34E6C  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A34E70  4B 71 0A 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34E74  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A34E78  38 00 00 01 */	li r0, 1
/* 80A34E7C  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A34E80  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A34E84  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A34E88:
/* 80A34E88  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A34E8C  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A34E90  40 82 00 30 */	bne lbl_80A34EC0
/* 80A34E94  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A34E98  41 82 01 E8 */	beq lbl_80A35080
/* 80A34E9C  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A34EA0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A34EA4  4B 71 09 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34EA8  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A34EAC  38 00 00 16 */	li r0, 0x16
/* 80A34EB0  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A34EB4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A34EB8  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A34EBC  48 00 01 C4 */	b lbl_80A35080
lbl_80A34EC0:
/* 80A34EC0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A34EC4  41 82 01 BC */	beq lbl_80A35080
/* 80A34EC8  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A34ECC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A34ED0  4B 71 09 C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A34ED4  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A34ED8  38 00 00 10 */	li r0, 0x10
/* 80A34EDC  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A34EE0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A34EE4  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A34EE8  48 00 01 98 */	b lbl_80A35080
lbl_80A34EEC:
/* 80A34EEC  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A34EF0  2C 00 00 00 */	cmpwi r0, 0
/* 80A34EF4  41 82 00 24 */	beq lbl_80A34F18
/* 80A34EF8  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A34EFC  4B 71 08 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A34F00  38 00 00 00 */	li r0, 0
/* 80A34F04  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A34F08  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A34F0C  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A34F10  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A34F14  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A34F18:
/* 80A34F18  38 00 00 00 */	li r0, 0
/* 80A34F1C  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A34F20  48 00 01 60 */	b lbl_80A35080
lbl_80A34F24:
/* 80A34F24  38 00 00 02 */	li r0, 2
/* 80A34F28  B0 1F 0D FE */	sth r0, 0xdfe(r31)
/* 80A34F2C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A34F30  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A34F34  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A34F38  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80A34F3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A34F40  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A34F44  4B 5D 7E 20 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A34F48  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A34F4C  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80A34F50  4B 83 BC B4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A34F54  7C 64 1B 78 */	mr r4, r3
/* 80A34F58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A34F5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A34F60  4B 5D 74 D4 */	b mDoMtx_YrotM__FPA4_fs
/* 80A34F64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A34F68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A34F6C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A34F70  7C 85 23 78 */	mr r5, r4
/* 80A34F74  4B 91 1D F8 */	b PSMTXMultVec
/* 80A34F78  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A34F7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A34F80  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A34F84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A34F88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A34F8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A34F90  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A34F94  EC 01 00 2A */	fadds f0, f1, f0
/* 80A34F98  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A34F9C  38 61 00 08 */	addi r3, r1, 8
/* 80A34FA0  4B 5E 8D 1C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A34FA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A34FA8  41 82 00 10 */	beq lbl_80A34FB8
/* 80A34FAC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A34FB0  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A34FB4  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80A34FB8:
/* 80A34FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A34FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A34FC0  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 80A34FC4  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 80A34FC8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A34FCC  4B 83 BC 38 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A34FD0  7C 65 07 34 */	extsh r5, r3
/* 80A34FD4  7F 63 DB 78 */	mr r3, r27
/* 80A34FD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80A34FDC  38 C0 00 00 */	li r6, 0
/* 80A34FE0  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80A34FE4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A34FE8  7D 89 03 A6 */	mtctr r12
/* 80A34FEC  4E 80 04 21 */	bctrl 
/* 80A34FF0  7F E3 FB 78 */	mr r3, r31
/* 80A34FF4  38 80 02 ED */	li r4, 0x2ed
/* 80A34FF8  38 A0 00 00 */	li r5, 0
/* 80A34FFC  48 00 63 ED */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A35000  48 00 00 80 */	b lbl_80A35080
lbl_80A35004:
/* 80A35004  7F E3 FB 78 */	mr r3, r31
/* 80A35008  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3500C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A35010  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A35014  4B 5E 56 FC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A35018  7C 64 1B 78 */	mr r4, r3
/* 80A3501C  7F E3 FB 78 */	mr r3, r31
/* 80A35020  48 00 5A D1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A35024  48 00 00 5C */	b lbl_80A35080
lbl_80A35028:
/* 80A35028  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A3502C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A35030  80 63 00 00 */	lwz r3, 0(r3)
/* 80A35034  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A35038  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000038@ha */
/* 80A3503C  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x02000038@l */
/* 80A35040  4B 87 AB 54 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80A35044  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A35048  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A3504C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A35050  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A35054  4B 87 AD C4 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 80A35058  48 00 00 28 */	b lbl_80A35080
lbl_80A3505C:
/* 80A3505C  7F E3 FB 78 */	mr r3, r31
/* 80A35060  38 80 02 ED */	li r4, 0x2ed
/* 80A35064  38 A0 00 00 */	li r5, 0
/* 80A35068  48 00 63 81 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3506C  48 00 00 14 */	b lbl_80A35080
lbl_80A35070:
/* 80A35070  7F E3 FB 78 */	mr r3, r31
/* 80A35074  38 80 02 ED */	li r4, 0x2ed
/* 80A35078  38 A0 00 00 */	li r5, 0
/* 80A3507C  48 00 63 6D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A35080:
/* 80A35080  28 1C 00 1E */	cmplwi r28, 0x1e
/* 80A35084  41 81 03 3C */	bgt lbl_80A353C0
/* 80A35088  3C 60 80 A4 */	lis r3, lit_11199@ha
/* 80A3508C  38 63 23 28 */	addi r3, r3, lit_11199@l
/* 80A35090  57 80 10 3A */	slwi r0, r28, 2
/* 80A35094  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A35098  7C 09 03 A6 */	mtctr r0
/* 80A3509C  4E 80 04 20 */	bctr 
lbl_80A350A0:
/* 80A350A0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80A350A4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A350A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A350AC  4C 40 13 82 */	cror 2, 0, 2
/* 80A350B0  40 82 03 14 */	bne lbl_80A353C4
/* 80A350B4  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80A350B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A350BC  41 82 03 08 */	beq lbl_80A353C4
/* 80A350C0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A350C4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A350C8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A350CC  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A350D0  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A350D4  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A350D8  40 82 00 30 */	bne lbl_80A35108
/* 80A350DC  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A350E0  41 82 00 50 */	beq lbl_80A35130
/* 80A350E4  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A350E8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A350EC  4B 71 07 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A350F0  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A350F4  38 00 00 13 */	li r0, 0x13
/* 80A350F8  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A350FC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A35100  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A35104  48 00 00 2C */	b lbl_80A35130
lbl_80A35108:
/* 80A35108  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A3510C  41 82 00 24 */	beq lbl_80A35130
/* 80A35110  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A35114  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A35118  4B 71 07 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3511C  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A35120  38 00 00 0F */	li r0, 0xf
/* 80A35124  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A35128  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3512C  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A35130:
/* 80A35130  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A35134  2C 00 00 01 */	cmpwi r0, 1
/* 80A35138  41 82 00 24 */	beq lbl_80A3515C
/* 80A3513C  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A35140  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A35144  4B 71 07 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35148  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A3514C  38 00 00 01 */	li r0, 1
/* 80A35150  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A35154  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A35158  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A3515C:
/* 80A3515C  7F E3 FB 78 */	mr r3, r31
/* 80A35160  48 00 23 F9 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A35164  3B A0 00 01 */	li r29, 1
/* 80A35168  48 00 02 5C */	b lbl_80A353C4
lbl_80A3516C:
/* 80A3516C  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A35170  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A35174  41 82 00 0C */	beq lbl_80A35180
/* 80A35178  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A3517C  40 82 02 48 */	bne lbl_80A353C4
lbl_80A35180:
/* 80A35180  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A35184  2C 00 00 00 */	cmpwi r0, 0
/* 80A35188  40 81 00 0C */	ble lbl_80A35194
/* 80A3518C  3B A0 00 01 */	li r29, 1
/* 80A35190  48 00 02 34 */	b lbl_80A353C4
lbl_80A35194:
/* 80A35194  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A35198  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A3519C  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80A351A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A351A4  4C 41 13 82 */	cror 2, 1, 2
/* 80A351A8  40 82 02 1C */	bne lbl_80A353C4
/* 80A351AC  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80A351B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A351B4  40 80 02 10 */	bge lbl_80A353C4
/* 80A351B8  7F E3 FB 78 */	mr r3, r31
/* 80A351BC  48 00 23 9D */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A351C0  48 00 02 04 */	b lbl_80A353C4
lbl_80A351C4:
/* 80A351C4  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A351C8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A351CC  41 82 00 0C */	beq lbl_80A351D8
/* 80A351D0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A351D4  40 82 01 F0 */	bne lbl_80A353C4
lbl_80A351D8:
/* 80A351D8  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A351DC  2C 00 00 00 */	cmpwi r0, 0
/* 80A351E0  40 81 01 E4 */	ble lbl_80A353C4
/* 80A351E4  3B A0 00 01 */	li r29, 1
/* 80A351E8  48 00 01 DC */	b lbl_80A353C4
lbl_80A351EC:
/* 80A351EC  7F E3 FB 78 */	mr r3, r31
/* 80A351F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A351F4  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A351F8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A351FC  4B 5E 55 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A35200  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A35204  7C 60 07 34 */	extsh r0, r3
/* 80A35208  7C 04 00 00 */	cmpw r4, r0
/* 80A3520C  41 82 00 94 */	beq lbl_80A352A0
/* 80A35210  7F E3 FB 78 */	mr r3, r31
/* 80A35214  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A35218  4B 5E 54 F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3521C  7C 64 1B 78 */	mr r4, r3
/* 80A35220  7F E3 FB 78 */	mr r3, r31
/* 80A35224  38 A0 00 01 */	li r5, 1
/* 80A35228  38 C0 00 20 */	li r6, 0x20
/* 80A3522C  38 E0 00 14 */	li r7, 0x14
/* 80A35230  39 00 00 00 */	li r8, 0
/* 80A35234  48 00 5F ED */	bl step__10daNpc_Kn_cFsiiii
/* 80A35238  2C 03 00 00 */	cmpwi r3, 0
/* 80A3523C  41 82 01 88 */	beq lbl_80A353C4
/* 80A35240  3B A0 00 01 */	li r29, 1
/* 80A35244  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A35248  2C 00 00 01 */	cmpwi r0, 1
/* 80A3524C  41 82 00 24 */	beq lbl_80A35270
/* 80A35250  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A35254  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A35258  4B 71 06 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3525C  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A35260  38 00 00 01 */	li r0, 1
/* 80A35264  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A35268  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3526C  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A35270:
/* 80A35270  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A35274  2C 00 00 00 */	cmpwi r0, 0
/* 80A35278  41 82 01 4C */	beq lbl_80A353C4
/* 80A3527C  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A35280  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A35284  4B 71 06 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A35288  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A3528C  38 00 00 00 */	li r0, 0
/* 80A35290  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A35294  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A35298  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A3529C  48 00 01 28 */	b lbl_80A353C4
lbl_80A352A0:
/* 80A352A0  3B A0 00 01 */	li r29, 1
/* 80A352A4  48 00 01 20 */	b lbl_80A353C4
lbl_80A352A8:
/* 80A352A8  7F E3 FB 78 */	mr r3, r31
/* 80A352AC  38 80 00 00 */	li r4, 0
/* 80A352B0  38 A0 00 00 */	li r5, 0
/* 80A352B4  38 C0 00 00 */	li r6, 0
/* 80A352B8  38 E0 00 00 */	li r7, 0
/* 80A352BC  48 00 61 8D */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A352C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A352C4  41 82 01 00 */	beq lbl_80A353C4
/* 80A352C8  3B A0 00 01 */	li r29, 1
/* 80A352CC  88 1F 17 0E */	lbz r0, 0x170e(r31)
/* 80A352D0  28 00 00 00 */	cmplwi r0, 0
/* 80A352D4  40 82 00 F0 */	bne lbl_80A353C4
/* 80A352D8  38 00 00 01 */	li r0, 1
/* 80A352DC  98 1F 17 0E */	stb r0, 0x170e(r31)
/* 80A352E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A352E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A352E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A352EC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A352F0  38 80 00 32 */	li r4, 0x32
/* 80A352F4  38 A0 00 00 */	li r5, 0
/* 80A352F8  4B 87 A1 10 */	b bgmStop__8Z2SeqMgrFUll
/* 80A352FC  48 00 00 C8 */	b lbl_80A353C4
lbl_80A35300:
/* 80A35300  7F E3 FB 78 */	mr r3, r31
/* 80A35304  38 80 00 00 */	li r4, 0
/* 80A35308  38 A0 00 00 */	li r5, 0
/* 80A3530C  38 C0 00 00 */	li r6, 0
/* 80A35310  38 E0 00 00 */	li r7, 0
/* 80A35314  48 00 61 35 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A35318  2C 03 00 00 */	cmpwi r3, 0
/* 80A3531C  41 82 00 08 */	beq lbl_80A35324
/* 80A35320  3B A0 00 01 */	li r29, 1
lbl_80A35324:
/* 80A35324  7F E3 FB 78 */	mr r3, r31
/* 80A35328  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3532C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A35330  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A35334  4B 5E 53 DC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A35338  7C 64 1B 78 */	mr r4, r3
/* 80A3533C  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A35340  38 A0 00 02 */	li r5, 2
/* 80A35344  38 C0 08 00 */	li r6, 0x800
/* 80A35348  4B 83 B2 C0 */	b cLib_addCalcAngleS2__FPssss
/* 80A3534C  7F E3 FB 78 */	mr r3, r31
/* 80A35350  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A35354  48 00 57 9D */	bl setAngle__10daNpc_Kn_cFs
/* 80A35358  48 00 00 6C */	b lbl_80A353C4
lbl_80A3535C:
/* 80A3535C  7F E3 FB 78 */	mr r3, r31
/* 80A35360  38 80 00 00 */	li r4, 0
/* 80A35364  38 A0 00 00 */	li r5, 0
/* 80A35368  38 C0 00 00 */	li r6, 0
/* 80A3536C  38 E0 00 00 */	li r7, 0
/* 80A35370  48 00 60 D9 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A35374  2C 03 00 00 */	cmpwi r3, 0
/* 80A35378  41 82 00 10 */	beq lbl_80A35388
/* 80A3537C  7F E3 FB 78 */	mr r3, r31
/* 80A35380  38 80 00 01 */	li r4, 1
/* 80A35384  4B FF 89 31 */	bl setSceneChange__10daNpc_Kn_cFi
lbl_80A35388:
/* 80A35388  7F E3 FB 78 */	mr r3, r31
/* 80A3538C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A35390  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A35394  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A35398  4B 5E 53 78 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3539C  7C 64 1B 78 */	mr r4, r3
/* 80A353A0  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A353A4  38 A0 00 02 */	li r5, 2
/* 80A353A8  38 C0 08 00 */	li r6, 0x800
/* 80A353AC  4B 83 B2 5C */	b cLib_addCalcAngleS2__FPssss
/* 80A353B0  7F E3 FB 78 */	mr r3, r31
/* 80A353B4  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A353B8  48 00 57 39 */	bl setAngle__10daNpc_Kn_cFs
/* 80A353BC  48 00 00 08 */	b lbl_80A353C4
lbl_80A353C0:
/* 80A353C0  3B A0 00 01 */	li r29, 1
lbl_80A353C4:
/* 80A353C4  7F A3 EB 78 */	mr r3, r29
/* 80A353C8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A353CC  4B 92 CE 50 */	b _restgpr_26
/* 80A353D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A353D4  7C 08 03 A6 */	mtlr r0
/* 80A353D8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A353DC  4E 80 00 20 */	blr 
