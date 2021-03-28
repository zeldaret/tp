lbl_809A8C78:
/* 809A8C78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809A8C7C  7C 08 02 A6 */	mflr r0
/* 809A8C80  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A8C84  39 61 00 20 */	addi r11, r1, 0x20
/* 809A8C88  4B 9B 95 54 */	b _savegpr_29
/* 809A8C8C  7C 7E 1B 78 */	mr r30, r3
/* 809A8C90  3C 80 80 9B */	lis r4, m__17daNpc_Doc_Param_c@ha
/* 809A8C94  3B E4 A3 1C */	addi r31, r4, m__17daNpc_Doc_Param_c@l
/* 809A8C98  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809A8C9C  2C 00 00 02 */	cmpwi r0, 2
/* 809A8CA0  41 82 00 B4 */	beq lbl_809A8D54
/* 809A8CA4  40 80 03 8C */	bge lbl_809A9030
/* 809A8CA8  2C 00 00 00 */	cmpwi r0, 0
/* 809A8CAC  40 80 00 0C */	bge lbl_809A8CB8
/* 809A8CB0  48 00 03 80 */	b lbl_809A9030
/* 809A8CB4  48 00 03 7C */	b lbl_809A9030
lbl_809A8CB8:
/* 809A8CB8  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809A8CBC  2C 00 00 00 */	cmpwi r0, 0
/* 809A8CC0  40 82 00 94 */	bne lbl_809A8D54
/* 809A8CC4  88 1E 0E 2E */	lbz r0, 0xe2e(r30)
/* 809A8CC8  28 00 00 81 */	cmplwi r0, 0x81
/* 809A8CCC  40 82 00 14 */	bne lbl_809A8CE0
/* 809A8CD0  38 80 04 3F */	li r4, 0x43f
/* 809A8CD4  38 A0 00 00 */	li r5, 0
/* 809A8CD8  4B 7A 2F 18 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809A8CDC  48 00 00 28 */	b lbl_809A8D04
lbl_809A8CE0:
/* 809A8CE0  28 00 00 82 */	cmplwi r0, 0x82
/* 809A8CE4  40 82 00 14 */	bne lbl_809A8CF8
/* 809A8CE8  38 80 04 47 */	li r4, 0x447
/* 809A8CEC  38 A0 00 00 */	li r5, 0
/* 809A8CF0  4B 7A 2F 00 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809A8CF4  48 00 00 10 */	b lbl_809A8D04
lbl_809A8CF8:
/* 809A8CF8  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809A8CFC  38 A0 00 00 */	li r5, 0
/* 809A8D00  4B 7A 2E F0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_809A8D04:
/* 809A8D04  38 00 00 00 */	li r0, 0
/* 809A8D08  98 1E 0F C5 */	stb r0, 0xfc5(r30)
/* 809A8D0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A8D10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809A8D14  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809A8D18  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809A8D1C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809A8D20  40 82 00 1C */	bne lbl_809A8D3C
/* 809A8D24  88 1E 0F C4 */	lbz r0, 0xfc4(r30)
/* 809A8D28  28 00 00 01 */	cmplwi r0, 1
/* 809A8D2C  40 82 00 18 */	bne lbl_809A8D44
/* 809A8D30  88 1E 0E 2E */	lbz r0, 0xe2e(r30)
/* 809A8D34  28 00 00 00 */	cmplwi r0, 0
/* 809A8D38  40 82 00 0C */	bne lbl_809A8D44
lbl_809A8D3C:
/* 809A8D3C  38 00 00 01 */	li r0, 1
/* 809A8D40  98 1E 0F C5 */	stb r0, 0xfc5(r30)
lbl_809A8D44:
/* 809A8D44  38 00 00 00 */	li r0, 0
/* 809A8D48  98 1E 0F C6 */	stb r0, 0xfc6(r30)
/* 809A8D4C  38 00 00 02 */	li r0, 2
/* 809A8D50  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809A8D54:
/* 809A8D54  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809A8D58  2C 00 00 00 */	cmpwi r0, 0
/* 809A8D5C  40 82 02 D4 */	bne lbl_809A9030
/* 809A8D60  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809A8D64  28 00 00 00 */	cmplwi r0, 0
/* 809A8D68  40 82 00 64 */	bne lbl_809A8DCC
/* 809A8D6C  A8 7E 0D C8 */	lha r3, 0xdc8(r30)
/* 809A8D70  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809A8D74  7C 03 00 00 */	cmpw r3, r0
/* 809A8D78  41 82 00 54 */	beq lbl_809A8DCC
/* 809A8D7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A8D80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809A8D84  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809A8D88  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809A8D8C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809A8D90  40 82 00 3C */	bne lbl_809A8DCC
/* 809A8D94  88 1E 0F C4 */	lbz r0, 0xfc4(r30)
/* 809A8D98  28 00 00 01 */	cmplwi r0, 1
/* 809A8D9C  40 82 02 78 */	bne lbl_809A9014
/* 809A8DA0  88 1E 0E 2E */	lbz r0, 0xe2e(r30)
/* 809A8DA4  28 00 00 00 */	cmplwi r0, 0
/* 809A8DA8  40 82 02 6C */	bne lbl_809A9014
/* 809A8DAC  38 60 01 20 */	li r3, 0x120
/* 809A8DB0  4B 7A 3C FC */	b daNpcT_chkEvtBit__FUl
/* 809A8DB4  2C 03 00 00 */	cmpwi r3, 0
/* 809A8DB8  41 82 00 14 */	beq lbl_809A8DCC
/* 809A8DBC  38 60 01 64 */	li r3, 0x164
/* 809A8DC0  4B 7A 3C EC */	b daNpcT_chkEvtBit__FUl
/* 809A8DC4  2C 03 00 00 */	cmpwi r3, 0
/* 809A8DC8  41 82 02 4C */	beq lbl_809A9014
lbl_809A8DCC:
/* 809A8DCC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809A8DD0  2C 00 00 00 */	cmpwi r0, 0
/* 809A8DD4  41 82 00 24 */	beq lbl_809A8DF8
/* 809A8DD8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809A8DDC  4B 79 C9 20 */	b remove__18daNpcT_ActorMngr_cFv
/* 809A8DE0  38 00 00 00 */	li r0, 0
/* 809A8DE4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809A8DE8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809A8DEC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809A8DF0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809A8DF4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809A8DF8:
/* 809A8DF8  38 00 00 00 */	li r0, 0
/* 809A8DFC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809A8E00  88 1E 0F C5 */	lbz r0, 0xfc5(r30)
/* 809A8E04  28 00 00 00 */	cmplwi r0, 0
/* 809A8E08  40 82 00 40 */	bne lbl_809A8E48
/* 809A8E0C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809A8E10  2C 00 00 0A */	cmpwi r0, 0xa
/* 809A8E14  41 82 00 24 */	beq lbl_809A8E38
/* 809A8E18  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809A8E1C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809A8E20  4B 79 CA 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A8E24  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809A8E28  38 00 00 0A */	li r0, 0xa
/* 809A8E2C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809A8E30  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 809A8E34  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809A8E38:
/* 809A8E38  38 00 00 01 */	li r0, 1
/* 809A8E3C  98 1E 0F C5 */	stb r0, 0xfc5(r30)
/* 809A8E40  98 1E 0F C6 */	stb r0, 0xfc6(r30)
/* 809A8E44  48 00 01 EC */	b lbl_809A9030
lbl_809A8E48:
/* 809A8E48  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809A8E4C  2C 00 00 0A */	cmpwi r0, 0xa
/* 809A8E50  40 82 00 14 */	bne lbl_809A8E64
/* 809A8E54  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809A8E58  4B 79 CB CC */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 809A8E5C  2C 03 00 00 */	cmpwi r3, 0
/* 809A8E60  41 82 00 E8 */	beq lbl_809A8F48
lbl_809A8E64:
/* 809A8E64  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 809A8E68  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 809A8E6C  90 61 00 08 */	stw r3, 8(r1)
/* 809A8E70  90 01 00 0C */	stw r0, 0xc(r1)
/* 809A8E74  88 1E 0E 2E */	lbz r0, 0xe2e(r30)
/* 809A8E78  28 00 00 81 */	cmplwi r0, 0x81
/* 809A8E7C  40 82 00 10 */	bne lbl_809A8E8C
/* 809A8E80  38 00 14 57 */	li r0, 0x1457
/* 809A8E84  90 01 00 08 */	stw r0, 8(r1)
/* 809A8E88  48 00 00 2C */	b lbl_809A8EB4
lbl_809A8E8C:
/* 809A8E8C  28 00 00 82 */	cmplwi r0, 0x82
/* 809A8E90  40 82 00 24 */	bne lbl_809A8EB4
/* 809A8E94  38 00 14 6E */	li r0, 0x146e
/* 809A8E98  90 01 00 08 */	stw r0, 8(r1)
/* 809A8E9C  38 60 01 63 */	li r3, 0x163
/* 809A8EA0  4B 7A 3C 0C */	b daNpcT_chkEvtBit__FUl
/* 809A8EA4  2C 03 00 00 */	cmpwi r3, 0
/* 809A8EA8  41 82 00 0C */	beq lbl_809A8EB4
/* 809A8EAC  38 00 14 72 */	li r0, 0x1472
/* 809A8EB0  90 01 00 08 */	stw r0, 8(r1)
lbl_809A8EB4:
/* 809A8EB4  7F C3 F3 78 */	mr r3, r30
/* 809A8EB8  38 81 00 08 */	addi r4, r1, 8
/* 809A8EBC  38 A0 00 00 */	li r5, 0
/* 809A8EC0  38 C0 00 00 */	li r6, 0
/* 809A8EC4  38 E0 00 00 */	li r7, 0
/* 809A8EC8  4B 7A 2D B0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809A8ECC  2C 03 00 00 */	cmpwi r3, 0
/* 809A8ED0  41 82 00 78 */	beq lbl_809A8F48
/* 809A8ED4  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 809A8ED8  28 00 00 01 */	cmplwi r0, 1
/* 809A8EDC  41 82 00 40 */	beq lbl_809A8F1C
/* 809A8EE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A8EE4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 809A8EE8  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 809A8EEC  38 00 00 03 */	li r0, 3
/* 809A8EF0  B0 05 06 04 */	sth r0, 0x604(r5)
/* 809A8EF4  38 60 00 00 */	li r3, 0
/* 809A8EF8  90 65 06 0C */	stw r3, 0x60c(r5)
/* 809A8EFC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809A8F00  38 00 00 06 */	li r0, 6
/* 809A8F04  90 04 06 14 */	stw r0, 0x614(r4)
/* 809A8F08  90 64 06 0C */	stw r3, 0x60c(r4)
/* 809A8F0C  38 00 00 01 */	li r0, 1
/* 809A8F10  90 04 06 10 */	stw r0, 0x610(r4)
/* 809A8F14  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 809A8F18  48 00 00 30 */	b lbl_809A8F48
lbl_809A8F1C:
/* 809A8F1C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809A8F20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809A8F24  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809A8F28  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809A8F2C  4B 79 C7 B4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809A8F30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A8F34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809A8F38  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809A8F3C  4B 69 95 2C */	b reset__14dEvt_control_cFv
/* 809A8F40  38 00 00 03 */	li r0, 3
/* 809A8F44  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809A8F48:
/* 809A8F48  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809A8F4C  2C 00 00 01 */	cmpwi r0, 1
/* 809A8F50  41 82 00 28 */	beq lbl_809A8F78
/* 809A8F54  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809A8F58  4B 79 C7 A4 */	b remove__18daNpcT_ActorMngr_cFv
/* 809A8F5C  38 00 00 00 */	li r0, 0
/* 809A8F60  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809A8F64  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809A8F68  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809A8F6C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809A8F70  38 00 00 01 */	li r0, 1
/* 809A8F74  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809A8F78:
/* 809A8F78  38 00 00 00 */	li r0, 0
/* 809A8F7C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809A8F80  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809A8F84  28 00 00 00 */	cmplwi r0, 0
/* 809A8F88  40 82 00 54 */	bne lbl_809A8FDC
/* 809A8F8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A8F90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809A8F94  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809A8F98  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809A8F9C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809A8FA0  40 82 00 3C */	bne lbl_809A8FDC
/* 809A8FA4  88 1E 0F C4 */	lbz r0, 0xfc4(r30)
/* 809A8FA8  28 00 00 01 */	cmplwi r0, 1
/* 809A8FAC  40 82 00 84 */	bne lbl_809A9030
/* 809A8FB0  88 1E 0E 2E */	lbz r0, 0xe2e(r30)
/* 809A8FB4  28 00 00 00 */	cmplwi r0, 0
/* 809A8FB8  40 82 00 78 */	bne lbl_809A9030
/* 809A8FBC  38 60 01 20 */	li r3, 0x120
/* 809A8FC0  4B 7A 3A EC */	b daNpcT_chkEvtBit__FUl
/* 809A8FC4  2C 03 00 00 */	cmpwi r3, 0
/* 809A8FC8  41 82 00 14 */	beq lbl_809A8FDC
/* 809A8FCC  38 60 01 64 */	li r3, 0x164
/* 809A8FD0  4B 7A 3A DC */	b daNpcT_chkEvtBit__FUl
/* 809A8FD4  2C 03 00 00 */	cmpwi r3, 0
/* 809A8FD8  41 82 00 58 */	beq lbl_809A9030
lbl_809A8FDC:
/* 809A8FDC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809A8FE0  2C 00 00 00 */	cmpwi r0, 0
/* 809A8FE4  41 82 00 24 */	beq lbl_809A9008
/* 809A8FE8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809A8FEC  4B 79 C7 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 809A8FF0  38 00 00 00 */	li r0, 0
/* 809A8FF4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809A8FF8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809A8FFC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809A9000  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809A9004  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809A9008:
/* 809A9008  38 00 00 00 */	li r0, 0
/* 809A900C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809A9010  48 00 00 20 */	b lbl_809A9030
lbl_809A9014:
/* 809A9014  7F C3 F3 78 */	mr r3, r30
/* 809A9018  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 809A901C  38 A0 FF FF */	li r5, -1
/* 809A9020  38 C0 FF FF */	li r6, -1
/* 809A9024  38 E0 00 1E */	li r7, 0x1e
/* 809A9028  39 00 00 00 */	li r8, 0
/* 809A902C  4B 7A 26 1C */	b step__8daNpcT_cFsiiii
lbl_809A9030:
/* 809A9030  38 60 00 00 */	li r3, 0
/* 809A9034  39 61 00 20 */	addi r11, r1, 0x20
/* 809A9038  4B 9B 91 F0 */	b _restgpr_29
/* 809A903C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A9040  7C 08 03 A6 */	mtlr r0
/* 809A9044  38 21 00 20 */	addi r1, r1, 0x20
/* 809A9048  4E 80 00 20 */	blr 
