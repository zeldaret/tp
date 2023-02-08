lbl_80A09A24:
/* 80A09A24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A09A28  7C 08 02 A6 */	mflr r0
/* 80A09A2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A09A30  39 61 00 40 */	addi r11, r1, 0x40
/* 80A09A34  4B 95 87 A5 */	bl _savegpr_28
/* 80A09A38  7C 7D 1B 78 */	mr r29, r3
/* 80A09A3C  3C 80 80 A1 */	lis r4, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A09A40  3B E4 C2 70 */	addi r31, r4, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A09A44  3B C0 00 00 */	li r30, 0
/* 80A09A48  A0 03 0D E6 */	lhz r0, 0xde6(r3)
/* 80A09A4C  2C 00 00 02 */	cmpwi r0, 2
/* 80A09A50  41 82 00 58 */	beq lbl_80A09AA8
/* 80A09A54  40 80 00 10 */	bge lbl_80A09A64
/* 80A09A58  2C 00 00 00 */	cmpwi r0, 0
/* 80A09A5C  41 82 00 14 */	beq lbl_80A09A70
/* 80A09A60  48 00 04 D0 */	b lbl_80A09F30
lbl_80A09A64:
/* 80A09A64  2C 00 00 04 */	cmpwi r0, 4
/* 80A09A68  40 80 04 C8 */	bge lbl_80A09F30
/* 80A09A6C  48 00 04 88 */	b lbl_80A09EF4
lbl_80A09A70:
/* 80A09A70  A8 9D 0D E0 */	lha r4, 0xde0(r29)
/* 80A09A74  38 A0 00 00 */	li r5, 0
/* 80A09A78  4B 74 A2 A5 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A09A7C  38 00 00 00 */	li r0, 0
/* 80A09A80  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A09A84  90 1D 09 50 */	stw r0, 0x950(r29)
/* 80A09A88  A8 1D 0D E4 */	lha r0, 0xde4(r29)
/* 80A09A8C  2C 00 00 03 */	cmpwi r0, 3
/* 80A09A90  41 82 00 0C */	beq lbl_80A09A9C
/* 80A09A94  38 00 00 03 */	li r0, 3
/* 80A09A98  B0 1D 0D E4 */	sth r0, 0xde4(r29)
lbl_80A09A9C:
/* 80A09A9C  38 00 00 02 */	li r0, 2
/* 80A09AA0  B0 1D 0D E6 */	sth r0, 0xde6(r29)
/* 80A09AA4  48 00 04 8C */	b lbl_80A09F30
lbl_80A09AA8:
/* 80A09AA8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A09AAC  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A09AB0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A09AB4  4B 61 0C 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A09AB8  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80A09ABC  7C 60 07 34 */	extsh r0, r3
/* 80A09AC0  7C 04 00 00 */	cmpw r4, r0
/* 80A09AC4  40 82 02 B0 */	bne lbl_80A09D74
/* 80A09AC8  7F A3 EB 78 */	mr r3, r29
/* 80A09ACC  38 80 00 00 */	li r4, 0
/* 80A09AD0  38 A0 00 01 */	li r5, 1
/* 80A09AD4  38 C0 00 00 */	li r6, 0
/* 80A09AD8  4B 74 A2 AD */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A09ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80A09AE0  41 82 01 50 */	beq lbl_80A09C30
/* 80A09AE4  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80A09AE8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A09AEC  4B 74 6B D1 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A09AF0  38 00 00 00 */	li r0, 0
/* 80A09AF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A09AF8  38 7D 09 F8 */	addi r3, r29, 0x9f8
/* 80A09AFC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A09B00  4B 84 0A 29 */	bl getEventId__10dMsgFlow_cFPi
/* 80A09B04  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A09B08  28 00 00 01 */	cmplwi r0, 1
/* 80A09B0C  40 82 00 8C */	bne lbl_80A09B98
/* 80A09B10  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A09B14  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A09B18  38 A0 00 00 */	li r5, 0
/* 80A09B1C  38 C0 FF FF */	li r6, -1
/* 80A09B20  38 E0 FF FF */	li r7, -1
/* 80A09B24  39 00 00 00 */	li r8, 0
/* 80A09B28  39 20 00 00 */	li r9, 0
/* 80A09B2C  4B 61 20 BD */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80A09B30  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A09B34  80 7D 0D D4 */	lwz r3, 0xdd4(r29)
/* 80A09B38  3C 03 00 01 */	addis r0, r3, 1
/* 80A09B3C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A09B40  41 82 00 58 */	beq lbl_80A09B98
/* 80A09B44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A09B48  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A09B4C  38 7C 4F F8 */	addi r3, r28, 0x4ff8
/* 80A09B50  7F A4 EB 78 */	mr r4, r29
/* 80A09B54  3C A0 80 A1 */	lis r5, d_a_npc_impal__stringBase0@ha /* 0x80A0C4C8@ha */
/* 80A09B58  38 A5 C4 C8 */	addi r5, r5, d_a_npc_impal__stringBase0@l /* 0x80A0C4C8@l */
/* 80A09B5C  38 A5 00 4C */	addi r5, r5, 0x4c
/* 80A09B60  38 C0 00 FF */	li r6, 0xff
/* 80A09B64  4B 63 DB F5 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80A09B68  7C 7E 1B 78 */	mr r30, r3
/* 80A09B6C  38 7C 4E C8 */	addi r3, r28, 0x4ec8
/* 80A09B70  7F A4 EB 78 */	mr r4, r29
/* 80A09B74  4B 63 89 A5 */	bl reset__14dEvt_control_cFPv
/* 80A09B78  7F A3 EB 78 */	mr r3, r29
/* 80A09B7C  7F C4 F3 78 */	mr r4, r30
/* 80A09B80  38 A0 00 01 */	li r5, 1
/* 80A09B84  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A09B88  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A09B8C  4B 61 1A 59 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80A09B90  38 00 00 01 */	li r0, 1
/* 80A09B94  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_80A09B98:
/* 80A09B98  3C 60 80 A1 */	lis r3, lit_4917@ha /* 0x80A0C794@ha */
/* 80A09B9C  38 83 C7 94 */	addi r4, r3, lit_4917@l /* 0x80A0C794@l */
/* 80A09BA0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A09BA4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A09BA8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A09BAC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A09BB0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A09BB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A09BB8  38 00 00 03 */	li r0, 3
/* 80A09BBC  B0 1D 0D E6 */	sth r0, 0xde6(r29)
/* 80A09BC0  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80A09BC4  4B 95 84 55 */	bl __ptmf_test
/* 80A09BC8  2C 03 00 00 */	cmpwi r3, 0
/* 80A09BCC  41 82 00 18 */	beq lbl_80A09BE4
/* 80A09BD0  7F A3 EB 78 */	mr r3, r29
/* 80A09BD4  38 80 00 00 */	li r4, 0
/* 80A09BD8  39 9D 0D C0 */	addi r12, r29, 0xdc0
/* 80A09BDC  4B 95 84 A9 */	bl __ptmf_scall
/* 80A09BE0  60 00 00 00 */	nop 
lbl_80A09BE4:
/* 80A09BE4  38 00 00 00 */	li r0, 0
/* 80A09BE8  B0 1D 0D E6 */	sth r0, 0xde6(r29)
/* 80A09BEC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A09BF0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A09BF4  90 7D 0D C0 */	stw r3, 0xdc0(r29)
/* 80A09BF8  90 1D 0D C4 */	stw r0, 0xdc4(r29)
/* 80A09BFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A09C00  90 1D 0D C8 */	stw r0, 0xdc8(r29)
/* 80A09C04  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80A09C08  4B 95 84 11 */	bl __ptmf_test
/* 80A09C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80A09C10  41 82 00 18 */	beq lbl_80A09C28
/* 80A09C14  7F A3 EB 78 */	mr r3, r29
/* 80A09C18  38 80 00 00 */	li r4, 0
/* 80A09C1C  39 9D 0D C0 */	addi r12, r29, 0xdc0
/* 80A09C20  4B 95 84 65 */	bl __ptmf_scall
/* 80A09C24  60 00 00 00 */	nop 
lbl_80A09C28:
/* 80A09C28  3B C0 00 01 */	li r30, 1
/* 80A09C2C  48 00 03 04 */	b lbl_80A09F30
lbl_80A09C30:
/* 80A09C30  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80A09C34  7F A3 EB 78 */	mr r3, r29
/* 80A09C38  38 81 00 0C */	addi r4, r1, 0xc
/* 80A09C3C  38 A1 00 08 */	addi r5, r1, 8
/* 80A09C40  7F A6 EB 78 */	mr r6, r29
/* 80A09C44  38 E0 00 00 */	li r7, 0
/* 80A09C48  4B 74 9A D1 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A09C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A09C50  41 82 00 44 */	beq lbl_80A09C94
/* 80A09C54  7F A3 EB 78 */	mr r3, r29
/* 80A09C58  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A09C5C  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09C60  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09C64  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09C68  7D 89 03 A6 */	mtctr r12
/* 80A09C6C  4E 80 04 21 */	bctrl 
/* 80A09C70  7F A3 EB 78 */	mr r3, r29
/* 80A09C74  80 81 00 08 */	lwz r4, 8(r1)
/* 80A09C78  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09C7C  38 A0 00 00 */	li r5, 0
/* 80A09C80  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09C84  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A09C88  7D 89 03 A6 */	mtctr r12
/* 80A09C8C  4E 80 04 21 */	bctrl 
/* 80A09C90  48 00 02 A0 */	b lbl_80A09F30
lbl_80A09C94:
/* 80A09C94  2C 1C 00 00 */	cmpwi r28, 0
/* 80A09C98  41 82 02 98 */	beq lbl_80A09F30
/* 80A09C9C  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80A09CA0  2C 00 00 00 */	cmpwi r0, 0
/* 80A09CA4  40 82 02 8C */	bne lbl_80A09F30
/* 80A09CA8  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80A09CAC  2C 00 00 02 */	cmpwi r0, 2
/* 80A09CB0  41 82 00 64 */	beq lbl_80A09D14
/* 80A09CB4  40 80 00 14 */	bge lbl_80A09CC8
/* 80A09CB8  2C 00 00 00 */	cmpwi r0, 0
/* 80A09CBC  41 82 00 18 */	beq lbl_80A09CD4
/* 80A09CC0  40 80 00 34 */	bge lbl_80A09CF4
/* 80A09CC4  48 00 00 90 */	b lbl_80A09D54
lbl_80A09CC8:
/* 80A09CC8  2C 00 00 04 */	cmpwi r0, 4
/* 80A09CCC  40 80 00 88 */	bge lbl_80A09D54
/* 80A09CD0  48 00 00 64 */	b lbl_80A09D34
lbl_80A09CD4:
/* 80A09CD4  7F A3 EB 78 */	mr r3, r29
/* 80A09CD8  38 80 00 07 */	li r4, 7
/* 80A09CDC  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09CE0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09CE4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09CE8  7D 89 03 A6 */	mtctr r12
/* 80A09CEC  4E 80 04 21 */	bctrl 
/* 80A09CF0  48 00 02 40 */	b lbl_80A09F30
lbl_80A09CF4:
/* 80A09CF4  7F A3 EB 78 */	mr r3, r29
/* 80A09CF8  38 80 00 04 */	li r4, 4
/* 80A09CFC  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09D00  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09D04  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09D08  7D 89 03 A6 */	mtctr r12
/* 80A09D0C  4E 80 04 21 */	bctrl 
/* 80A09D10  48 00 02 20 */	b lbl_80A09F30
lbl_80A09D14:
/* 80A09D14  7F A3 EB 78 */	mr r3, r29
/* 80A09D18  38 80 00 05 */	li r4, 5
/* 80A09D1C  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09D20  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09D24  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09D28  7D 89 03 A6 */	mtctr r12
/* 80A09D2C  4E 80 04 21 */	bctrl 
/* 80A09D30  48 00 02 00 */	b lbl_80A09F30
lbl_80A09D34:
/* 80A09D34  7F A3 EB 78 */	mr r3, r29
/* 80A09D38  38 80 00 06 */	li r4, 6
/* 80A09D3C  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09D40  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09D44  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09D48  7D 89 03 A6 */	mtctr r12
/* 80A09D4C  4E 80 04 21 */	bctrl 
/* 80A09D50  48 00 01 E0 */	b lbl_80A09F30
lbl_80A09D54:
/* 80A09D54  7F A3 EB 78 */	mr r3, r29
/* 80A09D58  38 80 00 07 */	li r4, 7
/* 80A09D5C  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09D60  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09D64  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09D68  7D 89 03 A6 */	mtctr r12
/* 80A09D6C  4E 80 04 21 */	bctrl 
/* 80A09D70  48 00 01 C0 */	b lbl_80A09F30
lbl_80A09D74:
/* 80A09D74  7F A3 EB 78 */	mr r3, r29
/* 80A09D78  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A09D7C  4B 61 09 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A09D80  7C 7C 1B 78 */	mr r28, r3
/* 80A09D84  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A09D88  2C 00 00 00 */	cmpwi r0, 0
/* 80A09D8C  40 82 00 D4 */	bne lbl_80A09E60
/* 80A09D90  C0 5F 02 20 */	lfs f2, 0x220(r31)
/* 80A09D94  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A09D98  7C 00 E0 50 */	subf r0, r0, r28
/* 80A09D9C  7C 00 07 34 */	extsh r0, r0
/* 80A09DA0  C8 3F 02 28 */	lfd f1, 0x228(r31)
/* 80A09DA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A09DA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A09DAC  3C 00 43 30 */	lis r0, 0x4330
/* 80A09DB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A09DB4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A09DB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A09DBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A09DC0  FC 00 02 10 */	fabs f0, f0
/* 80A09DC4  FC 00 00 18 */	frsp f0, f0
/* 80A09DC8  FC 00 00 1E */	fctiwz f0, f0
/* 80A09DCC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A09DD0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A09DD4  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A09DD8  40 81 00 40 */	ble lbl_80A09E18
/* 80A09DDC  7F A3 EB 78 */	mr r3, r29
/* 80A09DE0  38 80 00 07 */	li r4, 7
/* 80A09DE4  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09DE8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09DEC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09DF0  7D 89 03 A6 */	mtctr r12
/* 80A09DF4  4E 80 04 21 */	bctrl 
/* 80A09DF8  7F A3 EB 78 */	mr r3, r29
/* 80A09DFC  38 80 00 06 */	li r4, 6
/* 80A09E00  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09E04  38 A0 00 00 */	li r5, 0
/* 80A09E08  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09E0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A09E10  7D 89 03 A6 */	mtctr r12
/* 80A09E14  4E 80 04 21 */	bctrl 
lbl_80A09E18:
/* 80A09E18  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80A09E1C  38 00 00 00 */	li r0, 0
/* 80A09E20  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A09E24  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A09E28  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A09E2C  7C 03 00 00 */	cmpw r3, r0
/* 80A09E30  40 82 00 10 */	bne lbl_80A09E40
/* 80A09E34  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A09E38  38 03 00 01 */	addi r0, r3, 1
/* 80A09E3C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A09E40:
/* 80A09E40  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A09E44  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A09E48  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A09E4C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A09E50  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A09E54  38 03 00 01 */	addi r0, r3, 1
/* 80A09E58  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A09E5C  48 00 00 60 */	b lbl_80A09EBC
lbl_80A09E60:
/* 80A09E60  2C 00 00 01 */	cmpwi r0, 1
/* 80A09E64  40 82 00 58 */	bne lbl_80A09EBC
/* 80A09E68  7F A3 EB 78 */	mr r3, r29
/* 80A09E6C  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A09E70  C0 3F 02 24 */	lfs f1, 0x224(r31)
/* 80A09E74  38 A0 00 00 */	li r5, 0
/* 80A09E78  4B 74 A0 7D */	bl turn__8daNpcF_cFsfi
/* 80A09E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80A09E80  41 82 00 2C */	beq lbl_80A09EAC
/* 80A09E84  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A09E88  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A09E8C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A09E90  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A09E94  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A09E98  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A09E9C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A09EA0  38 03 00 01 */	addi r0, r3, 1
/* 80A09EA4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A09EA8  48 00 00 14 */	b lbl_80A09EBC
lbl_80A09EAC:
/* 80A09EAC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A09EB0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A09EB4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A09EB8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A09EBC:
/* 80A09EBC  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A09EC0  2C 00 00 01 */	cmpwi r0, 1
/* 80A09EC4  40 81 00 6C */	ble lbl_80A09F30
/* 80A09EC8  7F A3 EB 78 */	mr r3, r29
/* 80A09ECC  38 80 00 00 */	li r4, 0
/* 80A09ED0  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09ED4  38 A0 00 00 */	li r5, 0
/* 80A09ED8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A09EDC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A09EE0  7D 89 03 A6 */	mtctr r12
/* 80A09EE4  4E 80 04 21 */	bctrl 
/* 80A09EE8  38 00 00 00 */	li r0, 0
/* 80A09EEC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A09EF0  48 00 00 40 */	b lbl_80A09F30
lbl_80A09EF4:
/* 80A09EF4  A8 1D 0D E2 */	lha r0, 0xde2(r29)
/* 80A09EF8  B0 1D 0D E0 */	sth r0, 0xde0(r29)
/* 80A09EFC  38 80 00 07 */	li r4, 7
/* 80A09F00  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A09F04  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A09F08  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09F0C  7D 89 03 A6 */	mtctr r12
/* 80A09F10  4E 80 04 21 */	bctrl 
/* 80A09F14  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80A09F18  28 00 00 00 */	cmplwi r0, 0
/* 80A09F1C  40 82 00 14 */	bne lbl_80A09F30
/* 80A09F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A09F24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A09F28  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A09F2C  4B 63 85 3D */	bl reset__14dEvt_control_cFv
lbl_80A09F30:
/* 80A09F30  7F C3 F3 78 */	mr r3, r30
/* 80A09F34  39 61 00 40 */	addi r11, r1, 0x40
/* 80A09F38  4B 95 82 ED */	bl _restgpr_28
/* 80A09F3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A09F40  7C 08 03 A6 */	mtlr r0
/* 80A09F44  38 21 00 40 */	addi r1, r1, 0x40
/* 80A09F48  4E 80 00 20 */	blr 
