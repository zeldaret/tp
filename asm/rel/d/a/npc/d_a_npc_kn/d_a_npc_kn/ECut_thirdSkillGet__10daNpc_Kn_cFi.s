lbl_80A32D30:
/* 80A32D30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A32D34  7C 08 02 A6 */	mflr r0
/* 80A32D38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A32D3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A32D40  4B 92 F4 90 */	b _savegpr_26
/* 80A32D44  7C 7F 1B 78 */	mr r31, r3
/* 80A32D48  7C 9A 23 78 */	mr r26, r4
/* 80A32D4C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A32D50  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A32D54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A32D58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A32D5C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A32D60  3B A0 00 00 */	li r29, 0
/* 80A32D64  3B 80 FF FF */	li r28, -1
/* 80A32D68  7F 63 DB 78 */	mr r3, r27
/* 80A32D6C  3C A0 80 A4 */	lis r5, stringBase0@ha
/* 80A32D70  38 A5 0A F8 */	addi r5, r5, stringBase0@l
/* 80A32D74  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A32D78  38 C0 00 03 */	li r6, 3
/* 80A32D7C  4B 61 53 70 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A32D80  28 03 00 00 */	cmplwi r3, 0
/* 80A32D84  41 82 00 08 */	beq lbl_80A32D8C
/* 80A32D88  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A32D8C:
/* 80A32D8C  7F 63 DB 78 */	mr r3, r27
/* 80A32D90  7F 44 D3 78 */	mr r4, r26
/* 80A32D94  4B 61 4F B8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A32D98  2C 03 00 00 */	cmpwi r3, 0
/* 80A32D9C  41 82 02 5C */	beq lbl_80A32FF8
/* 80A32DA0  28 1C 00 1E */	cmplwi r28, 0x1e
/* 80A32DA4  41 81 02 54 */	bgt lbl_80A32FF8
/* 80A32DA8  3C 60 80 A4 */	lis r3, lit_10162@ha
/* 80A32DAC  38 63 1D 44 */	addi r3, r3, lit_10162@l
/* 80A32DB0  57 80 10 3A */	slwi r0, r28, 2
/* 80A32DB4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A32DB8  7C 09 03 A6 */	mtctr r0
/* 80A32DBC  4E 80 04 20 */	bctr 
lbl_80A32DC0:
/* 80A32DC0  38 60 00 0B */	li r3, 0xb
/* 80A32DC4  4B 71 9D 68 */	b daNpcT_offTmpBit__FUl
/* 80A32DC8  38 60 00 0C */	li r3, 0xc
/* 80A32DCC  4B 71 9D 60 */	b daNpcT_offTmpBit__FUl
/* 80A32DD0  48 00 02 28 */	b lbl_80A32FF8
lbl_80A32DD4:
/* 80A32DD4  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A32DD8  2C 00 00 01 */	cmpwi r0, 1
/* 80A32DDC  41 82 00 24 */	beq lbl_80A32E00
/* 80A32DE0  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A32DE4  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A32DE8  4B 71 2A B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A32DEC  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A32DF0  38 00 00 01 */	li r0, 1
/* 80A32DF4  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A32DF8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A32DFC  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A32E00:
/* 80A32E00  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A32E04  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A32E08  40 82 00 30 */	bne lbl_80A32E38
/* 80A32E0C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A32E10  41 82 01 E8 */	beq lbl_80A32FF8
/* 80A32E14  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A32E18  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A32E1C  4B 71 2A 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A32E20  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A32E24  38 00 00 16 */	li r0, 0x16
/* 80A32E28  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A32E2C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A32E30  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A32E34  48 00 01 C4 */	b lbl_80A32FF8
lbl_80A32E38:
/* 80A32E38  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A32E3C  41 82 01 BC */	beq lbl_80A32FF8
/* 80A32E40  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A32E44  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A32E48  4B 71 2A 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A32E4C  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A32E50  38 00 00 10 */	li r0, 0x10
/* 80A32E54  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A32E58  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A32E5C  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A32E60  48 00 01 98 */	b lbl_80A32FF8
lbl_80A32E64:
/* 80A32E64  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A32E68  2C 00 00 00 */	cmpwi r0, 0
/* 80A32E6C  41 82 00 24 */	beq lbl_80A32E90
/* 80A32E70  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A32E74  4B 71 28 88 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A32E78  38 00 00 00 */	li r0, 0
/* 80A32E7C  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A32E80  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A32E84  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A32E88  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A32E8C  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A32E90:
/* 80A32E90  38 00 00 00 */	li r0, 0
/* 80A32E94  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A32E98  48 00 01 60 */	b lbl_80A32FF8
lbl_80A32E9C:
/* 80A32E9C  38 00 00 02 */	li r0, 2
/* 80A32EA0  B0 1F 0D FE */	sth r0, 0xdfe(r31)
/* 80A32EA4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A32EA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A32EAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A32EB0  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80A32EB4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A32EB8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A32EBC  4B 5D 9E A8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A32EC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A32EC4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80A32EC8  4B 83 DD 3C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A32ECC  7C 64 1B 78 */	mr r4, r3
/* 80A32ED0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A32ED4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A32ED8  4B 5D 95 5C */	b mDoMtx_YrotM__FPA4_fs
/* 80A32EDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A32EE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A32EE4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A32EE8  7C 85 23 78 */	mr r5, r4
/* 80A32EEC  4B 91 3E 80 */	b PSMTXMultVec
/* 80A32EF0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A32EF4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A32EF8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A32EFC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A32F00  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A32F04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A32F08  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A32F0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A32F10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A32F14  38 61 00 08 */	addi r3, r1, 8
/* 80A32F18  4B 5E AD A4 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A32F1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A32F20  41 82 00 10 */	beq lbl_80A32F30
/* 80A32F24  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A32F28  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A32F2C  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80A32F30:
/* 80A32F30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A32F34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A32F38  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 80A32F3C  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 80A32F40  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A32F44  4B 83 DC C0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A32F48  7C 65 07 34 */	extsh r5, r3
/* 80A32F4C  7F 63 DB 78 */	mr r3, r27
/* 80A32F50  38 81 00 14 */	addi r4, r1, 0x14
/* 80A32F54  38 C0 00 00 */	li r6, 0
/* 80A32F58  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80A32F5C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A32F60  7D 89 03 A6 */	mtctr r12
/* 80A32F64  4E 80 04 21 */	bctrl 
/* 80A32F68  7F E3 FB 78 */	mr r3, r31
/* 80A32F6C  38 80 02 E5 */	li r4, 0x2e5
/* 80A32F70  38 A0 00 00 */	li r5, 0
/* 80A32F74  48 00 84 75 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A32F78  48 00 00 80 */	b lbl_80A32FF8
lbl_80A32F7C:
/* 80A32F7C  7F E3 FB 78 */	mr r3, r31
/* 80A32F80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A32F84  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A32F88  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A32F8C  4B 5E 77 84 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A32F90  7C 64 1B 78 */	mr r4, r3
/* 80A32F94  7F E3 FB 78 */	mr r3, r31
/* 80A32F98  48 00 7B 59 */	bl setAngle__10daNpc_Kn_cFs
/* 80A32F9C  48 00 00 5C */	b lbl_80A32FF8
lbl_80A32FA0:
/* 80A32FA0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A32FA4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A32FA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A32FAC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A32FB0  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000038@ha */
/* 80A32FB4  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x02000038@l */
/* 80A32FB8  4B 87 CB DC */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80A32FBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A32FC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A32FC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A32FC8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A32FCC  4B 87 CE 4C */	b bgmStreamPlay__8Z2SeqMgrFv
/* 80A32FD0  48 00 00 28 */	b lbl_80A32FF8
lbl_80A32FD4:
/* 80A32FD4  7F E3 FB 78 */	mr r3, r31
/* 80A32FD8  38 80 02 E5 */	li r4, 0x2e5
/* 80A32FDC  38 A0 00 00 */	li r5, 0
/* 80A32FE0  48 00 84 09 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A32FE4  48 00 00 14 */	b lbl_80A32FF8
lbl_80A32FE8:
/* 80A32FE8  7F E3 FB 78 */	mr r3, r31
/* 80A32FEC  38 80 02 E5 */	li r4, 0x2e5
/* 80A32FF0  38 A0 00 00 */	li r5, 0
/* 80A32FF4  48 00 83 F5 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A32FF8:
/* 80A32FF8  28 1C 00 1E */	cmplwi r28, 0x1e
/* 80A32FFC  41 81 03 3C */	bgt lbl_80A33338
/* 80A33000  3C 60 80 A4 */	lis r3, lit_10163@ha
/* 80A33004  38 63 1C C8 */	addi r3, r3, lit_10163@l
/* 80A33008  57 80 10 3A */	slwi r0, r28, 2
/* 80A3300C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A33010  7C 09 03 A6 */	mtctr r0
/* 80A33014  4E 80 04 20 */	bctr 
lbl_80A33018:
/* 80A33018  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80A3301C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A33020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A33024  4C 40 13 82 */	cror 2, 0, 2
/* 80A33028  40 82 03 14 */	bne lbl_80A3333C
/* 80A3302C  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80A33030  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A33034  41 82 03 08 */	beq lbl_80A3333C
/* 80A33038  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A3303C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A33040  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A33044  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A33048  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3304C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A33050  40 82 00 30 */	bne lbl_80A33080
/* 80A33054  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A33058  41 82 00 50 */	beq lbl_80A330A8
/* 80A3305C  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A33060  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A33064  4B 71 28 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33068  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A3306C  38 00 00 13 */	li r0, 0x13
/* 80A33070  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A33074  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A33078  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A3307C  48 00 00 2C */	b lbl_80A330A8
lbl_80A33080:
/* 80A33080  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A33084  41 82 00 24 */	beq lbl_80A330A8
/* 80A33088  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A3308C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A33090  4B 71 28 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33094  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A33098  38 00 00 0F */	li r0, 0xf
/* 80A3309C  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A330A0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A330A4  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A330A8:
/* 80A330A8  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A330AC  2C 00 00 01 */	cmpwi r0, 1
/* 80A330B0  41 82 00 24 */	beq lbl_80A330D4
/* 80A330B4  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A330B8  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A330BC  4B 71 27 DC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A330C0  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A330C4  38 00 00 01 */	li r0, 1
/* 80A330C8  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A330CC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A330D0  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A330D4:
/* 80A330D4  7F E3 FB 78 */	mr r3, r31
/* 80A330D8  48 00 44 81 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A330DC  3B A0 00 01 */	li r29, 1
/* 80A330E0  48 00 02 5C */	b lbl_80A3333C
lbl_80A330E4:
/* 80A330E4  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A330E8  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A330EC  41 82 00 0C */	beq lbl_80A330F8
/* 80A330F0  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A330F4  40 82 02 48 */	bne lbl_80A3333C
lbl_80A330F8:
/* 80A330F8  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A330FC  2C 00 00 00 */	cmpwi r0, 0
/* 80A33100  40 81 00 0C */	ble lbl_80A3310C
/* 80A33104  3B A0 00 01 */	li r29, 1
/* 80A33108  48 00 02 34 */	b lbl_80A3333C
lbl_80A3310C:
/* 80A3310C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A33110  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A33114  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80A33118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3311C  4C 41 13 82 */	cror 2, 1, 2
/* 80A33120  40 82 02 1C */	bne lbl_80A3333C
/* 80A33124  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80A33128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3312C  40 80 02 10 */	bge lbl_80A3333C
/* 80A33130  7F E3 FB 78 */	mr r3, r31
/* 80A33134  48 00 44 25 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A33138  48 00 02 04 */	b lbl_80A3333C
lbl_80A3313C:
/* 80A3313C  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A33140  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A33144  41 82 00 0C */	beq lbl_80A33150
/* 80A33148  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A3314C  40 82 01 F0 */	bne lbl_80A3333C
lbl_80A33150:
/* 80A33150  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A33154  2C 00 00 00 */	cmpwi r0, 0
/* 80A33158  40 81 01 E4 */	ble lbl_80A3333C
/* 80A3315C  3B A0 00 01 */	li r29, 1
/* 80A33160  48 00 01 DC */	b lbl_80A3333C
lbl_80A33164:
/* 80A33164  7F E3 FB 78 */	mr r3, r31
/* 80A33168  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3316C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A33170  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A33174  4B 5E 75 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A33178  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A3317C  7C 60 07 34 */	extsh r0, r3
/* 80A33180  7C 04 00 00 */	cmpw r4, r0
/* 80A33184  41 82 00 94 */	beq lbl_80A33218
/* 80A33188  7F E3 FB 78 */	mr r3, r31
/* 80A3318C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A33190  4B 5E 75 80 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A33194  7C 64 1B 78 */	mr r4, r3
/* 80A33198  7F E3 FB 78 */	mr r3, r31
/* 80A3319C  38 A0 00 01 */	li r5, 1
/* 80A331A0  38 C0 00 20 */	li r6, 0x20
/* 80A331A4  38 E0 00 14 */	li r7, 0x14
/* 80A331A8  39 00 00 00 */	li r8, 0
/* 80A331AC  48 00 80 75 */	bl step__10daNpc_Kn_cFsiiii
/* 80A331B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A331B4  41 82 01 88 */	beq lbl_80A3333C
/* 80A331B8  3B A0 00 01 */	li r29, 1
/* 80A331BC  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A331C0  2C 00 00 01 */	cmpwi r0, 1
/* 80A331C4  41 82 00 24 */	beq lbl_80A331E8
/* 80A331C8  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A331CC  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A331D0  4B 71 26 C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A331D4  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A331D8  38 00 00 01 */	li r0, 1
/* 80A331DC  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A331E0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A331E4  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A331E8:
/* 80A331E8  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A331EC  2C 00 00 00 */	cmpwi r0, 0
/* 80A331F0  41 82 01 4C */	beq lbl_80A3333C
/* 80A331F4  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A331F8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A331FC  4B 71 26 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33200  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A33204  38 00 00 00 */	li r0, 0
/* 80A33208  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A3320C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A33210  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A33214  48 00 01 28 */	b lbl_80A3333C
lbl_80A33218:
/* 80A33218  3B A0 00 01 */	li r29, 1
/* 80A3321C  48 00 01 20 */	b lbl_80A3333C
lbl_80A33220:
/* 80A33220  7F E3 FB 78 */	mr r3, r31
/* 80A33224  38 80 00 00 */	li r4, 0
/* 80A33228  38 A0 00 00 */	li r5, 0
/* 80A3322C  38 C0 00 00 */	li r6, 0
/* 80A33230  38 E0 00 00 */	li r7, 0
/* 80A33234  48 00 82 15 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A33238  2C 03 00 00 */	cmpwi r3, 0
/* 80A3323C  41 82 01 00 */	beq lbl_80A3333C
/* 80A33240  3B A0 00 01 */	li r29, 1
/* 80A33244  88 1F 17 0E */	lbz r0, 0x170e(r31)
/* 80A33248  28 00 00 00 */	cmplwi r0, 0
/* 80A3324C  40 82 00 F0 */	bne lbl_80A3333C
/* 80A33250  38 00 00 01 */	li r0, 1
/* 80A33254  98 1F 17 0E */	stb r0, 0x170e(r31)
/* 80A33258  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A3325C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A33260  80 63 00 00 */	lwz r3, 0(r3)
/* 80A33264  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A33268  38 80 00 32 */	li r4, 0x32
/* 80A3326C  38 A0 00 00 */	li r5, 0
/* 80A33270  4B 87 C1 98 */	b bgmStop__8Z2SeqMgrFUll
/* 80A33274  48 00 00 C8 */	b lbl_80A3333C
lbl_80A33278:
/* 80A33278  7F E3 FB 78 */	mr r3, r31
/* 80A3327C  38 80 00 00 */	li r4, 0
/* 80A33280  38 A0 00 00 */	li r5, 0
/* 80A33284  38 C0 00 00 */	li r6, 0
/* 80A33288  38 E0 00 00 */	li r7, 0
/* 80A3328C  48 00 81 BD */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A33290  2C 03 00 00 */	cmpwi r3, 0
/* 80A33294  41 82 00 08 */	beq lbl_80A3329C
/* 80A33298  3B A0 00 01 */	li r29, 1
lbl_80A3329C:
/* 80A3329C  7F E3 FB 78 */	mr r3, r31
/* 80A332A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A332A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A332A8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A332AC  4B 5E 74 64 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A332B0  7C 64 1B 78 */	mr r4, r3
/* 80A332B4  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A332B8  38 A0 00 02 */	li r5, 2
/* 80A332BC  38 C0 08 00 */	li r6, 0x800
/* 80A332C0  4B 83 D3 48 */	b cLib_addCalcAngleS2__FPssss
/* 80A332C4  7F E3 FB 78 */	mr r3, r31
/* 80A332C8  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A332CC  48 00 78 25 */	bl setAngle__10daNpc_Kn_cFs
/* 80A332D0  48 00 00 6C */	b lbl_80A3333C
lbl_80A332D4:
/* 80A332D4  7F E3 FB 78 */	mr r3, r31
/* 80A332D8  38 80 00 00 */	li r4, 0
/* 80A332DC  38 A0 00 00 */	li r5, 0
/* 80A332E0  38 C0 00 00 */	li r6, 0
/* 80A332E4  38 E0 00 00 */	li r7, 0
/* 80A332E8  48 00 81 61 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A332EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A332F0  41 82 00 10 */	beq lbl_80A33300
/* 80A332F4  7F E3 FB 78 */	mr r3, r31
/* 80A332F8  38 80 00 01 */	li r4, 1
/* 80A332FC  4B FF A9 B9 */	bl setSceneChange__10daNpc_Kn_cFi
lbl_80A33300:
/* 80A33300  7F E3 FB 78 */	mr r3, r31
/* 80A33304  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A33308  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3330C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A33310  4B 5E 74 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A33314  7C 64 1B 78 */	mr r4, r3
/* 80A33318  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A3331C  38 A0 00 02 */	li r5, 2
/* 80A33320  38 C0 08 00 */	li r6, 0x800
/* 80A33324  4B 83 D2 E4 */	b cLib_addCalcAngleS2__FPssss
/* 80A33328  7F E3 FB 78 */	mr r3, r31
/* 80A3332C  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A33330  48 00 77 C1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A33334  48 00 00 08 */	b lbl_80A3333C
lbl_80A33338:
/* 80A33338  3B A0 00 01 */	li r29, 1
lbl_80A3333C:
/* 80A3333C  7F A3 EB 78 */	mr r3, r29
/* 80A33340  39 61 00 40 */	addi r11, r1, 0x40
/* 80A33344  4B 92 EE D8 */	b _restgpr_26
/* 80A33348  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A3334C  7C 08 03 A6 */	mtlr r0
/* 80A33350  38 21 00 40 */	addi r1, r1, 0x40
/* 80A33354  4E 80 00 20 */	blr 
