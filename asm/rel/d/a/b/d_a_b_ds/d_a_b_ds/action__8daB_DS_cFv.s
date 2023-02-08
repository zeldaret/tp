lbl_805D8D04:
/* 805D8D04  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805D8D08  7C 08 02 A6 */	mflr r0
/* 805D8D0C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805D8D10  39 61 00 60 */	addi r11, r1, 0x60
/* 805D8D14  4B D8 94 B1 */	bl _savegpr_23
/* 805D8D18  7C 7F 1B 78 */	mr r31, r3
/* 805D8D1C  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805D8D20  3B 63 CA 54 */	addi r27, r3, lit_3932@l /* 0x805DCA54@l */
/* 805D8D24  88 9F 08 4F */	lbz r4, 0x84f(r31)
/* 805D8D28  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805D8D2C  2C 00 00 01 */	cmpwi r0, 1
/* 805D8D30  41 82 01 20 */	beq lbl_805D8E50
/* 805D8D34  2C 04 00 03 */	cmpwi r4, 3
/* 805D8D38  40 80 01 18 */	bge lbl_805D8E50
/* 805D8D3C  88 1F 08 52 */	lbz r0, 0x852(r31)
/* 805D8D40  28 00 00 00 */	cmplwi r0, 0
/* 805D8D44  40 82 01 0C */	bne lbl_805D8E50
/* 805D8D48  3B 20 00 00 */	li r25, 0
/* 805D8D4C  3B 00 00 00 */	li r24, 0
/* 805D8D50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D8D54  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D8D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D8D5C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D8D60  54 9E 08 3C */	slwi r30, r4, 1
lbl_805D8D64:
/* 805D8D64  80 7F 05 24 */	lwz r3, 0x524(r31)
/* 805D8D68  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805D8D6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D8D70  7C 1E CA 14 */	add r0, r30, r25
/* 805D8D74  54 00 18 38 */	slwi r0, r0, 3
/* 805D8D78  3B 5B 05 BC */	addi r26, r27, 0x5bc
/* 805D8D7C  7F 5A 02 14 */	add r26, r26, r0
/* 805D8D80  80 1A 00 04 */	lwz r0, 4(r26)
/* 805D8D84  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805D8D88  7C 63 02 14 */	add r3, r3, r0
/* 805D8D8C  7F 84 E3 78 */	mr r4, r28
/* 805D8D90  4B D6 D7 21 */	bl PSMTXCopy
/* 805D8D94  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 805D8D98  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805D8D9C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 805D8DA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805D8DA4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 805D8DA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805D8DAC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805D8DB0  38 00 00 FF */	li r0, 0xff
/* 805D8DB4  90 01 00 08 */	stw r0, 8(r1)
/* 805D8DB8  38 80 00 00 */	li r4, 0
/* 805D8DBC  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D8DC0  38 00 FF FF */	li r0, -1
/* 805D8DC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D8DC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D8DCC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D8DD0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805D8DD4  3A F8 2E 04 */	addi r23, r24, 0x2e04
/* 805D8DD8  7C 9F B8 2E */	lwzx r4, r31, r23
/* 805D8DDC  38 A0 00 00 */	li r5, 0
/* 805D8DE0  A0 DA 00 00 */	lhz r6, 0(r26)
/* 805D8DE4  38 E1 00 24 */	addi r7, r1, 0x24
/* 805D8DE8  39 00 00 00 */	li r8, 0
/* 805D8DEC  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 805D8DF0  39 40 00 00 */	li r10, 0
/* 805D8DF4  C0 3B 00 08 */	lfs f1, 8(r27)
/* 805D8DF8  4B A7 46 D5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D8DFC  7C 7F B9 2E */	stwx r3, r31, r23
/* 805D8E00  3B 39 00 01 */	addi r25, r25, 1
/* 805D8E04  2C 19 00 02 */	cmpwi r25, 2
/* 805D8E08  3B 18 00 04 */	addi r24, r24, 4
/* 805D8E0C  41 80 FF 58 */	blt lbl_805D8D64
/* 805D8E10  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070525@ha */
/* 805D8E14  38 03 05 25 */	addi r0, r3, 0x0525 /* 0x00070525@l */
/* 805D8E18  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D8E1C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805D8E20  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805D8E24  80 63 00 00 */	lwz r3, 0(r3)
/* 805D8E28  38 81 00 20 */	addi r4, r1, 0x20
/* 805D8E2C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D8E30  38 C0 00 00 */	li r6, 0
/* 805D8E34  38 E0 00 00 */	li r7, 0
/* 805D8E38  C0 3B 00 08 */	lfs f1, 8(r27)
/* 805D8E3C  FC 40 08 90 */	fmr f2, f1
/* 805D8E40  C0 7B 00 58 */	lfs f3, 0x58(r27)
/* 805D8E44  FC 80 18 90 */	fmr f4, f3
/* 805D8E48  39 00 00 00 */	li r8, 0
/* 805D8E4C  4B CD 36 C1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_805D8E50:
/* 805D8E50  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 805D8E54  48 00 3A 91 */	bl func_805DC8E4
/* 805D8E58  2C 03 00 00 */	cmpwi r3, 0
/* 805D8E5C  41 82 00 20 */	beq lbl_805D8E7C
/* 805D8E60  80 1F 06 A0 */	lwz r0, 0x6a0(r31)
/* 805D8E64  2C 00 00 01 */	cmpwi r0, 1
/* 805D8E68  40 82 00 14 */	bne lbl_805D8E7C
/* 805D8E6C  38 60 00 05 */	li r3, 5
/* 805D8E70  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D8E74  7C 04 07 74 */	extsb r4, r0
/* 805D8E78  4B A5 4C 25 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_805D8E7C:
/* 805D8E7C  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D8E80  28 00 00 00 */	cmplwi r0, 0
/* 805D8E84  41 82 00 14 */	beq lbl_805D8E98
/* 805D8E88  7F E3 FB 78 */	mr r3, r31
/* 805D8E8C  4B FF 33 39 */	bl mZsMoveChk__8daB_DS_cFv
/* 805D8E90  7F E3 FB 78 */	mr r3, r31
/* 805D8E94  4B FF 35 C1 */	bl mZsMoveChk_Guard__8daB_DS_cFv
lbl_805D8E98:
/* 805D8E98  7F E3 FB 78 */	mr r3, r31
/* 805D8E9C  4B FF 41 D9 */	bl damage_check__8daB_DS_cFv
/* 805D8EA0  7F E3 FB 78 */	mr r3, r31
/* 805D8EA4  38 80 00 00 */	li r4, 0
/* 805D8EA8  4B FF 39 FD */	bl mCreateTrap__8daB_DS_cFb
/* 805D8EAC  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805D8EB0  2C 00 00 01 */	cmpwi r0, 1
/* 805D8EB4  41 82 00 4C */	beq lbl_805D8F00
/* 805D8EB8  38 60 00 08 */	li r3, 8
/* 805D8EBC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D8EC0  7C 04 07 74 */	extsb r4, r0
/* 805D8EC4  4B A5 4B 6D */	bl dComIfGs_isZoneSwitch__Fii
/* 805D8EC8  2C 03 00 00 */	cmpwi r3, 0
/* 805D8ECC  40 82 00 34 */	bne lbl_805D8F00
/* 805D8ED0  38 7F 06 94 */	addi r3, r31, 0x694
/* 805D8ED4  48 00 3A 11 */	bl func_805DC8E4
/* 805D8ED8  2C 03 00 00 */	cmpwi r3, 0
/* 805D8EDC  40 82 00 24 */	bne lbl_805D8F00
/* 805D8EE0  38 60 00 08 */	li r3, 8
/* 805D8EE4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D8EE8  7C 04 07 74 */	extsb r4, r0
/* 805D8EEC  4B A5 4A 61 */	bl dComIfGs_onZoneSwitch__Fii
/* 805D8EF0  3C 60 80 5E */	lis r3, l_HIO@ha /* 0x805DDABC@ha */
/* 805D8EF4  38 63 DA BC */	addi r3, r3, l_HIO@l /* 0x805DDABC@l */
/* 805D8EF8  A8 03 00 2C */	lha r0, 0x2c(r3)
/* 805D8EFC  90 1F 06 98 */	stw r0, 0x698(r31)
lbl_805D8F00:
/* 805D8F00  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805D8F04  28 00 00 00 */	cmplwi r0, 0
/* 805D8F08  40 82 00 60 */	bne lbl_805D8F68
/* 805D8F0C  38 60 00 08 */	li r3, 8
/* 805D8F10  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D8F14  7C 04 07 74 */	extsb r4, r0
/* 805D8F18  4B A5 4B 19 */	bl dComIfGs_isZoneSwitch__Fii
/* 805D8F1C  2C 03 00 00 */	cmpwi r3, 0
/* 805D8F20  41 82 00 48 */	beq lbl_805D8F68
/* 805D8F24  38 7F 06 98 */	addi r3, r31, 0x698
/* 805D8F28  48 00 39 BD */	bl func_805DC8E4
/* 805D8F2C  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 805D8F30  2C 00 00 01 */	cmpwi r0, 1
/* 805D8F34  41 80 00 34 */	blt lbl_805D8F68
/* 805D8F38  2C 00 00 03 */	cmpwi r0, 3
/* 805D8F3C  41 81 00 2C */	bgt lbl_805D8F68
/* 805D8F40  88 9F 08 57 */	lbz r4, 0x857(r31)
/* 805D8F44  28 04 00 FF */	cmplwi r4, 0xff
/* 805D8F48  41 82 00 20 */	beq lbl_805D8F68
/* 805D8F4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D8F50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D8F54  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805D8F58  7C 05 07 74 */	extsb r5, r0
/* 805D8F5C  4B A5 C2 A5 */	bl onSwitch__10dSv_info_cFii
/* 805D8F60  38 00 00 00 */	li r0, 0
/* 805D8F64  90 1F 06 98 */	stw r0, 0x698(r31)
lbl_805D8F68:
/* 805D8F68  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805D8F6C  28 00 00 07 */	cmplwi r0, 7
/* 805D8F70  41 81 00 78 */	bgt lbl_805D8FE8
/* 805D8F74  3C 60 80 5E */	lis r3, lit_10109@ha /* 0x805DD904@ha */
/* 805D8F78  38 63 D9 04 */	addi r3, r3, lit_10109@l /* 0x805DD904@l */
/* 805D8F7C  54 00 10 3A */	slwi r0, r0, 2
/* 805D8F80  7C 03 00 2E */	lwzx r0, r3, r0
/* 805D8F84  7C 09 03 A6 */	mtctr r0
/* 805D8F88  4E 80 04 20 */	bctr 
lbl_805D8F8C:
/* 805D8F8C  7F E3 FB 78 */	mr r3, r31
/* 805D8F90  4B FF 4B 31 */	bl executeOpeningDemo__8daB_DS_cFv
/* 805D8F94  48 00 00 54 */	b lbl_805D8FE8
lbl_805D8F98:
/* 805D8F98  7F E3 FB 78 */	mr r3, r31
/* 805D8F9C  4B FF 70 91 */	bl executeWait__8daB_DS_cFv
/* 805D8FA0  48 00 00 48 */	b lbl_805D8FE8
lbl_805D8FA4:
/* 805D8FA4  7F E3 FB 78 */	mr r3, r31
/* 805D8FA8  4B FF 71 ED */	bl executeCircle__8daB_DS_cFv
/* 805D8FAC  48 00 00 3C */	b lbl_805D8FE8
lbl_805D8FB0:
/* 805D8FB0  7F E3 FB 78 */	mr r3, r31
/* 805D8FB4  4B FF 77 99 */	bl executeDamage__8daB_DS_cFv
/* 805D8FB8  48 00 00 30 */	b lbl_805D8FE8
lbl_805D8FBC:
/* 805D8FBC  7F E3 FB 78 */	mr r3, r31
/* 805D8FC0  4B FF 8E 71 */	bl executeEtcDamage__8daB_DS_cFv
/* 805D8FC4  48 00 00 24 */	b lbl_805D8FE8
lbl_805D8FC8:
/* 805D8FC8  7F E3 FB 78 */	mr r3, r31
/* 805D8FCC  4B FF 92 A1 */	bl executeBreathAttack__8daB_DS_cFv
/* 805D8FD0  48 00 00 18 */	b lbl_805D8FE8
lbl_805D8FD4:
/* 805D8FD4  7F E3 FB 78 */	mr r3, r31
/* 805D8FD8  4B FF 95 49 */	bl executeHandAttack__8daB_DS_cFv
/* 805D8FDC  48 00 00 0C */	b lbl_805D8FE8
lbl_805D8FE0:
/* 805D8FE0  7F E3 FB 78 */	mr r3, r31
/* 805D8FE4  4B FF 97 49 */	bl executeBreathSearch__8daB_DS_cFv
lbl_805D8FE8:
/* 805D8FE8  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805D8FEC  2C 00 00 06 */	cmpwi r0, 6
/* 805D8FF0  40 82 00 10 */	bne lbl_805D9000
/* 805D8FF4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D8FF8  2C 00 00 03 */	cmpwi r0, 3
/* 805D8FFC  41 80 00 58 */	blt lbl_805D9054
lbl_805D9000:
/* 805D9000  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 805D9004  2C 00 00 05 */	cmpwi r0, 5
/* 805D9008  40 82 00 4C */	bne lbl_805D9054
/* 805D900C  38 7F 07 FC */	addi r3, r31, 0x7fc
/* 805D9010  C0 3B 00 08 */	lfs f1, 8(r27)
/* 805D9014  C0 5B 04 04 */	lfs f2, 0x404(r27)
/* 805D9018  FC 60 10 90 */	fmr f3, f2
/* 805D901C  C0 9B 04 0C */	lfs f4, 0x40c(r27)
/* 805D9020  4B C9 69 5D */	bl cLib_addCalc__FPfffff
/* 805D9024  C0 3F 07 FC */	lfs f1, 0x7fc(r31)
/* 805D9028  C0 1B 05 EC */	lfs f0, 0x5ec(r27)
/* 805D902C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D9030  40 81 00 14 */	ble lbl_805D9044
/* 805D9034  38 00 00 01 */	li r0, 1
/* 805D9038  90 1F 08 40 */	stw r0, 0x840(r31)
/* 805D903C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 805D9040  D0 1F 07 FC */	stfs f0, 0x7fc(r31)
lbl_805D9044:
/* 805D9044  38 60 00 05 */	li r3, 5
/* 805D9048  38 80 00 01 */	li r4, 1
/* 805D904C  C0 3F 07 FC */	lfs f1, 0x7fc(r31)
/* 805D9050  4B BC F7 BD */	bl dKy_custom_colset__FUcUcf
lbl_805D9054:
/* 805D9054  7F E3 FB 78 */	mr r3, r31
/* 805D9058  4B FF F0 99 */	bl mSoundSE_Set__8daB_DS_cFv
/* 805D905C  7F E3 FB 78 */	mr r3, r31
/* 805D9060  38 9F 0A 88 */	addi r4, r31, 0xa88
/* 805D9064  4B A4 16 69 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805D9068  38 7F 08 70 */	addi r3, r31, 0x870
/* 805D906C  C0 3B 02 EC */	lfs f1, 0x2ec(r27)
/* 805D9070  C0 5B 02 78 */	lfs f2, 0x278(r27)
/* 805D9074  4B A9 CE E5 */	bl SetWall__12dBgS_AcchCirFff
/* 805D9078  C0 3B 05 F0 */	lfs f1, 0x5f0(r27)
/* 805D907C  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805D9080  2C 00 00 01 */	cmpwi r0, 1
/* 805D9084  40 82 00 08 */	bne lbl_805D908C
/* 805D9088  C0 3B 00 04 */	lfs f1, 4(r27)
lbl_805D908C:
/* 805D908C  2C 00 00 03 */	cmpwi r0, 3
/* 805D9090  40 82 00 10 */	bne lbl_805D90A0
/* 805D9094  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D9098  2C 00 00 64 */	cmpwi r0, 0x64
/* 805D909C  40 80 00 20 */	bge lbl_805D90BC
lbl_805D90A0:
/* 805D90A0  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805D90A4  4B A9 E0 71 */	bl SetGroundUpY__9dBgS_AcchFf
/* 805D90A8  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805D90AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D90B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D90B4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805D90B8  4B A9 D9 F5 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_805D90BC:
/* 805D90BC  88 1F 08 52 */	lbz r0, 0x852(r31)
/* 805D90C0  28 00 00 64 */	cmplwi r0, 0x64
/* 805D90C4  41 82 00 C8 */	beq lbl_805D918C
/* 805D90C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D90CC  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D90D0  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 805D90D4  7F E4 FB 78 */	mr r4, r31
/* 805D90D8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D90DC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 805D90E0  7D 89 03 A6 */	mtctr r12
/* 805D90E4  4E 80 04 21 */	bctrl 
/* 805D90E8  2C 03 00 00 */	cmpwi r3, 0
/* 805D90EC  41 82 00 1C */	beq lbl_805D9108
/* 805D90F0  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 805D90F4  7F E4 FB 78 */	mr r4, r31
/* 805D90F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D90FC  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 805D9100  7D 89 03 A6 */	mtctr r12
/* 805D9104  4E 80 04 21 */	bctrl 
lbl_805D9108:
/* 805D9108  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D910C  7C 03 07 74 */	extsb r3, r0
/* 805D9110  4B A5 3F 5D */	bl dComIfGp_getReverb__Fi
/* 805D9114  7C 65 1B 78 */	mr r5, r3
/* 805D9118  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D911C  38 80 00 00 */	li r4, 0
/* 805D9120  4B A3 7F 91 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805D9124  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 805D9128  4B A3 43 01 */	bl play__14mDoExt_baseAnmFv
/* 805D912C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D9130  7C 03 07 74 */	extsb r3, r0
/* 805D9134  4B A5 3F 39 */	bl dComIfGp_getReverb__Fi
/* 805D9138  7C 65 1B 78 */	mr r5, r3
/* 805D913C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805D9140  38 80 00 00 */	li r4, 0
/* 805D9144  4B A3 7F 6D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805D9148  88 1F 08 5C */	lbz r0, 0x85c(r31)
/* 805D914C  28 00 00 00 */	cmplwi r0, 0
/* 805D9150  41 82 00 20 */	beq lbl_805D9170
/* 805D9154  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D9158  7C 03 07 74 */	extsb r3, r0
/* 805D915C  4B A5 3F 11 */	bl dComIfGp_getReverb__Fi
/* 805D9160  7C 65 1B 78 */	mr r5, r3
/* 805D9164  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 805D9168  38 80 00 00 */	li r4, 0
/* 805D916C  4B A3 7F 45 */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_805D9170:
/* 805D9170  88 1F 08 5F */	lbz r0, 0x85f(r31)
/* 805D9174  28 00 00 00 */	cmplwi r0, 0
/* 805D9178  41 82 00 14 */	beq lbl_805D918C
/* 805D917C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 805D9180  4B A3 42 A9 */	bl play__14mDoExt_baseAnmFv
/* 805D9184  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805D9188  4B A3 42 A1 */	bl play__14mDoExt_baseAnmFv
lbl_805D918C:
/* 805D918C  39 61 00 60 */	addi r11, r1, 0x60
/* 805D9190  4B D8 90 81 */	bl _restgpr_23
/* 805D9194  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805D9198  7C 08 03 A6 */	mtlr r0
/* 805D919C  38 21 00 60 */	addi r1, r1, 0x60
/* 805D91A0  4E 80 00 20 */	blr 
