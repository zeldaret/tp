lbl_80BCFAE4:
/* 80BCFAE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BCFAE8  7C 08 02 A6 */	mflr r0
/* 80BCFAEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BCFAF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80BCFAF4  4B 79 26 E4 */	b _savegpr_28
/* 80BCFAF8  7C 7E 1B 78 */	mr r30, r3
/* 80BCFAFC  3C 80 80 BD */	lis r4, lit_3685@ha
/* 80BCFB00  3B E4 01 88 */	addi r31, r4, lit_3685@l
/* 80BCFB04  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BCFB08  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BCFB0C  40 82 00 CC */	bne lbl_80BCFBD8
/* 80BCFB10  7F C0 F3 79 */	or. r0, r30, r30
/* 80BCFB14  41 82 00 B8 */	beq lbl_80BCFBCC
/* 80BCFB18  7C 1D 03 78 */	mr r29, r0
/* 80BCFB1C  4B 4A 8B 08 */	b __ct__16dBgS_MoveBgActorFv
/* 80BCFB20  3C 60 80 BD */	lis r3, __vt__15daObjCRVFENCE_c@ha
/* 80BCFB24  38 03 02 F0 */	addi r0, r3, __vt__15daObjCRVFENCE_c@l
/* 80BCFB28  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80BCFB2C  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80BCFB30  3C 80 80 BD */	lis r4, __ct__4cXyzFv@ha
/* 80BCFB34  38 84 FF BC */	addi r4, r4, __ct__4cXyzFv@l
/* 80BCFB38  3C A0 80 BD */	lis r5, __dt__4cXyzFv@ha
/* 80BCFB3C  38 A5 ED 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 80BCFB40  38 C0 00 0C */	li r6, 0xc
/* 80BCFB44  38 E0 00 06 */	li r7, 6
/* 80BCFB48  4B 79 22 18 */	b __construct_array
/* 80BCFB4C  38 7D 06 70 */	addi r3, r29, 0x670
/* 80BCFB50  4B 4A 63 5C */	b __ct__12dBgS_AcchCirFv
/* 80BCFB54  3B 9D 06 B0 */	addi r28, r29, 0x6b0
/* 80BCFB58  7F 83 E3 78 */	mr r3, r28
/* 80BCFB5C  4B 4A 65 44 */	b __ct__9dBgS_AcchFv
/* 80BCFB60  3C 60 80 BD */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BCFB64  38 63 02 CC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BCFB68  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80BCFB6C  38 03 00 0C */	addi r0, r3, 0xc
/* 80BCFB70  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80BCFB74  38 03 00 18 */	addi r0, r3, 0x18
/* 80BCFB78  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80BCFB7C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80BCFB80  4B 4A 92 E8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BCFB84  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BCFB88  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BCFB8C  90 1D 08 A0 */	stw r0, 0x8a0(r29)
/* 80BCFB90  38 7D 08 A4 */	addi r3, r29, 0x8a4
/* 80BCFB94  4B 4B 3B CC */	b __ct__10dCcD_GSttsFv
/* 80BCFB98  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BCFB9C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BCFBA0  90 7D 08 A0 */	stw r3, 0x8a0(r29)
/* 80BCFBA4  38 03 00 20 */	addi r0, r3, 0x20
/* 80BCFBA8  90 1D 08 A4 */	stw r0, 0x8a4(r29)
/* 80BCFBAC  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 80BCFBB0  3C 80 80 BD */	lis r4, __ct__8dCcD_SphFv@ha
/* 80BCFBB4  38 84 FE 38 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80BCFBB8  3C A0 80 BD */	lis r5, __dt__8dCcD_SphFv@ha
/* 80BCFBBC  38 A5 FD 6C */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80BCFBC0  38 C0 01 38 */	li r6, 0x138
/* 80BCFBC4  38 E0 00 06 */	li r7, 6
/* 80BCFBC8  4B 79 21 98 */	b __construct_array
lbl_80BCFBCC:
/* 80BCFBCC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BCFBD0  60 00 00 08 */	ori r0, r0, 8
/* 80BCFBD4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BCFBD8:
/* 80BCFBD8  38 7E 06 68 */	addi r3, r30, 0x668
/* 80BCFBDC  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BCFBE0  38 84 02 60 */	addi r4, r4, l_arcName@l
/* 80BCFBE4  80 84 00 00 */	lwz r4, 0(r4)
/* 80BCFBE8  4B 45 D2 D4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BCFBEC  7C 7D 1B 78 */	mr r29, r3
/* 80BCFBF0  2C 1D 00 04 */	cmpwi r29, 4
/* 80BCFBF4  40 82 01 5C */	bne lbl_80BCFD50
/* 80BCFBF8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BCFBFC  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80BCFC00  88 9E 05 A8 */	lbz r4, 0x5a8(r30)
/* 80BCFC04  28 04 00 FF */	cmplwi r4, 0xff
/* 80BCFC08  41 82 00 28 */	beq lbl_80BCFC30
/* 80BCFC0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCFC10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BCFC14  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BCFC18  7C 05 07 74 */	extsb r5, r0
/* 80BCFC1C  4B 46 57 44 */	b isSwitch__10dSv_info_cCFii
/* 80BCFC20  2C 03 00 00 */	cmpwi r3, 0
/* 80BCFC24  41 82 00 0C */	beq lbl_80BCFC30
/* 80BCFC28  38 60 00 05 */	li r3, 5
/* 80BCFC2C  48 00 01 28 */	b lbl_80BCFD54
lbl_80BCFC30:
/* 80BCFC30  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BCFC34  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BCFC38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCFC3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BCFC40  3C 63 00 02 */	addis r3, r3, 2
/* 80BCFC44  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BCFC48  38 84 02 60 */	addi r4, r4, l_arcName@l
/* 80BCFC4C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BCFC50  3C A0 80 BD */	lis r5, stringBase0@ha
/* 80BCFC54  38 A5 02 0C */	addi r5, r5, stringBase0@l
/* 80BCFC58  38 A5 00 42 */	addi r5, r5, 0x42
/* 80BCFC5C  38 63 C2 F8 */	addi r3, r3, -15624
/* 80BCFC60  4B 46 CA 58 */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80BCFC64  7C 65 1B 78 */	mr r5, r3
/* 80BCFC68  7F C3 F3 78 */	mr r3, r30
/* 80BCFC6C  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BCFC70  38 84 02 60 */	addi r4, r4, l_arcName@l
/* 80BCFC74  80 84 00 00 */	lwz r4, 0(r4)
/* 80BCFC78  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BCFC7C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BCFC80  38 E0 1C A0 */	li r7, 0x1ca0
/* 80BCFC84  39 00 00 00 */	li r8, 0
/* 80BCFC88  4B 4A 8B 34 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BCFC8C  7C 7D 1B 78 */	mr r29, r3
/* 80BCFC90  2C 1D 00 05 */	cmpwi r29, 5
/* 80BCFC94  40 82 00 08 */	bne lbl_80BCFC9C
/* 80BCFC98  48 00 00 BC */	b lbl_80BCFD54
lbl_80BCFC9C:
/* 80BCFC9C  38 00 00 00 */	li r0, 0
/* 80BCFCA0  90 01 00 08 */	stw r0, 8(r1)
/* 80BCFCA4  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 80BCFCA8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BCFCAC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80BCFCB0  7F C6 F3 78 */	mr r6, r30
/* 80BCFCB4  38 E0 00 01 */	li r7, 1
/* 80BCFCB8  39 1E 06 70 */	addi r8, r30, 0x670
/* 80BCFCBC  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80BCFCC0  39 40 00 00 */	li r10, 0
/* 80BCFCC4  4B 4A 65 84 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BCFCC8  38 00 00 00 */	li r0, 0
/* 80BCFCCC  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 80BCFCD0  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 80BCFCD4  38 03 00 24 */	addi r0, r3, 0x24
/* 80BCFCD8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BCFCDC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BCFCE0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BCFCE4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BCFCE8  EC 21 00 2A */	fadds f1, f1, f0
/* 80BCFCEC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BCFCF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BCFCF4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BCFCF8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BCFCFC  38 61 00 10 */	addi r3, r1, 0x10
/* 80BCFD00  4B 44 DF BC */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80BCFD04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCFD08  41 82 00 10 */	beq lbl_80BCFD18
/* 80BCFD0C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80BCFD10  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80BCFD14  D0 1E 06 40 */	stfs f0, 0x640(r30)
lbl_80BCFD18:
/* 80BCFD18  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80BCFD1C  B0 1E 05 AA */	sth r0, 0x5aa(r30)
/* 80BCFD20  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80BCFD24  D0 1E 05 20 */	stfs f0, 0x520(r30)
/* 80BCFD28  7F C3 F3 78 */	mr r3, r30
/* 80BCFD2C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80BCFD30  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80BCFD34  FC 60 08 90 */	fmr f3, f1
/* 80BCFD38  C0 9F 00 78 */	lfs f4, 0x78(r31)
/* 80BCFD3C  C0 BF 00 7C */	lfs f5, 0x7c(r31)
/* 80BCFD40  FC C0 20 90 */	fmr f6, f4
/* 80BCFD44  4B 44 A8 04 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BCFD48  7F C3 F3 78 */	mr r3, r30
/* 80BCFD4C  4B FF FC 79 */	bl daObjCRVFENCE_Execute__FP15daObjCRVFENCE_c
lbl_80BCFD50:
/* 80BCFD50  7F A3 EB 78 */	mr r3, r29
lbl_80BCFD54:
/* 80BCFD54  39 61 00 30 */	addi r11, r1, 0x30
/* 80BCFD58  4B 79 24 CC */	b _restgpr_28
/* 80BCFD5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BCFD60  7C 08 03 A6 */	mtlr r0
/* 80BCFD64  38 21 00 30 */	addi r1, r1, 0x30
/* 80BCFD68  4E 80 00 20 */	blr 
