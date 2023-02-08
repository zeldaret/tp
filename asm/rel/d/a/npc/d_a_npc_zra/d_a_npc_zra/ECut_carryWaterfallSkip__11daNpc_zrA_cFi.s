lbl_80B83D08:
/* 80B83D08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B83D0C  7C 08 02 A6 */	mflr r0
/* 80B83D10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B83D14  39 61 00 30 */	addi r11, r1, 0x30
/* 80B83D18  4B 7D E4 B9 */	bl _savegpr_26
/* 80B83D1C  7C 7C 1B 78 */	mr r28, r3
/* 80B83D20  7C 9A 23 78 */	mr r26, r4
/* 80B83D24  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B83D28  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B83D2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B83D30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B83D34  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B83D38  3B C0 00 00 */	li r30, 0
/* 80B83D3C  3B A0 FF FF */	li r29, -1
/* 80B83D40  7F 63 DB 78 */	mr r3, r27
/* 80B83D44  3C A0 80 B9 */	lis r5, d_a_npc_zra__stringBase0@ha /* 0x80B8CD30@ha */
/* 80B83D48  38 A5 CD 30 */	addi r5, r5, d_a_npc_zra__stringBase0@l /* 0x80B8CD30@l */
/* 80B83D4C  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B83D50  38 C0 00 03 */	li r6, 3
/* 80B83D54  4B 4C 43 99 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B83D58  28 03 00 00 */	cmplwi r3, 0
/* 80B83D5C  41 82 00 08 */	beq lbl_80B83D64
/* 80B83D60  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B83D64:
/* 80B83D64  7F 63 DB 78 */	mr r3, r27
/* 80B83D68  7F 44 D3 78 */	mr r4, r26
/* 80B83D6C  4B 4C 3F E1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B83D70  2C 03 00 00 */	cmpwi r3, 0
/* 80B83D74  41 82 01 6C */	beq lbl_80B83EE0
/* 80B83D78  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B83D7C  41 82 00 38 */	beq lbl_80B83DB4
/* 80B83D80  40 80 00 10 */	bge lbl_80B83D90
/* 80B83D84  2C 1D 00 00 */	cmpwi r29, 0
/* 80B83D88  41 82 00 14 */	beq lbl_80B83D9C
/* 80B83D8C  48 00 01 54 */	b lbl_80B83EE0
lbl_80B83D90:
/* 80B83D90  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B83D94  41 82 01 4C */	beq lbl_80B83EE0
/* 80B83D98  48 00 01 48 */	b lbl_80B83EE0
lbl_80B83D9C:
/* 80B83D9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B83DA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B83DA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80B83DA8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B83DAC  4B 72 BA D9 */	bl subBgmStop__8Z2SeqMgrFv
/* 80B83DB0  48 00 01 30 */	b lbl_80B83EE0
lbl_80B83DB4:
/* 80B83DB4  38 00 00 01 */	li r0, 1
/* 80B83DB8  98 1C 0C 1A */	stb r0, 0xc1a(r28)
/* 80B83DBC  80 7C 0C 1C */	lwz r3, 0xc1c(r28)
/* 80B83DC0  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B83DC4  38 03 FF FE */	addi r0, r3, -2
/* 80B83DC8  B0 1C 0C 18 */	sth r0, 0xc18(r28)
/* 80B83DCC  80 7C 0C 1C */	lwz r3, 0xc1c(r28)
/* 80B83DD0  80 83 00 08 */	lwz r4, 8(r3)
/* 80B83DD4  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B83DD8  38 03 FF FE */	addi r0, r3, -2
/* 80B83DDC  54 00 20 36 */	slwi r0, r0, 4
/* 80B83DE0  7C 84 02 14 */	add r4, r4, r0
/* 80B83DE4  80 64 00 04 */	lwz r3, 4(r4)
/* 80B83DE8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B83DEC  90 61 00 08 */	stw r3, 8(r1)
/* 80B83DF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B83DF4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B83DF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B83DFC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B83E00  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80B83E04  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B83E08  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B83E0C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B83E10  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80B83E14  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B83E18  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80B83E1C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B83E20  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80B83E24  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B83E28  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80B83E2C  38 60 00 00 */	li r3, 0
/* 80B83E30  B0 7C 04 DC */	sth r3, 0x4dc(r28)
/* 80B83E34  38 00 80 00 */	li r0, -32768
/* 80B83E38  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80B83E3C  B0 7C 04 E0 */	sth r3, 0x4e0(r28)
/* 80B83E40  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B83E44  B0 1C 08 F0 */	sth r0, 0x8f0(r28)
/* 80B83E48  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B83E4C  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80B83E50  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B83E54  B0 1C 08 F4 */	sth r0, 0x8f4(r28)
/* 80B83E58  A8 1C 08 F0 */	lha r0, 0x8f0(r28)
/* 80B83E5C  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80B83E60  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80B83E64  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80B83E68  A8 1C 08 F4 */	lha r0, 0x8f4(r28)
/* 80B83E6C  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80B83E70  7F 83 E3 78 */	mr r3, r28
/* 80B83E74  38 80 00 00 */	li r4, 0
/* 80B83E78  4B FF A8 7D */	bl setLookMode__11daNpc_zrA_cFi
/* 80B83E7C  7F 83 E3 78 */	mr r3, r28
/* 80B83E80  38 80 00 1E */	li r4, 0x1e
/* 80B83E84  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B83E88  38 A0 00 00 */	li r5, 0
/* 80B83E8C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B83E90  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B83E94  7D 89 03 A6 */	mtctr r12
/* 80B83E98  4E 80 04 21 */	bctrl 
/* 80B83E9C  38 00 00 01 */	li r0, 1
/* 80B83EA0  98 1C 15 20 */	stb r0, 0x1520(r28)
/* 80B83EA4  38 00 00 03 */	li r0, 3
/* 80B83EA8  98 1C 15 94 */	stb r0, 0x1594(r28)
/* 80B83EAC  7F 83 E3 78 */	mr r3, r28
/* 80B83EB0  4B FF E4 1D */	bl calcWaistAngleStop__11daNpc_zrA_cFv
/* 80B83EB4  38 00 00 00 */	li r0, 0
/* 80B83EB8  90 1C 09 38 */	stw r0, 0x938(r28)
/* 80B83EBC  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80B83EC0  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B83EC4  B0 1C 15 36 */	sth r0, 0x1536(r28)
/* 80B83EC8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B83ECC  B0 1C 15 38 */	sth r0, 0x1538(r28)
/* 80B83ED0  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B83ED4  B0 1C 15 3A */	sth r0, 0x153a(r28)
/* 80B83ED8  38 00 00 3C */	li r0, 0x3c
/* 80B83EDC  90 1C 09 60 */	stw r0, 0x960(r28)
lbl_80B83EE0:
/* 80B83EE0  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B83EE4  41 82 00 28 */	beq lbl_80B83F0C
/* 80B83EE8  40 80 00 10 */	bge lbl_80B83EF8
/* 80B83EEC  2C 1D 00 00 */	cmpwi r29, 0
/* 80B83EF0  41 82 00 14 */	beq lbl_80B83F04
/* 80B83EF4  48 00 00 90 */	b lbl_80B83F84
lbl_80B83EF8:
/* 80B83EF8  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B83EFC  41 82 00 80 */	beq lbl_80B83F7C
/* 80B83F00  48 00 00 84 */	b lbl_80B83F84
lbl_80B83F04:
/* 80B83F04  3B C0 00 01 */	li r30, 1
/* 80B83F08  48 00 00 80 */	b lbl_80B83F88
lbl_80B83F0C:
/* 80B83F0C  38 7C 09 60 */	addi r3, r28, 0x960
/* 80B83F10  4B FF B7 9D */	bl func_80B7F6AC
/* 80B83F14  2C 03 00 00 */	cmpwi r3, 0
/* 80B83F18  40 82 00 08 */	bne lbl_80B83F20
/* 80B83F1C  3B C0 00 01 */	li r30, 1
lbl_80B83F20:
/* 80B83F20  7F 83 E3 78 */	mr r3, r28
/* 80B83F24  38 80 00 00 */	li r4, 0
/* 80B83F28  4B FF E6 D5 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B83F2C  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80B83F30  C0 1C 15 6C */	lfs f0, 0x156c(r28)
/* 80B83F34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B83F38  40 82 00 0C */	bne lbl_80B83F44
/* 80B83F3C  38 00 00 00 */	li r0, 0
/* 80B83F40  98 1C 15 20 */	stb r0, 0x1520(r28)
lbl_80B83F44:
/* 80B83F44  7F 83 E3 78 */	mr r3, r28
/* 80B83F48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B83F4C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B83F50  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B83F54  4B 49 67 BD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B83F58  7C 64 1B 78 */	mr r4, r3
/* 80B83F5C  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B83F60  38 BF 00 00 */	addi r5, r31, 0
/* 80B83F64  A8 A5 00 74 */	lha r5, 0x74(r5)
/* 80B83F68  4B 6E CC 29 */	bl cLib_chaseAngleS__FPsss
/* 80B83F6C  7F 83 E3 78 */	mr r3, r28
/* 80B83F70  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B83F74  4B 5D 02 DD */	bl setAngle__8daNpcF_cFs
/* 80B83F78  48 00 00 10 */	b lbl_80B83F88
lbl_80B83F7C:
/* 80B83F7C  3B C0 00 01 */	li r30, 1
/* 80B83F80  48 00 00 08 */	b lbl_80B83F88
lbl_80B83F84:
/* 80B83F84  3B C0 00 01 */	li r30, 1
lbl_80B83F88:
/* 80B83F88  7F C3 F3 78 */	mr r3, r30
/* 80B83F8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B83F90  4B 7D E2 8D */	bl _restgpr_26
/* 80B83F94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B83F98  7C 08 03 A6 */	mtlr r0
/* 80B83F9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B83FA0  4E 80 00 20 */	blr 
