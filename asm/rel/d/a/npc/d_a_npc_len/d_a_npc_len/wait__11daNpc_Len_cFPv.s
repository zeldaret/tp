lbl_80A66C74:
/* 80A66C74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A66C78  7C 08 02 A6 */	mflr r0
/* 80A66C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A66C80  39 61 00 20 */	addi r11, r1, 0x20
/* 80A66C84  4B 8F B5 58 */	b _savegpr_29
/* 80A66C88  7C 7E 1B 78 */	mr r30, r3
/* 80A66C8C  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha
/* 80A66C90  3B E3 8E A4 */	addi r31, r3, m__17daNpc_Len_Param_c@l
/* 80A66C94  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80A66C98  2C 00 00 02 */	cmpwi r0, 2
/* 80A66C9C  41 82 03 00 */	beq lbl_80A66F9C
/* 80A66CA0  40 80 06 B0 */	bge lbl_80A67350
/* 80A66CA4  2C 00 00 00 */	cmpwi r0, 0
/* 80A66CA8  40 80 00 0C */	bge lbl_80A66CB4
/* 80A66CAC  48 00 06 A4 */	b lbl_80A67350
/* 80A66CB0  48 00 06 A0 */	b lbl_80A67350
lbl_80A66CB4:
/* 80A66CB4  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A66CB8  2C 00 00 00 */	cmpwi r0, 0
/* 80A66CBC  40 82 02 E0 */	bne lbl_80A66F9C
/* 80A66CC0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A66CC4  2C 00 00 03 */	cmpwi r0, 3
/* 80A66CC8  41 82 01 BC */	beq lbl_80A66E84
/* 80A66CCC  40 80 00 14 */	bge lbl_80A66CE0
/* 80A66CD0  2C 00 00 01 */	cmpwi r0, 1
/* 80A66CD4  41 82 00 18 */	beq lbl_80A66CEC
/* 80A66CD8  40 80 00 F8 */	bge lbl_80A66DD0
/* 80A66CDC  48 00 02 60 */	b lbl_80A66F3C
lbl_80A66CE0:
/* 80A66CE0  2C 00 00 07 */	cmpwi r0, 7
/* 80A66CE4  41 82 01 FC */	beq lbl_80A66EE0
/* 80A66CE8  48 00 02 54 */	b lbl_80A66F3C
lbl_80A66CEC:
/* 80A66CEC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A66CF0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A66CF4  28 04 00 FF */	cmplwi r4, 0xff
/* 80A66CF8  41 82 00 7C */	beq lbl_80A66D74
/* 80A66CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A66D00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A66D04  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A66D08  7C 05 07 74 */	extsb r5, r0
/* 80A66D0C  4B 5C E6 54 */	b isSwitch__10dSv_info_cCFii
/* 80A66D10  2C 03 00 00 */	cmpwi r3, 0
/* 80A66D14  41 82 00 60 */	beq lbl_80A66D74
/* 80A66D18  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A66D1C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A66D20  41 82 00 24 */	beq lbl_80A66D44
/* 80A66D24  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A66D28  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A66D2C  4B 6D EB 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66D30  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A66D34  38 00 00 0F */	li r0, 0xf
/* 80A66D38  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A66D3C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66D40  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A66D44:
/* 80A66D44  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A66D48  2C 00 00 07 */	cmpwi r0, 7
/* 80A66D4C  41 82 02 48 */	beq lbl_80A66F94
/* 80A66D50  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A66D54  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A66D58  4B 6D EB 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66D5C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A66D60  38 00 00 07 */	li r0, 7
/* 80A66D64  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A66D68  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66D6C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A66D70  48 00 02 24 */	b lbl_80A66F94
lbl_80A66D74:
/* 80A66D74  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A66D78  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A66D7C  41 82 00 24 */	beq lbl_80A66DA0
/* 80A66D80  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A66D84  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A66D88  4B 6D EB 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66D8C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A66D90  38 00 00 0E */	li r0, 0xe
/* 80A66D94  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A66D98  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66D9C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A66DA0:
/* 80A66DA0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A66DA4  2C 00 00 06 */	cmpwi r0, 6
/* 80A66DA8  41 82 01 EC */	beq lbl_80A66F94
/* 80A66DAC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A66DB0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A66DB4  4B 6D EA E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66DB8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A66DBC  38 00 00 06 */	li r0, 6
/* 80A66DC0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A66DC4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66DC8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A66DCC  48 00 01 C8 */	b lbl_80A66F94
lbl_80A66DD0:
/* 80A66DD0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A66DD4  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A66DD8  41 82 00 24 */	beq lbl_80A66DFC
/* 80A66DDC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A66DE0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A66DE4  4B 6D EA B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66DE8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A66DEC  38 00 00 11 */	li r0, 0x11
/* 80A66DF0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A66DF4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66DF8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A66DFC:
/* 80A66DFC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A66E00  2C 00 00 00 */	cmpwi r0, 0
/* 80A66E04  41 82 00 24 */	beq lbl_80A66E28
/* 80A66E08  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A66E0C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A66E10  4B 6D EA 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66E14  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A66E18  38 00 00 00 */	li r0, 0
/* 80A66E1C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A66E20  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66E24  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A66E28:
/* 80A66E28  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A66E2C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A66E30  28 04 00 FF */	cmplwi r4, 0xff
/* 80A66E34  41 82 01 60 */	beq lbl_80A66F94
/* 80A66E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A66E3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A66E40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A66E44  7C 05 07 74 */	extsb r5, r0
/* 80A66E48  4B 5C E5 18 */	b isSwitch__10dSv_info_cCFii
/* 80A66E4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A66E50  40 82 01 44 */	bne lbl_80A66F94
/* 80A66E54  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A66E58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A66E5C  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80A66E60  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A66E64  4B 6D E8 7C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A66E68  7F C3 F3 78 */	mr r3, r30
/* 80A66E6C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A66E70  4B 5B 38 A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A66E74  7C 64 1B 78 */	mr r4, r3
/* 80A66E78  7F C3 F3 78 */	mr r3, r30
/* 80A66E7C  4B 6E 3B 9C */	b setAngle__8daNpcT_cFs
/* 80A66E80  48 00 01 14 */	b lbl_80A66F94
lbl_80A66E84:
/* 80A66E84  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A66E88  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A66E8C  41 82 00 24 */	beq lbl_80A66EB0
/* 80A66E90  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A66E94  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A66E98  4B 6D EA 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66E9C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A66EA0  38 00 00 11 */	li r0, 0x11
/* 80A66EA4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A66EA8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66EAC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A66EB0:
/* 80A66EB0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A66EB4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A66EB8  41 82 00 DC */	beq lbl_80A66F94
/* 80A66EBC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A66EC0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A66EC4  4B 6D E9 D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66EC8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A66ECC  38 00 00 0A */	li r0, 0xa
/* 80A66ED0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A66ED4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66ED8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A66EDC  48 00 00 B8 */	b lbl_80A66F94
lbl_80A66EE0:
/* 80A66EE0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A66EE4  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A66EE8  41 82 00 24 */	beq lbl_80A66F0C
/* 80A66EEC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A66EF0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A66EF4  4B 6D E9 A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66EF8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A66EFC  38 00 00 0C */	li r0, 0xc
/* 80A66F00  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A66F04  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66F08  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A66F0C:
/* 80A66F0C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A66F10  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A66F14  41 82 00 80 */	beq lbl_80A66F94
/* 80A66F18  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A66F1C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A66F20  4B 6D E9 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66F24  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A66F28  38 00 00 0C */	li r0, 0xc
/* 80A66F2C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A66F30  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66F34  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A66F38  48 00 00 5C */	b lbl_80A66F94
lbl_80A66F3C:
/* 80A66F3C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A66F40  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A66F44  41 82 00 24 */	beq lbl_80A66F68
/* 80A66F48  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A66F4C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A66F50  4B 6D E9 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66F54  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A66F58  38 00 00 11 */	li r0, 0x11
/* 80A66F5C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A66F60  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66F64  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A66F68:
/* 80A66F68  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A66F6C  2C 00 00 00 */	cmpwi r0, 0
/* 80A66F70  41 82 00 24 */	beq lbl_80A66F94
/* 80A66F74  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A66F78  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A66F7C  4B 6D E9 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66F80  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A66F84  38 00 00 00 */	li r0, 0
/* 80A66F88  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A66F8C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66F90  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A66F94:
/* 80A66F94  38 00 00 02 */	li r0, 2
/* 80A66F98  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A66F9C:
/* 80A66F9C  88 1E 0F EE */	lbz r0, 0xfee(r30)
/* 80A66FA0  28 00 00 00 */	cmplwi r0, 0
/* 80A66FA4  41 82 00 28 */	beq lbl_80A66FCC
/* 80A66FA8  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A66FAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A66FB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A66FB4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A66FB8  4B 6D E7 28 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A66FBC  38 00 00 01 */	li r0, 1
/* 80A66FC0  98 1E 0E 32 */	stb r0, 0xe32(r30)
/* 80A66FC4  98 1E 0E 33 */	stb r0, 0xe33(r30)
/* 80A66FC8  48 00 00 D8 */	b lbl_80A670A0
lbl_80A66FCC:
/* 80A66FCC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A66FD0  2C 00 00 02 */	cmpwi r0, 2
/* 80A66FD4  41 82 00 94 */	beq lbl_80A67068
/* 80A66FD8  40 80 00 C8 */	bge lbl_80A670A0
/* 80A66FDC  2C 00 00 01 */	cmpwi r0, 1
/* 80A66FE0  40 80 00 08 */	bge lbl_80A66FE8
/* 80A66FE4  48 00 00 BC */	b lbl_80A670A0
lbl_80A66FE8:
/* 80A66FE8  7F C3 F3 78 */	mr r3, r30
/* 80A66FEC  7F C4 F3 78 */	mr r4, r30
/* 80A66FF0  38 BF 00 00 */	addi r5, r31, 0
/* 80A66FF4  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 80A66FF8  C0 45 00 74 */	lfs f2, 0x74(r5)
/* 80A66FFC  C0 65 00 78 */	lfs f3, 0x78(r5)
/* 80A67000  C0 85 00 7C */	lfs f4, 0x7c(r5)
/* 80A67004  C0 A5 00 80 */	lfs f5, 0x80(r5)
/* 80A67008  C0 C5 00 84 */	lfs f6, 0x84(r5)
/* 80A6700C  C0 E5 00 88 */	lfs f7, 0x88(r5)
/* 80A67010  4B FF F0 C9 */	bl checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff
/* 80A67014  2C 03 00 00 */	cmpwi r3, 0
/* 80A67018  41 82 00 14 */	beq lbl_80A6702C
/* 80A6701C  38 00 00 03 */	li r0, 3
/* 80A67020  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80A67024  38 00 00 01 */	li r0, 1
/* 80A67028  98 1E 0F EC */	stb r0, 0xfec(r30)
lbl_80A6702C:
/* 80A6702C  88 1E 0F EC */	lbz r0, 0xfec(r30)
/* 80A67030  28 00 00 00 */	cmplwi r0, 0
/* 80A67034  41 82 00 6C */	beq lbl_80A670A0
/* 80A67038  38 60 00 3C */	li r3, 0x3c
/* 80A6703C  4B 6E 5A 70 */	b daNpcT_chkEvtBit__FUl
/* 80A67040  2C 03 00 00 */	cmpwi r3, 0
/* 80A67044  41 82 00 5C */	beq lbl_80A670A0
/* 80A67048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6704C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A67050  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A67054  28 00 00 00 */	cmplwi r0, 0
/* 80A67058  40 82 00 48 */	bne lbl_80A670A0
/* 80A6705C  38 00 00 00 */	li r0, 0
/* 80A67060  98 1E 0F EC */	stb r0, 0xfec(r30)
/* 80A67064  48 00 00 3C */	b lbl_80A670A0
lbl_80A67068:
/* 80A67068  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A6706C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A67070  28 04 00 FF */	cmplwi r4, 0xff
/* 80A67074  41 82 00 2C */	beq lbl_80A670A0
/* 80A67078  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6707C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A67080  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A67084  7C 05 07 74 */	extsb r5, r0
/* 80A67088  4B 5C E2 D8 */	b isSwitch__10dSv_info_cCFii
/* 80A6708C  2C 03 00 00 */	cmpwi r3, 0
/* 80A67090  40 82 00 10 */	bne lbl_80A670A0
/* 80A67094  38 00 00 01 */	li r0, 1
/* 80A67098  98 1E 0E 32 */	stb r0, 0xe32(r30)
/* 80A6709C  98 1E 0E 33 */	stb r0, 0xe33(r30)
lbl_80A670A0:
/* 80A670A0  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A670A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A670A8  40 82 02 A8 */	bne lbl_80A67350
/* 80A670AC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A670B0  28 00 00 01 */	cmplwi r0, 1
/* 80A670B4  40 82 00 CC */	bne lbl_80A67180
/* 80A670B8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A670BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A670C0  41 82 00 24 */	beq lbl_80A670E4
/* 80A670C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A670C8  4B 6D E6 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A670CC  38 00 00 00 */	li r0, 0
/* 80A670D0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A670D4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A670D8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A670DC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A670E0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A670E4:
/* 80A670E4  38 00 00 00 */	li r0, 0
/* 80A670E8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A670EC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A670F0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A670F4  28 04 00 FF */	cmplwi r4, 0xff
/* 80A670F8  41 82 02 40 */	beq lbl_80A67338
/* 80A670FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A67100  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A67104  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A67108  7C 05 07 74 */	extsb r5, r0
/* 80A6710C  4B 5C E2 54 */	b isSwitch__10dSv_info_cCFii
/* 80A67110  2C 03 00 00 */	cmpwi r3, 0
/* 80A67114  41 82 02 24 */	beq lbl_80A67338
/* 80A67118  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A6711C  2C 00 00 07 */	cmpwi r0, 7
/* 80A67120  41 82 02 18 */	beq lbl_80A67338
/* 80A67124  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A67128  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A6712C  41 82 00 24 */	beq lbl_80A67150
/* 80A67130  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A67134  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A67138  4B 6D E7 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6713C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A67140  38 00 00 0F */	li r0, 0xf
/* 80A67144  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A67148  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A6714C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A67150:
/* 80A67150  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A67154  2C 00 00 07 */	cmpwi r0, 7
/* 80A67158  41 82 01 E0 */	beq lbl_80A67338
/* 80A6715C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A67160  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A67164  4B 6D E7 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A67168  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A6716C  38 00 00 07 */	li r0, 7
/* 80A67170  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A67174  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A67178  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A6717C  48 00 01 BC */	b lbl_80A67338
lbl_80A67180:
/* 80A67180  28 00 00 03 */	cmplwi r0, 3
/* 80A67184  40 82 00 0C */	bne lbl_80A67190
/* 80A67188  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A6718C  4B 6D E5 70 */	b remove__18daNpcT_ActorMngr_cFv
lbl_80A67190:
/* 80A67190  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A67194  4B 6D E5 74 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A67198  28 03 00 00 */	cmplwi r3, 0
/* 80A6719C  41 82 00 F0 */	beq lbl_80A6728C
/* 80A671A0  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A671A4  28 00 00 00 */	cmplwi r0, 0
/* 80A671A8  40 82 00 E4 */	bne lbl_80A6728C
/* 80A671AC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A671B0  28 00 00 04 */	cmplwi r0, 4
/* 80A671B4  41 82 00 0C */	beq lbl_80A671C0
/* 80A671B8  28 00 00 07 */	cmplwi r0, 7
/* 80A671BC  40 82 00 14 */	bne lbl_80A671D0
lbl_80A671C0:
/* 80A671C0  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A671C4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A671C8  7C 03 00 00 */	cmpw r3, r0
/* 80A671CC  40 82 00 C0 */	bne lbl_80A6728C
lbl_80A671D0:
/* 80A671D0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A671D4  2C 00 00 01 */	cmpwi r0, 1
/* 80A671D8  41 82 00 28 */	beq lbl_80A67200
/* 80A671DC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A671E0  4B 6D E5 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A671E4  38 00 00 00 */	li r0, 0
/* 80A671E8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A671EC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A671F0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A671F4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A671F8  38 00 00 01 */	li r0, 1
/* 80A671FC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A67200:
/* 80A67200  38 00 00 00 */	li r0, 0
/* 80A67204  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A67208  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A6720C  4B 6D E4 FC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A67210  7C 64 1B 78 */	mr r4, r3
/* 80A67214  7F C3 F3 78 */	mr r3, r30
/* 80A67218  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80A6721C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A67220  4B 6E 39 B0 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A67224  2C 03 00 00 */	cmpwi r3, 0
/* 80A67228  40 82 00 38 */	bne lbl_80A67260
/* 80A6722C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A67230  2C 00 00 00 */	cmpwi r0, 0
/* 80A67234  41 82 00 24 */	beq lbl_80A67258
/* 80A67238  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6723C  4B 6D E4 C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A67240  38 00 00 00 */	li r0, 0
/* 80A67244  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A67248  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A6724C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A67250  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A67254  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A67258:
/* 80A67258  38 00 00 00 */	li r0, 0
/* 80A6725C  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80A67260:
/* 80A67260  7F C3 F3 78 */	mr r3, r30
/* 80A67264  4B 6E 40 D4 */	b srchPlayerActor__8daNpcT_cFv
/* 80A67268  2C 03 00 00 */	cmpwi r3, 0
/* 80A6726C  40 82 00 CC */	bne lbl_80A67338
/* 80A67270  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A67274  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A67278  7C 03 00 00 */	cmpw r3, r0
/* 80A6727C  40 82 00 BC */	bne lbl_80A67338
/* 80A67280  38 00 00 01 */	li r0, 1
/* 80A67284  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A67288  48 00 00 B0 */	b lbl_80A67338
lbl_80A6728C:
/* 80A6728C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A67290  2C 00 00 00 */	cmpwi r0, 0
/* 80A67294  41 82 00 24 */	beq lbl_80A672B8
/* 80A67298  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6729C  4B 6D E4 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A672A0  38 00 00 00 */	li r0, 0
/* 80A672A4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A672A8  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A672AC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A672B0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A672B4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A672B8:
/* 80A672B8  38 00 00 00 */	li r0, 0
/* 80A672BC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A672C0  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A672C4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A672C8  7C 04 00 00 */	cmpw r4, r0
/* 80A672CC  41 82 00 58 */	beq lbl_80A67324
/* 80A672D0  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80A672D4  28 00 00 00 */	cmplwi r0, 0
/* 80A672D8  41 82 00 30 */	beq lbl_80A67308
/* 80A672DC  7F C3 F3 78 */	mr r3, r30
/* 80A672E0  38 A0 00 11 */	li r5, 0x11
/* 80A672E4  38 C0 00 0D */	li r6, 0xd
/* 80A672E8  38 E0 00 0F */	li r7, 0xf
/* 80A672EC  39 00 00 00 */	li r8, 0
/* 80A672F0  4B 6E 43 58 */	b step__8daNpcT_cFsiiii
/* 80A672F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A672F8  41 82 00 20 */	beq lbl_80A67318
/* 80A672FC  38 00 00 01 */	li r0, 1
/* 80A67300  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A67304  48 00 00 14 */	b lbl_80A67318
lbl_80A67308:
/* 80A67308  7F C3 F3 78 */	mr r3, r30
/* 80A6730C  4B 6E 37 0C */	b setAngle__8daNpcT_cFs
/* 80A67310  38 00 00 01 */	li r0, 1
/* 80A67314  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A67318:
/* 80A67318  38 00 00 00 */	li r0, 0
/* 80A6731C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A67320  48 00 00 18 */	b lbl_80A67338
lbl_80A67324:
/* 80A67324  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A67328  28 00 00 00 */	cmplwi r0, 0
/* 80A6732C  40 82 00 0C */	bne lbl_80A67338
/* 80A67330  7F C3 F3 78 */	mr r3, r30
/* 80A67334  4B 6E 40 04 */	b srchPlayerActor__8daNpcT_cFv
lbl_80A67338:
/* 80A67338  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A6733C  2C 00 00 03 */	cmpwi r0, 3
/* 80A67340  41 82 00 08 */	beq lbl_80A67348
/* 80A67344  48 00 00 0C */	b lbl_80A67350
lbl_80A67348:
/* 80A67348  38 00 00 00 */	li r0, 0
/* 80A6734C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A67350:
/* 80A67350  38 60 00 01 */	li r3, 1
/* 80A67354  39 61 00 20 */	addi r11, r1, 0x20
/* 80A67358  4B 8F AE D0 */	b _restgpr_29
/* 80A6735C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A67360  7C 08 03 A6 */	mtlr r0
/* 80A67364  38 21 00 20 */	addi r1, r1, 0x20
/* 80A67368  4E 80 00 20 */	blr 
