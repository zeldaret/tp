lbl_809B5E00:
/* 809B5E00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B5E04  7C 08 02 A6 */	mflr r0
/* 809B5E08  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B5E0C  39 61 00 30 */	addi r11, r1, 0x30
/* 809B5E10  4B 9A C3 CC */	b _savegpr_29
/* 809B5E14  7C 7E 1B 78 */	mr r30, r3
/* 809B5E18  3C A0 80 9C */	lis r5, m__19daNpc_Fairy_Param_c@ha
/* 809B5E1C  3B E5 92 E4 */	addi r31, r5, m__19daNpc_Fairy_Param_c@l
/* 809B5E20  80 84 00 00 */	lwz r4, 0(r4)
/* 809B5E24  38 04 FF F6 */	addi r0, r4, -10
/* 809B5E28  28 00 00 32 */	cmplwi r0, 0x32
/* 809B5E2C  41 81 02 3C */	bgt lbl_809B6068
/* 809B5E30  3C 80 80 9C */	lis r4, lit_5980@ha
/* 809B5E34  38 84 9B 9C */	addi r4, r4, lit_5980@l
/* 809B5E38  54 00 10 3A */	slwi r0, r0, 2
/* 809B5E3C  7C 04 00 2E */	lwzx r0, r4, r0
/* 809B5E40  7C 09 03 A6 */	mtctr r0
/* 809B5E44  4E 80 04 20 */	bctr 
lbl_809B5E48:
/* 809B5E48  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B5E4C  2C 00 00 03 */	cmpwi r0, 3
/* 809B5E50  41 82 00 24 */	beq lbl_809B5E74
/* 809B5E54  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B5E58  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B5E5C  4B 78 FA 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B5E60  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B5E64  38 00 00 03 */	li r0, 3
/* 809B5E68  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B5E6C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B5E70  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B5E74:
/* 809B5E74  38 00 00 3D */	li r0, 0x3d
/* 809B5E78  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B5E7C  38 60 00 0A */	li r3, 0xa
/* 809B5E80  4B 7F 29 64 */	b dKy_change_colpat__FUc
/* 809B5E84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B5E88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B5E8C  80 63 00 00 */	lwz r3, 0(r3)
/* 809B5E90  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B5E94  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B5E98  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B5E9C  4B 8F 9C F8 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B5EA0  48 00 01 C8 */	b lbl_809B6068
lbl_809B5EA4:
/* 809B5EA4  38 00 00 00 */	li r0, 0
/* 809B5EA8  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B5EAC  38 00 00 64 */	li r0, 0x64
/* 809B5EB0  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B5EB4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B5EB8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B5EBC  80 63 00 00 */	lwz r3, 0(r3)
/* 809B5EC0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B5EC4  4B 8F 9F 54 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 809B5EC8  38 60 00 0C */	li r3, 0xc
/* 809B5ECC  4B 7F 29 18 */	b dKy_change_colpat__FUc
/* 809B5ED0  48 00 01 98 */	b lbl_809B6068
lbl_809B5ED4:
/* 809B5ED4  38 60 00 0B */	li r3, 0xb
/* 809B5ED8  4B 79 F8 5C */	b daNpcF_offTmpBit__FUl
/* 809B5EDC  7F C3 F3 78 */	mr r3, r30
/* 809B5EE0  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B5EE4  38 A0 00 00 */	li r5, 0
/* 809B5EE8  4B 79 5D 08 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B5EEC  38 00 00 8F */	li r0, 0x8f
/* 809B5EF0  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B5EF4  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 809B5EF8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B5EFC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B5F00  2C 00 00 04 */	cmpwi r0, 4
/* 809B5F04  41 82 00 24 */	beq lbl_809B5F28
/* 809B5F08  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B5F0C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B5F10  4B 78 F9 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B5F14  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B5F18  38 00 00 04 */	li r0, 4
/* 809B5F1C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B5F20  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B5F24  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B5F28:
/* 809B5F28  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809B5F2C  2C 00 00 00 */	cmpwi r0, 0
/* 809B5F30  41 82 01 38 */	beq lbl_809B6068
/* 809B5F34  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809B5F38  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809B5F3C  4B 78 F9 5C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B5F40  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809B5F44  38 00 00 00 */	li r0, 0
/* 809B5F48  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809B5F4C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B5F50  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
/* 809B5F54  48 00 01 14 */	b lbl_809B6068
lbl_809B5F58:
/* 809B5F58  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B5F5C  2C 00 00 03 */	cmpwi r0, 3
/* 809B5F60  41 82 00 24 */	beq lbl_809B5F84
/* 809B5F64  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B5F68  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B5F6C  4B 78 F9 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B5F70  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B5F74  38 00 00 03 */	li r0, 3
/* 809B5F78  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B5F7C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B5F80  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B5F84:
/* 809B5F84  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809B5F88  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B5F8C  48 00 00 DC */	b lbl_809B6068
lbl_809B5F90:
/* 809B5F90  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B5F94  38 A0 00 00 */	li r5, 0
/* 809B5F98  4B 79 5C 58 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B5F9C  48 00 00 CC */	b lbl_809B6068
lbl_809B5FA0:
/* 809B5FA0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809B5FA4  D0 1E 0F E8 */	stfs f0, 0xfe8(r30)
/* 809B5FA8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809B5FAC  D0 1E 0F EC */	stfs f0, 0xfec(r30)
/* 809B5FB0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809B5FB4  D0 1E 0F F0 */	stfs f0, 0xff0(r30)
/* 809B5FB8  38 00 00 1E */	li r0, 0x1e
/* 809B5FBC  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B5FC0  48 00 00 A8 */	b lbl_809B6068
lbl_809B5FC4:
/* 809B5FC4  C0 5F 01 AC */	lfs f2, 0x1ac(r31)
/* 809B5FC8  D0 41 00 08 */	stfs f2, 8(r1)
/* 809B5FCC  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 809B5FD0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809B5FD4  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 809B5FD8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B5FDC  D0 5E 04 D0 */	stfs f2, 0x4d0(r30)
/* 809B5FE0  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 809B5FE4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 809B5FE8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809B5FEC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B5FF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B5FF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B5FF8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809B5FFC  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 809B6000  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809B6004  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 809B6008  7D 89 03 A6 */	mtctr r12
/* 809B600C  4E 80 04 21 */	bctrl 
/* 809B6010  7F C3 F3 78 */	mr r3, r30
/* 809B6014  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B6018  38 A0 00 00 */	li r5, 0
/* 809B601C  4B 79 5B D4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B6020  48 00 00 48 */	b lbl_809B6068
lbl_809B6024:
/* 809B6024  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 809B6028  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809B602C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 809B6030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B6034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B6038  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809B603C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809B6040  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 809B6044  7D 89 03 A6 */	mtctr r12
/* 809B6048  4E 80 04 21 */	bctrl 
/* 809B604C  48 00 00 1C */	b lbl_809B6068
lbl_809B6050:
/* 809B6050  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B6054  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B6058  80 63 00 00 */	lwz r3, 0(r3)
/* 809B605C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B6060  38 80 00 2D */	li r4, 0x2d
/* 809B6064  4B 8F 9E 78 */	b bgmStreamStop__8Z2SeqMgrFUl
lbl_809B6068:
/* 809B6068  38 60 00 00 */	li r3, 0
/* 809B606C  39 61 00 30 */	addi r11, r1, 0x30
/* 809B6070  4B 9A C1 B8 */	b _restgpr_29
/* 809B6074  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B6078  7C 08 03 A6 */	mtlr r0
/* 809B607C  38 21 00 30 */	addi r1, r1, 0x30
/* 809B6080  4E 80 00 20 */	blr 
