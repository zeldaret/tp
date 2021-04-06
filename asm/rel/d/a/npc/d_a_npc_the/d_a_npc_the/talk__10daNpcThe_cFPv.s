lbl_80AF8CC4:
/* 80AF8CC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF8CC8  7C 08 02 A6 */	mflr r0
/* 80AF8CCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF8CD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF8CD4  4B 86 95 05 */	bl _savegpr_28
/* 80AF8CD8  7C 7D 1B 78 */	mr r29, r3
/* 80AF8CDC  3B E0 00 00 */	li r31, 0
/* 80AF8CE0  3B C0 00 00 */	li r30, 0
/* 80AF8CE4  A0 03 0E 1A */	lhz r0, 0xe1a(r3)
/* 80AF8CE8  2C 00 00 02 */	cmpwi r0, 2
/* 80AF8CEC  41 82 00 40 */	beq lbl_80AF8D2C
/* 80AF8CF0  40 80 04 20 */	bge lbl_80AF9110
/* 80AF8CF4  2C 00 00 00 */	cmpwi r0, 0
/* 80AF8CF8  40 80 00 0C */	bge lbl_80AF8D04
/* 80AF8CFC  48 00 04 14 */	b lbl_80AF9110
/* 80AF8D00  48 00 04 10 */	b lbl_80AF9110
lbl_80AF8D04:
/* 80AF8D04  80 9D 0E 14 */	lwz r4, 0xe14(r29)
/* 80AF8D08  38 A0 00 00 */	li r5, 0
/* 80AF8D0C  4B 65 B0 11 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AF8D10  38 00 00 00 */	li r0, 0
/* 80AF8D14  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80AF8D18  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80AF8D1C  98 1D 0E 1C */	stb r0, 0xe1c(r29)
/* 80AF8D20  38 00 00 02 */	li r0, 2
/* 80AF8D24  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80AF8D28  48 00 03 E8 */	b lbl_80AF9110
lbl_80AF8D2C:
/* 80AF8D2C  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80AF8D30  28 00 00 00 */	cmplwi r0, 0
/* 80AF8D34  40 82 00 60 */	bne lbl_80AF8D94
/* 80AF8D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF8D3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF8D40  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80AF8D44  3C 80 80 B0 */	lis r4, d_a_npc_the__stringBase0@ha /* 0x80AFC158@ha */
/* 80AF8D48  38 84 C1 58 */	addi r4, r4, d_a_npc_the__stringBase0@l /* 0x80AFC158@l */
/* 80AF8D4C  38 84 00 54 */	addi r4, r4, 0x54
/* 80AF8D50  4B 86 FC 45 */	bl strcmp
/* 80AF8D54  2C 03 00 00 */	cmpwi r3, 0
/* 80AF8D58  40 82 00 30 */	bne lbl_80AF8D88
/* 80AF8D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF8D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF8D64  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80AF8D68  2C 00 00 05 */	cmpwi r0, 5
/* 80AF8D6C  40 82 00 1C */	bne lbl_80AF8D88
/* 80AF8D70  38 60 00 00 */	li r3, 0
/* 80AF8D74  4B 53 3C 09 */	bl getLayerNo__14dComIfG_play_cFi
/* 80AF8D78  2C 03 00 02 */	cmpwi r3, 2
/* 80AF8D7C  40 82 00 0C */	bne lbl_80AF8D88
/* 80AF8D80  38 00 00 01 */	li r0, 1
/* 80AF8D84  48 00 00 08 */	b lbl_80AF8D8C
lbl_80AF8D88:
/* 80AF8D88  38 00 00 00 */	li r0, 0
lbl_80AF8D8C:
/* 80AF8D8C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AF8D90  41 82 00 0C */	beq lbl_80AF8D9C
lbl_80AF8D94:
/* 80AF8D94  3B C0 00 01 */	li r30, 1
/* 80AF8D98  48 00 01 A8 */	b lbl_80AF8F40
lbl_80AF8D9C:
/* 80AF8D9C  88 1D 0E 1E */	lbz r0, 0xe1e(r29)
/* 80AF8DA0  28 00 00 02 */	cmplwi r0, 2
/* 80AF8DA4  40 82 00 C4 */	bne lbl_80AF8E68
/* 80AF8DA8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF8DAC  83 83 00 08 */	lwz r28, 8(r3)
/* 80AF8DB0  7F A3 EB 78 */	mr r3, r29
/* 80AF8DB4  3C 80 80 B0 */	lis r4, l_bckGetParamList@ha /* 0x80AFC200@ha */
/* 80AF8DB8  38 A4 C2 00 */	addi r5, r4, l_bckGetParamList@l /* 0x80AFC200@l */
/* 80AF8DBC  80 05 00 C4 */	lwz r0, 0xc4(r5)
/* 80AF8DC0  54 00 10 3A */	slwi r0, r0, 2
/* 80AF8DC4  3C 80 80 B0 */	lis r4, l_resNames@ha /* 0x80AFC380@ha */
/* 80AF8DC8  38 84 C3 80 */	addi r4, r4, l_resNames@l /* 0x80AFC380@l */
/* 80AF8DCC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF8DD0  80 A5 00 C0 */	lwz r5, 0xc0(r5)
/* 80AF8DD4  4B 65 9D 59 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AF8DD8  7C 1C 18 40 */	cmplw r28, r3
/* 80AF8DDC  41 82 00 74 */	beq lbl_80AF8E50
/* 80AF8DE0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF8DE4  83 83 00 08 */	lwz r28, 8(r3)
/* 80AF8DE8  7F A3 EB 78 */	mr r3, r29
/* 80AF8DEC  3C 80 80 B0 */	lis r4, l_bckGetParamList@ha /* 0x80AFC200@ha */
/* 80AF8DF0  38 A4 C2 00 */	addi r5, r4, l_bckGetParamList@l /* 0x80AFC200@l */
/* 80AF8DF4  80 05 00 CC */	lwz r0, 0xcc(r5)
/* 80AF8DF8  54 00 10 3A */	slwi r0, r0, 2
/* 80AF8DFC  3C 80 80 B0 */	lis r4, l_resNames@ha /* 0x80AFC380@ha */
/* 80AF8E00  38 84 C3 80 */	addi r4, r4, l_resNames@l /* 0x80AFC380@l */
/* 80AF8E04  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF8E08  80 A5 00 C8 */	lwz r5, 0xc8(r5)
/* 80AF8E0C  4B 65 9D 21 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AF8E10  7C 1C 18 40 */	cmplw r28, r3
/* 80AF8E14  41 82 00 3C */	beq lbl_80AF8E50
/* 80AF8E18  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF8E1C  83 83 00 08 */	lwz r28, 8(r3)
/* 80AF8E20  7F A3 EB 78 */	mr r3, r29
/* 80AF8E24  3C 80 80 B0 */	lis r4, l_bckGetParamList@ha /* 0x80AFC200@ha */
/* 80AF8E28  38 A4 C2 00 */	addi r5, r4, l_bckGetParamList@l /* 0x80AFC200@l */
/* 80AF8E2C  80 05 00 D4 */	lwz r0, 0xd4(r5)
/* 80AF8E30  54 00 10 3A */	slwi r0, r0, 2
/* 80AF8E34  3C 80 80 B0 */	lis r4, l_resNames@ha /* 0x80AFC380@ha */
/* 80AF8E38  38 84 C3 80 */	addi r4, r4, l_resNames@l /* 0x80AFC380@l */
/* 80AF8E3C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF8E40  80 A5 00 D0 */	lwz r5, 0xd0(r5)
/* 80AF8E44  4B 65 9C E9 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AF8E48  7C 1C 18 40 */	cmplw r28, r3
/* 80AF8E4C  40 82 00 1C */	bne lbl_80AF8E68
lbl_80AF8E50:
/* 80AF8E50  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80AF8E54  2C 00 00 00 */	cmpwi r0, 0
/* 80AF8E58  41 82 00 38 */	beq lbl_80AF8E90
/* 80AF8E5C  38 00 00 00 */	li r0, 0
/* 80AF8E60  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80AF8E64  48 00 00 2C */	b lbl_80AF8E90
lbl_80AF8E68:
/* 80AF8E68  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80AF8E6C  2C 00 00 03 */	cmpwi r0, 3
/* 80AF8E70  41 82 00 0C */	beq lbl_80AF8E7C
/* 80AF8E74  38 00 00 03 */	li r0, 3
/* 80AF8E78  B0 1D 0E 18 */	sth r0, 0xe18(r29)
lbl_80AF8E7C:
/* 80AF8E7C  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AF8E80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF8E84  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF8E88  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AF8E8C  4B 65 78 31 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80AF8E90:
/* 80AF8E90  88 1D 0E 1E */	lbz r0, 0xe1e(r29)
/* 80AF8E94  28 00 00 02 */	cmplwi r0, 2
/* 80AF8E98  41 82 00 28 */	beq lbl_80AF8EC0
/* 80AF8E9C  7F A3 EB 78 */	mr r3, r29
/* 80AF8EA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF8EA4  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF8EA8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AF8EAC  4B 52 18 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AF8EB0  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80AF8EB4  7C 60 07 34 */	extsh r0, r3
/* 80AF8EB8  7C 04 00 00 */	cmpw r4, r0
/* 80AF8EBC  40 82 00 0C */	bne lbl_80AF8EC8
lbl_80AF8EC0:
/* 80AF8EC0  3B C0 00 01 */	li r30, 1
/* 80AF8EC4  48 00 00 7C */	b lbl_80AF8F40
lbl_80AF8EC8:
/* 80AF8EC8  7F A3 EB 78 */	mr r3, r29
/* 80AF8ECC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AF8ED0  4B 52 18 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AF8ED4  7C 64 1B 78 */	mr r4, r3
/* 80AF8ED8  7F A3 EB 78 */	mr r3, r29
/* 80AF8EDC  38 A0 FF FF */	li r5, -1
/* 80AF8EE0  38 C0 FF FF */	li r6, -1
/* 80AF8EE4  38 E0 00 0F */	li r7, 0xf
/* 80AF8EE8  4B 65 B1 BD */	bl step__8daNpcF_cFsiii
/* 80AF8EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF8EF0  41 82 00 50 */	beq lbl_80AF8F40
/* 80AF8EF4  7F A3 EB 78 */	mr r3, r29
/* 80AF8EF8  38 80 00 0D */	li r4, 0xd
/* 80AF8EFC  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF8F00  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF8F04  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AF8F08  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AF8F0C  7D 89 03 A6 */	mtctr r12
/* 80AF8F10  4E 80 04 21 */	bctrl 
/* 80AF8F14  7F A3 EB 78 */	mr r3, r29
/* 80AF8F18  38 80 00 00 */	li r4, 0
/* 80AF8F1C  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF8F20  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF8F24  38 A0 00 00 */	li r5, 0
/* 80AF8F28  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AF8F2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF8F30  7D 89 03 A6 */	mtctr r12
/* 80AF8F34  4E 80 04 21 */	bctrl 
/* 80AF8F38  38 00 00 00 */	li r0, 0
/* 80AF8F3C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80AF8F40:
/* 80AF8F40  2C 1E 00 00 */	cmpwi r30, 0
/* 80AF8F44  41 82 01 68 */	beq lbl_80AF90AC
/* 80AF8F48  3C 60 80 B0 */	lis r3, lit_4840@ha /* 0x80AFC124@ha */
/* 80AF8F4C  38 83 C1 24 */	addi r4, r3, lit_4840@l /* 0x80AFC124@l */
/* 80AF8F50  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF8F54  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF8F58  90 61 00 0C */	stw r3, 0xc(r1)
/* 80AF8F5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF8F60  80 1D 0E 14 */	lwz r0, 0xe14(r29)
/* 80AF8F64  2C 00 04 30 */	cmpwi r0, 0x430
/* 80AF8F68  40 82 00 0C */	bne lbl_80AF8F74
/* 80AF8F6C  38 00 13 EF */	li r0, 0x13ef
/* 80AF8F70  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80AF8F74:
/* 80AF8F74  7F A3 EB 78 */	mr r3, r29
/* 80AF8F78  38 81 00 0C */	addi r4, r1, 0xc
/* 80AF8F7C  38 A0 00 01 */	li r5, 1
/* 80AF8F80  38 C0 00 00 */	li r6, 0
/* 80AF8F84  4B 65 AE 01 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AF8F88  2C 03 00 00 */	cmpwi r3, 0
/* 80AF8F8C  41 82 01 20 */	beq lbl_80AF90AC
/* 80AF8F90  88 1D 0A 1E */	lbz r0, 0xa1e(r29)
/* 80AF8F94  28 00 00 01 */	cmplwi r0, 1
/* 80AF8F98  41 82 00 40 */	beq lbl_80AF8FD8
/* 80AF8F9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF8FA0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF8FA4  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 80AF8FA8  38 00 00 03 */	li r0, 3
/* 80AF8FAC  B0 05 06 04 */	sth r0, 0x604(r5)
/* 80AF8FB0  38 60 00 00 */	li r3, 0
/* 80AF8FB4  90 65 06 0C */	stw r3, 0x60c(r5)
/* 80AF8FB8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AF8FBC  38 00 00 06 */	li r0, 6
/* 80AF8FC0  90 04 06 14 */	stw r0, 0x614(r4)
/* 80AF8FC4  90 64 06 0C */	stw r3, 0x60c(r4)
/* 80AF8FC8  38 00 00 01 */	li r0, 1
/* 80AF8FCC  90 04 06 10 */	stw r0, 0x610(r4)
/* 80AF8FD0  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 80AF8FD4  48 00 00 D8 */	b lbl_80AF90AC
lbl_80AF8FD8:
/* 80AF8FD8  80 1D 0E 14 */	lwz r0, 0xe14(r29)
/* 80AF8FDC  2C 00 04 30 */	cmpwi r0, 0x430
/* 80AF8FE0  40 82 00 20 */	bne lbl_80AF9000
/* 80AF8FE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF8FE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF8FEC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AF8FF0  38 00 00 02 */	li r0, 2
/* 80AF8FF4  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80AF8FF8  38 00 00 01 */	li r0, 1
/* 80AF8FFC  90 03 06 14 */	stw r0, 0x614(r3)
lbl_80AF9000:
/* 80AF9000  38 00 00 00 */	li r0, 0
/* 80AF9004  90 01 00 08 */	stw r0, 8(r1)
/* 80AF9008  38 7D 09 F8 */	addi r3, r29, 0x9f8
/* 80AF900C  38 81 00 08 */	addi r4, r1, 8
/* 80AF9010  4B 75 15 19 */	bl getEventId__10dMsgFlow_cFPi
/* 80AF9014  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80AF9018  28 00 00 01 */	cmplwi r0, 1
/* 80AF901C  40 82 00 8C */	bne lbl_80AF90A8
/* 80AF9020  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80AF9024  80 81 00 08 */	lwz r4, 8(r1)
/* 80AF9028  38 A0 00 00 */	li r5, 0
/* 80AF902C  38 C0 FF FF */	li r6, -1
/* 80AF9030  38 E0 FF FF */	li r7, -1
/* 80AF9034  39 00 00 00 */	li r8, 0
/* 80AF9038  39 20 00 00 */	li r9, 0
/* 80AF903C  4B 52 2B AD */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80AF9040  90 7D 0E 00 */	stw r3, 0xe00(r29)
/* 80AF9044  80 7D 0E 00 */	lwz r3, 0xe00(r29)
/* 80AF9048  3C 03 00 01 */	addis r0, r3, 1
/* 80AF904C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AF9050  41 82 00 58 */	beq lbl_80AF90A8
/* 80AF9054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF9058  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF905C  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80AF9060  7F A4 EB 78 */	mr r4, r29
/* 80AF9064  3C A0 80 B0 */	lis r5, d_a_npc_the__stringBase0@ha /* 0x80AFC158@ha */
/* 80AF9068  38 A5 C1 58 */	addi r5, r5, d_a_npc_the__stringBase0@l /* 0x80AFC158@l */
/* 80AF906C  38 A5 00 5C */	addi r5, r5, 0x5c
/* 80AF9070  38 C0 00 FF */	li r6, 0xff
/* 80AF9074  4B 54 E6 E5 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80AF9078  7C 7C 1B 78 */	mr r28, r3
/* 80AF907C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80AF9080  7F A4 EB 78 */	mr r4, r29
/* 80AF9084  4B 54 94 95 */	bl reset__14dEvt_control_cFPv
/* 80AF9088  7F A3 EB 78 */	mr r3, r29
/* 80AF908C  7F 84 E3 78 */	mr r4, r28
/* 80AF9090  38 A0 00 01 */	li r5, 1
/* 80AF9094  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80AF9098  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80AF909C  4B 52 25 49 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80AF90A0  38 00 00 01 */	li r0, 1
/* 80AF90A4  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_80AF90A8:
/* 80AF90A8  3B E0 00 01 */	li r31, 1
lbl_80AF90AC:
/* 80AF90AC  2C 1F 00 00 */	cmpwi r31, 0
/* 80AF90B0  41 82 00 60 */	beq lbl_80AF9110
/* 80AF90B4  38 00 00 03 */	li r0, 3
/* 80AF90B8  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80AF90BC  80 1D 0E 14 */	lwz r0, 0xe14(r29)
/* 80AF90C0  2C 00 04 30 */	cmpwi r0, 0x430
/* 80AF90C4  40 82 00 28 */	bne lbl_80AF90EC
/* 80AF90C8  88 1D 0E 1D */	lbz r0, 0xe1d(r29)
/* 80AF90CC  28 00 00 00 */	cmplwi r0, 0
/* 80AF90D0  40 82 00 14 */	bne lbl_80AF90E4
/* 80AF90D4  38 00 00 01 */	li r0, 1
/* 80AF90D8  98 1D 0E 1D */	stb r0, 0xe1d(r29)
/* 80AF90DC  98 1D 0E 1C */	stb r0, 0xe1c(r29)
/* 80AF90E0  48 00 00 0C */	b lbl_80AF90EC
lbl_80AF90E4:
/* 80AF90E4  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80AF90E8  90 1D 0E 14 */	stw r0, 0xe14(r29)
lbl_80AF90EC:
/* 80AF90EC  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80AF90F0  28 00 00 00 */	cmplwi r0, 0
/* 80AF90F4  40 82 00 14 */	bne lbl_80AF9108
/* 80AF90F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF90FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF9100  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AF9104  4B 54 93 65 */	bl reset__14dEvt_control_cFv
lbl_80AF9108:
/* 80AF9108  38 00 00 00 */	li r0, 0
/* 80AF910C  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_80AF9110:
/* 80AF9110  7F E3 FB 78 */	mr r3, r31
/* 80AF9114  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF9118  4B 86 91 0D */	bl _restgpr_28
/* 80AF911C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF9120  7C 08 03 A6 */	mtlr r0
/* 80AF9124  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF9128  4E 80 00 20 */	blr 
