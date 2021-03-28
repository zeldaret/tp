lbl_80C98C00:
/* 80C98C00  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C98C04  7C 08 02 A6 */	mflr r0
/* 80C98C08  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C98C0C  39 61 00 60 */	addi r11, r1, 0x60
/* 80C98C10  4B 6C 95 CC */	b _savegpr_29
/* 80C98C14  7C 7D 1B 78 */	mr r29, r3
/* 80C98C18  3C 60 80 CA */	lis r3, M_attr__18daObjMirrorScrew_c@ha
/* 80C98C1C  3B C3 97 5C */	addi r30, r3, M_attr__18daObjMirrorScrew_c@l
/* 80C98C20  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C98C24  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C98C28  38 7E 00 00 */	addi r3, r30, 0
/* 80C98C2C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C98C30  90 1D 05 CC */	stw r0, 0x5cc(r29)
/* 80C98C34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C98C38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C98C3C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C98C40  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C98C44  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C98C48  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C98C4C  4B 39 BD 40 */	b onEventBit__11dSv_event_cFUs
/* 80C98C50  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C98C54  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C98C58  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C98C5C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C98C60  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C98C64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C98C68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C98C6C  3B E3 5B D4 */	addi r31, r3, 0x5bd4
/* 80C98C70  7F E3 FB 78 */	mr r3, r31
/* 80C98C74  38 80 00 08 */	li r4, 8
/* 80C98C78  38 A0 00 0F */	li r5, 0xf
/* 80C98C7C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80C98C80  4B 3D 6D A4 */	b StartShock__12dVibration_cFii4cXyz
/* 80C98C84  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C98C88  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C98C8C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C98C90  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C98C94  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C98C98  7F E3 FB 78 */	mr r3, r31
/* 80C98C9C  38 80 00 06 */	li r4, 6
/* 80C98CA0  38 A0 00 0F */	li r5, 0xf
/* 80C98CA4  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80C98CA8  4B 3D 6E 68 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C98CAC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080272@ha */
/* 80C98CB0  38 03 02 72 */	addi r0, r3, 0x0272 /* 0x00080272@l */
/* 80C98CB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C98CB8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C98CBC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C98CC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C98CC4  38 81 00 20 */	addi r4, r1, 0x20
/* 80C98CC8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C98CCC  38 C0 00 00 */	li r6, 0
/* 80C98CD0  38 E0 00 00 */	li r7, 0
/* 80C98CD4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80C98CD8  FC 40 08 90 */	fmr f2, f1
/* 80C98CDC  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 80C98CE0  FC 80 18 90 */	fmr f4, f3
/* 80C98CE4  39 00 00 00 */	li r8, 0
/* 80C98CE8  4B 61 2C 9C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C98CEC  7F A3 EB 78 */	mr r3, r29
/* 80C98CF0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C98CF4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C98CF8  38 A0 00 FF */	li r5, 0xff
/* 80C98CFC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80C98D00  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80C98D04  38 E0 00 01 */	li r7, 1
/* 80C98D08  39 00 00 00 */	li r8, 0
/* 80C98D0C  4B 38 2A A8 */	b fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs
/* 80C98D10  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C98D14  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C98D18  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C98D1C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C98D20  38 61 00 24 */	addi r3, r1, 0x24
/* 80C98D24  38 80 00 00 */	li r4, 0
/* 80C98D28  38 A0 00 00 */	li r5, 0
/* 80C98D2C  38 C0 00 00 */	li r6, 0
/* 80C98D30  4B 5C E6 C4 */	b __ct__5csXyzFsss
/* 80C98D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C98D38  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C98D3C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C98D40  38 80 00 00 */	li r4, 0
/* 80C98D44  90 81 00 08 */	stw r4, 8(r1)
/* 80C98D48  38 00 FF FF */	li r0, -1
/* 80C98D4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C98D50  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C98D54  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C98D58  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C98D5C  38 80 00 00 */	li r4, 0
/* 80C98D60  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ACA@ha */
/* 80C98D64  38 A5 8A CA */	addi r5, r5, 0x8ACA /* 0x00008ACA@l */
/* 80C98D68  38 C1 00 44 */	addi r6, r1, 0x44
/* 80C98D6C  38 E0 00 00 */	li r7, 0
/* 80C98D70  39 01 00 24 */	addi r8, r1, 0x24
/* 80C98D74  39 20 00 00 */	li r9, 0
/* 80C98D78  39 40 00 FF */	li r10, 0xff
/* 80C98D7C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80C98D80  4B 3B 3D 10 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C98D84  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C98D88  38 80 00 00 */	li r4, 0
/* 80C98D8C  90 81 00 08 */	stw r4, 8(r1)
/* 80C98D90  38 00 FF FF */	li r0, -1
/* 80C98D94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C98D98  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C98D9C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C98DA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C98DA4  38 80 00 00 */	li r4, 0
/* 80C98DA8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ACB@ha */
/* 80C98DAC  38 A5 8A CB */	addi r5, r5, 0x8ACB /* 0x00008ACB@l */
/* 80C98DB0  38 C1 00 44 */	addi r6, r1, 0x44
/* 80C98DB4  38 E0 00 00 */	li r7, 0
/* 80C98DB8  39 01 00 24 */	addi r8, r1, 0x24
/* 80C98DBC  39 20 00 00 */	li r9, 0
/* 80C98DC0  39 40 00 FF */	li r10, 0xff
/* 80C98DC4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80C98DC8  4B 3B 3C C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C98DCC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C98DD0  38 80 00 00 */	li r4, 0
/* 80C98DD4  90 81 00 08 */	stw r4, 8(r1)
/* 80C98DD8  38 00 FF FF */	li r0, -1
/* 80C98DDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C98DE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C98DE4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C98DE8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C98DEC  38 80 00 00 */	li r4, 0
/* 80C98DF0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ACE@ha */
/* 80C98DF4  38 A5 8A CE */	addi r5, r5, 0x8ACE /* 0x00008ACE@l */
/* 80C98DF8  38 C1 00 44 */	addi r6, r1, 0x44
/* 80C98DFC  38 E0 00 00 */	li r7, 0
/* 80C98E00  39 01 00 24 */	addi r8, r1, 0x24
/* 80C98E04  39 20 00 00 */	li r9, 0
/* 80C98E08  39 40 00 FF */	li r10, 0xff
/* 80C98E0C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80C98E10  4B 3B 3C 80 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C98E14  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C98E18  38 80 00 00 */	li r4, 0
/* 80C98E1C  90 81 00 08 */	stw r4, 8(r1)
/* 80C98E20  38 00 FF FF */	li r0, -1
/* 80C98E24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C98E28  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C98E2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C98E30  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C98E34  38 80 00 00 */	li r4, 0
/* 80C98E38  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ACF@ha */
/* 80C98E3C  38 A5 8A CF */	addi r5, r5, 0x8ACF /* 0x00008ACF@l */
/* 80C98E40  38 C1 00 44 */	addi r6, r1, 0x44
/* 80C98E44  38 E0 00 00 */	li r7, 0
/* 80C98E48  39 01 00 24 */	addi r8, r1, 0x24
/* 80C98E4C  39 20 00 00 */	li r9, 0
/* 80C98E50  39 40 00 FF */	li r10, 0xff
/* 80C98E54  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80C98E58  4B 3B 3C 38 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C98E5C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C98E60  38 80 00 00 */	li r4, 0
/* 80C98E64  90 81 00 08 */	stw r4, 8(r1)
/* 80C98E68  38 00 FF FF */	li r0, -1
/* 80C98E6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C98E70  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C98E74  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C98E78  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C98E7C  38 80 00 00 */	li r4, 0
/* 80C98E80  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD0@ha */
/* 80C98E84  38 A5 8A D0 */	addi r5, r5, 0x8AD0 /* 0x00008AD0@l */
/* 80C98E88  38 C1 00 44 */	addi r6, r1, 0x44
/* 80C98E8C  38 E0 00 00 */	li r7, 0
/* 80C98E90  39 01 00 24 */	addi r8, r1, 0x24
/* 80C98E94  39 20 00 00 */	li r9, 0
/* 80C98E98  39 40 00 FF */	li r10, 0xff
/* 80C98E9C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80C98EA0  4B 3B 3B F0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C98EA4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C98EA8  38 80 00 00 */	li r4, 0
/* 80C98EAC  90 81 00 08 */	stw r4, 8(r1)
/* 80C98EB0  38 00 FF FF */	li r0, -1
/* 80C98EB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C98EB8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C98EBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C98EC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C98EC4  38 80 00 00 */	li r4, 0
/* 80C98EC8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD1@ha */
/* 80C98ECC  38 A5 8A D1 */	addi r5, r5, 0x8AD1 /* 0x00008AD1@l */
/* 80C98ED0  38 C1 00 44 */	addi r6, r1, 0x44
/* 80C98ED4  38 E0 00 00 */	li r7, 0
/* 80C98ED8  39 01 00 24 */	addi r8, r1, 0x24
/* 80C98EDC  39 20 00 00 */	li r9, 0
/* 80C98EE0  39 40 00 FF */	li r10, 0xff
/* 80C98EE4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80C98EE8  4B 3B 3B A8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C98EEC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C98EF0  4B 6C 93 38 */	b _restgpr_29
/* 80C98EF4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C98EF8  7C 08 03 A6 */	mtlr r0
/* 80C98EFC  38 21 00 60 */	addi r1, r1, 0x60
/* 80C98F00  4E 80 00 20 */	blr 
