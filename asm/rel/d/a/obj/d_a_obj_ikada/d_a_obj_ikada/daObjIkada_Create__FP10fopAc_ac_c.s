lbl_80C26DB4:
/* 80C26DB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C26DB8  7C 08 02 A6 */	mflr r0
/* 80C26DBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C26DC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80C26DC4  4B 73 B4 18 */	b _savegpr_29
/* 80C26DC8  3C 80 80 C2 */	lis r4, lit_3668@ha
/* 80C26DCC  3B E4 74 F0 */	addi r31, r4, lit_3668@l
/* 80C26DD0  7C 7E 1B 78 */	mr r30, r3
/* 80C26DD4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C26DD8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C26DDC  40 82 00 8C */	bne lbl_80C26E68
/* 80C26DE0  7F C0 F3 79 */	or. r0, r30, r30
/* 80C26DE4  41 82 00 78 */	beq lbl_80C26E5C
/* 80C26DE8  7C 1D 03 78 */	mr r29, r0
/* 80C26DEC  4B 45 18 38 */	b __ct__16dBgS_MoveBgActorFv
/* 80C26DF0  3C 60 80 C2 */	lis r3, __vt__12daObjIkada_c@ha
/* 80C26DF4  38 03 75 FC */	addi r0, r3, __vt__12daObjIkada_c@l
/* 80C26DF8  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80C26DFC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C26E00  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C26E04  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 80C26E08  38 7D 06 00 */	addi r3, r29, 0x600
/* 80C26E0C  4B 45 C9 54 */	b __ct__10dCcD_GSttsFv
/* 80C26E10  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C26E14  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C26E18  90 7D 05 FC */	stw r3, 0x5fc(r29)
/* 80C26E1C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C26E20  90 1D 06 00 */	stw r0, 0x600(r29)
/* 80C26E24  38 7D 06 2C */	addi r3, r29, 0x62c
/* 80C26E28  4B 44 F0 84 */	b __ct__12dBgS_AcchCirFv
/* 80C26E2C  3B BD 06 6C */	addi r29, r29, 0x66c
/* 80C26E30  7F A3 EB 78 */	mr r3, r29
/* 80C26E34  4B 44 F2 6C */	b __ct__9dBgS_AcchFv
/* 80C26E38  3C 60 80 C2 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C26E3C  38 63 75 D8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C26E40  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C26E44  38 03 00 0C */	addi r0, r3, 0xc
/* 80C26E48  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C26E4C  38 03 00 18 */	addi r0, r3, 0x18
/* 80C26E50  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C26E54  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C26E58  4B 45 20 10 */	b SetObj__16dBgS_PolyPassChkFv
lbl_80C26E5C:
/* 80C26E5C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C26E60  60 00 00 08 */	ori r0, r0, 8
/* 80C26E64  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C26E68:
/* 80C26E68  38 7E 06 24 */	addi r3, r30, 0x624
/* 80C26E6C  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C26E70  38 84 75 84 */	addi r4, r4, l_arcName@l
/* 80C26E74  80 84 00 00 */	lwz r4, 0(r4)
/* 80C26E78  4B 40 60 44 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C26E7C  7C 7D 1B 78 */	mr r29, r3
/* 80C26E80  2C 1D 00 04 */	cmpwi r29, 4
/* 80C26E84  40 82 00 68 */	bne lbl_80C26EEC
/* 80C26E88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C26E8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C26E90  3C 63 00 02 */	addis r3, r3, 2
/* 80C26E94  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C26E98  38 84 75 84 */	addi r4, r4, l_arcName@l
/* 80C26E9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C26EA0  3C A0 80 C2 */	lis r5, stringBase0@ha
/* 80C26EA4  38 A5 75 64 */	addi r5, r5, stringBase0@l
/* 80C26EA8  38 A5 00 08 */	addi r5, r5, 8
/* 80C26EAC  38 63 C2 F8 */	addi r3, r3, -15624
/* 80C26EB0  4B 41 58 08 */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80C26EB4  7C 65 1B 78 */	mr r5, r3
/* 80C26EB8  7F C3 F3 78 */	mr r3, r30
/* 80C26EBC  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C26EC0  38 84 75 84 */	addi r4, r4, l_arcName@l
/* 80C26EC4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C26EC8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C26ECC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C26ED0  38 E0 0C 00 */	li r7, 0xc00
/* 80C26ED4  39 00 00 00 */	li r8, 0
/* 80C26ED8  4B 45 18 E4 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C26EDC  7C 7D 1B 78 */	mr r29, r3
/* 80C26EE0  2C 1D 00 05 */	cmpwi r29, 5
/* 80C26EE4  40 82 00 08 */	bne lbl_80C26EEC
/* 80C26EE8  48 00 00 B4 */	b lbl_80C26F9C
lbl_80C26EEC:
/* 80C26EEC  38 00 00 00 */	li r0, 0
/* 80C26EF0  90 01 00 08 */	stw r0, 8(r1)
/* 80C26EF4  38 7E 06 6C */	addi r3, r30, 0x66c
/* 80C26EF8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C26EFC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C26F00  7F C6 F3 78 */	mr r6, r30
/* 80C26F04  38 E0 00 01 */	li r7, 1
/* 80C26F08  39 1E 06 2C */	addi r8, r30, 0x62c
/* 80C26F0C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C26F10  39 40 00 00 */	li r10, 0
/* 80C26F14  4B 44 F3 34 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C26F18  38 7E 06 2C */	addi r3, r30, 0x62c
/* 80C26F1C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C26F20  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80C26F24  4B 44 F0 34 */	b SetWall__12dBgS_AcchCirFff
/* 80C26F28  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C26F2C  4B 64 0A 60 */	b cM_rndFX__Ff
/* 80C26F30  FC 00 08 1E */	fctiwz f0, f1
/* 80C26F34  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C26F38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C26F3C  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 80C26F40  7F C3 F3 78 */	mr r3, r30
/* 80C26F44  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C26F48  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C26F4C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C26F50  C0 9F 00 28 */	lfs f4, 0x28(r31)
/* 80C26F54  C0 BF 00 54 */	lfs f5, 0x54(r31)
/* 80C26F58  C0 DF 00 2C */	lfs f6, 0x2c(r31)
/* 80C26F5C  4B 3F 35 EC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C26F60  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C26F64  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C26F68  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C26F6C  EC 21 00 2A */	fadds f1, f1, f0
/* 80C26F70  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C26F74  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C26F78  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C26F7C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80C26F80  38 61 00 10 */	addi r3, r1, 0x10
/* 80C26F84  4B 3F 6E 00 */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80C26F88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C26F8C  41 82 00 10 */	beq lbl_80C26F9C
/* 80C26F90  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 80C26F94  C0 03 0C D8 */	lfs f0, mWaterY__11fopAcM_wt_c@l(r3)
/* 80C26F98  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80C26F9C:
/* 80C26F9C  7F A3 EB 78 */	mr r3, r29
/* 80C26FA0  39 61 00 40 */	addi r11, r1, 0x40
/* 80C26FA4  4B 73 B2 84 */	b _restgpr_29
/* 80C26FA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C26FAC  7C 08 03 A6 */	mtlr r0
/* 80C26FB0  38 21 00 40 */	addi r1, r1, 0x40
/* 80C26FB4  4E 80 00 20 */	blr 
