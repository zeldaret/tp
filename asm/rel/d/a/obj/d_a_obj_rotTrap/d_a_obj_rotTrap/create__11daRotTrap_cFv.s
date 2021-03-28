lbl_80CBFAC8:
/* 80CBFAC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CBFACC  7C 08 02 A6 */	mflr r0
/* 80CBFAD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CBFAD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CBFAD8  4B 6A 26 F4 */	b _savegpr_25
/* 80CBFADC  7C 7E 1B 78 */	mr r30, r3
/* 80CBFAE0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CBFAE4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CBFAE8  40 82 00 74 */	bne lbl_80CBFB5C
/* 80CBFAEC  7F C0 F3 79 */	or. r0, r30, r30
/* 80CBFAF0  41 82 00 60 */	beq lbl_80CBFB50
/* 80CBFAF4  7C 19 03 78 */	mr r25, r0
/* 80CBFAF8  4B 3B 8B 2C */	b __ct__16dBgS_MoveBgActorFv
/* 80CBFAFC  3C 60 80 CC */	lis r3, __vt__11daRotTrap_c@ha
/* 80CBFB00  38 03 0A 6C */	addi r0, r3, __vt__11daRotTrap_c@l
/* 80CBFB04  90 19 05 9C */	stw r0, 0x59c(r25)
/* 80CBFB08  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CBFB0C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CBFB10  90 19 05 CC */	stw r0, 0x5cc(r25)
/* 80CBFB14  38 79 05 D0 */	addi r3, r25, 0x5d0
/* 80CBFB18  4B 3C 3C 48 */	b __ct__10dCcD_GSttsFv
/* 80CBFB1C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CBFB20  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CBFB24  90 79 05 CC */	stw r3, 0x5cc(r25)
/* 80CBFB28  38 03 00 20 */	addi r0, r3, 0x20
/* 80CBFB2C  90 19 05 D0 */	stw r0, 0x5d0(r25)
/* 80CBFB30  38 79 05 F0 */	addi r3, r25, 0x5f0
/* 80CBFB34  3C 80 80 CC */	lis r4, __ct__8dCcD_CylFv@ha
/* 80CBFB38  38 84 FD 54 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80CBFB3C  3C A0 80 CC */	lis r5, __dt__8dCcD_CylFv@ha
/* 80CBFB40  38 A5 FC 88 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80CBFB44  38 C0 01 3C */	li r6, 0x13c
/* 80CBFB48  38 E0 00 0E */	li r7, 0xe
/* 80CBFB4C  4B 6A 22 14 */	b __construct_array
lbl_80CBFB50:
/* 80CBFB50  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CBFB54  60 00 00 08 */	ori r0, r0, 8
/* 80CBFB58  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CBFB5C:
/* 80CBFB5C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80CBFB60  3C 80 80 CC */	lis r4, stringBase0@ha
/* 80CBFB64  38 84 08 58 */	addi r4, r4, stringBase0@l
/* 80CBFB68  4B 36 D3 54 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CBFB6C  7C 7F 1B 78 */	mr r31, r3
/* 80CBFB70  2C 1F 00 04 */	cmpwi r31, 4
/* 80CBFB74  40 82 00 F8 */	bne lbl_80CBFC6C
/* 80CBFB78  7F C3 F3 78 */	mr r3, r30
/* 80CBFB7C  3C 80 80 CC */	lis r4, stringBase0@ha
/* 80CBFB80  38 84 08 58 */	addi r4, r4, stringBase0@l
/* 80CBFB84  38 A0 00 07 */	li r5, 7
/* 80CBFB88  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CBFB8C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CBFB90  38 E0 7D F0 */	li r7, 0x7df0
/* 80CBFB94  39 00 00 00 */	li r8, 0
/* 80CBFB98  4B 3B 8C 24 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CBFB9C  2C 03 00 05 */	cmpwi r3, 5
/* 80CBFBA0  40 82 00 0C */	bne lbl_80CBFBAC
/* 80CBFBA4  38 60 00 05 */	li r3, 5
/* 80CBFBA8  48 00 00 C8 */	b lbl_80CBFC70
lbl_80CBFBAC:
/* 80CBFBAC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CBFBB0  38 03 00 24 */	addi r0, r3, 0x24
/* 80CBFBB4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CBFBB8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CBFBBC  80 83 00 04 */	lwz r4, 4(r3)
/* 80CBFBC0  7F C3 F3 78 */	mr r3, r30
/* 80CBFBC4  4B 35 A9 B4 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CBFBC8  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80CBFBCC  38 80 00 FF */	li r4, 0xff
/* 80CBFBD0  38 A0 00 FF */	li r5, 0xff
/* 80CBFBD4  7F C6 F3 78 */	mr r6, r30
/* 80CBFBD8  4B 3C 3C 88 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CBFBDC  3B 20 00 00 */	li r25, 0
/* 80CBFBE0  3B A0 00 00 */	li r29, 0
/* 80CBFBE4  3C 60 80 CC */	lis r3, mCcDCyl__11daRotTrap_c@ha
/* 80CBFBE8  3B 63 08 80 */	addi r27, r3, mCcDCyl__11daRotTrap_c@l
/* 80CBFBEC  3B 9E 05 B4 */	addi r28, r30, 0x5b4
lbl_80CBFBF0:
/* 80CBFBF0  7F 5E EA 14 */	add r26, r30, r29
/* 80CBFBF4  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80CBFBF8  7F 64 DB 78 */	mr r4, r27
/* 80CBFBFC  4B 3C 4C B8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CBFC00  93 9A 06 34 */	stw r28, 0x634(r26)
/* 80CBFC04  3B 39 00 01 */	addi r25, r25, 1
/* 80CBFC08  2C 19 00 0E */	cmpwi r25, 0xe
/* 80CBFC0C  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80CBFC10  41 80 FF E0 */	blt lbl_80CBFBF0
/* 80CBFC14  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CBFC18  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80CBFC1C  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80CBFC20  28 04 00 FF */	cmplwi r4, 0xff
/* 80CBFC24  40 82 00 10 */	bne lbl_80CBFC34
/* 80CBFC28  7F C3 F3 78 */	mr r3, r30
/* 80CBFC2C  48 00 07 21 */	bl init_modeMove__11daRotTrap_cFv
/* 80CBFC30  48 00 00 34 */	b lbl_80CBFC64
lbl_80CBFC34:
/* 80CBFC34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBFC38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBFC3C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CBFC40  7C 05 07 74 */	extsb r5, r0
/* 80CBFC44  4B 37 57 1C */	b isSwitch__10dSv_info_cCFii
/* 80CBFC48  2C 03 00 00 */	cmpwi r3, 0
/* 80CBFC4C  41 82 00 10 */	beq lbl_80CBFC5C
/* 80CBFC50  7F C3 F3 78 */	mr r3, r30
/* 80CBFC54  48 00 06 F9 */	bl init_modeMove__11daRotTrap_cFv
/* 80CBFC58  48 00 00 0C */	b lbl_80CBFC64
lbl_80CBFC5C:
/* 80CBFC5C  7F C3 F3 78 */	mr r3, r30
/* 80CBFC60  48 00 04 4D */	bl init_modeWait__11daRotTrap_cFv
lbl_80CBFC64:
/* 80CBFC64  7F C3 F3 78 */	mr r3, r30
/* 80CBFC68  4B FF FC D9 */	bl setBaseMtx__11daRotTrap_cFv
lbl_80CBFC6C:
/* 80CBFC6C  7F E3 FB 78 */	mr r3, r31
lbl_80CBFC70:
/* 80CBFC70  39 61 00 30 */	addi r11, r1, 0x30
/* 80CBFC74  4B 6A 25 A4 */	b _restgpr_25
/* 80CBFC78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CBFC7C  7C 08 03 A6 */	mtlr r0
/* 80CBFC80  38 21 00 30 */	addi r1, r1, 0x30
/* 80CBFC84  4E 80 00 20 */	blr 
