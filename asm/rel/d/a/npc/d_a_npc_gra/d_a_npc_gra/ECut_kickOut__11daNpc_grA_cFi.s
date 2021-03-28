lbl_809C4BE4:
/* 809C4BE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C4BE8  7C 08 02 A6 */	mflr r0
/* 809C4BEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C4BF0  39 61 00 30 */	addi r11, r1, 0x30
/* 809C4BF4  4B 99 D5 DC */	b _savegpr_26
/* 809C4BF8  7C 7D 1B 78 */	mr r29, r3
/* 809C4BFC  7C 9A 23 78 */	mr r26, r4
/* 809C4C00  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha
/* 809C4C04  3B E3 9D 98 */	addi r31, r3, m__17daNpc_grA_Param_c@l
/* 809C4C08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C4C0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C4C10  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 809C4C14  3B C0 00 00 */	li r30, 0
/* 809C4C18  3B 60 FF FF */	li r27, -1
/* 809C4C1C  7F 83 E3 78 */	mr r3, r28
/* 809C4C20  3C A0 80 9D */	lis r5, struct_809CA4B8+0x0@ha
/* 809C4C24  38 A5 A4 B8 */	addi r5, r5, struct_809CA4B8+0x0@l
/* 809C4C28  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C4C2C  38 C0 00 03 */	li r6, 3
/* 809C4C30  4B 68 34 BC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C4C34  28 03 00 00 */	cmplwi r3, 0
/* 809C4C38  41 82 00 08 */	beq lbl_809C4C40
/* 809C4C3C  83 63 00 00 */	lwz r27, 0(r3)
lbl_809C4C40:
/* 809C4C40  7F 83 E3 78 */	mr r3, r28
/* 809C4C44  7F 44 D3 78 */	mr r4, r26
/* 809C4C48  4B 68 31 04 */	b getIsAddvance__16dEvent_manager_cFi
/* 809C4C4C  2C 03 00 00 */	cmpwi r3, 0
/* 809C4C50  41 82 01 38 */	beq lbl_809C4D88
/* 809C4C54  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809C4C58  41 82 00 94 */	beq lbl_809C4CEC
/* 809C4C5C  40 80 00 1C */	bge lbl_809C4C78
/* 809C4C60  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809C4C64  41 82 00 74 */	beq lbl_809C4CD8
/* 809C4C68  40 80 01 20 */	bge lbl_809C4D88
/* 809C4C6C  2C 1B 00 00 */	cmpwi r27, 0
/* 809C4C70  41 82 00 14 */	beq lbl_809C4C84
/* 809C4C74  48 00 01 14 */	b lbl_809C4D88
lbl_809C4C78:
/* 809C4C78  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 809C4C7C  41 82 00 CC */	beq lbl_809C4D48
/* 809C4C80  48 00 01 08 */	b lbl_809C4D88
lbl_809C4C84:
/* 809C4C84  7F A3 EB 78 */	mr r3, r29
/* 809C4C88  38 80 00 17 */	li r4, 0x17
/* 809C4C8C  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C4C90  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C4C94  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C4C98  7D 89 03 A6 */	mtctr r12
/* 809C4C9C  4E 80 04 21 */	bctrl 
/* 809C4CA0  7F A3 EB 78 */	mr r3, r29
/* 809C4CA4  38 80 00 00 */	li r4, 0
/* 809C4CA8  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C4CAC  38 A0 00 00 */	li r5, 0
/* 809C4CB0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C4CB4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4CB8  7D 89 03 A6 */	mtctr r12
/* 809C4CBC  4E 80 04 21 */	bctrl 
/* 809C4CC0  7F A3 EB 78 */	mr r3, r29
/* 809C4CC4  38 80 00 02 */	li r4, 2
/* 809C4CC8  4B FF E3 A9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C4CCC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C4CD0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809C4CD4  48 00 00 B4 */	b lbl_809C4D88
lbl_809C4CD8:
/* 809C4CD8  7F A3 EB 78 */	mr r3, r29
/* 809C4CDC  38 80 04 28 */	li r4, 0x428
/* 809C4CE0  38 A0 00 00 */	li r5, 0
/* 809C4CE4  4B 78 F0 38 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C4CE8  48 00 00 A0 */	b lbl_809C4D88
lbl_809C4CEC:
/* 809C4CEC  7F A3 EB 78 */	mr r3, r29
/* 809C4CF0  38 80 00 17 */	li r4, 0x17
/* 809C4CF4  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C4CF8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C4CFC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C4D00  7D 89 03 A6 */	mtctr r12
/* 809C4D04  4E 80 04 21 */	bctrl 
/* 809C4D08  7F A3 EB 78 */	mr r3, r29
/* 809C4D0C  38 80 00 01 */	li r4, 1
/* 809C4D10  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C4D14  38 A0 00 00 */	li r5, 0
/* 809C4D18  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C4D1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4D20  7D 89 03 A6 */	mtctr r12
/* 809C4D24  4E 80 04 21 */	bctrl 
/* 809C4D28  38 7F 00 00 */	addi r3, r31, 0
/* 809C4D2C  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 809C4D30  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 809C4D34  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 809C4D38  EC 01 00 32 */	fmuls f0, f1, f0
/* 809C4D3C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C4D40  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C4D44  48 00 00 44 */	b lbl_809C4D88
lbl_809C4D48:
/* 809C4D48  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600B2@ha */
/* 809C4D4C  38 03 00 B2 */	addi r0, r3, 0x00B2 /* 0x000600B2@l */
/* 809C4D50  90 01 00 08 */	stw r0, 8(r1)
/* 809C4D54  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809C4D58  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809C4D5C  80 63 00 00 */	lwz r3, 0(r3)
/* 809C4D60  38 81 00 08 */	addi r4, r1, 8
/* 809C4D64  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809C4D68  38 C0 00 00 */	li r6, 0
/* 809C4D6C  38 E0 00 00 */	li r7, 0
/* 809C4D70  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 809C4D74  FC 40 08 90 */	fmr f2, f1
/* 809C4D78  C0 7F 06 70 */	lfs f3, 0x670(r31)
/* 809C4D7C  FC 80 18 90 */	fmr f4, f3
/* 809C4D80  39 00 00 00 */	li r8, 0
/* 809C4D84  4B 8E 6C 00 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_809C4D88:
/* 809C4D88  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809C4D8C  41 82 00 DC */	beq lbl_809C4E68
/* 809C4D90  40 80 00 1C */	bge lbl_809C4DAC
/* 809C4D94  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809C4D98  41 82 00 AC */	beq lbl_809C4E44
/* 809C4D9C  40 80 00 F8 */	bge lbl_809C4E94
/* 809C4DA0  2C 1B 00 00 */	cmpwi r27, 0
/* 809C4DA4  41 82 00 14 */	beq lbl_809C4DB8
/* 809C4DA8  48 00 00 EC */	b lbl_809C4E94
lbl_809C4DAC:
/* 809C4DAC  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 809C4DB0  41 82 00 DC */	beq lbl_809C4E8C
/* 809C4DB4  48 00 00 E0 */	b lbl_809C4E94
lbl_809C4DB8:
/* 809C4DB8  7F A3 EB 78 */	mr r3, r29
/* 809C4DBC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809C4DC0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 809C4DC4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809C4DC8  4B 65 59 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C4DCC  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 809C4DD0  7C 60 07 34 */	extsh r0, r3
/* 809C4DD4  7C 04 00 00 */	cmpw r4, r0
/* 809C4DD8  40 82 00 14 */	bne lbl_809C4DEC
/* 809C4DDC  38 00 00 00 */	li r0, 0
/* 809C4DE0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809C4DE4  3B C0 00 01 */	li r30, 1
/* 809C4DE8  48 00 00 B0 */	b lbl_809C4E98
lbl_809C4DEC:
/* 809C4DEC  7F A3 EB 78 */	mr r3, r29
/* 809C4DF0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809C4DF4  4B 65 59 1C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C4DF8  7C 64 1B 78 */	mr r4, r3
/* 809C4DFC  7F A3 EB 78 */	mr r3, r29
/* 809C4E00  38 A0 00 17 */	li r5, 0x17
/* 809C4E04  38 C0 00 16 */	li r6, 0x16
/* 809C4E08  38 E0 00 0F */	li r7, 0xf
/* 809C4E0C  4B 78 F2 98 */	b step__8daNpcF_cFsiii
/* 809C4E10  2C 03 00 00 */	cmpwi r3, 0
/* 809C4E14  41 82 00 84 */	beq lbl_809C4E98
/* 809C4E18  38 00 00 00 */	li r0, 0
/* 809C4E1C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809C4E20  7F A3 EB 78 */	mr r3, r29
/* 809C4E24  38 80 00 00 */	li r4, 0
/* 809C4E28  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C4E2C  38 A0 00 00 */	li r5, 0
/* 809C4E30  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C4E34  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4E38  7D 89 03 A6 */	mtctr r12
/* 809C4E3C  4E 80 04 21 */	bctrl 
/* 809C4E40  48 00 00 58 */	b lbl_809C4E98
lbl_809C4E44:
/* 809C4E44  7F A3 EB 78 */	mr r3, r29
/* 809C4E48  38 80 00 00 */	li r4, 0
/* 809C4E4C  38 A0 00 01 */	li r5, 1
/* 809C4E50  38 C0 00 00 */	li r6, 0
/* 809C4E54  4B 78 EF 30 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C4E58  2C 03 00 00 */	cmpwi r3, 0
/* 809C4E5C  41 82 00 3C */	beq lbl_809C4E98
/* 809C4E60  3B C0 00 01 */	li r30, 1
/* 809C4E64  48 00 00 34 */	b lbl_809C4E98
lbl_809C4E68:
/* 809C4E68  38 7F 00 00 */	addi r3, r31, 0
/* 809C4E6C  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 809C4E70  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 809C4E74  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 809C4E78  EC 01 00 32 */	fmuls f0, f1, f0
/* 809C4E7C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C4E80  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C4E84  3B C0 00 01 */	li r30, 1
/* 809C4E88  48 00 00 10 */	b lbl_809C4E98
lbl_809C4E8C:
/* 809C4E8C  3B C0 00 01 */	li r30, 1
/* 809C4E90  48 00 00 08 */	b lbl_809C4E98
lbl_809C4E94:
/* 809C4E94  3B C0 00 01 */	li r30, 1
lbl_809C4E98:
/* 809C4E98  7F C3 F3 78 */	mr r3, r30
/* 809C4E9C  39 61 00 30 */	addi r11, r1, 0x30
/* 809C4EA0  4B 99 D3 7C */	b _restgpr_26
/* 809C4EA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C4EA8  7C 08 03 A6 */	mtlr r0
/* 809C4EAC  38 21 00 30 */	addi r1, r1, 0x30
/* 809C4EB0  4E 80 00 20 */	blr 
