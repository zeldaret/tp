lbl_80B59B90:
/* 80B59B90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B59B94  7C 08 02 A6 */	mflr r0
/* 80B59B98  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B59B9C  39 61 00 70 */	addi r11, r1, 0x70
/* 80B59BA0  4B 80 86 2C */	b _savegpr_25
/* 80B59BA4  7C 7B 1B 78 */	mr r27, r3
/* 80B59BA8  7C 99 23 78 */	mr r25, r4
/* 80B59BAC  3B A0 00 00 */	li r29, 0
/* 80B59BB0  3B 80 FF FF */	li r28, -1
/* 80B59BB4  3B 40 00 00 */	li r26, 0
/* 80B59BB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B59BBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B59BC0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80B59BC4  3B FE 40 C0 */	addi r31, r30, 0x40c0
/* 80B59BC8  7F E3 FB 78 */	mr r3, r31
/* 80B59BCC  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B59BD0  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B59BD4  38 A5 00 97 */	addi r5, r5, 0x97
/* 80B59BD8  38 C0 00 03 */	li r6, 3
/* 80B59BDC  4B 4E E5 10 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B59BE0  28 03 00 00 */	cmplwi r3, 0
/* 80B59BE4  41 82 00 08 */	beq lbl_80B59BEC
/* 80B59BE8  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B59BEC:
/* 80B59BEC  7F E3 FB 78 */	mr r3, r31
/* 80B59BF0  7F 24 CB 78 */	mr r4, r25
/* 80B59BF4  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B59BF8  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B59BFC  38 A5 00 9B */	addi r5, r5, 0x9b
/* 80B59C00  38 C0 00 03 */	li r6, 3
/* 80B59C04  4B 4E E4 E8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B59C08  28 03 00 00 */	cmplwi r3, 0
/* 80B59C0C  41 82 00 08 */	beq lbl_80B59C14
/* 80B59C10  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B59C14:
/* 80B59C14  7F E3 FB 78 */	mr r3, r31
/* 80B59C18  7F 24 CB 78 */	mr r4, r25
/* 80B59C1C  4B 4E E1 30 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B59C20  2C 03 00 00 */	cmpwi r3, 0
/* 80B59C24  41 82 03 48 */	beq lbl_80B59F6C
/* 80B59C28  2C 1C 00 03 */	cmpwi r28, 3
/* 80B59C2C  41 82 02 28 */	beq lbl_80B59E54
/* 80B59C30  40 80 00 1C */	bge lbl_80B59C4C
/* 80B59C34  2C 1C 00 01 */	cmpwi r28, 1
/* 80B59C38  41 82 03 34 */	beq lbl_80B59F6C
/* 80B59C3C  40 80 00 24 */	bge lbl_80B59C60
/* 80B59C40  2C 1C 00 00 */	cmpwi r28, 0
/* 80B59C44  40 80 00 14 */	bge lbl_80B59C58
/* 80B59C48  48 00 03 24 */	b lbl_80B59F6C
lbl_80B59C4C:
/* 80B59C4C  2C 1C 00 05 */	cmpwi r28, 5
/* 80B59C50  41 82 02 3C */	beq lbl_80B59E8C
/* 80B59C54  48 00 03 18 */	b lbl_80B59F6C
lbl_80B59C58:
/* 80B59C58  93 5B 0D C4 */	stw r26, 0xdc4(r27)
/* 80B59C5C  48 00 03 10 */	b lbl_80B59F6C
lbl_80B59C60:
/* 80B59C60  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 80B59C64  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B59C68  41 82 00 28 */	beq lbl_80B59C90
/* 80B59C6C  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 80B59C70  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 80B59C74  4B 5E BC 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B59C78  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80B59C7C  38 00 00 0F */	li r0, 0xf
/* 80B59C80  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80B59C84  3C 60 80 B6 */	lis r3, lit_4392@ha
/* 80B59C88  C0 03 D8 98 */	lfs f0, lit_4392@l(r3)
/* 80B59C8C  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80B59C90:
/* 80B59C90  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B59C94  2C 00 00 00 */	cmpwi r0, 0
/* 80B59C98  41 82 00 28 */	beq lbl_80B59CC0
/* 80B59C9C  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80B59CA0  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B59CA4  4B 5E BB F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B59CA8  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80B59CAC  38 00 00 00 */	li r0, 0
/* 80B59CB0  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80B59CB4  3C 60 80 B6 */	lis r3, lit_4392@ha
/* 80B59CB8  C0 03 D8 98 */	lfs f0, lit_4392@l(r3)
/* 80B59CBC  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B59CC0:
/* 80B59CC0  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B59CC4  2C 00 00 01 */	cmpwi r0, 1
/* 80B59CC8  41 82 00 2C */	beq lbl_80B59CF4
/* 80B59CCC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B59CD0  4B 5E BA 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B59CD4  38 00 00 00 */	li r0, 0
/* 80B59CD8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B59CDC  3C 60 80 B6 */	lis r3, lit_4392@ha
/* 80B59CE0  C0 03 D8 98 */	lfs f0, lit_4392@l(r3)
/* 80B59CE4  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B59CE8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B59CEC  38 00 00 01 */	li r0, 1
/* 80B59CF0  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B59CF4:
/* 80B59CF4  38 00 00 00 */	li r0, 0
/* 80B59CF8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B59CFC  98 1B 15 76 */	stb r0, 0x1576(r27)
/* 80B59D00  38 60 00 54 */	li r3, 0x54
/* 80B59D04  4B 5F 2E 28 */	b daNpcT_offTmpBit__FUl
/* 80B59D08  38 00 00 00 */	li r0, 0
/* 80B59D0C  98 1B 15 7B */	stb r0, 0x157b(r27)
/* 80B59D10  90 1B 15 58 */	stw r0, 0x1558(r27)
/* 80B59D14  90 1B 15 60 */	stw r0, 0x1560(r27)
/* 80B59D18  B0 1B 14 D4 */	sth r0, 0x14d4(r27)
/* 80B59D1C  7F 63 DB 78 */	mr r3, r27
/* 80B59D20  38 80 00 06 */	li r4, 6
/* 80B59D24  4B FF A8 29 */	bl getOtherYkmP__11daNpc_ykM_cFi
/* 80B59D28  7C 7A 1B 78 */	mr r26, r3
/* 80B59D2C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B59D30  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B59D34  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B59D38  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B59D3C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B59D40  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B59D44  7F 63 DB 78 */	mr r3, r27
/* 80B59D48  38 81 00 30 */	addi r4, r1, 0x30
/* 80B59D4C  4B 5F 0B BC */	b setPos__8daNpcT_cF4cXyz
/* 80B59D50  38 00 00 00 */	li r0, 0
/* 80B59D54  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80B59D58  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B59D5C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80B59D60  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80B59D64  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B59D68  B0 1B 04 B6 */	sth r0, 0x4b6(r27)
/* 80B59D6C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B59D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B59D74  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80B59D78  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80B59D7C  7F 63 DB 78 */	mr r3, r27
/* 80B59D80  38 81 00 14 */	addi r4, r1, 0x14
/* 80B59D84  4B 5F 0C 18 */	b setAngle__8daNpcT_cF5csXyz
/* 80B59D88  80 7B 15 34 */	lwz r3, 0x1534(r27)
/* 80B59D8C  3C 03 00 01 */	addis r0, r3, 1
/* 80B59D90  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B59D94  41 82 00 28 */	beq lbl_80B59DBC
/* 80B59D98  7F C3 F3 78 */	mr r3, r30
/* 80B59D9C  4B 4D 2E 40 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B59DA0  7C 7E 1B 78 */	mr r30, r3
/* 80B59DA4  80 7B 15 34 */	lwz r3, 0x1534(r27)
/* 80B59DA8  4B 4C 75 B0 */	b fpcEx_SearchByID__FUi
/* 80B59DAC  7C 03 F0 40 */	cmplw r3, r30
/* 80B59DB0  40 82 00 0C */	bne lbl_80B59DBC
/* 80B59DB4  38 60 00 05 */	li r3, 5
/* 80B59DB8  4B 4D 59 E4 */	b dComIfG_TimerDeleteRequest__Fi
lbl_80B59DBC:
/* 80B59DBC  38 60 00 0C */	li r3, 0xc
/* 80B59DC0  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B59DC4  7C 04 07 74 */	extsb r4, r0
/* 80B59DC8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80B59DCC  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80B59DD0  4B 5F 27 30 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B59DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80B59DD8  41 82 00 4C */	beq lbl_80B59E24
/* 80B59DDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B59DE0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B59DE4  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80B59DE8  7F 64 DB 78 */	mr r4, r27
/* 80B59DEC  4B 4C 09 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B59DF0  7C 60 1B 78 */	mr r0, r3
/* 80B59DF4  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B59DF8  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80B59DFC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B59E00  7C 05 07 34 */	extsh r5, r0
/* 80B59E04  38 C0 00 00 */	li r6, 0
/* 80B59E08  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B59E0C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B59E10  7D 89 03 A6 */	mtctr r12
/* 80B59E14  4E 80 04 21 */	bctrl 
/* 80B59E18  7F E3 FB 78 */	mr r3, r31
/* 80B59E1C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B59E20  4B 4E E5 A4 */	b setGoal__16dEvent_manager_cFP4cXyz
lbl_80B59E24:
/* 80B59E24  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B59E28  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B59E2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B59E30  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B59E34  4B 75 5A 50 */	b subBgmStop__8Z2SeqMgrFv
/* 80B59E38  3C 60 80 B6 */	lis r3, lit_4392@ha
/* 80B59E3C  C0 03 D8 98 */	lfs f0, lit_4392@l(r3)
/* 80B59E40  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80B59E44  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80B59E48  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80B59E4C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80B59E50  48 00 01 1C */	b lbl_80B59F6C
lbl_80B59E54:
/* 80B59E54  38 60 00 56 */	li r3, 0x56
/* 80B59E58  4B 5F 2C 94 */	b daNpcT_onTmpBit__FUl
/* 80B59E5C  88 1B 15 7C */	lbz r0, 0x157c(r27)
/* 80B59E60  28 00 00 00 */	cmplwi r0, 0
/* 80B59E64  41 82 00 0C */	beq lbl_80B59E70
/* 80B59E68  38 60 00 56 */	li r3, 0x56
/* 80B59E6C  4B 5F 2C C0 */	b daNpcT_offTmpBit__FUl
lbl_80B59E70:
/* 80B59E70  38 00 01 FE */	li r0, 0x1fe
/* 80B59E74  90 1B 0A 7C */	stw r0, 0xa7c(r27)
/* 80B59E78  7F 63 DB 78 */	mr r3, r27
/* 80B59E7C  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80B59E80  38 A0 00 00 */	li r5, 0
/* 80B59E84  4B 5F 1D 6C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B59E88  48 00 00 E4 */	b lbl_80B59F6C
lbl_80B59E8C:
/* 80B59E8C  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 80B59E90  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B59E94  41 82 00 28 */	beq lbl_80B59EBC
/* 80B59E98  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 80B59E9C  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 80B59EA0  4B 5E B9 F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B59EA4  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80B59EA8  38 00 00 0F */	li r0, 0xf
/* 80B59EAC  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80B59EB0  3C 60 80 B6 */	lis r3, lit_4392@ha
/* 80B59EB4  C0 03 D8 98 */	lfs f0, lit_4392@l(r3)
/* 80B59EB8  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80B59EBC:
/* 80B59EBC  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B59EC0  2C 00 00 00 */	cmpwi r0, 0
/* 80B59EC4  41 82 00 28 */	beq lbl_80B59EEC
/* 80B59EC8  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80B59ECC  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B59ED0  4B 5E B9 C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B59ED4  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80B59ED8  38 00 00 00 */	li r0, 0
/* 80B59EDC  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80B59EE0  3C 60 80 B6 */	lis r3, lit_4392@ha
/* 80B59EE4  C0 03 D8 98 */	lfs f0, lit_4392@l(r3)
/* 80B59EE8  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B59EEC:
/* 80B59EEC  7F 63 DB 78 */	mr r3, r27
/* 80B59EF0  38 80 00 06 */	li r4, 6
/* 80B59EF4  4B FF A6 59 */	bl getOtherYkmP__11daNpc_ykM_cFi
/* 80B59EF8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B59EFC  D0 1B 04 A8 */	stfs f0, 0x4a8(r27)
/* 80B59F00  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B59F04  D0 1B 04 AC */	stfs f0, 0x4ac(r27)
/* 80B59F08  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B59F0C  D0 1B 04 B0 */	stfs f0, 0x4b0(r27)
/* 80B59F10  38 00 00 00 */	li r0, 0
/* 80B59F14  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80B59F18  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B59F1C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80B59F20  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80B59F24  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B59F28  B0 1B 04 B6 */	sth r0, 0x4b6(r27)
/* 80B59F2C  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 80B59F30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B59F34  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80B59F38  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B59F3C  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 80B59F40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B59F44  7F 63 DB 78 */	mr r3, r27
/* 80B59F48  38 81 00 24 */	addi r4, r1, 0x24
/* 80B59F4C  4B 5F 09 BC */	b setPos__8daNpcT_cF4cXyz
/* 80B59F50  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B59F54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B59F58  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80B59F5C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80B59F60  7F 63 DB 78 */	mr r3, r27
/* 80B59F64  38 81 00 0C */	addi r4, r1, 0xc
/* 80B59F68  4B 5F 0A 34 */	b setAngle__8daNpcT_cF5csXyz
lbl_80B59F6C:
/* 80B59F6C  2C 1C 00 03 */	cmpwi r28, 3
/* 80B59F70  41 82 00 80 */	beq lbl_80B59FF0
/* 80B59F74  40 80 00 1C */	bge lbl_80B59F90
/* 80B59F78  2C 1C 00 01 */	cmpwi r28, 1
/* 80B59F7C  41 82 00 50 */	beq lbl_80B59FCC
/* 80B59F80  40 80 00 68 */	bge lbl_80B59FE8
/* 80B59F84  2C 1C 00 00 */	cmpwi r28, 0
/* 80B59F88  40 80 00 18 */	bge lbl_80B59FA0
/* 80B59F8C  48 00 01 10 */	b lbl_80B5A09C
lbl_80B59F90:
/* 80B59F90  2C 1C 00 05 */	cmpwi r28, 5
/* 80B59F94  41 82 00 C8 */	beq lbl_80B5A05C
/* 80B59F98  40 80 01 04 */	bge lbl_80B5A09C
/* 80B59F9C  48 00 00 B8 */	b lbl_80B5A054
lbl_80B59FA0:
/* 80B59FA0  7F 63 DB 78 */	mr r3, r27
/* 80B59FA4  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80B59FA8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B59FAC  7D 89 03 A6 */	mtctr r12
/* 80B59FB0  4E 80 04 21 */	bctrl 
/* 80B59FB4  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 80B59FB8  48 00 33 C1 */	bl func_80B5D378
/* 80B59FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80B59FC0  40 82 00 DC */	bne lbl_80B5A09C
/* 80B59FC4  3B A0 00 01 */	li r29, 1
/* 80B59FC8  48 00 00 D4 */	b lbl_80B5A09C
lbl_80B59FCC:
/* 80B59FCC  7F 63 DB 78 */	mr r3, r27
/* 80B59FD0  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80B59FD4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B59FD8  7D 89 03 A6 */	mtctr r12
/* 80B59FDC  4E 80 04 21 */	bctrl 
/* 80B59FE0  3B A0 00 01 */	li r29, 1
/* 80B59FE4  48 00 00 B8 */	b lbl_80B5A09C
lbl_80B59FE8:
/* 80B59FE8  3B A0 00 01 */	li r29, 1
/* 80B59FEC  48 00 00 B0 */	b lbl_80B5A09C
lbl_80B59FF0:
/* 80B59FF0  7F 63 DB 78 */	mr r3, r27
/* 80B59FF4  38 80 00 00 */	li r4, 0
/* 80B59FF8  38 A0 00 00 */	li r5, 0
/* 80B59FFC  38 C0 00 00 */	li r6, 0
/* 80B5A000  38 E0 00 00 */	li r7, 0
/* 80B5A004  4B 5F 1C 74 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B5A008  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A00C  41 82 00 90 */	beq lbl_80B5A09C
/* 80B5A010  38 7B 09 74 */	addi r3, r27, 0x974
/* 80B5A014  38 81 00 08 */	addi r4, r1, 8
/* 80B5A018  4B 6F 05 10 */	b getEventId__10dMsgFlow_cFPi
/* 80B5A01C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B5A020  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B5A024  41 82 00 08 */	beq lbl_80B5A02C
/* 80B5A028  48 00 00 18 */	b lbl_80B5A040
lbl_80B5A02C:
/* 80B5A02C  38 00 00 07 */	li r0, 7
/* 80B5A030  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 80B5A034  7F 63 DB 78 */	mr r3, r27
/* 80B5A038  4B 5F 01 EC */	b evtChange__8daNpcT_cFv
/* 80B5A03C  48 00 00 60 */	b lbl_80B5A09C
lbl_80B5A040:
/* 80B5A040  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80B5A044  28 00 00 01 */	cmplwi r0, 1
/* 80B5A048  40 82 00 54 */	bne lbl_80B5A09C
/* 80B5A04C  3B A0 00 01 */	li r29, 1
/* 80B5A050  48 00 00 4C */	b lbl_80B5A09C
lbl_80B5A054:
/* 80B5A054  3B A0 00 01 */	li r29, 1
/* 80B5A058  48 00 00 44 */	b lbl_80B5A09C
lbl_80B5A05C:
/* 80B5A05C  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5A060  2C 00 00 01 */	cmpwi r0, 1
/* 80B5A064  41 82 00 2C */	beq lbl_80B5A090
/* 80B5A068  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B5A06C  4B 5E B6 90 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5A070  38 00 00 00 */	li r0, 0
/* 80B5A074  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B5A078  3C 60 80 B6 */	lis r3, lit_4392@ha
/* 80B5A07C  C0 03 D8 98 */	lfs f0, lit_4392@l(r3)
/* 80B5A080  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B5A084  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5A088  38 00 00 01 */	li r0, 1
/* 80B5A08C  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B5A090:
/* 80B5A090  38 00 00 00 */	li r0, 0
/* 80B5A094  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5A098  3B A0 00 01 */	li r29, 1
lbl_80B5A09C:
/* 80B5A09C  7F A3 EB 78 */	mr r3, r29
/* 80B5A0A0  39 61 00 70 */	addi r11, r1, 0x70
/* 80B5A0A4  4B 80 81 74 */	b _restgpr_25
/* 80B5A0A8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B5A0AC  7C 08 03 A6 */	mtlr r0
/* 80B5A0B0  38 21 00 70 */	addi r1, r1, 0x70
/* 80B5A0B4  4E 80 00 20 */	blr 
