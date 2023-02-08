lbl_80C22B28:
/* 80C22B28  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C22B2C  7C 08 02 A6 */	mflr r0
/* 80C22B30  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C22B34  39 61 00 60 */	addi r11, r1, 0x60
/* 80C22B38  4B 73 F6 A5 */	bl _savegpr_29
/* 80C22B3C  7C 7F 1B 78 */	mr r31, r3
/* 80C22B40  3C 60 80 C2 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C244D0@ha */
/* 80C22B44  3B A3 44 D0 */	addi r29, r3, cNullVec__6Z2Calc@l /* 0x80C244D0@l */
/* 80C22B48  3C 60 80 C2 */	lis r3, l_dir_vec@ha /* 0x80C242F4@ha */
/* 80C22B4C  3B C3 42 F4 */	addi r30, r3, l_dir_vec@l /* 0x80C242F4@l */
/* 80C22B50  3C 60 80 C2 */	lis r3, struct_80C24698+0x0@ha /* 0x80C24698@ha */
/* 80C22B54  38 A3 46 98 */	addi r5, r3, struct_80C24698+0x0@l /* 0x80C24698@l */
/* 80C22B58  88 05 00 00 */	lbz r0, 0(r5)
/* 80C22B5C  7C 00 07 75 */	extsb. r0, r0
/* 80C22B60  40 82 00 40 */	bne lbl_80C22BA0
/* 80C22B64  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 80C22B68  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 80C22B6C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C22B70  90 1D 00 40 */	stw r0, 0x40(r29)
/* 80C22B74  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80C22B78  90 1D 00 44 */	stw r0, 0x44(r29)
/* 80C22B7C  38 9D 00 3C */	addi r4, r29, 0x3c
/* 80C22B80  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 80C22B84  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80C22B88  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C22B8C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C22B90  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 80C22B94  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C22B98  38 00 00 01 */	li r0, 1
/* 80C22B9C  98 05 00 00 */	stb r0, 0(r5)
lbl_80C22BA0:
/* 80C22BA0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C22BA4  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C22BA8  28 04 00 FF */	cmplwi r4, 0xff
/* 80C22BAC  41 82 02 48 */	beq lbl_80C22DF4
/* 80C22BB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22BB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22BB8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C22BBC  7C 05 07 74 */	extsb r5, r0
/* 80C22BC0  4B 41 27 A1 */	bl isSwitch__10dSv_info_cCFii
/* 80C22BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80C22BC8  40 82 02 2C */	bne lbl_80C22DF4
/* 80C22BCC  80 1F 08 04 */	lwz r0, 0x804(r31)
/* 80C22BD0  60 00 00 01 */	ori r0, r0, 1
/* 80C22BD4  90 1F 08 04 */	stw r0, 0x804(r31)
/* 80C22BD8  7F E3 FB 78 */	mr r3, r31
/* 80C22BDC  4B FF F6 71 */	bl disablePushPull__13daObjIceBlk_cFv
/* 80C22BE0  38 7F 08 04 */	addi r3, r31, 0x804
/* 80C22BE4  4B 46 18 7D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C22BE8  28 03 00 00 */	cmplwi r3, 0
/* 80C22BEC  41 82 01 E4 */	beq lbl_80C22DD0
/* 80C22BF0  38 7F 08 04 */	addi r3, r31, 0x804
/* 80C22BF4  4B 46 19 55 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C22BF8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C22BFC  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80C22C00  41 82 01 D0 */	beq lbl_80C22DD0
/* 80C22C04  3B A0 00 00 */	li r29, 0
/* 80C22C08  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80C22C0C  28 00 00 64 */	cmplwi r0, 0x64
/* 80C22C10  41 82 00 10 */	beq lbl_80C22C20
/* 80C22C14  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C22C18  28 00 00 03 */	cmplwi r0, 3
/* 80C22C1C  40 82 00 0C */	bne lbl_80C22C28
lbl_80C22C20:
/* 80C22C20  3B A0 00 01 */	li r29, 1
/* 80C22C24  48 00 00 D0 */	b lbl_80C22CF4
lbl_80C22C28:
/* 80C22C28  28 00 00 02 */	cmplwi r0, 2
/* 80C22C2C  40 82 00 C8 */	bne lbl_80C22CF4
/* 80C22C30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22C34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22C38  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C22C3C  38 00 00 FF */	li r0, 0xff
/* 80C22C40  90 01 00 08 */	stw r0, 8(r1)
/* 80C22C44  38 80 00 00 */	li r4, 0
/* 80C22C48  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C22C4C  38 00 FF FF */	li r0, -1
/* 80C22C50  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C22C54  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C22C58  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C22C5C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C22C60  80 9F 09 DC */	lwz r4, 0x9dc(r31)
/* 80C22C64  38 A0 00 00 */	li r5, 0
/* 80C22C68  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008678@ha */
/* 80C22C6C  38 C6 86 78 */	addi r6, r6, 0x8678 /* 0x00008678@l */
/* 80C22C70  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C22C74  39 00 00 00 */	li r8, 0
/* 80C22C78  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C22C7C  39 40 00 00 */	li r10, 0
/* 80C22C80  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C22C84  4B 42 A8 49 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C22C88  90 7F 09 DC */	stw r3, 0x9dc(r31)
/* 80C22C8C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C22C90  7C 03 07 74 */	extsb r3, r0
/* 80C22C94  4B 40 A3 D9 */	bl dComIfGp_getReverb__Fi
/* 80C22C98  7C 67 1B 78 */	mr r7, r3
/* 80C22C9C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C8@ha */
/* 80C22CA0  38 03 01 C8 */	addi r0, r3, 0x01C8 /* 0x000801C8@l */
/* 80C22CA4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C22CA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C22CAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C22CB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C22CB4  38 81 00 28 */	addi r4, r1, 0x28
/* 80C22CB8  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C22CBC  38 C0 00 00 */	li r6, 0
/* 80C22CC0  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C22CC4  FC 40 08 90 */	fmr f2, f1
/* 80C22CC8  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80C22CCC  FC 80 18 90 */	fmr f4, f3
/* 80C22CD0  39 00 00 00 */	li r8, 0
/* 80C22CD4  4B 68 8C B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C22CD8  88 7F 09 E0 */	lbz r3, 0x9e0(r31)
/* 80C22CDC  38 03 FF FF */	addi r0, r3, -1
/* 80C22CE0  98 1F 09 E0 */	stb r0, 0x9e0(r31)
/* 80C22CE4  88 1F 09 E0 */	lbz r0, 0x9e0(r31)
/* 80C22CE8  28 00 00 00 */	cmplwi r0, 0
/* 80C22CEC  40 82 00 08 */	bne lbl_80C22CF4
/* 80C22CF0  3B A0 00 01 */	li r29, 1
lbl_80C22CF4:
/* 80C22CF4  2C 1D 00 00 */	cmpwi r29, 0
/* 80C22CF8  41 82 00 D8 */	beq lbl_80C22DD0
/* 80C22CFC  80 7F 09 44 */	lwz r3, 0x944(r31)
/* 80C22D00  28 03 00 00 */	cmplwi r3, 0
/* 80C22D04  41 82 00 24 */	beq lbl_80C22D28
/* 80C22D08  4B 64 54 CD */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C22D0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C22D10  41 82 00 18 */	beq lbl_80C22D28
/* 80C22D14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22D18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22D1C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C22D20  80 9F 09 44 */	lwz r4, 0x944(r31)
/* 80C22D24  4B 45 15 2D */	bl Release__4cBgSFP9dBgW_Base
lbl_80C22D28:
/* 80C22D28  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C22D2C  28 03 00 00 */	cmplwi r3, 0
/* 80C22D30  41 82 00 28 */	beq lbl_80C22D58
/* 80C22D34  4B 64 54 A1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C22D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C22D3C  40 82 00 1C */	bne lbl_80C22D58
/* 80C22D40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22D44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22D48  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C22D4C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C22D50  7F E5 FB 78 */	mr r5, r31
/* 80C22D54  4B 45 1C B5 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C22D58:
/* 80C22D58  7F E3 FB 78 */	mr r3, r31
/* 80C22D5C  48 00 06 2D */	bl setEffect__13daObjIceBlk_cFv
/* 80C22D60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22D64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22D68  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C22D6C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C22D70  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C22D74  7C 05 07 74 */	extsb r5, r0
/* 80C22D78  4B 41 24 89 */	bl onSwitch__10dSv_info_cFii
/* 80C22D7C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C22D80  7C 03 07 74 */	extsb r3, r0
/* 80C22D84  4B 40 A2 E9 */	bl dComIfGp_getReverb__Fi
/* 80C22D88  7C 67 1B 78 */	mr r7, r3
/* 80C22D8C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C7@ha */
/* 80C22D90  38 03 01 C7 */	addi r0, r3, 0x01C7 /* 0x000801C7@l */
/* 80C22D94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C22D98  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C22D9C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C22DA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C22DA4  38 81 00 24 */	addi r4, r1, 0x24
/* 80C22DA8  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C22DAC  38 C0 00 00 */	li r6, 0
/* 80C22DB0  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C22DB4  FC 40 08 90 */	fmr f2, f1
/* 80C22DB8  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80C22DBC  FC 80 18 90 */	fmr f4, f3
/* 80C22DC0  39 00 00 00 */	li r8, 0
/* 80C22DC4  4B 68 8B C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C22DC8  7F E3 FB 78 */	mr r3, r31
/* 80C22DCC  4B FF F4 35 */	bl enablePushPull__13daObjIceBlk_cFv
lbl_80C22DD0:
/* 80C22DD0  38 7F 09 28 */	addi r3, r31, 0x928
/* 80C22DD4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C22DD8  4B 64 C4 05 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C22DDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22DE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22DE4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C22DE8  38 9F 08 04 */	addi r4, r31, 0x804
/* 80C22DEC  4B 64 1D BD */	bl Set__4cCcSFP8cCcD_Obj
/* 80C22DF0  48 00 00 F0 */	b lbl_80C22EE0
lbl_80C22DF4:
/* 80C22DF4  80 1F 08 04 */	lwz r0, 0x804(r31)
/* 80C22DF8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C22DFC  90 1F 08 04 */	stw r0, 0x804(r31)
/* 80C22E00  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C22E04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C22E08  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C22E0C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C22E10  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C22E14  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C22E18  7F E3 FB 78 */	mr r3, r31
/* 80C22E1C  38 80 00 00 */	li r4, 0
/* 80C22E20  4B 3F 78 AD */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80C22E24  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C22E28  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C22E2C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C22E30  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C22E34  7F E3 FB 78 */	mr r3, r31
/* 80C22E38  48 00 09 79 */	bl bgCheck__13daObjIceBlk_cFv
/* 80C22E3C  7F E3 FB 78 */	mr r3, r31
/* 80C22E40  88 1F 09 4D */	lbz r0, 0x94d(r31)
/* 80C22E44  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C22E48  39 9D 00 3C */	addi r12, r29, 0x3c
/* 80C22E4C  7D 8C 02 14 */	add r12, r12, r0
/* 80C22E50  4B 73 F2 35 */	bl __ptmf_scall
/* 80C22E54  60 00 00 00 */	nop 
/* 80C22E58  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80C22E5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C22E60  41 82 00 80 */	beq lbl_80C22EE0
/* 80C22E64  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80C22E68  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C22E6C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80C22E70  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C22E74  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C22E78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22E7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22E80  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C22E84  38 80 00 04 */	li r4, 4
/* 80C22E88  38 A0 00 1F */	li r5, 0x1f
/* 80C22E8C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80C22E90  4B 44 CB 95 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C22E94  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C22E98  7C 03 07 74 */	extsb r3, r0
/* 80C22E9C  4B 40 A1 D1 */	bl dComIfGp_getReverb__Fi
/* 80C22EA0  7C 67 1B 78 */	mr r7, r3
/* 80C22EA4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801DF@ha */
/* 80C22EA8  38 03 01 DF */	addi r0, r3, 0x01DF /* 0x000801DF@l */
/* 80C22EAC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C22EB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C22EB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C22EB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C22EBC  38 81 00 20 */	addi r4, r1, 0x20
/* 80C22EC0  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C22EC4  38 C0 00 00 */	li r6, 0
/* 80C22EC8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C22ECC  FC 40 08 90 */	fmr f2, f1
/* 80C22ED0  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80C22ED4  FC 80 18 90 */	fmr f4, f3
/* 80C22ED8  39 00 00 00 */	li r8, 0
/* 80C22EDC  4B 68 8A A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C22EE0:
/* 80C22EE0  39 61 00 60 */	addi r11, r1, 0x60
/* 80C22EE4  4B 73 F3 45 */	bl _restgpr_29
/* 80C22EE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C22EEC  7C 08 03 A6 */	mtlr r0
/* 80C22EF0  38 21 00 60 */	addi r1, r1, 0x60
/* 80C22EF4  4E 80 00 20 */	blr 
