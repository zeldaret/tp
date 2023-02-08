lbl_809B6D00:
/* 809B6D00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B6D04  7C 08 02 A6 */	mflr r0
/* 809B6D08  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B6D0C  39 61 00 30 */	addi r11, r1, 0x30
/* 809B6D10  4B 9A B4 CD */	bl _savegpr_29
/* 809B6D14  7C 7E 1B 78 */	mr r30, r3
/* 809B6D18  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B6D1C  3B E3 92 E4 */	addi r31, r3, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B6D20  80 64 00 00 */	lwz r3, 0(r4)
/* 809B6D24  38 03 FF F6 */	addi r0, r3, -10
/* 809B6D28  28 00 00 28 */	cmplwi r0, 0x28
/* 809B6D2C  41 81 01 F8 */	bgt lbl_809B6F24
/* 809B6D30  3C 60 80 9C */	lis r3, lit_6334@ha /* 0x809B9F74@ha */
/* 809B6D34  38 63 9F 74 */	addi r3, r3, lit_6334@l /* 0x809B9F74@l */
/* 809B6D38  54 00 10 3A */	slwi r0, r0, 2
/* 809B6D3C  7C 03 00 2E */	lwzx r0, r3, r0
/* 809B6D40  7C 09 03 A6 */	mtctr r0
/* 809B6D44  4E 80 04 20 */	bctr 
lbl_809B6D48:
/* 809B6D48  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B6D4C  2C 00 00 03 */	cmpwi r0, 3
/* 809B6D50  41 82 00 24 */	beq lbl_809B6D74
/* 809B6D54  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B6D58  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B6D5C  4B 78 EB 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B6D60  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B6D64  38 00 00 03 */	li r0, 3
/* 809B6D68  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B6D6C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B6D70  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B6D74:
/* 809B6D74  38 00 00 3D */	li r0, 0x3d
/* 809B6D78  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B6D7C  38 60 00 0A */	li r3, 0xa
/* 809B6D80  4B 7F 1A 65 */	bl dKy_change_colpat__FUc
/* 809B6D84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B6D88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B6D8C  80 63 00 00 */	lwz r3, 0(r3)
/* 809B6D90  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B6D94  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B6D98  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B6D9C  4B 8F 8D F9 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B6DA0  48 00 01 84 */	b lbl_809B6F24
lbl_809B6DA4:
/* 809B6DA4  38 00 00 00 */	li r0, 0
/* 809B6DA8  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B6DAC  38 00 00 64 */	li r0, 0x64
/* 809B6DB0  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B6DB4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B6DB8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B6DBC  80 63 00 00 */	lwz r3, 0(r3)
/* 809B6DC0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B6DC4  4B 8F 90 55 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 809B6DC8  38 60 00 0C */	li r3, 0xc
/* 809B6DCC  4B 7F 1A 19 */	bl dKy_change_colpat__FUc
/* 809B6DD0  48 00 01 54 */	b lbl_809B6F24
lbl_809B6DD4:
/* 809B6DD4  38 60 00 0B */	li r3, 0xb
/* 809B6DD8  4B 79 E9 5D */	bl daNpcF_offTmpBit__FUl
/* 809B6DDC  7F C3 F3 78 */	mr r3, r30
/* 809B6DE0  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B6DE4  38 A0 00 00 */	li r5, 0
/* 809B6DE8  4B 79 4E 09 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B6DEC  38 00 00 8F */	li r0, 0x8f
/* 809B6DF0  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B6DF4  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 809B6DF8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B6DFC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B6E00  2C 00 00 04 */	cmpwi r0, 4
/* 809B6E04  41 82 00 24 */	beq lbl_809B6E28
/* 809B6E08  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B6E0C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B6E10  4B 78 EA 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B6E14  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B6E18  38 00 00 04 */	li r0, 4
/* 809B6E1C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B6E20  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B6E24  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B6E28:
/* 809B6E28  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809B6E2C  2C 00 00 00 */	cmpwi r0, 0
/* 809B6E30  41 82 00 F4 */	beq lbl_809B6F24
/* 809B6E34  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809B6E38  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809B6E3C  4B 78 EA 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B6E40  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809B6E44  38 00 00 00 */	li r0, 0
/* 809B6E48  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809B6E4C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B6E50  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
/* 809B6E54  48 00 00 D0 */	b lbl_809B6F24
lbl_809B6E58:
/* 809B6E58  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B6E5C  2C 00 00 03 */	cmpwi r0, 3
/* 809B6E60  41 82 00 24 */	beq lbl_809B6E84
/* 809B6E64  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B6E68  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B6E6C  4B 78 EA 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B6E70  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B6E74  38 00 00 03 */	li r0, 3
/* 809B6E78  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B6E7C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B6E80  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B6E84:
/* 809B6E84  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809B6E88  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B6E8C  48 00 00 98 */	b lbl_809B6F24
lbl_809B6E90:
/* 809B6E90  C0 5F 01 AC */	lfs f2, 0x1ac(r31)
/* 809B6E94  D0 41 00 08 */	stfs f2, 8(r1)
/* 809B6E98  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 809B6E9C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809B6EA0  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 809B6EA4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B6EA8  D0 5E 04 D0 */	stfs f2, 0x4d0(r30)
/* 809B6EAC  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 809B6EB0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 809B6EB4  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809B6EB8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B6EBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B6EC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B6EC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809B6EC8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809B6ECC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809B6ED0  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 809B6ED4  7D 89 03 A6 */	mtctr r12
/* 809B6ED8  4E 80 04 21 */	bctrl 
/* 809B6EDC  48 00 00 48 */	b lbl_809B6F24
lbl_809B6EE0:
/* 809B6EE0  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 809B6EE4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809B6EE8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 809B6EEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B6EF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B6EF4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809B6EF8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809B6EFC  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 809B6F00  7D 89 03 A6 */	mtctr r12
/* 809B6F04  4E 80 04 21 */	bctrl 
/* 809B6F08  48 00 00 1C */	b lbl_809B6F24
lbl_809B6F0C:
/* 809B6F0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B6F10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B6F14  80 63 00 00 */	lwz r3, 0(r3)
/* 809B6F18  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B6F1C  38 80 00 2D */	li r4, 0x2d
/* 809B6F20  4B 8F 8F BD */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_809B6F24:
/* 809B6F24  38 60 00 00 */	li r3, 0
/* 809B6F28  39 61 00 30 */	addi r11, r1, 0x30
/* 809B6F2C  4B 9A B2 FD */	bl _restgpr_29
/* 809B6F30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B6F34  7C 08 03 A6 */	mtlr r0
/* 809B6F38  38 21 00 30 */	addi r1, r1, 0x30
/* 809B6F3C  4E 80 00 20 */	blr 
