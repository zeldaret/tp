lbl_80CC9D60:
/* 80CC9D60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC9D64  7C 08 02 A6 */	mflr r0
/* 80CC9D68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC9D6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC9D70  4B 69 84 65 */	bl _savegpr_27
/* 80CC9D74  7C 7E 1B 78 */	mr r30, r3
/* 80CC9D78  7C 9B 23 78 */	mr r27, r4
/* 80CC9D7C  3C 60 80 CD */	lis r3, DISAP_PARTICLE_NAME@ha /* 0x80CCB080@ha */
/* 80CC9D80  3B E3 B0 80 */	addi r31, r3, DISAP_PARTICLE_NAME@l /* 0x80CCB080@l */
/* 80CC9D84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC9D88  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC9D8C  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80CC9D90  7F 83 E3 78 */	mr r3, r28
/* 80CC9D94  A8 9E 06 4C */	lha r4, 0x64c(r30)
/* 80CC9D98  4B 37 DC 61 */	bl startCheck__16dEvent_manager_cFs
/* 80CC9D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80CC9DA0  41 82 00 A4 */	beq lbl_80CC9E44
/* 80CC9DA4  7F 83 E3 78 */	mr r3, r28
/* 80CC9DA8  4B 37 E6 41 */	bl getRunEventName__16dEvent_manager_cFv
/* 80CC9DAC  3C 80 80 CD */	lis r4, d_a_obj_scannon_crs__stringBase0@ha /* 0x80CCB114@ha */
/* 80CC9DB0  38 84 B1 14 */	addi r4, r4, d_a_obj_scannon_crs__stringBase0@l /* 0x80CCB114@l */
/* 80CC9DB4  38 84 00 08 */	addi r4, r4, 8
/* 80CC9DB8  4B 69 EB DD */	bl strcmp
/* 80CC9DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80CC9DC0  40 82 00 84 */	bne lbl_80CC9E44
/* 80CC9DC4  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80CC9DC8  7F C4 F3 78 */	mr r4, r30
/* 80CC9DCC  4B 37 98 91 */	bl setPt2__14dEvt_control_cFPv
/* 80CC9DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC9DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC9DD8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CC9DDC  28 03 00 00 */	cmplwi r3, 0
/* 80CC9DE0  41 82 00 38 */	beq lbl_80CC9E18
/* 80CC9DE4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CC9DE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC9DEC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CC9DF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CC9DF4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CC9DF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC9DFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80CC9E00  38 A0 40 00 */	li r5, 0x4000
/* 80CC9E04  38 C0 00 00 */	li r6, 0
/* 80CC9E08  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CC9E0C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CC9E10  7D 89 03 A6 */	mtctr r12
/* 80CC9E14  4E 80 04 21 */	bctrl 
lbl_80CC9E18:
/* 80CC9E18  7F 83 E3 78 */	mr r3, r28
/* 80CC9E1C  3C 80 80 CD */	lis r4, l_staffName@ha /* 0x80CCB184@ha */
/* 80CC9E20  38 84 B1 84 */	addi r4, r4, l_staffName@l /* 0x80CCB184@l */
/* 80CC9E24  80 84 00 00 */	lwz r4, 0(r4)
/* 80CC9E28  38 A0 00 00 */	li r5, 0
/* 80CC9E2C  38 C0 00 00 */	li r6, 0
/* 80CC9E30  4B 37 DC ED */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CC9E34  90 7E 06 3C */	stw r3, 0x63c(r30)
/* 80CC9E38  38 00 00 04 */	li r0, 4
/* 80CC9E3C  98 1E 06 4E */	stb r0, 0x64e(r30)
/* 80CC9E40  48 00 00 DC */	b lbl_80CC9F1C
lbl_80CC9E44:
/* 80CC9E44  7F C3 F3 78 */	mr r3, r30
/* 80CC9E48  48 00 0C 7D */	bl chkInTalkRange__14daSCannonCrs_cFv
/* 80CC9E4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC9E50  41 82 00 AC */	beq lbl_80CC9EFC
/* 80CC9E54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC9E58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC9E5C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CC9E60  28 03 00 00 */	cmplwi r3, 0
/* 80CC9E64  41 82 00 80 */	beq lbl_80CC9EE4
/* 80CC9E68  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CC9E6C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80CC9E70  7D 89 03 A6 */	mtctr r12
/* 80CC9E74  4E 80 04 21 */	bctrl 
/* 80CC9E78  28 03 00 00 */	cmplwi r3, 0
/* 80CC9E7C  40 82 00 68 */	bne lbl_80CC9EE4
/* 80CC9E80  88 1E 06 51 */	lbz r0, 0x651(r30)
/* 80CC9E84  28 00 00 00 */	cmplwi r0, 0
/* 80CC9E88  40 82 00 5C */	bne lbl_80CC9EE4
/* 80CC9E8C  38 00 00 01 */	li r0, 1
/* 80CC9E90  98 1E 06 51 */	stb r0, 0x651(r30)
/* 80CC9E94  80 1E 06 44 */	lwz r0, 0x644(r30)
/* 80CC9E98  2C 00 00 00 */	cmpwi r0, 0
/* 80CC9E9C  40 82 00 40 */	bne lbl_80CC9EDC
/* 80CC9EA0  38 00 00 0E */	li r0, 0xe
/* 80CC9EA4  90 01 00 08 */	stw r0, 8(r1)
/* 80CC9EA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CC9EAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CC9EB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC9EB4  38 81 00 08 */	addi r4, r1, 8
/* 80CC9EB8  38 A0 00 00 */	li r5, 0
/* 80CC9EBC  38 C0 00 00 */	li r6, 0
/* 80CC9EC0  38 E0 00 00 */	li r7, 0
/* 80CC9EC4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CC9EC8  FC 40 08 90 */	fmr f2, f1
/* 80CC9ECC  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80CC9ED0  FC 80 18 90 */	fmr f4, f3
/* 80CC9ED4  39 00 00 00 */	li r8, 0
/* 80CC9ED8  4B 5E 1A AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CC9EDC:
/* 80CC9EDC  38 00 00 3C */	li r0, 0x3c
/* 80CC9EE0  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80CC9EE4:
/* 80CC9EE4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CC9EE8  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80CC9EEC  4B 36 5B AD */	bl dComIfGp_TargetWarpPt_set__FUc
/* 80CC9EF0  38 00 00 02 */	li r0, 2
/* 80CC9EF4  98 1E 06 4E */	stb r0, 0x64e(r30)
/* 80CC9EF8  48 00 00 24 */	b lbl_80CC9F1C
lbl_80CC9EFC:
/* 80CC9EFC  38 00 00 00 */	li r0, 0
/* 80CC9F00  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80CC9F04  98 1E 06 52 */	stb r0, 0x652(r30)
/* 80CC9F08  80 9B 08 90 */	lwz r4, 0x890(r27)
/* 80CC9F0C  3C 60 78 00 */	lis r3, 0x7800 /* 0x77FFFBFF@ha */
/* 80CC9F10  38 03 FB FF */	addi r0, r3, 0xFBFF /* 0x77FFFBFF@l */
/* 80CC9F14  7C 80 00 38 */	and r0, r4, r0
/* 80CC9F18  90 1B 08 90 */	stw r0, 0x890(r27)
lbl_80CC9F1C:
/* 80CC9F1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC9F20  4B 69 83 01 */	bl _restgpr_27
/* 80CC9F24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC9F28  7C 08 03 A6 */	mtlr r0
/* 80CC9F2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC9F30  4E 80 00 20 */	blr 
