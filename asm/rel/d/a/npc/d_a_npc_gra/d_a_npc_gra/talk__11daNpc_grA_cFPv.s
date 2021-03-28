lbl_809C8BD4:
/* 809C8BD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C8BD8  7C 08 02 A6 */	mflr r0
/* 809C8BDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C8BE0  39 61 00 30 */	addi r11, r1, 0x30
/* 809C8BE4  4B 99 95 F0 */	b _savegpr_27
/* 809C8BE8  7C 7C 1B 78 */	mr r28, r3
/* 809C8BEC  3C 80 80 9D */	lis r4, cNullVec__6Z2Calc@ha
/* 809C8BF0  3B E4 A6 14 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 809C8BF4  3B C0 00 00 */	li r30, 0
/* 809C8BF8  3B A0 00 00 */	li r29, 0
/* 809C8BFC  38 00 00 00 */	li r0, 0
/* 809C8C00  90 01 00 08 */	stw r0, 8(r1)
/* 809C8C04  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C8C08  2C 00 00 02 */	cmpwi r0, 2
/* 809C8C0C  41 82 01 20 */	beq lbl_809C8D2C
/* 809C8C10  40 80 04 18 */	bge lbl_809C9028
/* 809C8C14  2C 00 00 00 */	cmpwi r0, 0
/* 809C8C18  41 82 00 0C */	beq lbl_809C8C24
/* 809C8C1C  48 00 04 0C */	b lbl_809C9028
/* 809C8C20  48 00 04 08 */	b lbl_809C9028
lbl_809C8C24:
/* 809C8C24  80 1C 09 54 */	lwz r0, 0x954(r28)
/* 809C8C28  2C 00 00 00 */	cmpwi r0, 0
/* 809C8C2C  40 82 03 FC */	bne lbl_809C9028
/* 809C8C30  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 809C8C34  28 00 00 04 */	cmplwi r0, 4
/* 809C8C38  40 82 00 6C */	bne lbl_809C8CA4
/* 809C8C3C  4B FF 85 25 */	bl getMode1__11daNpc_grA_cFv
/* 809C8C40  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 809C8C44  28 00 00 01 */	cmplwi r0, 1
/* 809C8C48  40 82 00 5C */	bne lbl_809C8CA4
/* 809C8C4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C8C50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C8C54  88 9C 14 CF */	lbz r4, 0x14cf(r28)
/* 809C8C58  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 809C8C5C  7C 05 07 74 */	extsb r5, r0
/* 809C8C60  4B 66 C7 00 */	b isSwitch__10dSv_info_cCFii
/* 809C8C64  2C 03 00 00 */	cmpwi r3, 0
/* 809C8C68  40 82 00 3C */	bne lbl_809C8CA4
/* 809C8C6C  3B 60 00 0A */	li r27, 0xa
/* 809C8C70  38 60 00 3E */	li r3, 0x3e
/* 809C8C74  4B 78 C9 C0 */	b daNpcF_chkEvtBit__FUl
/* 809C8C78  2C 03 00 00 */	cmpwi r3, 0
/* 809C8C7C  41 82 00 2C */	beq lbl_809C8CA8
/* 809C8C80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C8C84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C8C88  88 9C 14 CF */	lbz r4, 0x14cf(r28)
/* 809C8C8C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 809C8C90  7C 05 07 74 */	extsb r5, r0
/* 809C8C94  4B 66 C5 6C */	b onSwitch__10dSv_info_cFii
/* 809C8C98  38 00 00 01 */	li r0, 1
/* 809C8C9C  98 1C 14 D0 */	stb r0, 0x14d0(r28)
/* 809C8CA0  48 00 00 08 */	b lbl_809C8CA8
lbl_809C8CA4:
/* 809C8CA4  83 7C 14 6C */	lwz r27, 0x146c(r28)
lbl_809C8CA8:
/* 809C8CA8  7F 83 E3 78 */	mr r3, r28
/* 809C8CAC  7F 64 DB 78 */	mr r4, r27
/* 809C8CB0  38 A0 00 00 */	li r5, 0
/* 809C8CB4  4B 78 B0 68 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C8CB8  7F 83 E3 78 */	mr r3, r28
/* 809C8CBC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809C8CC0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809C8CC4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809C8CC8  4B 65 1A 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C8CCC  B0 7C 14 84 */	sth r3, 0x1484(r28)
/* 809C8CD0  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 809C8CD4  28 00 00 0B */	cmplwi r0, 0xb
/* 809C8CD8  40 82 00 24 */	bne lbl_809C8CFC
/* 809C8CDC  88 1C 16 91 */	lbz r0, 0x1691(r28)
/* 809C8CE0  28 00 00 00 */	cmplwi r0, 0
/* 809C8CE4  40 82 00 34 */	bne lbl_809C8D18
/* 809C8CE8  38 60 00 0B */	li r3, 0xb
/* 809C8CEC  4B 78 CA 48 */	b daNpcF_offTmpBit__FUl
/* 809C8CF0  38 60 00 0C */	li r3, 0xc
/* 809C8CF4  4B 78 CA 40 */	b daNpcF_offTmpBit__FUl
/* 809C8CF8  48 00 00 20 */	b lbl_809C8D18
lbl_809C8CFC:
/* 809C8CFC  28 00 00 0A */	cmplwi r0, 0xa
/* 809C8D00  40 82 00 18 */	bne lbl_809C8D18
/* 809C8D04  88 1C 14 86 */	lbz r0, 0x1486(r28)
/* 809C8D08  28 00 00 00 */	cmplwi r0, 0
/* 809C8D0C  40 82 00 0C */	bne lbl_809C8D18
/* 809C8D10  38 60 00 0B */	li r3, 0xb
/* 809C8D14  4B 78 CA 20 */	b daNpcF_offTmpBit__FUl
lbl_809C8D18:
/* 809C8D18  38 00 00 00 */	li r0, 0
/* 809C8D1C  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809C8D20  98 1C 16 91 */	stb r0, 0x1691(r28)
/* 809C8D24  38 00 00 02 */	li r0, 2
/* 809C8D28  B0 1C 14 72 */	sth r0, 0x1472(r28)
lbl_809C8D2C:
/* 809C8D2C  88 1C 09 EA */	lbz r0, 0x9ea(r28)
/* 809C8D30  28 00 00 00 */	cmplwi r0, 0
/* 809C8D34  40 82 00 1C */	bne lbl_809C8D50
/* 809C8D38  88 1C 09 F4 */	lbz r0, 0x9f4(r28)
/* 809C8D3C  28 00 00 00 */	cmplwi r0, 0
/* 809C8D40  40 82 00 10 */	bne lbl_809C8D50
/* 809C8D44  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 809C8D48  28 00 00 05 */	cmplwi r0, 5
/* 809C8D4C  40 82 00 5C */	bne lbl_809C8DA8
lbl_809C8D50:
/* 809C8D50  3B A0 00 01 */	li r29, 1
/* 809C8D54  88 7C 14 74 */	lbz r3, 0x1474(r28)
/* 809C8D58  28 03 00 05 */	cmplwi r3, 5
/* 809C8D5C  40 82 00 14 */	bne lbl_809C8D70
/* 809C8D60  7F 83 E3 78 */	mr r3, r28
/* 809C8D64  38 80 00 00 */	li r4, 0
/* 809C8D68  4B FF A3 09 */	bl setLookMode__11daNpc_grA_cFi
/* 809C8D6C  48 00 01 10 */	b lbl_809C8E7C
lbl_809C8D70:
/* 809C8D70  88 1C 09 F4 */	lbz r0, 0x9f4(r28)
/* 809C8D74  28 00 00 00 */	cmplwi r0, 0
/* 809C8D78  40 82 01 04 */	bne lbl_809C8E7C
/* 809C8D7C  28 03 00 05 */	cmplwi r3, 5
/* 809C8D80  41 82 00 FC */	beq lbl_809C8E7C
/* 809C8D84  28 03 00 07 */	cmplwi r3, 7
/* 809C8D88  40 82 00 10 */	bne lbl_809C8D98
/* 809C8D8C  88 1C 16 90 */	lbz r0, 0x1690(r28)
/* 809C8D90  28 00 00 02 */	cmplwi r0, 2
/* 809C8D94  41 82 00 E8 */	beq lbl_809C8E7C
lbl_809C8D98:
/* 809C8D98  7F 83 E3 78 */	mr r3, r28
/* 809C8D9C  38 80 00 02 */	li r4, 2
/* 809C8DA0  4B FF A2 D1 */	bl setLookMode__11daNpc_grA_cFi
/* 809C8DA4  48 00 00 D8 */	b lbl_809C8E7C
lbl_809C8DA8:
/* 809C8DA8  7F 83 E3 78 */	mr r3, r28
/* 809C8DAC  38 80 00 03 */	li r4, 3
/* 809C8DB0  4B FF A2 C1 */	bl setLookMode__11daNpc_grA_cFi
/* 809C8DB4  38 7C 0C 7C */	addi r3, r28, 0xc7c
/* 809C8DB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809C8DBC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809C8DC0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809C8DC4  4B 78 78 F8 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809C8DC8  A8 9C 14 84 */	lha r4, 0x1484(r28)
/* 809C8DCC  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 809C8DD0  7C 04 00 00 */	cmpw r4, r0
/* 809C8DD4  40 82 00 0C */	bne lbl_809C8DE0
/* 809C8DD8  3B A0 00 01 */	li r29, 1
/* 809C8DDC  48 00 00 A0 */	b lbl_809C8E7C
lbl_809C8DE0:
/* 809C8DE0  7F 83 E3 78 */	mr r3, r28
/* 809C8DE4  38 A0 00 17 */	li r5, 0x17
/* 809C8DE8  38 C0 00 16 */	li r6, 0x16
/* 809C8DEC  38 E0 00 0F */	li r7, 0xf
/* 809C8DF0  4B 78 B2 B4 */	b step__8daNpcF_cFsiii
/* 809C8DF4  2C 03 00 00 */	cmpwi r3, 0
/* 809C8DF8  41 82 00 84 */	beq lbl_809C8E7C
/* 809C8DFC  7F 83 E3 78 */	mr r3, r28
/* 809C8E00  38 80 00 17 */	li r4, 0x17
/* 809C8E04  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C8E08  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C8E0C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C8E10  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C8E14  7D 89 03 A6 */	mtctr r12
/* 809C8E18  4E 80 04 21 */	bctrl 
/* 809C8E1C  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 809C8E20  28 00 00 08 */	cmplwi r0, 8
/* 809C8E24  40 82 00 2C */	bne lbl_809C8E50
/* 809C8E28  7F 83 E3 78 */	mr r3, r28
/* 809C8E2C  38 80 00 10 */	li r4, 0x10
/* 809C8E30  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C8E34  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C8E38  38 A0 00 00 */	li r5, 0
/* 809C8E3C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C8E40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C8E44  7D 89 03 A6 */	mtctr r12
/* 809C8E48  4E 80 04 21 */	bctrl 
/* 809C8E4C  48 00 00 28 */	b lbl_809C8E74
lbl_809C8E50:
/* 809C8E50  7F 83 E3 78 */	mr r3, r28
/* 809C8E54  38 80 00 00 */	li r4, 0
/* 809C8E58  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C8E5C  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C8E60  38 A0 00 00 */	li r5, 0
/* 809C8E64  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C8E68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C8E6C  7D 89 03 A6 */	mtctr r12
/* 809C8E70  4E 80 04 21 */	bctrl 
lbl_809C8E74:
/* 809C8E74  38 00 00 00 */	li r0, 0
/* 809C8E78  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_809C8E7C:
/* 809C8E7C  2C 1D 00 00 */	cmpwi r29, 0
/* 809C8E80  41 82 01 74 */	beq lbl_809C8FF4
/* 809C8E84  7F 83 E3 78 */	mr r3, r28
/* 809C8E88  38 80 00 00 */	li r4, 0
/* 809C8E8C  38 A0 00 01 */	li r5, 1
/* 809C8E90  38 C0 00 00 */	li r6, 0
/* 809C8E94  4B 78 AE F0 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C8E98  2C 03 00 00 */	cmpwi r3, 0
/* 809C8E9C  41 82 01 58 */	beq lbl_809C8FF4
/* 809C8EA0  38 7C 09 F8 */	addi r3, r28, 0x9f8
/* 809C8EA4  38 81 00 08 */	addi r4, r1, 8
/* 809C8EA8  4B 88 16 80 */	b getEventId__10dMsgFlow_cFPi
/* 809C8EAC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 809C8EB0  28 00 00 01 */	cmplwi r0, 1
/* 809C8EB4  40 82 00 A8 */	bne lbl_809C8F5C
/* 809C8EB8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 809C8EBC  80 81 00 08 */	lwz r4, 8(r1)
/* 809C8EC0  38 A0 00 00 */	li r5, 0
/* 809C8EC4  38 C0 FF FF */	li r6, -1
/* 809C8EC8  38 E0 FF FF */	li r7, -1
/* 809C8ECC  39 00 00 00 */	li r8, 0
/* 809C8ED0  39 20 00 00 */	li r9, 0
/* 809C8ED4  4B 65 2D 14 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 809C8ED8  90 7C 14 80 */	stw r3, 0x1480(r28)
/* 809C8EDC  80 7C 14 80 */	lwz r3, 0x1480(r28)
/* 809C8EE0  3C 03 00 01 */	addis r0, r3, 1
/* 809C8EE4  28 00 FF FF */	cmplwi r0, 0xffff
/* 809C8EE8  41 82 01 0C */	beq lbl_809C8FF4
/* 809C8EEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C8EF0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 809C8EF4  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 809C8EF8  7F 84 E3 78 */	mr r4, r28
/* 809C8EFC  3C A0 80 9D */	lis r5, struct_809CA4B8+0x0@ha
/* 809C8F00  38 A5 A4 B8 */	addi r5, r5, struct_809CA4B8+0x0@l
/* 809C8F04  38 A5 01 4A */	addi r5, r5, 0x14a
/* 809C8F08  38 C0 00 FF */	li r6, 0xff
/* 809C8F0C  4B 67 E8 4C */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 809C8F10  7C 7B 1B 78 */	mr r27, r3
/* 809C8F14  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 809C8F18  7F 84 E3 78 */	mr r4, r28
/* 809C8F1C  4B 67 95 FC */	b reset__14dEvt_control_cFPv
/* 809C8F20  7F 83 E3 78 */	mr r3, r28
/* 809C8F24  7F 64 DB 78 */	mr r4, r27
/* 809C8F28  38 A0 00 01 */	li r5, 1
/* 809C8F2C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809C8F30  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809C8F34  4B 65 26 B0 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 809C8F38  38 60 00 01 */	li r3, 1
/* 809C8F3C  98 7C 09 EC */	stb r3, 0x9ec(r28)
/* 809C8F40  3B C0 00 01 */	li r30, 1
/* 809C8F44  98 7C 09 ED */	stb r3, 0x9ed(r28)
/* 809C8F48  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 809C8F4C  28 00 00 0B */	cmplwi r0, 0xb
/* 809C8F50  40 82 00 A4 */	bne lbl_809C8FF4
/* 809C8F54  98 7C 16 91 */	stb r3, 0x1691(r28)
/* 809C8F58  48 00 00 9C */	b lbl_809C8FF4
lbl_809C8F5C:
/* 809C8F5C  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 809C8F60  28 00 00 0A */	cmplwi r0, 0xa
/* 809C8F64  40 82 00 8C */	bne lbl_809C8FF0
/* 809C8F68  88 1C 14 86 */	lbz r0, 0x1486(r28)
/* 809C8F6C  28 00 00 00 */	cmplwi r0, 0
/* 809C8F70  40 82 00 80 */	bne lbl_809C8FF0
/* 809C8F74  38 60 01 87 */	li r3, 0x187
/* 809C8F78  4B 78 C6 BC */	b daNpcF_chkEvtBit__FUl
/* 809C8F7C  2C 03 00 00 */	cmpwi r3, 0
/* 809C8F80  41 82 00 70 */	beq lbl_809C8FF0
/* 809C8F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C8F88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C8F8C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809C8F90  7F 84 E3 78 */	mr r4, r28
/* 809C8F94  4B 67 95 84 */	b reset__14dEvt_control_cFPv
/* 809C8F98  38 00 00 01 */	li r0, 1
/* 809C8F9C  98 1C 09 EC */	stb r0, 0x9ec(r28)
/* 809C8FA0  98 1C 09 ED */	stb r0, 0x9ed(r28)
/* 809C8FA4  38 00 00 0A */	li r0, 0xa
/* 809C8FA8  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 809C8FAC  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 809C8FB0  54 06 18 38 */	slwi r6, r0, 3
/* 809C8FB4  7F 83 E3 78 */	mr r3, r28
/* 809C8FB8  38 BF 02 68 */	addi r5, r31, 0x268
/* 809C8FBC  7C 85 32 14 */	add r4, r5, r6
/* 809C8FC0  80 04 00 04 */	lwz r0, 4(r4)
/* 809C8FC4  54 00 10 3A */	slwi r0, r0, 2
/* 809C8FC8  38 9F 04 C0 */	addi r4, r31, 0x4c0
/* 809C8FCC  7C 84 00 2E */	lwzx r4, r4, r0
/* 809C8FD0  7C 05 30 2E */	lwzx r0, r5, r6
/* 809C8FD4  54 00 10 3A */	slwi r0, r0, 2
/* 809C8FD8  38 BF 02 C0 */	addi r5, r31, 0x2c0
/* 809C8FDC  7C A5 00 2E */	lwzx r5, r5, r0
/* 809C8FE0  38 C0 00 01 */	li r6, 1
/* 809C8FE4  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 809C8FE8  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 809C8FEC  4B 78 A9 68 */	b changeEvent__8daNpcF_cFPcPcUsUs
lbl_809C8FF0:
/* 809C8FF0  3B C0 00 01 */	li r30, 1
lbl_809C8FF4:
/* 809C8FF4  2C 1E 00 00 */	cmpwi r30, 0
/* 809C8FF8  41 82 00 30 */	beq lbl_809C9028
/* 809C8FFC  38 00 00 03 */	li r0, 3
/* 809C9000  B0 1C 14 72 */	sth r0, 0x1472(r28)
/* 809C9004  88 1C 09 EC */	lbz r0, 0x9ec(r28)
/* 809C9008  28 00 00 00 */	cmplwi r0, 0
/* 809C900C  40 82 00 14 */	bne lbl_809C9020
/* 809C9010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C9014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C9018  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809C901C  4B 67 94 4C */	b reset__14dEvt_control_cFv
lbl_809C9020:
/* 809C9020  38 00 00 00 */	li r0, 0
/* 809C9024  98 1C 09 EC */	stb r0, 0x9ec(r28)
lbl_809C9028:
/* 809C9028  7F C3 F3 78 */	mr r3, r30
/* 809C902C  39 61 00 30 */	addi r11, r1, 0x30
/* 809C9030  4B 99 91 F0 */	b _restgpr_27
/* 809C9034  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C9038  7C 08 03 A6 */	mtlr r0
/* 809C903C  38 21 00 30 */	addi r1, r1, 0x30
/* 809C9040  4E 80 00 20 */	blr 
