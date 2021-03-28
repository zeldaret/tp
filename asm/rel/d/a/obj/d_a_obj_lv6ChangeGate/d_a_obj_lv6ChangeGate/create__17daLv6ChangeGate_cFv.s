lbl_80C70E40:
/* 80C70E40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C70E44  7C 08 02 A6 */	mflr r0
/* 80C70E48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C70E4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C70E50  4B 6F 13 7C */	b _savegpr_25
/* 80C70E54  7C 7E 1B 78 */	mr r30, r3
/* 80C70E58  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C70E5C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C70E60  40 82 00 94 */	bne lbl_80C70EF4
/* 80C70E64  7F C0 F3 79 */	or. r0, r30, r30
/* 80C70E68  41 82 00 80 */	beq lbl_80C70EE8
/* 80C70E6C  7C 19 03 78 */	mr r25, r0
/* 80C70E70  4B 40 77 B4 */	b __ct__16dBgS_MoveBgActorFv
/* 80C70E74  3C 60 80 C7 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C70E78  38 03 22 F0 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C70E7C  90 19 05 A8 */	stw r0, 0x5a8(r25)
/* 80C70E80  93 39 05 AC */	stw r25, 0x5ac(r25)
/* 80C70E84  38 00 00 00 */	li r0, 0
/* 80C70E88  90 19 05 B0 */	stw r0, 0x5b0(r25)
/* 80C70E8C  3C 60 80 C7 */	lis r3, __vt__17daLv6ChangeGate_c@ha
/* 80C70E90  38 63 23 08 */	addi r3, r3, __vt__17daLv6ChangeGate_c@l
/* 80C70E94  90 79 05 9C */	stw r3, 0x59c(r25)
/* 80C70E98  38 03 00 28 */	addi r0, r3, 0x28
/* 80C70E9C  90 19 05 A8 */	stw r0, 0x5a8(r25)
/* 80C70EA0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C70EA4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C70EA8  90 19 05 E0 */	stw r0, 0x5e0(r25)
/* 80C70EAC  38 79 05 E4 */	addi r3, r25, 0x5e4
/* 80C70EB0  4B 41 28 B0 */	b __ct__10dCcD_GSttsFv
/* 80C70EB4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C70EB8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C70EBC  90 79 05 E0 */	stw r3, 0x5e0(r25)
/* 80C70EC0  38 03 00 20 */	addi r0, r3, 0x20
/* 80C70EC4  90 19 05 E4 */	stw r0, 0x5e4(r25)
/* 80C70EC8  38 79 06 04 */	addi r3, r25, 0x604
/* 80C70ECC  3C 80 80 C7 */	lis r4, __ct__8dCcD_CylFv@ha
/* 80C70ED0  38 84 11 38 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80C70ED4  3C A0 80 C7 */	lis r5, __dt__8dCcD_CylFv@ha
/* 80C70ED8  38 A5 10 6C */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80C70EDC  38 C0 01 3C */	li r6, 0x13c
/* 80C70EE0  38 E0 00 0C */	li r7, 0xc
/* 80C70EE4  4B 6F 0E 7C */	b __construct_array
lbl_80C70EE8:
/* 80C70EE8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C70EEC  60 00 00 08 */	ori r0, r0, 8
/* 80C70EF0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C70EF4:
/* 80C70EF4  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80C70EF8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C70EFC  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C70F00  41 82 00 28 */	beq lbl_80C70F28
/* 80C70F04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C70F08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C70F0C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C70F10  7C 05 07 74 */	extsb r5, r0
/* 80C70F14  4B 3C 44 4C */	b isSwitch__10dSv_info_cCFii
/* 80C70F18  2C 03 00 00 */	cmpwi r3, 0
/* 80C70F1C  41 82 00 0C */	beq lbl_80C70F28
/* 80C70F20  38 60 00 05 */	li r3, 5
/* 80C70F24  48 00 01 30 */	b lbl_80C71054
lbl_80C70F28:
/* 80C70F28  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80C70F2C  3C 80 80 C7 */	lis r4, stringBase0@ha
/* 80C70F30  38 84 21 A4 */	addi r4, r4, stringBase0@l
/* 80C70F34  4B 3B BF 88 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C70F38  7C 7F 1B 78 */	mr r31, r3
/* 80C70F3C  2C 1F 00 04 */	cmpwi r31, 4
/* 80C70F40  40 82 01 10 */	bne lbl_80C71050
/* 80C70F44  7F C3 F3 78 */	mr r3, r30
/* 80C70F48  3C 80 80 C7 */	lis r4, stringBase0@ha
/* 80C70F4C  38 84 21 A4 */	addi r4, r4, stringBase0@l
/* 80C70F50  38 A0 00 07 */	li r5, 7
/* 80C70F54  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C70F58  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C70F5C  38 E0 12 00 */	li r7, 0x1200
/* 80C70F60  39 00 00 00 */	li r8, 0
/* 80C70F64  4B 40 78 58 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C70F68  2C 03 00 05 */	cmpwi r3, 5
/* 80C70F6C  40 82 00 0C */	bne lbl_80C70F78
/* 80C70F70  38 60 00 05 */	li r3, 5
/* 80C70F74  48 00 00 E0 */	b lbl_80C71054
lbl_80C70F78:
/* 80C70F78  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C70F7C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C70F80  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C70F84  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C70F88  80 83 00 04 */	lwz r4, 4(r3)
/* 80C70F8C  7F C3 F3 78 */	mr r3, r30
/* 80C70F90  4B 3A 95 E8 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C70F94  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80C70F98  38 80 00 FF */	li r4, 0xff
/* 80C70F9C  38 A0 00 FF */	li r5, 0xff
/* 80C70FA0  7F C6 F3 78 */	mr r6, r30
/* 80C70FA4  4B 41 28 BC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C70FA8  3B 20 00 00 */	li r25, 0
/* 80C70FAC  3B A0 00 00 */	li r29, 0
/* 80C70FB0  3C 60 80 C7 */	lis r3, mCcDCyl__17daLv6ChangeGate_c@ha
/* 80C70FB4  3B 63 21 CC */	addi r27, r3, mCcDCyl__17daLv6ChangeGate_c@l
/* 80C70FB8  3B 9E 05 C8 */	addi r28, r30, 0x5c8
lbl_80C70FBC:
/* 80C70FBC  7F 5E EA 14 */	add r26, r30, r29
/* 80C70FC0  38 7A 06 04 */	addi r3, r26, 0x604
/* 80C70FC4  7F 64 DB 78 */	mr r4, r27
/* 80C70FC8  4B 41 38 EC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C70FCC  93 9A 06 48 */	stw r28, 0x648(r26)
/* 80C70FD0  3B 39 00 01 */	addi r25, r25, 1
/* 80C70FD4  2C 19 00 0C */	cmpwi r25, 0xc
/* 80C70FD8  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80C70FDC  41 80 FF E0 */	blt lbl_80C70FBC
/* 80C70FE0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C70FE4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80C70FE8  98 1E 14 D4 */	stb r0, 0x14d4(r30)
/* 80C70FEC  88 1E 14 D4 */	lbz r0, 0x14d4(r30)
/* 80C70FF0  28 00 00 0F */	cmplwi r0, 0xf
/* 80C70FF4  40 82 00 0C */	bne lbl_80C71000
/* 80C70FF8  38 00 00 00 */	li r0, 0
/* 80C70FFC  98 1E 14 D4 */	stb r0, 0x14d4(r30)
lbl_80C71000:
/* 80C71000  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C71004  98 1E 14 D5 */	stb r0, 0x14d5(r30)
/* 80C71008  7F C3 F3 78 */	mr r3, r30
/* 80C7100C  48 00 02 9D */	bl isSwitch__17daLv6ChangeGate_cFv
/* 80C71010  98 7E 14 D6 */	stb r3, 0x14d6(r30)
/* 80C71014  3C 60 80 C7 */	lis r3, lit_3664@ha
/* 80C71018  C0 03 21 84 */	lfs f0, lit_3664@l(r3)
/* 80C7101C  D0 1E 14 D8 */	stfs f0, 0x14d8(r30)
/* 80C71020  88 1E 14 D6 */	lbz r0, 0x14d6(r30)
/* 80C71024  28 00 00 00 */	cmplwi r0, 0
/* 80C71028  41 82 00 18 */	beq lbl_80C71040
/* 80C7102C  3C 60 80 C7 */	lis r3, l_HIO@ha
/* 80C71030  38 63 23 8C */	addi r3, r3, l_HIO@l
/* 80C71034  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C71038  D0 1E 14 D8 */	stfs f0, 0x14d8(r30)
/* 80C7103C  48 00 00 0C */	b lbl_80C71048
lbl_80C71040:
/* 80C71040  7F C3 F3 78 */	mr r3, r30
/* 80C71044  48 00 05 B1 */	bl init_modeWait__17daLv6ChangeGate_cFv
lbl_80C71048:
/* 80C71048  7F C3 F3 78 */	mr r3, r30
/* 80C7104C  4B FF FC ED */	bl setBaseMtx__17daLv6ChangeGate_cFv
lbl_80C71050:
/* 80C71050  7F E3 FB 78 */	mr r3, r31
lbl_80C71054:
/* 80C71054  39 61 00 30 */	addi r11, r1, 0x30
/* 80C71058  4B 6F 11 C0 */	b _restgpr_25
/* 80C7105C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C71060  7C 08 03 A6 */	mtlr r0
/* 80C71064  38 21 00 30 */	addi r1, r1, 0x30
/* 80C71068  4E 80 00 20 */	blr 
