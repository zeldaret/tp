lbl_80B16B74:
/* 80B16B74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B16B78  7C 08 02 A6 */	mflr r0
/* 80B16B7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B16B80  39 61 00 40 */	addi r11, r1, 0x40
/* 80B16B84  4B 84 B6 58 */	b _savegpr_29
/* 80B16B88  7C 7E 1B 78 */	mr r30, r3
/* 80B16B8C  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha
/* 80B16B90  3B E4 DD 58 */	addi r31, r4, m__16daNpcTks_Param_c@l
/* 80B16B94  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B16B98  2C 00 00 02 */	cmpwi r0, 2
/* 80B16B9C  41 82 00 84 */	beq lbl_80B16C20
/* 80B16BA0  40 80 04 24 */	bge lbl_80B16FC4
/* 80B16BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80B16BA8  41 82 00 0C */	beq lbl_80B16BB4
/* 80B16BAC  48 00 04 18 */	b lbl_80B16FC4
/* 80B16BB0  48 00 04 14 */	b lbl_80B16FC4
lbl_80B16BB4:
/* 80B16BB4  38 80 00 00 */	li r4, 0
/* 80B16BB8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B16BBC  38 A0 00 00 */	li r5, 0
/* 80B16BC0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B16BC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B16BC8  7D 89 03 A6 */	mtctr r12
/* 80B16BCC  4E 80 04 21 */	bctrl 
/* 80B16BD0  7F C3 F3 78 */	mr r3, r30
/* 80B16BD4  A8 9E 13 84 */	lha r4, 0x1384(r30)
/* 80B16BD8  38 A0 00 00 */	li r5, 0
/* 80B16BDC  4B 63 D1 40 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B16BE0  38 00 00 00 */	li r0, 0
/* 80B16BE4  90 1E 09 50 */	stw r0, 0x950(r30)
/* 80B16BE8  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B16BEC  A8 1E 13 86 */	lha r0, 0x1386(r30)
/* 80B16BF0  2C 00 00 03 */	cmpwi r0, 3
/* 80B16BF4  40 82 00 10 */	bne lbl_80B16C04
/* 80B16BF8  80 1E 12 08 */	lwz r0, 0x1208(r30)
/* 80B16BFC  28 00 00 00 */	cmplwi r0, 0
/* 80B16C00  41 82 00 14 */	beq lbl_80B16C14
lbl_80B16C04:
/* 80B16C04  38 00 00 03 */	li r0, 3
/* 80B16C08  B0 1E 13 86 */	sth r0, 0x1386(r30)
/* 80B16C0C  38 00 00 00 */	li r0, 0
/* 80B16C10  90 1E 12 08 */	stw r0, 0x1208(r30)
lbl_80B16C14:
/* 80B16C14  38 00 00 02 */	li r0, 2
/* 80B16C18  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B16C1C  48 00 03 A8 */	b lbl_80B16FC4
lbl_80B16C20:
/* 80B16C20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B16C24  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80B16C28  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B16C2C  4B 50 3A E4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B16C30  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 80B16C34  7C 60 07 34 */	extsh r0, r3
/* 80B16C38  7C 04 00 00 */	cmpw r4, r0
/* 80B16C3C  40 82 02 0C */	bne lbl_80B16E48
/* 80B16C40  7F C3 F3 78 */	mr r3, r30
/* 80B16C44  38 80 00 00 */	li r4, 0
/* 80B16C48  38 A0 00 01 */	li r5, 1
/* 80B16C4C  38 C0 00 00 */	li r6, 0
/* 80B16C50  4B 63 D1 34 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B16C54  2C 03 00 00 */	cmpwi r3, 0
/* 80B16C58  41 82 01 58 */	beq lbl_80B16DB0
/* 80B16C5C  38 7E 12 00 */	addi r3, r30, 0x1200
/* 80B16C60  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B16C64  4B 63 9A 58 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B16C68  38 00 00 00 */	li r0, 0
/* 80B16C6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B16C70  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80B16C74  38 81 00 10 */	addi r4, r1, 0x10
/* 80B16C78  4B 73 38 B0 */	b getEventId__10dMsgFlow_cFPi
/* 80B16C7C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B16C80  28 00 00 01 */	cmplwi r0, 1
/* 80B16C84  40 82 00 A0 */	bne lbl_80B16D24
/* 80B16C88  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B16C8C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B16C90  38 A0 00 00 */	li r5, 0
/* 80B16C94  38 C0 FF FF */	li r6, -1
/* 80B16C98  38 E0 FF FF */	li r7, -1
/* 80B16C9C  39 00 00 00 */	li r8, 0
/* 80B16CA0  39 20 00 00 */	li r9, 0
/* 80B16CA4  4B 50 4F 44 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B16CA8  90 7E 13 68 */	stw r3, 0x1368(r30)
/* 80B16CAC  80 7E 13 68 */	lwz r3, 0x1368(r30)
/* 80B16CB0  3C 03 00 01 */	addis r0, r3, 1
/* 80B16CB4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B16CB8  41 82 00 6C */	beq lbl_80B16D24
/* 80B16CBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B16CC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B16CC4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B16CC8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B16CCC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B16CD0  3C 60 80 B2 */	lis r3, stringBase0@ha
/* 80B16CD4  38 63 E0 48 */	addi r3, r3, stringBase0@l
/* 80B16CD8  38 A3 00 44 */	addi r5, r3, 0x44
/* 80B16CDC  41 82 00 08 */	beq lbl_80B16CE4
/* 80B16CE0  38 A3 00 37 */	addi r5, r3, 0x37
lbl_80B16CE4:
/* 80B16CE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B16CE8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80B16CEC  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80B16CF0  7F C4 F3 78 */	mr r4, r30
/* 80B16CF4  38 C0 00 FF */	li r6, 0xff
/* 80B16CF8  4B 53 0A 60 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B16CFC  7C 7F 1B 78 */	mr r31, r3
/* 80B16D00  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80B16D04  7F C4 F3 78 */	mr r4, r30
/* 80B16D08  4B 52 B8 10 */	b reset__14dEvt_control_cFPv
/* 80B16D0C  7F C3 F3 78 */	mr r3, r30
/* 80B16D10  7F E4 FB 78 */	mr r4, r31
/* 80B16D14  38 A0 00 01 */	li r5, 1
/* 80B16D18  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B16D1C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B16D20  4B 50 48 C4 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
lbl_80B16D24:
/* 80B16D24  3C 60 80 B2 */	lis r3, lit_5371@ha
/* 80B16D28  38 83 E2 DC */	addi r4, r3, lit_5371@l
/* 80B16D2C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B16D30  80 04 00 04 */	lwz r0, 4(r4)
/* 80B16D34  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B16D38  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B16D3C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B16D40  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B16D44  38 00 00 03 */	li r0, 3
/* 80B16D48  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B16D4C  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B16D50  4B 84 B2 C8 */	b __ptmf_test
/* 80B16D54  2C 03 00 00 */	cmpwi r3, 0
/* 80B16D58  41 82 00 14 */	beq lbl_80B16D6C
/* 80B16D5C  7F C3 F3 78 */	mr r3, r30
/* 80B16D60  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B16D64  4B 84 B3 20 */	b __ptmf_scall
/* 80B16D68  60 00 00 00 */	nop 
lbl_80B16D6C:
/* 80B16D6C  38 00 00 00 */	li r0, 0
/* 80B16D70  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B16D74  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B16D78  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B16D7C  90 7E 13 4C */	stw r3, 0x134c(r30)
/* 80B16D80  90 1E 13 50 */	stw r0, 0x1350(r30)
/* 80B16D84  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B16D88  90 1E 13 54 */	stw r0, 0x1354(r30)
/* 80B16D8C  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B16D90  4B 84 B2 88 */	b __ptmf_test
/* 80B16D94  2C 03 00 00 */	cmpwi r3, 0
/* 80B16D98  41 82 02 2C */	beq lbl_80B16FC4
/* 80B16D9C  7F C3 F3 78 */	mr r3, r30
/* 80B16DA0  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B16DA4  4B 84 B2 E0 */	b __ptmf_scall
/* 80B16DA8  60 00 00 00 */	nop 
/* 80B16DAC  48 00 02 18 */	b lbl_80B16FC4
lbl_80B16DB0:
/* 80B16DB0  83 BE 09 50 */	lwz r29, 0x950(r30)
/* 80B16DB4  7F C3 F3 78 */	mr r3, r30
/* 80B16DB8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B16DBC  38 A1 00 08 */	addi r5, r1, 8
/* 80B16DC0  7F C6 F3 78 */	mr r6, r30
/* 80B16DC4  38 E0 00 00 */	li r7, 0
/* 80B16DC8  4B 63 C9 50 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B16DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80B16DD0  41 82 00 44 */	beq lbl_80B16E14
/* 80B16DD4  7F C3 F3 78 */	mr r3, r30
/* 80B16DD8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B16DDC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B16DE0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B16DE4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B16DE8  7D 89 03 A6 */	mtctr r12
/* 80B16DEC  4E 80 04 21 */	bctrl 
/* 80B16DF0  7F C3 F3 78 */	mr r3, r30
/* 80B16DF4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B16DF8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B16DFC  38 A0 00 00 */	li r5, 0
/* 80B16E00  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B16E04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B16E08  7D 89 03 A6 */	mtctr r12
/* 80B16E0C  4E 80 04 21 */	bctrl 
/* 80B16E10  48 00 01 B4 */	b lbl_80B16FC4
lbl_80B16E14:
/* 80B16E14  2C 1D 00 00 */	cmpwi r29, 0
/* 80B16E18  41 82 01 AC */	beq lbl_80B16FC4
/* 80B16E1C  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 80B16E20  2C 00 00 00 */	cmpwi r0, 0
/* 80B16E24  40 82 01 A0 */	bne lbl_80B16FC4
/* 80B16E28  7F C3 F3 78 */	mr r3, r30
/* 80B16E2C  38 80 00 01 */	li r4, 1
/* 80B16E30  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B16E34  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B16E38  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B16E3C  7D 89 03 A6 */	mtctr r12
/* 80B16E40  4E 80 04 21 */	bctrl 
/* 80B16E44  48 00 01 80 */	b lbl_80B16FC4
lbl_80B16E48:
/* 80B16E48  7F C3 F3 78 */	mr r3, r30
/* 80B16E4C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B16E50  4B 50 38 C0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B16E54  7C 7D 1B 78 */	mr r29, r3
/* 80B16E58  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80B16E5C  2C 00 00 00 */	cmpwi r0, 0
/* 80B16E60  40 82 00 D4 */	bne lbl_80B16F34
/* 80B16E64  C0 5F 01 E0 */	lfs f2, 0x1e0(r31)
/* 80B16E68  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B16E6C  7C 00 E8 50 */	subf r0, r0, r29
/* 80B16E70  7C 00 07 34 */	extsh r0, r0
/* 80B16E74  C8 3F 01 E8 */	lfd f1, 0x1e8(r31)
/* 80B16E78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B16E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B16E80  3C 00 43 30 */	lis r0, 0x4330
/* 80B16E84  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B16E88  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B16E8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B16E90  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B16E94  FC 00 02 10 */	fabs f0, f0
/* 80B16E98  FC 00 00 18 */	frsp f0, f0
/* 80B16E9C  FC 00 00 1E */	fctiwz f0, f0
/* 80B16EA0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80B16EA4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80B16EA8  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B16EAC  40 81 00 40 */	ble lbl_80B16EEC
/* 80B16EB0  7F C3 F3 78 */	mr r3, r30
/* 80B16EB4  38 80 00 01 */	li r4, 1
/* 80B16EB8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B16EBC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B16EC0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B16EC4  7D 89 03 A6 */	mtctr r12
/* 80B16EC8  4E 80 04 21 */	bctrl 
/* 80B16ECC  7F C3 F3 78 */	mr r3, r30
/* 80B16ED0  38 80 00 07 */	li r4, 7
/* 80B16ED4  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B16ED8  38 A0 00 00 */	li r5, 0
/* 80B16EDC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B16EE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B16EE4  7D 89 03 A6 */	mtctr r12
/* 80B16EE8  4E 80 04 21 */	bctrl 
lbl_80B16EEC:
/* 80B16EEC  B3 BE 09 96 */	sth r29, 0x996(r30)
/* 80B16EF0  38 00 00 00 */	li r0, 0
/* 80B16EF4  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80B16EF8  A8 7E 08 F2 */	lha r3, 0x8f2(r30)
/* 80B16EFC  A8 1E 09 96 */	lha r0, 0x996(r30)
/* 80B16F00  7C 03 00 00 */	cmpw r3, r0
/* 80B16F04  40 82 00 10 */	bne lbl_80B16F14
/* 80B16F08  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80B16F0C  38 03 00 01 */	addi r0, r3, 1
/* 80B16F10  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80B16F14:
/* 80B16F14  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B16F18  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B16F1C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B16F20  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B16F24  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80B16F28  38 03 00 01 */	addi r0, r3, 1
/* 80B16F2C  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B16F30  48 00 00 60 */	b lbl_80B16F90
lbl_80B16F34:
/* 80B16F34  2C 00 00 01 */	cmpwi r0, 1
/* 80B16F38  40 82 00 58 */	bne lbl_80B16F90
/* 80B16F3C  7F C3 F3 78 */	mr r3, r30
/* 80B16F40  A8 9E 09 96 */	lha r4, 0x996(r30)
/* 80B16F44  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80B16F48  38 A0 00 00 */	li r5, 0
/* 80B16F4C  4B 63 CF A8 */	b turn__8daNpcF_cFsfi
/* 80B16F50  2C 03 00 00 */	cmpwi r3, 0
/* 80B16F54  41 82 00 2C */	beq lbl_80B16F80
/* 80B16F58  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B16F5C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B16F60  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B16F64  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80B16F68  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B16F6C  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80B16F70  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80B16F74  38 03 00 01 */	addi r0, r3, 1
/* 80B16F78  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B16F7C  48 00 00 14 */	b lbl_80B16F90
lbl_80B16F80:
/* 80B16F80  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B16F84  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B16F88  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B16F8C  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
lbl_80B16F90:
/* 80B16F90  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80B16F94  2C 00 00 01 */	cmpwi r0, 1
/* 80B16F98  40 81 00 2C */	ble lbl_80B16FC4
/* 80B16F9C  7F C3 F3 78 */	mr r3, r30
/* 80B16FA0  38 80 00 00 */	li r4, 0
/* 80B16FA4  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B16FA8  38 A0 00 00 */	li r5, 0
/* 80B16FAC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B16FB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B16FB4  7D 89 03 A6 */	mtctr r12
/* 80B16FB8  4E 80 04 21 */	bctrl 
/* 80B16FBC  38 00 00 00 */	li r0, 0
/* 80B16FC0  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80B16FC4:
/* 80B16FC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B16FC8  4B 84 B2 60 */	b _restgpr_29
/* 80B16FCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B16FD0  7C 08 03 A6 */	mtlr r0
/* 80B16FD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80B16FD8  4E 80 00 20 */	blr 
