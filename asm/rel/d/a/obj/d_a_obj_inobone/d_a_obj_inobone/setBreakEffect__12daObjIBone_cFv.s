lbl_80C27E48:
/* 80C27E48  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C27E4C  7C 08 02 A6 */	mflr r0
/* 80C27E50  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C27E54  39 61 00 50 */	addi r11, r1, 0x50
/* 80C27E58  4B 73 A3 7C */	b _savegpr_27
/* 80C27E5C  7C 7E 1B 78 */	mr r30, r3
/* 80C27E60  3C 60 80 C3 */	lis r3, l_cyl_src@ha
/* 80C27E64  3B E3 81 20 */	addi r31, r3, l_cyl_src@l
/* 80C27E68  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C27E6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C27E70  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C27E74  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C27E78  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C27E7C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C27E80  3C 60 80 C3 */	lis r3, struct_80C281C4+0x0@ha
/* 80C27E84  38 63 81 C4 */	addi r3, r3, struct_80C281C4+0x0@l
/* 80C27E88  38 63 00 2A */	addi r3, r3, 0x2a
/* 80C27E8C  38 80 00 20 */	li r4, 0x20
/* 80C27E90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C27E94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C27E98  3F 65 00 02 */	addis r27, r5, 2
/* 80C27E9C  3B 7B C2 F8 */	addi r27, r27, -15624
/* 80C27EA0  7F 65 DB 78 */	mr r5, r27
/* 80C27EA4  38 C0 00 80 */	li r6, 0x80
/* 80C27EA8  4B 41 44 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C27EAC  7C 7C 1B 78 */	mr r28, r3
/* 80C27EB0  3C 60 80 C3 */	lis r3, struct_80C281C4+0x0@ha
/* 80C27EB4  38 63 81 C4 */	addi r3, r3, struct_80C281C4+0x0@l
/* 80C27EB8  38 63 00 2A */	addi r3, r3, 0x2a
/* 80C27EBC  38 80 00 42 */	li r4, 0x42
/* 80C27EC0  7F 65 DB 78 */	mr r5, r27
/* 80C27EC4  38 C0 00 80 */	li r6, 0x80
/* 80C27EC8  4B 41 44 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C27ECC  7C 7B 1B 78 */	mr r27, r3
/* 80C27ED0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C27ED4  7C 05 07 74 */	extsb r5, r0
/* 80C27ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C27EDC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80C27EE0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C27EE4  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha
/* 80C27EE8  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l
/* 80C27EEC  90 01 00 08 */	stw r0, 8(r1)
/* 80C27EF0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80C27EF4  38 00 00 00 */	li r0, 0
/* 80C27EF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C27EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C27F00  38 1E 04 EC */	addi r0, r30, 0x4ec
/* 80C27F04  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C27F08  38 80 00 00 */	li r4, 0
/* 80C27F0C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082E4@ha */
/* 80C27F10  38 A5 82 E4 */	addi r5, r5, 0x82E4 /* 0x000082E4@l */
/* 80C27F14  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C27F18  38 E0 00 00 */	li r7, 0
/* 80C27F1C  39 00 00 00 */	li r8, 0
/* 80C27F20  39 20 00 00 */	li r9, 0
/* 80C27F24  39 40 00 FF */	li r10, 0xff
/* 80C27F28  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80C27F2C  4B 42 4B 64 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C27F30  7F 84 E3 78 */	mr r4, r28
/* 80C27F34  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C27F38  38 C0 00 03 */	li r6, 3
/* 80C27F3C  7F 67 DB 78 */	mr r7, r27
/* 80C27F40  39 00 00 00 */	li r8, 0
/* 80C27F44  39 20 00 06 */	li r9, 6
/* 80C27F48  4B 42 2C B8 */	b setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 80C27F4C  38 BF 00 98 */	addi r5, r31, 0x98
/* 80C27F50  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C27F54  38 80 00 00 */	li r4, 0
/* 80C27F58  90 81 00 08 */	stw r4, 8(r1)
/* 80C27F5C  38 00 FF FF */	li r0, -1
/* 80C27F60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C27F64  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C27F68  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C27F6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C27F70  38 80 00 00 */	li r4, 0
/* 80C27F74  A0 A5 00 00 */	lhz r5, 0(r5)
/* 80C27F78  38 C1 00 24 */	addi r6, r1, 0x24
/* 80C27F7C  38 E0 00 00 */	li r7, 0
/* 80C27F80  39 00 00 00 */	li r8, 0
/* 80C27F84  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80C27F88  39 40 00 FF */	li r10, 0xff
/* 80C27F8C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80C27F90  4B 42 4B 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C27F94  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D5@ha */
/* 80C27F98  38 03 00 D5 */	addi r0, r3, 0x00D5 /* 0x000800D5@l */
/* 80C27F9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C27FA0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C27FA4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C27FA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C27FAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80C27FB0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C27FB4  38 C0 00 00 */	li r6, 0
/* 80C27FB8  38 E0 00 00 */	li r7, 0
/* 80C27FBC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80C27FC0  FC 40 08 90 */	fmr f2, f1
/* 80C27FC4  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 80C27FC8  FC 80 18 90 */	fmr f4, f3
/* 80C27FCC  39 00 00 00 */	li r8, 0
/* 80C27FD0  4B 68 39 B4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C27FD4  39 61 00 50 */	addi r11, r1, 0x50
/* 80C27FD8  4B 73 A2 48 */	b _restgpr_27
/* 80C27FDC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C27FE0  7C 08 03 A6 */	mtlr r0
/* 80C27FE4  38 21 00 50 */	addi r1, r1, 0x50
/* 80C27FE8  4E 80 00 20 */	blr 
