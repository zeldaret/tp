lbl_80D17E14:
/* 80D17E14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D17E18  7C 08 02 A6 */	mflr r0
/* 80D17E1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D17E20  39 61 00 30 */	addi r11, r1, 0x30
/* 80D17E24  4B 64 A3 A8 */	b _savegpr_25
/* 80D17E28  7C 7E 1B 78 */	mr r30, r3
/* 80D17E2C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D17E30  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D17E34  40 82 00 74 */	bne lbl_80D17EA8
/* 80D17E38  7F C0 F3 79 */	or. r0, r30, r30
/* 80D17E3C  41 82 00 60 */	beq lbl_80D17E9C
/* 80D17E40  7C 19 03 78 */	mr r25, r0
/* 80D17E44  4B 36 07 E0 */	b __ct__16dBgS_MoveBgActorFv
/* 80D17E48  3C 60 80 D2 */	lis r3, __vt__12daTogeTrap_c@ha
/* 80D17E4C  38 03 90 54 */	addi r0, r3, __vt__12daTogeTrap_c@l
/* 80D17E50  90 19 05 9C */	stw r0, 0x59c(r25)
/* 80D17E54  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D17E58  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D17E5C  90 19 05 B8 */	stw r0, 0x5b8(r25)
/* 80D17E60  38 79 05 BC */	addi r3, r25, 0x5bc
/* 80D17E64  4B 36 B8 FC */	b __ct__10dCcD_GSttsFv
/* 80D17E68  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D17E6C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D17E70  90 79 05 B8 */	stw r3, 0x5b8(r25)
/* 80D17E74  38 03 00 20 */	addi r0, r3, 0x20
/* 80D17E78  90 19 05 BC */	stw r0, 0x5bc(r25)
/* 80D17E7C  38 79 05 DC */	addi r3, r25, 0x5dc
/* 80D17E80  3C 80 80 D2 */	lis r4, __ct__8dCcD_CylFv@ha
/* 80D17E84  38 84 80 D4 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80D17E88  3C A0 80 D2 */	lis r5, __dt__8dCcD_CylFv@ha
/* 80D17E8C  38 A5 80 08 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80D17E90  38 C0 01 3C */	li r6, 0x13c
/* 80D17E94  38 E0 00 04 */	li r7, 4
/* 80D17E98  4B 64 9E C8 */	b __construct_array
lbl_80D17E9C:
/* 80D17E9C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D17EA0  60 00 00 08 */	ori r0, r0, 8
/* 80D17EA4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D17EA8:
/* 80D17EA8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D17EAC  98 1E 0A DE */	stb r0, 0xade(r30)
/* 80D17EB0  88 9E 0A DE */	lbz r4, 0xade(r30)
/* 80D17EB4  28 04 00 FF */	cmplwi r4, 0xff
/* 80D17EB8  41 82 00 28 */	beq lbl_80D17EE0
/* 80D17EBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D17EC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D17EC4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D17EC8  7C 05 07 74 */	extsb r5, r0
/* 80D17ECC  4B 31 D4 94 */	b isSwitch__10dSv_info_cCFii
/* 80D17ED0  2C 03 00 00 */	cmpwi r3, 0
/* 80D17ED4  41 82 00 0C */	beq lbl_80D17EE0
/* 80D17ED8  38 60 00 05 */	li r3, 5
/* 80D17EDC  48 00 01 14 */	b lbl_80D17FF0
lbl_80D17EE0:
/* 80D17EE0  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80D17EE4  3C 80 80 D2 */	lis r4, stringBase0@ha
/* 80D17EE8  38 84 8F 08 */	addi r4, r4, stringBase0@l
/* 80D17EEC  4B 31 4F D0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D17EF0  7C 7F 1B 78 */	mr r31, r3
/* 80D17EF4  2C 1F 00 04 */	cmpwi r31, 4
/* 80D17EF8  40 82 00 F4 */	bne lbl_80D17FEC
/* 80D17EFC  7F C3 F3 78 */	mr r3, r30
/* 80D17F00  3C 80 80 D2 */	lis r4, stringBase0@ha
/* 80D17F04  38 84 8F 08 */	addi r4, r4, stringBase0@l
/* 80D17F08  38 A0 00 08 */	li r5, 8
/* 80D17F0C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D17F10  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D17F14  38 E0 40 00 */	li r7, 0x4000
/* 80D17F18  39 00 00 00 */	li r8, 0
/* 80D17F1C  4B 36 08 A0 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D17F20  2C 03 00 05 */	cmpwi r3, 5
/* 80D17F24  40 82 00 0C */	bne lbl_80D17F30
/* 80D17F28  38 60 00 05 */	li r3, 5
/* 80D17F2C  48 00 00 C4 */	b lbl_80D17FF0
lbl_80D17F30:
/* 80D17F30  80 7E 0A D4 */	lwz r3, 0xad4(r30)
/* 80D17F34  38 03 00 24 */	addi r0, r3, 0x24
/* 80D17F38  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D17F3C  80 7E 0A D4 */	lwz r3, 0xad4(r30)
/* 80D17F40  80 83 00 04 */	lwz r4, 4(r3)
/* 80D17F44  7F C3 F3 78 */	mr r3, r30
/* 80D17F48  4B 30 26 30 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D17F4C  3C 60 80 D2 */	lis r3, rideCallBack__12daTogeTrap_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80D17F50  38 03 82 44 */	addi r0, r3, rideCallBack__12daTogeTrap_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80D17F54  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D17F58  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80D17F5C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80D17F60  38 80 00 FF */	li r4, 0xff
/* 80D17F64  38 A0 00 FF */	li r5, 0xff
/* 80D17F68  7F C6 F3 78 */	mr r6, r30
/* 80D17F6C  4B 36 B8 F4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D17F70  3B 20 00 00 */	li r25, 0
/* 80D17F74  3B A0 00 00 */	li r29, 0
/* 80D17F78  3C 60 80 D2 */	lis r3, mCcDCyl__12daTogeTrap_c@ha
/* 80D17F7C  3B 63 8F 30 */	addi r27, r3, mCcDCyl__12daTogeTrap_c@l
/* 80D17F80  3B 9E 05 A0 */	addi r28, r30, 0x5a0
lbl_80D17F84:
/* 80D17F84  7F 5E EA 14 */	add r26, r30, r29
/* 80D17F88  38 7A 05 DC */	addi r3, r26, 0x5dc
/* 80D17F8C  7F 64 DB 78 */	mr r4, r27
/* 80D17F90  4B 36 C9 24 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D17F94  93 9A 06 20 */	stw r28, 0x620(r26)
/* 80D17F98  80 1A 05 F4 */	lwz r0, 0x5f4(r26)
/* 80D17F9C  60 00 00 01 */	ori r0, r0, 1
/* 80D17FA0  90 1A 05 F4 */	stw r0, 0x5f4(r26)
/* 80D17FA4  3B 39 00 01 */	addi r25, r25, 1
/* 80D17FA8  2C 19 00 04 */	cmpwi r25, 4
/* 80D17FAC  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80D17FB0  41 80 FF D4 */	blt lbl_80D17F84
/* 80D17FB4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D17FB8  3C 60 80 D2 */	lis r3, lit_3780@ha
/* 80D17FBC  C0 03 8E DC */	lfs f0, lit_3780@l(r3)
/* 80D17FC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D17FC4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D17FC8  7F C3 F3 78 */	mr r3, r30
/* 80D17FCC  48 00 06 11 */	bl playerAreaCheck__12daTogeTrap_cFv
/* 80D17FD0  90 7E 0A E0 */	stw r3, 0xae0(r30)
/* 80D17FD4  38 00 00 00 */	li r0, 0
/* 80D17FD8  98 1E 0A DF */	stb r0, 0xadf(r30)
/* 80D17FDC  7F C3 F3 78 */	mr r3, r30
/* 80D17FE0  48 00 06 D1 */	bl init_modeWait__12daTogeTrap_cFv
/* 80D17FE4  7F C3 F3 78 */	mr r3, r30
/* 80D17FE8  4B FF FC 8D */	bl setBaseMtx__12daTogeTrap_cFv
lbl_80D17FEC:
/* 80D17FEC  7F E3 FB 78 */	mr r3, r31
lbl_80D17FF0:
/* 80D17FF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D17FF4  4B 64 A2 24 */	b _restgpr_25
/* 80D17FF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D17FFC  7C 08 03 A6 */	mtlr r0
/* 80D18000  38 21 00 30 */	addi r1, r1, 0x30
/* 80D18004  4E 80 00 20 */	blr 
