lbl_80A36C20:
/* 80A36C20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A36C24  7C 08 02 A6 */	mflr r0
/* 80A36C28  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A36C2C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A36C30  4B 92 B5 A1 */	bl _savegpr_26
/* 80A36C34  7C 7F 1B 78 */	mr r31, r3
/* 80A36C38  7C 9A 23 78 */	mr r26, r4
/* 80A36C3C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A36C40  3B A3 08 C8 */	addi r29, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A36C44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A36C48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A36C4C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A36C50  3B C0 00 00 */	li r30, 0
/* 80A36C54  3B 80 FF FF */	li r28, -1
/* 80A36C58  7F 63 DB 78 */	mr r3, r27
/* 80A36C5C  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A36C60  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A36C64  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A36C68  38 C0 00 03 */	li r6, 3
/* 80A36C6C  4B 61 14 81 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A36C70  28 03 00 00 */	cmplwi r3, 0
/* 80A36C74  41 82 00 08 */	beq lbl_80A36C7C
/* 80A36C78  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A36C7C:
/* 80A36C7C  7F 63 DB 78 */	mr r3, r27
/* 80A36C80  7F 44 D3 78 */	mr r4, r26
/* 80A36C84  4B 61 10 C9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A36C88  2C 03 00 00 */	cmpwi r3, 0
/* 80A36C8C  41 82 02 88 */	beq lbl_80A36F14
/* 80A36C90  28 1C 00 28 */	cmplwi r28, 0x28
/* 80A36C94  41 81 02 80 */	bgt lbl_80A36F14
/* 80A36C98  3C 60 80 A4 */	lis r3, lit_12159@ha /* 0x80A42ACC@ha */
/* 80A36C9C  38 63 2A CC */	addi r3, r3, lit_12159@l /* 0x80A42ACC@l */
/* 80A36CA0  57 80 10 3A */	slwi r0, r28, 2
/* 80A36CA4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A36CA8  7C 09 03 A6 */	mtctr r0
/* 80A36CAC  4E 80 04 20 */	bctr 
lbl_80A36CB0:
/* 80A36CB0  38 60 00 0B */	li r3, 0xb
/* 80A36CB4  4B 71 5E 79 */	bl daNpcT_offTmpBit__FUl
/* 80A36CB8  38 60 00 0C */	li r3, 0xc
/* 80A36CBC  4B 71 5E 71 */	bl daNpcT_offTmpBit__FUl
/* 80A36CC0  38 60 00 0D */	li r3, 0xd
/* 80A36CC4  4B 71 5E 69 */	bl daNpcT_offTmpBit__FUl
/* 80A36CC8  48 00 02 4C */	b lbl_80A36F14
lbl_80A36CCC:
/* 80A36CCC  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A36CD0  2C 00 00 01 */	cmpwi r0, 1
/* 80A36CD4  41 82 00 24 */	beq lbl_80A36CF8
/* 80A36CD8  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A36CDC  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A36CE0  4B 70 EB B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36CE4  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A36CE8  38 00 00 01 */	li r0, 1
/* 80A36CEC  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A36CF0  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A36CF4  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A36CF8:
/* 80A36CF8  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A36CFC  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A36D00  40 82 00 30 */	bne lbl_80A36D30
/* 80A36D04  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A36D08  41 82 00 50 */	beq lbl_80A36D58
/* 80A36D0C  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A36D10  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A36D14  4B 70 EB 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36D18  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A36D1C  38 00 00 16 */	li r0, 0x16
/* 80A36D20  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A36D24  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A36D28  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A36D2C  48 00 00 2C */	b lbl_80A36D58
lbl_80A36D30:
/* 80A36D30  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A36D34  41 82 00 24 */	beq lbl_80A36D58
/* 80A36D38  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A36D3C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A36D40  4B 70 EB 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36D44  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A36D48  38 00 00 10 */	li r0, 0x10
/* 80A36D4C  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A36D50  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A36D54  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A36D58:
/* 80A36D58  3C 60 80 A3 */	lis r3, s_subEnd7__FPvPv@ha /* 0x80A30FBC@ha */
/* 80A36D5C  38 63 0F BC */	addi r3, r3, s_subEnd7__FPvPv@l /* 0x80A30FBC@l */
/* 80A36D60  7F E4 FB 78 */	mr r4, r31
/* 80A36D64  4B 5E A5 D5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A36D68  48 00 01 AC */	b lbl_80A36F14
lbl_80A36D6C:
/* 80A36D6C  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A36D70  2C 00 00 00 */	cmpwi r0, 0
/* 80A36D74  41 82 00 24 */	beq lbl_80A36D98
/* 80A36D78  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A36D7C  4B 70 E9 81 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A36D80  38 00 00 00 */	li r0, 0
/* 80A36D84  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A36D88  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80A36D8C  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A36D90  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A36D94  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A36D98:
/* 80A36D98  38 00 00 00 */	li r0, 0
/* 80A36D9C  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A36DA0  48 00 01 74 */	b lbl_80A36F14
lbl_80A36DA4:
/* 80A36DA4  38 00 00 02 */	li r0, 2
/* 80A36DA8  B0 1F 0D FE */	sth r0, 0xdfe(r31)
/* 80A36DAC  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80A36DB0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A36DB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A36DB8  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80A36DBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A36DC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A36DC4  4B 5D 5F A1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A36DC8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A36DCC  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80A36DD0  4B 83 9E 35 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A36DD4  7C 64 1B 78 */	mr r4, r3
/* 80A36DD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A36DDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A36DE0  4B 5D 56 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A36DE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A36DE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A36DEC  38 81 00 14 */	addi r4, r1, 0x14
/* 80A36DF0  7C 85 23 78 */	mr r5, r4
/* 80A36DF4  4B 90 FF 79 */	bl PSMTXMultVec
/* 80A36DF8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A36DFC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A36E00  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A36E04  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A36E08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A36E0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A36E10  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80A36E14  EC 01 00 2A */	fadds f0, f1, f0
/* 80A36E18  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A36E1C  38 61 00 08 */	addi r3, r1, 8
/* 80A36E20  4B 5E 6E 9D */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A36E24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A36E28  41 82 00 10 */	beq lbl_80A36E38
/* 80A36E2C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A36E30  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A36E34  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80A36E38:
/* 80A36E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A36E3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A36E40  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 80A36E44  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 80A36E48  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A36E4C  4B 83 9D B9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A36E50  7C 65 07 34 */	extsh r5, r3
/* 80A36E54  7F 63 DB 78 */	mr r3, r27
/* 80A36E58  38 81 00 14 */	addi r4, r1, 0x14
/* 80A36E5C  38 C0 00 00 */	li r6, 0
/* 80A36E60  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80A36E64  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A36E68  7D 89 03 A6 */	mtctr r12
/* 80A36E6C  4E 80 04 21 */	bctrl 
/* 80A36E70  7F E3 FB 78 */	mr r3, r31
/* 80A36E74  38 80 03 05 */	li r4, 0x305
/* 80A36E78  38 A0 00 00 */	li r5, 0
/* 80A36E7C  48 00 45 6D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A36E80  48 00 00 94 */	b lbl_80A36F14
lbl_80A36E84:
/* 80A36E84  7F E3 FB 78 */	mr r3, r31
/* 80A36E88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A36E8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A36E90  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A36E94  4B 5E 38 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A36E98  7C 64 1B 78 */	mr r4, r3
/* 80A36E9C  7F E3 FB 78 */	mr r3, r31
/* 80A36EA0  48 00 3C 51 */	bl setAngle__10daNpc_Kn_cFs
/* 80A36EA4  48 00 00 70 */	b lbl_80A36F14
lbl_80A36EA8:
/* 80A36EA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A36EAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A36EB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A36EB4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A36EB8  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000038@ha */
/* 80A36EBC  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x02000038@l */
/* 80A36EC0  4B 87 8C D5 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80A36EC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A36EC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A36ECC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A36ED0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A36ED4  4B 87 8F 45 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80A36ED8  48 00 00 3C */	b lbl_80A36F14
lbl_80A36EDC:
/* 80A36EDC  7F E3 FB 78 */	mr r3, r31
/* 80A36EE0  38 80 03 05 */	li r4, 0x305
/* 80A36EE4  38 A0 00 00 */	li r5, 0
/* 80A36EE8  48 00 45 01 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A36EEC  48 00 00 28 */	b lbl_80A36F14
lbl_80A36EF0:
/* 80A36EF0  7F E3 FB 78 */	mr r3, r31
/* 80A36EF4  38 80 03 05 */	li r4, 0x305
/* 80A36EF8  38 A0 00 00 */	li r5, 0
/* 80A36EFC  48 00 44 ED */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A36F00  48 00 00 14 */	b lbl_80A36F14
lbl_80A36F04:
/* 80A36F04  7F E3 FB 78 */	mr r3, r31
/* 80A36F08  38 80 03 05 */	li r4, 0x305
/* 80A36F0C  38 A0 00 00 */	li r5, 0
/* 80A36F10  48 00 44 D9 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A36F14:
/* 80A36F14  28 1C 00 28 */	cmplwi r28, 0x28
/* 80A36F18  41 81 03 98 */	bgt lbl_80A372B0
/* 80A36F1C  3C 60 80 A4 */	lis r3, lit_12160@ha /* 0x80A42A28@ha */
/* 80A36F20  38 63 2A 28 */	addi r3, r3, lit_12160@l /* 0x80A42A28@l */
/* 80A36F24  57 80 10 3A */	slwi r0, r28, 2
/* 80A36F28  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A36F2C  7C 09 03 A6 */	mtctr r0
/* 80A36F30  4E 80 04 20 */	bctr 
lbl_80A36F34:
/* 80A36F34  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80A36F38  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80A36F3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A36F40  4C 40 13 82 */	cror 2, 0, 2
/* 80A36F44  40 82 03 70 */	bne lbl_80A372B4
/* 80A36F48  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80A36F4C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A36F50  41 82 03 64 */	beq lbl_80A372B4
/* 80A36F54  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A36F58  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A36F5C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A36F60  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A36F64  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A36F68  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A36F6C  40 82 00 30 */	bne lbl_80A36F9C
/* 80A36F70  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A36F74  41 82 00 50 */	beq lbl_80A36FC4
/* 80A36F78  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A36F7C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A36F80  4B 70 E9 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36F84  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A36F88  38 00 00 13 */	li r0, 0x13
/* 80A36F8C  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A36F90  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A36F94  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A36F98  48 00 00 2C */	b lbl_80A36FC4
lbl_80A36F9C:
/* 80A36F9C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A36FA0  41 82 00 24 */	beq lbl_80A36FC4
/* 80A36FA4  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A36FA8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A36FAC  4B 70 E8 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36FB0  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A36FB4  38 00 00 0F */	li r0, 0xf
/* 80A36FB8  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A36FBC  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A36FC0  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A36FC4:
/* 80A36FC4  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A36FC8  2C 00 00 01 */	cmpwi r0, 1
/* 80A36FCC  41 82 00 24 */	beq lbl_80A36FF0
/* 80A36FD0  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A36FD4  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A36FD8  4B 70 E8 C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36FDC  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A36FE0  38 00 00 01 */	li r0, 1
/* 80A36FE4  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A36FE8  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A36FEC  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A36FF0:
/* 80A36FF0  7F E3 FB 78 */	mr r3, r31
/* 80A36FF4  48 00 05 65 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A36FF8  3B C0 00 01 */	li r30, 1
/* 80A36FFC  48 00 02 B8 */	b lbl_80A372B4
lbl_80A37000:
/* 80A37000  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A37004  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A37008  41 82 00 0C */	beq lbl_80A37014
/* 80A3700C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A37010  40 82 02 A4 */	bne lbl_80A372B4
lbl_80A37014:
/* 80A37014  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A37018  2C 00 00 00 */	cmpwi r0, 0
/* 80A3701C  40 81 00 0C */	ble lbl_80A37028
/* 80A37020  3B C0 00 01 */	li r30, 1
/* 80A37024  48 00 02 90 */	b lbl_80A372B4
lbl_80A37028:
/* 80A37028  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A3702C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A37030  C0 1D 01 9C */	lfs f0, 0x19c(r29)
/* 80A37034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A37038  4C 41 13 82 */	cror 2, 1, 2
/* 80A3703C  40 82 02 78 */	bne lbl_80A372B4
/* 80A37040  C0 1D 01 A0 */	lfs f0, 0x1a0(r29)
/* 80A37044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A37048  40 80 02 6C */	bge lbl_80A372B4
/* 80A3704C  7F E3 FB 78 */	mr r3, r31
/* 80A37050  48 00 05 09 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A37054  48 00 02 60 */	b lbl_80A372B4
lbl_80A37058:
/* 80A37058  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3705C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A37060  41 82 00 0C */	beq lbl_80A3706C
/* 80A37064  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A37068  40 82 02 4C */	bne lbl_80A372B4
lbl_80A3706C:
/* 80A3706C  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A37070  2C 00 00 00 */	cmpwi r0, 0
/* 80A37074  40 81 02 40 */	ble lbl_80A372B4
/* 80A37078  3B C0 00 01 */	li r30, 1
/* 80A3707C  48 00 02 38 */	b lbl_80A372B4
lbl_80A37080:
/* 80A37080  7F E3 FB 78 */	mr r3, r31
/* 80A37084  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A37088  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3708C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A37090  4B 5E 36 81 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A37094  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A37098  7C 60 07 34 */	extsh r0, r3
/* 80A3709C  7C 04 00 00 */	cmpw r4, r0
/* 80A370A0  41 82 00 94 */	beq lbl_80A37134
/* 80A370A4  7F E3 FB 78 */	mr r3, r31
/* 80A370A8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A370AC  4B 5E 36 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A370B0  7C 64 1B 78 */	mr r4, r3
/* 80A370B4  7F E3 FB 78 */	mr r3, r31
/* 80A370B8  38 A0 00 01 */	li r5, 1
/* 80A370BC  38 C0 00 20 */	li r6, 0x20
/* 80A370C0  38 E0 00 14 */	li r7, 0x14
/* 80A370C4  39 00 00 00 */	li r8, 0
/* 80A370C8  48 00 41 59 */	bl step__10daNpc_Kn_cFsiiii
/* 80A370CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A370D0  41 82 01 E4 */	beq lbl_80A372B4
/* 80A370D4  3B C0 00 01 */	li r30, 1
/* 80A370D8  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A370DC  2C 00 00 01 */	cmpwi r0, 1
/* 80A370E0  41 82 00 24 */	beq lbl_80A37104
/* 80A370E4  83 7F 0B 90 */	lwz r27, 0xb90(r31)
/* 80A370E8  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A370EC  4B 70 E7 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A370F0  93 7F 0B 90 */	stw r27, 0xb90(r31)
/* 80A370F4  38 00 00 01 */	li r0, 1
/* 80A370F8  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A370FC  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A37100  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A37104:
/* 80A37104  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A37108  2C 00 00 00 */	cmpwi r0, 0
/* 80A3710C  41 82 01 A8 */	beq lbl_80A372B4
/* 80A37110  83 7F 0B B4 */	lwz r27, 0xbb4(r31)
/* 80A37114  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A37118  4B 70 E7 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3711C  93 7F 0B B4 */	stw r27, 0xbb4(r31)
/* 80A37120  38 00 00 00 */	li r0, 0
/* 80A37124  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A37128  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A3712C  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A37130  48 00 01 84 */	b lbl_80A372B4
lbl_80A37134:
/* 80A37134  3B C0 00 01 */	li r30, 1
/* 80A37138  48 00 01 7C */	b lbl_80A372B4
lbl_80A3713C:
/* 80A3713C  7F E3 FB 78 */	mr r3, r31
/* 80A37140  38 80 00 00 */	li r4, 0
/* 80A37144  38 A0 00 00 */	li r5, 0
/* 80A37148  38 C0 00 00 */	li r6, 0
/* 80A3714C  38 E0 00 00 */	li r7, 0
/* 80A37150  48 00 42 F9 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A37154  2C 03 00 00 */	cmpwi r3, 0
/* 80A37158  41 82 01 5C */	beq lbl_80A372B4
/* 80A3715C  3B C0 00 01 */	li r30, 1
/* 80A37160  88 1F 17 0E */	lbz r0, 0x170e(r31)
/* 80A37164  28 00 00 00 */	cmplwi r0, 0
/* 80A37168  40 82 01 4C */	bne lbl_80A372B4
/* 80A3716C  38 00 00 01 */	li r0, 1
/* 80A37170  98 1F 17 0E */	stb r0, 0x170e(r31)
/* 80A37174  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A37178  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A3717C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A37180  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A37184  38 80 00 32 */	li r4, 0x32
/* 80A37188  38 A0 00 00 */	li r5, 0
/* 80A3718C  4B 87 82 7D */	bl bgmStop__8Z2SeqMgrFUll
/* 80A37190  48 00 01 24 */	b lbl_80A372B4
lbl_80A37194:
/* 80A37194  7F E3 FB 78 */	mr r3, r31
/* 80A37198  38 80 00 00 */	li r4, 0
/* 80A3719C  38 A0 00 00 */	li r5, 0
/* 80A371A0  38 C0 00 00 */	li r6, 0
/* 80A371A4  38 E0 00 00 */	li r7, 0
/* 80A371A8  48 00 42 A1 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A371AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A371B0  41 82 00 08 */	beq lbl_80A371B8
/* 80A371B4  3B C0 00 01 */	li r30, 1
lbl_80A371B8:
/* 80A371B8  7F E3 FB 78 */	mr r3, r31
/* 80A371BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A371C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A371C4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A371C8  4B 5E 35 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A371CC  7C 64 1B 78 */	mr r4, r3
/* 80A371D0  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A371D4  38 A0 00 02 */	li r5, 2
/* 80A371D8  38 C0 08 00 */	li r6, 0x800
/* 80A371DC  4B 83 94 2D */	bl cLib_addCalcAngleS2__FPssss
/* 80A371E0  7F E3 FB 78 */	mr r3, r31
/* 80A371E4  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A371E8  48 00 39 09 */	bl setAngle__10daNpc_Kn_cFs
/* 80A371EC  48 00 00 C8 */	b lbl_80A372B4
lbl_80A371F0:
/* 80A371F0  7F E3 FB 78 */	mr r3, r31
/* 80A371F4  38 80 00 00 */	li r4, 0
/* 80A371F8  38 A0 00 00 */	li r5, 0
/* 80A371FC  38 C0 00 00 */	li r6, 0
/* 80A37200  38 E0 00 00 */	li r7, 0
/* 80A37204  48 00 42 45 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A37208  2C 03 00 00 */	cmpwi r3, 0
/* 80A3720C  41 82 00 08 */	beq lbl_80A37214
/* 80A37210  3B C0 00 01 */	li r30, 1
lbl_80A37214:
/* 80A37214  7F E3 FB 78 */	mr r3, r31
/* 80A37218  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3721C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A37220  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A37224  4B 5E 34 ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A37228  7C 64 1B 78 */	mr r4, r3
/* 80A3722C  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A37230  38 A0 00 02 */	li r5, 2
/* 80A37234  38 C0 08 00 */	li r6, 0x800
/* 80A37238  4B 83 93 D1 */	bl cLib_addCalcAngleS2__FPssss
/* 80A3723C  7F E3 FB 78 */	mr r3, r31
/* 80A37240  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A37244  48 00 38 AD */	bl setAngle__10daNpc_Kn_cFs
/* 80A37248  48 00 00 6C */	b lbl_80A372B4
lbl_80A3724C:
/* 80A3724C  7F E3 FB 78 */	mr r3, r31
/* 80A37250  38 80 00 00 */	li r4, 0
/* 80A37254  38 A0 00 00 */	li r5, 0
/* 80A37258  38 C0 00 00 */	li r6, 0
/* 80A3725C  38 E0 00 00 */	li r7, 0
/* 80A37260  48 00 41 E9 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A37264  2C 03 00 00 */	cmpwi r3, 0
/* 80A37268  41 82 00 10 */	beq lbl_80A37278
/* 80A3726C  7F E3 FB 78 */	mr r3, r31
/* 80A37270  38 80 00 01 */	li r4, 1
/* 80A37274  4B FF 6A 41 */	bl setSceneChange__10daNpc_Kn_cFi
lbl_80A37278:
/* 80A37278  7F E3 FB 78 */	mr r3, r31
/* 80A3727C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A37280  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A37284  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A37288  4B 5E 34 89 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3728C  7C 64 1B 78 */	mr r4, r3
/* 80A37290  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A37294  38 A0 00 02 */	li r5, 2
/* 80A37298  38 C0 08 00 */	li r6, 0x800
/* 80A3729C  4B 83 93 6D */	bl cLib_addCalcAngleS2__FPssss
/* 80A372A0  7F E3 FB 78 */	mr r3, r31
/* 80A372A4  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A372A8  48 00 38 49 */	bl setAngle__10daNpc_Kn_cFs
/* 80A372AC  48 00 00 08 */	b lbl_80A372B4
lbl_80A372B0:
/* 80A372B0  3B C0 00 01 */	li r30, 1
lbl_80A372B4:
/* 80A372B4  7F C3 F3 78 */	mr r3, r30
/* 80A372B8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A372BC  4B 92 AF 61 */	bl _restgpr_26
/* 80A372C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A372C4  7C 08 03 A6 */	mtlr r0
/* 80A372C8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A372CC  4E 80 00 20 */	blr 
