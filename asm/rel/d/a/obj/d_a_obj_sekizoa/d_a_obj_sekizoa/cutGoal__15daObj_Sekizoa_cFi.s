lbl_80CD2B64:
/* 80CD2B64  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80CD2B68  7C 08 02 A6 */	mflr r0
/* 80CD2B6C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80CD2B70  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80CD2B74  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80CD2B78  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80CD2B7C  4B 68 F6 4C */	b _savegpr_24
/* 80CD2B80  7C 7C 1B 78 */	mr r28, r3
/* 80CD2B84  7C 98 23 78 */	mr r24, r4
/* 80CD2B88  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CD2B8C  3B E3 5C FC */	addi r31, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CD2B90  3B C0 00 00 */	li r30, 0
/* 80CD2B94  3B A0 FF FF */	li r29, -1
/* 80CD2B98  3B 20 00 00 */	li r25, 0
/* 80CD2B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD2BA0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80CD2BA4  3B 5B 4F F8 */	addi r26, r27, 0x4ff8
/* 80CD2BA8  7F 43 D3 78 */	mr r3, r26
/* 80CD2BAC  3C A0 80 CD */	lis r5, struct_80CD5E64+0x0@ha
/* 80CD2BB0  38 A5 5E 64 */	addi r5, r5, struct_80CD5E64+0x0@l
/* 80CD2BB4  38 A5 00 5F */	addi r5, r5, 0x5f
/* 80CD2BB8  38 C0 00 03 */	li r6, 3
/* 80CD2BBC  4B 37 55 30 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD2BC0  28 03 00 00 */	cmplwi r3, 0
/* 80CD2BC4  41 82 00 08 */	beq lbl_80CD2BCC
/* 80CD2BC8  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80CD2BCC:
/* 80CD2BCC  7F 43 D3 78 */	mr r3, r26
/* 80CD2BD0  7F 04 C3 78 */	mr r4, r24
/* 80CD2BD4  3C A0 80 CD */	lis r5, struct_80CD5E64+0x0@ha
/* 80CD2BD8  38 A5 5E 64 */	addi r5, r5, struct_80CD5E64+0x0@l
/* 80CD2BDC  38 A5 00 63 */	addi r5, r5, 0x63
/* 80CD2BE0  38 C0 00 03 */	li r6, 3
/* 80CD2BE4  4B 37 55 08 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD2BE8  28 03 00 00 */	cmplwi r3, 0
/* 80CD2BEC  41 82 00 08 */	beq lbl_80CD2BF4
/* 80CD2BF0  83 23 00 00 */	lwz r25, 0(r3)
lbl_80CD2BF4:
/* 80CD2BF4  7F 43 D3 78 */	mr r3, r26
/* 80CD2BF8  7F 04 C3 78 */	mr r4, r24
/* 80CD2BFC  4B 37 51 50 */	b getIsAddvance__16dEvent_manager_cFi
/* 80CD2C00  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2C04  41 82 09 C0 */	beq lbl_80CD35C4
/* 80CD2C08  28 1D 00 09 */	cmplwi r29, 9
/* 80CD2C0C  41 81 09 B8 */	bgt lbl_80CD35C4
/* 80CD2C10  3C 60 80 CD */	lis r3, lit_6832@ha
/* 80CD2C14  38 63 66 F4 */	addi r3, r3, lit_6832@l
/* 80CD2C18  57 A0 10 3A */	slwi r0, r29, 2
/* 80CD2C1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CD2C20  7C 09 03 A6 */	mtctr r0
/* 80CD2C24  4E 80 04 20 */	bctr 
lbl_80CD2C28:
/* 80CD2C28  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD2C2C  28 00 00 00 */	cmplwi r0, 0
/* 80CD2C30  40 82 00 48 */	bne lbl_80CD2C78
/* 80CD2C34  38 61 00 4C */	addi r3, r1, 0x4c
/* 80CD2C38  3C 80 80 CD */	lis r4, l_evtList@ha
/* 80CD2C3C  38 84 5F 40 */	addi r4, r4, l_evtList@l
/* 80CD2C40  80 84 00 30 */	lwz r4, 0x30(r4)
/* 80CD2C44  4B 69 5E E8 */	b strcpy
/* 80CD2C48  38 61 00 4C */	addi r3, r1, 0x4c
/* 80CD2C4C  3C 80 80 CD */	lis r4, struct_80CD5E64+0x0@ha
/* 80CD2C50  38 84 5E 64 */	addi r4, r4, struct_80CD5E64+0x0@l
/* 80CD2C54  38 84 00 6F */	addi r4, r4, 0x6f
/* 80CD2C58  4B 69 5E 64 */	b strcat
/* 80CD2C5C  3B 5B 4E C8 */	addi r26, r27, 0x4ec8
/* 80CD2C60  7F 43 D3 78 */	mr r3, r26
/* 80CD2C64  7F 84 E3 78 */	mr r4, r28
/* 80CD2C68  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80CD2C6C  4B 36 FC EC */	b setSkipZev__14dEvt_control_cFPvPc
/* 80CD2C70  7F 43 D3 78 */	mr r3, r26
/* 80CD2C74  4B 36 FD 34 */	b onSkipFade__14dEvt_control_cFv
lbl_80CD2C78:
/* 80CD2C78  93 3C 0D C4 */	stw r25, 0xdc4(r28)
/* 80CD2C7C  48 00 09 48 */	b lbl_80CD35C4
lbl_80CD2C80:
/* 80CD2C80  A8 7C 0D 7A */	lha r3, 0xd7a(r28)
/* 80CD2C84  7C 60 07 35 */	extsh. r0, r3
/* 80CD2C88  40 82 00 10 */	bne lbl_80CD2C98
/* 80CD2C8C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80CD2C90  D0 1C 11 6C */	stfs f0, 0x116c(r28)
/* 80CD2C94  48 00 00 28 */	b lbl_80CD2CBC
lbl_80CD2C98:
/* 80CD2C98  7C 03 00 D0 */	neg r0, r3
/* 80CD2C9C  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80CD2CA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD2CA4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80CD2CA8  3C 00 43 30 */	lis r0, 0x4330
/* 80CD2CAC  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80CD2CB0  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 80CD2CB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CD2CB8  D0 1C 11 6C */	stfs f0, 0x116c(r28)
lbl_80CD2CBC:
/* 80CD2CBC  C0 3C 11 6C */	lfs f1, 0x116c(r28)
/* 80CD2CC0  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80CD2CC4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CD2CC8  FC 00 02 10 */	fabs f0, f0
/* 80CD2CCC  FC 00 00 18 */	frsp f0, f0
/* 80CD2CD0  D0 1C 11 68 */	stfs f0, 0x1168(r28)
/* 80CD2CD4  7F 83 E3 78 */	mr r3, r28
/* 80CD2CD8  4B FF E2 09 */	bl getStepMotionNo__15daObj_Sekizoa_cFv
/* 80CD2CDC  7C 7A 1B 79 */	or. r26, r3, r3
/* 80CD2CE0  41 80 00 2C */	blt lbl_80CD2D0C
/* 80CD2CE4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80CD2CE8  7C 1A 00 00 */	cmpw r26, r0
/* 80CD2CEC  41 82 00 20 */	beq lbl_80CD2D0C
/* 80CD2CF0  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80CD2CF4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80CD2CF8  4B 47 2B A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD2CFC  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80CD2D00  93 5C 0B 7C */	stw r26, 0xb7c(r28)
/* 80CD2D04  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD2D08  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80CD2D0C:
/* 80CD2D0C  93 3C 0D C4 */	stw r25, 0xdc4(r28)
/* 80CD2D10  48 00 08 B4 */	b lbl_80CD35C4
lbl_80CD2D14:
/* 80CD2D14  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD2D18  28 00 00 00 */	cmplwi r0, 0
/* 80CD2D1C  40 82 00 E8 */	bne lbl_80CD2E04
/* 80CD2D20  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80CD2D24  2C 00 00 04 */	cmpwi r0, 4
/* 80CD2D28  41 82 00 24 */	beq lbl_80CD2D4C
/* 80CD2D2C  83 3C 0B 80 */	lwz r25, 0xb80(r28)
/* 80CD2D30  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80CD2D34  4B 47 2B 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD2D38  93 3C 0B 80 */	stw r25, 0xb80(r28)
/* 80CD2D3C  38 00 00 04 */	li r0, 4
/* 80CD2D40  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80CD2D44  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD2D48  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80CD2D4C:
/* 80CD2D4C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D0@ha */
/* 80CD2D50  38 03 00 D0 */	addi r0, r3, 0x00D0 /* 0x000600D0@l */
/* 80CD2D54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD2D58  38 7C 05 80 */	addi r3, r28, 0x580
/* 80CD2D5C  38 81 00 34 */	addi r4, r1, 0x34
/* 80CD2D60  38 A0 00 00 */	li r5, 0
/* 80CD2D64  38 C0 FF FF */	li r6, -1
/* 80CD2D68  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80CD2D6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD2D70  7D 89 03 A6 */	mtctr r12
/* 80CD2D74  4E 80 04 21 */	bctrl 
/* 80CD2D78  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E3@ha */
/* 80CD2D7C  38 03 01 E3 */	addi r0, r3, 0x01E3 /* 0x000501E3@l */
/* 80CD2D80  90 01 00 30 */	stw r0, 0x30(r1)
/* 80CD2D84  38 7C 05 80 */	addi r3, r28, 0x580
/* 80CD2D88  38 81 00 30 */	addi r4, r1, 0x30
/* 80CD2D8C  38 A0 FF FF */	li r5, -1
/* 80CD2D90  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80CD2D94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD2D98  7D 89 03 A6 */	mtctr r12
/* 80CD2D9C  4E 80 04 21 */	bctrl 
/* 80CD2DA0  38 60 00 0A */	li r3, 0xa
/* 80CD2DA4  38 80 00 00 */	li r4, 0
/* 80CD2DA8  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80CD2DAC  4B 4D 5A 60 */	b dKy_custom_colset__FUcUcf
/* 80CD2DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD2DB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD2DB8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD2DBC  38 00 00 00 */	li r0, 0
/* 80CD2DC0  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80CD2DC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CD2DC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CD2DCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD2DD0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CD2DD4  4B 5D CA B0 */	b subBgmStop__8Z2SeqMgrFv
/* 80CD2DD8  38 60 00 31 */	li r3, 0x31
/* 80CD2DDC  4B 47 9D 50 */	b daNpcT_offTmpBit__FUl
/* 80CD2DE0  38 00 00 00 */	li r0, 0
/* 80CD2DE4  98 1C 11 73 */	stb r0, 0x1173(r28)
/* 80CD2DE8  38 00 00 01 */	li r0, 1
/* 80CD2DEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD2DF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD2DF4  98 03 5E B8 */	stb r0, 0x5eb8(r3)
/* 80CD2DF8  38 60 00 EB */	li r3, 0xeb
/* 80CD2DFC  4B 47 9C 30 */	b daNpcT_onEvtBit__FUl
/* 80CD2E00  48 00 00 8C */	b lbl_80CD2E8C
lbl_80CD2E04:
/* 80CD2E04  28 00 00 01 */	cmplwi r0, 1
/* 80CD2E08  40 82 00 84 */	bne lbl_80CD2E8C
/* 80CD2E0C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80CD2E10  2C 00 00 0F */	cmpwi r0, 0xf
/* 80CD2E14  41 82 00 24 */	beq lbl_80CD2E38
/* 80CD2E18  83 3C 0B 80 */	lwz r25, 0xb80(r28)
/* 80CD2E1C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80CD2E20  4B 47 2A 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD2E24  93 3C 0B 80 */	stw r25, 0xb80(r28)
/* 80CD2E28  38 00 00 0F */	li r0, 0xf
/* 80CD2E2C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80CD2E30  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD2E34  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80CD2E38:
/* 80CD2E38  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D0@ha */
/* 80CD2E3C  38 03 00 D0 */	addi r0, r3, 0x00D0 /* 0x000600D0@l */
/* 80CD2E40  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CD2E44  38 7C 05 80 */	addi r3, r28, 0x580
/* 80CD2E48  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CD2E4C  38 A0 00 00 */	li r5, 0
/* 80CD2E50  38 C0 FF FF */	li r6, -1
/* 80CD2E54  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80CD2E58  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD2E5C  7D 89 03 A6 */	mtctr r12
/* 80CD2E60  4E 80 04 21 */	bctrl 
/* 80CD2E64  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E4@ha */
/* 80CD2E68  38 03 01 E4 */	addi r0, r3, 0x01E4 /* 0x000501E4@l */
/* 80CD2E6C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80CD2E70  38 7C 05 80 */	addi r3, r28, 0x580
/* 80CD2E74  38 81 00 28 */	addi r4, r1, 0x28
/* 80CD2E78  38 A0 FF FF */	li r5, -1
/* 80CD2E7C  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80CD2E80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD2E84  7D 89 03 A6 */	mtctr r12
/* 80CD2E88  4E 80 04 21 */	bctrl 
lbl_80CD2E8C:
/* 80CD2E8C  38 00 00 01 */	li r0, 1
/* 80CD2E90  98 1C 11 77 */	stb r0, 0x1177(r28)
/* 80CD2E94  48 00 07 30 */	b lbl_80CD35C4
lbl_80CD2E98:
/* 80CD2E98  93 3C 0D C4 */	stw r25, 0xdc4(r28)
/* 80CD2E9C  48 00 07 28 */	b lbl_80CD35C4
lbl_80CD2EA0:
/* 80CD2EA0  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD2EA4  28 00 00 00 */	cmplwi r0, 0
/* 80CD2EA8  40 82 07 1C */	bne lbl_80CD35C4
/* 80CD2EAC  38 60 00 01 */	li r3, 1
/* 80CD2EB0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CD2EB4  7C 04 07 74 */	extsb r4, r0
/* 80CD2EB8  38 A1 00 40 */	addi r5, r1, 0x40
/* 80CD2EBC  38 C1 00 38 */	addi r6, r1, 0x38
/* 80CD2EC0  4B 47 96 40 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80CD2EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2EC8  41 82 00 38 */	beq lbl_80CD2F00
/* 80CD2ECC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD2ED0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD2ED4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD2ED8  38 81 00 40 */	addi r4, r1, 0x40
/* 80CD2EDC  A8 A1 00 3A */	lha r5, 0x3a(r1)
/* 80CD2EE0  38 C0 00 00 */	li r6, 0
/* 80CD2EE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD2EE8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CD2EEC  7D 89 03 A6 */	mtctr r12
/* 80CD2EF0  4E 80 04 21 */	bctrl 
/* 80CD2EF4  7F 43 D3 78 */	mr r3, r26
/* 80CD2EF8  38 81 00 40 */	addi r4, r1, 0x40
/* 80CD2EFC  4B 37 54 C8 */	b setGoal__16dEvent_manager_cFP4cXyz
lbl_80CD2F00:
/* 80CD2F00  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80CD2F04  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CD2F08  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD2F0C  41 82 00 18 */	beq lbl_80CD2F24
/* 80CD2F10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD2F14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD2F18  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CD2F1C  7C 05 07 74 */	extsb r5, r0
/* 80CD2F20  4B 36 23 90 */	b offSwitch__10dSv_info_cFii
lbl_80CD2F24:
/* 80CD2F24  38 7C 09 74 */	addi r3, r28, 0x974
/* 80CD2F28  38 80 00 00 */	li r4, 0
/* 80CD2F2C  38 A0 00 73 */	li r5, 0x73
/* 80CD2F30  38 C0 00 00 */	li r6, 0
/* 80CD2F34  38 E0 00 00 */	li r7, 0
/* 80CD2F38  4B 57 70 58 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80CD2F3C  48 00 06 88 */	b lbl_80CD35C4
lbl_80CD2F40:
/* 80CD2F40  93 3C 0D C4 */	stw r25, 0xdc4(r28)
/* 80CD2F44  48 00 06 80 */	b lbl_80CD35C4
lbl_80CD2F48:
/* 80CD2F48  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD2F4C  28 00 00 00 */	cmplwi r0, 0
/* 80CD2F50  40 82 02 A0 */	bne lbl_80CD31F0
/* 80CD2F54  88 1C 11 7A */	lbz r0, 0x117a(r28)
/* 80CD2F58  28 00 00 00 */	cmplwi r0, 0
/* 80CD2F5C  41 82 00 0C */	beq lbl_80CD2F68
/* 80CD2F60  38 60 02 5E */	li r3, 0x25e
/* 80CD2F64  4B 47 9A C8 */	b daNpcT_onEvtBit__FUl
lbl_80CD2F68:
/* 80CD2F68  38 7C 10 D4 */	addi r3, r28, 0x10d4
/* 80CD2F6C  4B 47 27 9C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD2F70  7C 7B 1B 78 */	mr r27, r3
/* 80CD2F74  38 60 02 5E */	li r3, 0x25e
/* 80CD2F78  4B 47 9B 34 */	b daNpcT_chkEvtBit__FUl
/* 80CD2F7C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2F80  41 82 00 24 */	beq lbl_80CD2FA4
/* 80CD2F84  3C 60 80 CD */	lis r3, l_srcPosL@ha
/* 80CD2F88  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)
/* 80CD2F8C  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80CD2F90  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD2F94  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80CD2F98  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD2F9C  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80CD2FA0  48 00 00 20 */	b lbl_80CD2FC0
lbl_80CD2FA4:
/* 80CD2FA4  3C 60 80 CD */	lis r3, l_srcPosR@ha
/* 80CD2FA8  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)
/* 80CD2FAC  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80CD2FB0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD2FB4  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80CD2FB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD2FBC  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_80CD2FC0:
/* 80CD2FC0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80CD2FC4  D0 1B 04 BC */	stfs f0, 0x4bc(r27)
/* 80CD2FC8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80CD2FCC  D0 1B 04 C0 */	stfs f0, 0x4c0(r27)
/* 80CD2FD0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80CD2FD4  D0 1B 04 C4 */	stfs f0, 0x4c4(r27)
/* 80CD2FD8  38 00 00 00 */	li r0, 0
/* 80CD2FDC  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 80CD2FE0  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD2FE4  28 00 00 02 */	cmplwi r0, 2
/* 80CD2FE8  41 82 00 0C */	beq lbl_80CD2FF4
/* 80CD2FEC  28 00 00 03 */	cmplwi r0, 3
/* 80CD2FF0  40 82 00 BC */	bne lbl_80CD30AC
lbl_80CD2FF4:
/* 80CD2FF4  28 00 00 02 */	cmplwi r0, 2
/* 80CD2FF8  40 82 00 50 */	bne lbl_80CD3048
/* 80CD2FFC  83 3B 0B 80 */	lwz r25, 0xb80(r27)
/* 80CD3000  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80CD3004  4B 47 28 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD3008  93 3B 0B 80 */	stw r25, 0xb80(r27)
/* 80CD300C  38 00 00 02 */	li r0, 2
/* 80CD3010  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80CD3014  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD3018  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 80CD301C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DD@ha */
/* 80CD3020  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000600DD@l */
/* 80CD3024  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CD3028  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CD302C  38 81 00 20 */	addi r4, r1, 0x20
/* 80CD3030  38 A0 00 00 */	li r5, 0
/* 80CD3034  38 C0 FF FF */	li r6, -1
/* 80CD3038  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 80CD303C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD3040  7D 89 03 A6 */	mtctr r12
/* 80CD3044  4E 80 04 21 */	bctrl 
lbl_80CD3048:
/* 80CD3048  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD304C  28 00 00 03 */	cmplwi r0, 3
/* 80CD3050  40 82 00 50 */	bne lbl_80CD30A0
/* 80CD3054  83 3B 0B 80 */	lwz r25, 0xb80(r27)
/* 80CD3058  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80CD305C  4B 47 28 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD3060  93 3B 0B 80 */	stw r25, 0xb80(r27)
/* 80CD3064  38 00 00 0D */	li r0, 0xd
/* 80CD3068  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80CD306C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD3070  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 80CD3074  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DD@ha */
/* 80CD3078  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000600DD@l */
/* 80CD307C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD3080  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CD3084  38 81 00 24 */	addi r4, r1, 0x24
/* 80CD3088  38 A0 00 00 */	li r5, 0
/* 80CD308C  38 C0 FF FF */	li r6, -1
/* 80CD3090  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 80CD3094  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD3098  7D 89 03 A6 */	mtctr r12
/* 80CD309C  4E 80 04 21 */	bctrl 
lbl_80CD30A0:
/* 80CD30A0  38 00 00 01 */	li r0, 1
/* 80CD30A4  98 1B 11 76 */	stb r0, 0x1176(r27)
/* 80CD30A8  98 1B 11 78 */	stb r0, 0x1178(r27)
lbl_80CD30AC:
/* 80CD30AC  38 7C 10 DC */	addi r3, r28, 0x10dc
/* 80CD30B0  4B 47 26 58 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD30B4  7C 7B 1B 78 */	mr r27, r3
/* 80CD30B8  38 60 02 5E */	li r3, 0x25e
/* 80CD30BC  4B 47 99 F0 */	b daNpcT_chkEvtBit__FUl
/* 80CD30C0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD30C4  41 82 00 24 */	beq lbl_80CD30E8
/* 80CD30C8  3C 60 80 CD */	lis r3, l_srcPosR@ha
/* 80CD30CC  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)
/* 80CD30D0  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80CD30D4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD30D8  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80CD30DC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD30E0  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80CD30E4  48 00 00 20 */	b lbl_80CD3104
lbl_80CD30E8:
/* 80CD30E8  3C 60 80 CD */	lis r3, l_srcPosL@ha
/* 80CD30EC  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)
/* 80CD30F0  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80CD30F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD30F8  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80CD30FC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD3100  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_80CD3104:
/* 80CD3104  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80CD3108  D0 1B 04 BC */	stfs f0, 0x4bc(r27)
/* 80CD310C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80CD3110  D0 1B 04 C0 */	stfs f0, 0x4c0(r27)
/* 80CD3114  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80CD3118  D0 1B 04 C4 */	stfs f0, 0x4c4(r27)
/* 80CD311C  38 00 00 00 */	li r0, 0
/* 80CD3120  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 80CD3124  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD3128  28 00 00 02 */	cmplwi r0, 2
/* 80CD312C  41 82 00 0C */	beq lbl_80CD3138
/* 80CD3130  28 00 00 03 */	cmplwi r0, 3
/* 80CD3134  40 82 00 BC */	bne lbl_80CD31F0
lbl_80CD3138:
/* 80CD3138  28 00 00 02 */	cmplwi r0, 2
/* 80CD313C  40 82 00 50 */	bne lbl_80CD318C
/* 80CD3140  83 3B 0B 80 */	lwz r25, 0xb80(r27)
/* 80CD3144  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80CD3148  4B 47 27 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD314C  93 3B 0B 80 */	stw r25, 0xb80(r27)
/* 80CD3150  38 00 00 02 */	li r0, 2
/* 80CD3154  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80CD3158  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD315C  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 80CD3160  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DD@ha */
/* 80CD3164  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000600DD@l */
/* 80CD3168  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CD316C  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CD3170  38 81 00 18 */	addi r4, r1, 0x18
/* 80CD3174  38 A0 00 00 */	li r5, 0
/* 80CD3178  38 C0 FF FF */	li r6, -1
/* 80CD317C  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 80CD3180  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD3184  7D 89 03 A6 */	mtctr r12
/* 80CD3188  4E 80 04 21 */	bctrl 
lbl_80CD318C:
/* 80CD318C  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD3190  28 00 00 03 */	cmplwi r0, 3
/* 80CD3194  40 82 00 50 */	bne lbl_80CD31E4
/* 80CD3198  83 3B 0B 80 */	lwz r25, 0xb80(r27)
/* 80CD319C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80CD31A0  4B 47 26 F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD31A4  93 3B 0B 80 */	stw r25, 0xb80(r27)
/* 80CD31A8  38 00 00 0D */	li r0, 0xd
/* 80CD31AC  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80CD31B0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD31B4  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 80CD31B8  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DD@ha */
/* 80CD31BC  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000600DD@l */
/* 80CD31C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CD31C4  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CD31C8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80CD31CC  38 A0 00 00 */	li r5, 0
/* 80CD31D0  38 C0 FF FF */	li r6, -1
/* 80CD31D4  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 80CD31D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD31DC  7D 89 03 A6 */	mtctr r12
/* 80CD31E0  4E 80 04 21 */	bctrl 
lbl_80CD31E4:
/* 80CD31E4  38 00 00 01 */	li r0, 1
/* 80CD31E8  98 1B 11 76 */	stb r0, 0x1176(r27)
/* 80CD31EC  98 1B 11 78 */	stb r0, 0x1178(r27)
lbl_80CD31F0:
/* 80CD31F0  38 00 00 01 */	li r0, 1
/* 80CD31F4  98 1C 0E 25 */	stb r0, 0xe25(r28)
/* 80CD31F8  48 00 03 CC */	b lbl_80CD35C4
lbl_80CD31FC:
/* 80CD31FC  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD3200  28 00 00 00 */	cmplwi r0, 0
/* 80CD3204  40 82 03 B0 */	bne lbl_80CD35B4
/* 80CD3208  38 7C 11 04 */	addi r3, r28, 0x1104
/* 80CD320C  4B 47 24 FC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD3210  28 03 00 00 */	cmplwi r3, 0
/* 80CD3214  41 82 00 08 */	beq lbl_80CD321C
/* 80CD3218  4B FF A3 C4 */	b evtSkip__16daObj_SekiDoor_cFv
lbl_80CD321C:
/* 80CD321C  88 1C 11 7A */	lbz r0, 0x117a(r28)
/* 80CD3220  28 00 00 00 */	cmplwi r0, 0
/* 80CD3224  41 82 00 0C */	beq lbl_80CD3230
/* 80CD3228  38 60 02 5E */	li r3, 0x25e
/* 80CD322C  4B 47 98 00 */	b daNpcT_onEvtBit__FUl
lbl_80CD3230:
/* 80CD3230  38 7C 10 D4 */	addi r3, r28, 0x10d4
/* 80CD3234  4B 47 24 D4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD3238  7C 7B 1B 78 */	mr r27, r3
/* 80CD323C  38 60 02 5E */	li r3, 0x25e
/* 80CD3240  4B 47 98 6C */	b daNpcT_chkEvtBit__FUl
/* 80CD3244  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3248  41 82 00 24 */	beq lbl_80CD326C
/* 80CD324C  3C 60 80 CD */	lis r3, l_srcPosL@ha
/* 80CD3250  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)
/* 80CD3254  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80CD3258  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD325C  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80CD3260  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD3264  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80CD3268  48 00 00 20 */	b lbl_80CD3288
lbl_80CD326C:
/* 80CD326C  3C 60 80 CD */	lis r3, l_srcPosR@ha
/* 80CD3270  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)
/* 80CD3274  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80CD3278  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD327C  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80CD3280  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD3284  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_80CD3288:
/* 80CD3288  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80CD328C  D0 1B 04 BC */	stfs f0, 0x4bc(r27)
/* 80CD3290  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80CD3294  D0 1B 04 C0 */	stfs f0, 0x4c0(r27)
/* 80CD3298  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80CD329C  D0 1B 04 C4 */	stfs f0, 0x4c4(r27)
/* 80CD32A0  38 00 00 00 */	li r0, 0
/* 80CD32A4  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 80CD32A8  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD32AC  28 00 00 02 */	cmplwi r0, 2
/* 80CD32B0  41 82 00 0C */	beq lbl_80CD32BC
/* 80CD32B4  28 00 00 03 */	cmplwi r0, 3
/* 80CD32B8  40 82 00 BC */	bne lbl_80CD3374
lbl_80CD32BC:
/* 80CD32BC  28 00 00 02 */	cmplwi r0, 2
/* 80CD32C0  40 82 00 50 */	bne lbl_80CD3310
/* 80CD32C4  83 3B 0B 80 */	lwz r25, 0xb80(r27)
/* 80CD32C8  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80CD32CC  4B 47 25 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD32D0  93 3B 0B 80 */	stw r25, 0xb80(r27)
/* 80CD32D4  38 00 00 02 */	li r0, 2
/* 80CD32D8  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80CD32DC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD32E0  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 80CD32E4  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DD@ha */
/* 80CD32E8  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000600DD@l */
/* 80CD32EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CD32F0  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CD32F4  38 81 00 10 */	addi r4, r1, 0x10
/* 80CD32F8  38 A0 00 00 */	li r5, 0
/* 80CD32FC  38 C0 FF FF */	li r6, -1
/* 80CD3300  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 80CD3304  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD3308  7D 89 03 A6 */	mtctr r12
/* 80CD330C  4E 80 04 21 */	bctrl 
lbl_80CD3310:
/* 80CD3310  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD3314  28 00 00 03 */	cmplwi r0, 3
/* 80CD3318  40 82 00 50 */	bne lbl_80CD3368
/* 80CD331C  83 3B 0B 80 */	lwz r25, 0xb80(r27)
/* 80CD3320  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80CD3324  4B 47 25 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD3328  93 3B 0B 80 */	stw r25, 0xb80(r27)
/* 80CD332C  38 00 00 0D */	li r0, 0xd
/* 80CD3330  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80CD3334  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD3338  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 80CD333C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DD@ha */
/* 80CD3340  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000600DD@l */
/* 80CD3344  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD3348  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CD334C  38 81 00 14 */	addi r4, r1, 0x14
/* 80CD3350  38 A0 00 00 */	li r5, 0
/* 80CD3354  38 C0 FF FF */	li r6, -1
/* 80CD3358  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 80CD335C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD3360  7D 89 03 A6 */	mtctr r12
/* 80CD3364  4E 80 04 21 */	bctrl 
lbl_80CD3368:
/* 80CD3368  38 00 00 01 */	li r0, 1
/* 80CD336C  98 1B 11 76 */	stb r0, 0x1176(r27)
/* 80CD3370  98 1B 11 78 */	stb r0, 0x1178(r27)
lbl_80CD3374:
/* 80CD3374  38 7C 10 DC */	addi r3, r28, 0x10dc
/* 80CD3378  4B 47 23 90 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD337C  7C 7B 1B 78 */	mr r27, r3
/* 80CD3380  38 60 02 5E */	li r3, 0x25e
/* 80CD3384  4B 47 97 28 */	b daNpcT_chkEvtBit__FUl
/* 80CD3388  2C 03 00 00 */	cmpwi r3, 0
/* 80CD338C  41 82 00 24 */	beq lbl_80CD33B0
/* 80CD3390  3C 60 80 CD */	lis r3, l_srcPosR@ha
/* 80CD3394  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)
/* 80CD3398  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80CD339C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD33A0  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80CD33A4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD33A8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80CD33AC  48 00 00 20 */	b lbl_80CD33CC
lbl_80CD33B0:
/* 80CD33B0  3C 60 80 CD */	lis r3, l_srcPosL@ha
/* 80CD33B4  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)
/* 80CD33B8  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80CD33BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CD33C0  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80CD33C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CD33C8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_80CD33CC:
/* 80CD33CC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80CD33D0  D0 1B 04 BC */	stfs f0, 0x4bc(r27)
/* 80CD33D4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80CD33D8  D0 1B 04 C0 */	stfs f0, 0x4c0(r27)
/* 80CD33DC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80CD33E0  D0 1B 04 C4 */	stfs f0, 0x4c4(r27)
/* 80CD33E4  38 00 00 00 */	li r0, 0
/* 80CD33E8  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 80CD33EC  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD33F0  28 00 00 02 */	cmplwi r0, 2
/* 80CD33F4  41 82 00 0C */	beq lbl_80CD3400
/* 80CD33F8  28 00 00 03 */	cmplwi r0, 3
/* 80CD33FC  40 82 00 BC */	bne lbl_80CD34B8
lbl_80CD3400:
/* 80CD3400  28 00 00 02 */	cmplwi r0, 2
/* 80CD3404  40 82 00 50 */	bne lbl_80CD3454
/* 80CD3408  83 3B 0B 80 */	lwz r25, 0xb80(r27)
/* 80CD340C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80CD3410  4B 47 24 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD3414  93 3B 0B 80 */	stw r25, 0xb80(r27)
/* 80CD3418  38 00 00 02 */	li r0, 2
/* 80CD341C  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80CD3420  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD3424  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 80CD3428  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DD@ha */
/* 80CD342C  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000600DD@l */
/* 80CD3430  90 01 00 08 */	stw r0, 8(r1)
/* 80CD3434  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CD3438  38 81 00 08 */	addi r4, r1, 8
/* 80CD343C  38 A0 00 00 */	li r5, 0
/* 80CD3440  38 C0 FF FF */	li r6, -1
/* 80CD3444  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 80CD3448  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD344C  7D 89 03 A6 */	mtctr r12
/* 80CD3450  4E 80 04 21 */	bctrl 
lbl_80CD3454:
/* 80CD3454  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD3458  28 00 00 03 */	cmplwi r0, 3
/* 80CD345C  40 82 00 50 */	bne lbl_80CD34AC
/* 80CD3460  83 3B 0B 80 */	lwz r25, 0xb80(r27)
/* 80CD3464  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80CD3468  4B 47 24 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD346C  93 3B 0B 80 */	stw r25, 0xb80(r27)
/* 80CD3470  38 00 00 0D */	li r0, 0xd
/* 80CD3474  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80CD3478  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD347C  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 80CD3480  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DD@ha */
/* 80CD3484  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000600DD@l */
/* 80CD3488  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CD348C  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CD3490  38 81 00 0C */	addi r4, r1, 0xc
/* 80CD3494  38 A0 00 00 */	li r5, 0
/* 80CD3498  38 C0 FF FF */	li r6, -1
/* 80CD349C  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 80CD34A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD34A4  7D 89 03 A6 */	mtctr r12
/* 80CD34A8  4E 80 04 21 */	bctrl 
lbl_80CD34AC:
/* 80CD34AC  38 00 00 01 */	li r0, 1
/* 80CD34B0  98 1B 11 76 */	stb r0, 0x1176(r27)
/* 80CD34B4  98 1B 11 78 */	stb r0, 0x1178(r27)
lbl_80CD34B8:
/* 80CD34B8  38 60 00 01 */	li r3, 1
/* 80CD34BC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CD34C0  7C 04 07 74 */	extsb r4, r0
/* 80CD34C4  38 A1 00 40 */	addi r5, r1, 0x40
/* 80CD34C8  38 C1 00 38 */	addi r6, r1, 0x38
/* 80CD34CC  4B 47 90 34 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80CD34D0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD34D4  41 82 00 38 */	beq lbl_80CD350C
/* 80CD34D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD34DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD34E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD34E4  38 81 00 40 */	addi r4, r1, 0x40
/* 80CD34E8  A8 A1 00 3A */	lha r5, 0x3a(r1)
/* 80CD34EC  38 C0 00 00 */	li r6, 0
/* 80CD34F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD34F4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CD34F8  7D 89 03 A6 */	mtctr r12
/* 80CD34FC  4E 80 04 21 */	bctrl 
/* 80CD3500  7F 43 D3 78 */	mr r3, r26
/* 80CD3504  38 81 00 40 */	addi r4, r1, 0x40
/* 80CD3508  4B 37 4E BC */	b setGoal__16dEvent_manager_cFP4cXyz
lbl_80CD350C:
/* 80CD350C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80CD3510  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CD3514  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD3518  41 82 00 18 */	beq lbl_80CD3530
/* 80CD351C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD3520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD3524  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CD3528  7C 05 07 74 */	extsb r5, r0
/* 80CD352C  4B 36 1D 84 */	b offSwitch__10dSv_info_cFii
lbl_80CD3530:
/* 80CD3530  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80CD3534  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CD3538  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD353C  41 82 00 18 */	beq lbl_80CD3554
/* 80CD3540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD3544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD3548  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CD354C  7C 05 07 74 */	extsb r5, r0
/* 80CD3550  4B 36 1C B0 */	b onSwitch__10dSv_info_cFii
lbl_80CD3554:
/* 80CD3554  38 60 00 00 */	li r3, 0
/* 80CD3558  38 80 00 00 */	li r4, 0
/* 80CD355C  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80CD3560  4B 4D 52 AC */	b dKy_custom_colset__FUcUcf
/* 80CD3564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD3568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD356C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD3570  38 00 00 00 */	li r0, 0
/* 80CD3574  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80CD3578  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CD357C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CD3580  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD3584  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CD3588  4B 5D C2 FC */	b subBgmStop__8Z2SeqMgrFv
/* 80CD358C  38 60 00 31 */	li r3, 0x31
/* 80CD3590  4B 47 95 9C */	b daNpcT_offTmpBit__FUl
/* 80CD3594  38 00 00 00 */	li r0, 0
/* 80CD3598  98 1C 11 73 */	stb r0, 0x1173(r28)
/* 80CD359C  38 00 00 01 */	li r0, 1
/* 80CD35A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD35A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD35A8  98 03 5E B8 */	stb r0, 0x5eb8(r3)
/* 80CD35AC  38 60 00 EB */	li r3, 0xeb
/* 80CD35B0  4B 47 94 7C */	b daNpcT_onEvtBit__FUl
lbl_80CD35B4:
/* 80CD35B4  38 00 00 01 */	li r0, 1
/* 80CD35B8  98 1C 0E 25 */	stb r0, 0xe25(r28)
/* 80CD35BC  38 00 00 00 */	li r0, 0
/* 80CD35C0  98 1C 11 76 */	stb r0, 0x1176(r28)
lbl_80CD35C4:
/* 80CD35C4  28 1D 00 09 */	cmplwi r29, 9
/* 80CD35C8  41 81 01 80 */	bgt lbl_80CD3748
/* 80CD35CC  3C 60 80 CD */	lis r3, lit_6834@ha
/* 80CD35D0  38 63 66 CC */	addi r3, r3, lit_6834@l
/* 80CD35D4  57 A0 10 3A */	slwi r0, r29, 2
/* 80CD35D8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CD35DC  7C 09 03 A6 */	mtctr r0
/* 80CD35E0  4E 80 04 20 */	bctr 
lbl_80CD35E4:
/* 80CD35E4  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 80CD35E8  48 00 22 9D */	bl func_80CD5884
/* 80CD35EC  2C 03 00 00 */	cmpwi r3, 0
/* 80CD35F0  40 82 01 58 */	bne lbl_80CD3748
/* 80CD35F4  3B C0 00 01 */	li r30, 1
/* 80CD35F8  48 00 01 50 */	b lbl_80CD3748
lbl_80CD35FC:
/* 80CD35FC  C3 FC 11 6C */	lfs f31, 0x116c(r28)
/* 80CD3600  38 7C 11 6C */	addi r3, r28, 0x116c
/* 80CD3604  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80CD3608  C0 5C 11 68 */	lfs f2, 0x1168(r28)
/* 80CD360C  4B 59 D1 34 */	b cLib_chaseF__FPfff
/* 80CD3610  C0 1C 11 6C */	lfs f0, 0x116c(r28)
/* 80CD3614  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80CD3618  FC 00 00 1E */	fctiwz f0, f0
/* 80CD361C  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 80CD3620  80 61 00 B4 */	lwz r3, 0xb4(r1)
/* 80CD3624  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80CD3628  7C 03 00 50 */	subf r0, r3, r0
/* 80CD362C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80CD3630  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80CD3634  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80CD3638  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80CD363C  B0 1C 0D 7A */	sth r0, 0xd7a(r28)
/* 80CD3640  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80CD3644  4B 47 23 E0 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80CD3648  2C 03 00 00 */	cmpwi r3, 0
/* 80CD364C  41 82 00 FC */	beq lbl_80CD3748
/* 80CD3650  3B C0 00 01 */	li r30, 1
/* 80CD3654  48 00 00 F4 */	b lbl_80CD3748
lbl_80CD3658:
/* 80CD3658  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80CD365C  4B 47 23 C8 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80CD3660  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3664  41 82 00 E4 */	beq lbl_80CD3748
/* 80CD3668  3B C0 00 01 */	li r30, 1
/* 80CD366C  48 00 00 DC */	b lbl_80CD3748
lbl_80CD3670:
/* 80CD3670  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 80CD3674  48 00 22 11 */	bl func_80CD5884
/* 80CD3678  2C 03 00 00 */	cmpwi r3, 0
/* 80CD367C  40 82 00 CC */	bne lbl_80CD3748
/* 80CD3680  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD3684  28 00 00 00 */	cmplwi r0, 0
/* 80CD3688  40 82 00 C0 */	bne lbl_80CD3748
/* 80CD368C  38 7C 11 04 */	addi r3, r28, 0x1104
/* 80CD3690  4B 47 20 78 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD3694  88 03 05 D4 */	lbz r0, 0x5d4(r3)
/* 80CD3698  28 00 00 01 */	cmplwi r0, 1
/* 80CD369C  40 82 00 30 */	bne lbl_80CD36CC
/* 80CD36A0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80CD36A4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CD36A8  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD36AC  41 82 00 18 */	beq lbl_80CD36C4
/* 80CD36B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD36B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD36B8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CD36BC  7C 05 07 74 */	extsb r5, r0
/* 80CD36C0  4B 36 1B 40 */	b onSwitch__10dSv_info_cFii
lbl_80CD36C4:
/* 80CD36C4  3B C0 00 01 */	li r30, 1
/* 80CD36C8  48 00 00 80 */	b lbl_80CD3748
lbl_80CD36CC:
/* 80CD36CC  38 00 00 01 */	li r0, 1
/* 80CD36D0  98 03 05 D5 */	stb r0, 0x5d5(r3)
/* 80CD36D4  48 00 00 74 */	b lbl_80CD3748
lbl_80CD36D8:
/* 80CD36D8  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD36DC  28 00 00 00 */	cmplwi r0, 0
/* 80CD36E0  40 82 00 3C */	bne lbl_80CD371C
/* 80CD36E4  38 00 00 00 */	li r0, 0
/* 80CD36E8  98 1C 0E 26 */	stb r0, 0xe26(r28)
/* 80CD36EC  38 7C 09 74 */	addi r3, r28, 0x974
/* 80CD36F0  38 80 00 00 */	li r4, 0
/* 80CD36F4  38 A0 00 00 */	li r5, 0
/* 80CD36F8  38 C0 00 00 */	li r6, 0
/* 80CD36FC  4B 57 6B DC */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80CD3700  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3704  41 82 00 44 */	beq lbl_80CD3748
/* 80CD3708  88 1C 09 9A */	lbz r0, 0x99a(r28)
/* 80CD370C  28 00 00 01 */	cmplwi r0, 1
/* 80CD3710  40 82 00 38 */	bne lbl_80CD3748
/* 80CD3714  3B C0 00 01 */	li r30, 1
/* 80CD3718  48 00 00 30 */	b lbl_80CD3748
lbl_80CD371C:
/* 80CD371C  3B C0 00 01 */	li r30, 1
/* 80CD3720  48 00 00 28 */	b lbl_80CD3748
lbl_80CD3724:
/* 80CD3724  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 80CD3728  48 00 21 5D */	bl func_80CD5884
/* 80CD372C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3730  40 82 00 18 */	bne lbl_80CD3748
/* 80CD3734  3B C0 00 01 */	li r30, 1
/* 80CD3738  48 00 00 10 */	b lbl_80CD3748
lbl_80CD373C:
/* 80CD373C  3B C0 00 01 */	li r30, 1
/* 80CD3740  48 00 00 08 */	b lbl_80CD3748
lbl_80CD3744:
/* 80CD3744  3B C0 00 01 */	li r30, 1
lbl_80CD3748:
/* 80CD3748  7F C3 F3 78 */	mr r3, r30
/* 80CD374C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80CD3750  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80CD3754  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80CD3758  4B 68 EA BC */	b _restgpr_24
/* 80CD375C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80CD3760  7C 08 03 A6 */	mtlr r0
/* 80CD3764  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80CD3768  4E 80 00 20 */	blr 
