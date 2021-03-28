lbl_80C87E48:
/* 80C87E48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87E4C  7C 08 02 A6 */	mflr r0
/* 80C87E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87E54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87E58  93 C1 00 08 */	stw r30, 8(r1)
/* 80C87E5C  7C 7E 1B 78 */	mr r30, r3
/* 80C87E60  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C87E64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C87E68  40 82 00 28 */	bne lbl_80C87E90
/* 80C87E6C  28 1E 00 00 */	cmplwi r30, 0
/* 80C87E70  41 82 00 14 */	beq lbl_80C87E84
/* 80C87E74  4B 3F 07 B0 */	b __ct__16dBgS_MoveBgActorFv
/* 80C87E78  3C 60 80 C9 */	lis r3, __vt__13daKekaiTrap_c@ha
/* 80C87E7C  38 03 85 C8 */	addi r0, r3, __vt__13daKekaiTrap_c@l
/* 80C87E80  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80C87E84:
/* 80C87E84  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C87E88  60 00 00 08 */	ori r0, r0, 8
/* 80C87E8C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C87E90:
/* 80C87E90  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C87E94  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C87E98  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80C87E9C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C87EA0  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C87EA4  54 00 10 3A */	slwi r0, r0, 2
/* 80C87EA8  3C 80 80 C9 */	lis r4, l_type@ha
/* 80C87EAC  38 84 85 24 */	addi r4, r4, l_type@l
/* 80C87EB0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C87EB4  4B 3A 50 08 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C87EB8  7C 7F 1B 78 */	mr r31, r3
/* 80C87EBC  2C 1F 00 04 */	cmpwi r31, 4
/* 80C87EC0  40 82 00 D4 */	bne lbl_80C87F94
/* 80C87EC4  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C87EC8  54 00 10 3A */	slwi r0, r0, 2
/* 80C87ECC  7F C3 F3 78 */	mr r3, r30
/* 80C87ED0  3C 80 80 C9 */	lis r4, l_type@ha
/* 80C87ED4  38 84 85 24 */	addi r4, r4, l_type@l
/* 80C87ED8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C87EDC  3C A0 80 C9 */	lis r5, l_dzbIdx@ha
/* 80C87EE0  38 A5 85 2C */	addi r5, r5, l_dzbIdx@l
/* 80C87EE4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C87EE8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C87EEC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C87EF0  38 E0 40 00 */	li r7, 0x4000
/* 80C87EF4  39 00 00 00 */	li r8, 0
/* 80C87EF8  4B 3F 08 C4 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C87EFC  2C 03 00 05 */	cmpwi r3, 5
/* 80C87F00  40 82 00 0C */	bne lbl_80C87F0C
/* 80C87F04  38 60 00 05 */	li r3, 5
/* 80C87F08  48 00 00 90 */	b lbl_80C87F98
lbl_80C87F0C:
/* 80C87F0C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C87F10  38 03 00 24 */	addi r0, r3, 0x24
/* 80C87F14  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C87F18  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C87F1C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C87F20  7F C3 F3 78 */	mr r3, r30
/* 80C87F24  4B 39 26 54 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C87F28  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C87F2C  54 00 E6 3E */	rlwinm r0, r0, 0x1c, 0x18, 0x1f
/* 80C87F30  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C87F34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C87F38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C87F3C  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C87F40  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C87F44  7C 05 07 74 */	extsb r5, r0
/* 80C87F48  4B 3A D4 18 */	b isSwitch__10dSv_info_cCFii
/* 80C87F4C  98 7E 05 AC */	stb r3, 0x5ac(r30)
/* 80C87F50  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C87F54  28 00 00 00 */	cmplwi r0, 0
/* 80C87F58  40 82 00 2C */	bne lbl_80C87F84
/* 80C87F5C  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C87F60  28 04 00 00 */	cmplwi r4, 0
/* 80C87F64  41 82 00 14 */	beq lbl_80C87F78
/* 80C87F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C87F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C87F70  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C87F74  4B 3E C2 DC */	b Release__4cBgSFP9dBgW_Base
lbl_80C87F78:
/* 80C87F78  3C 60 80 C9 */	lis r3, lit_3651@ha
/* 80C87F7C  C0 03 84 E4 */	lfs f0, lit_3651@l(r3)
/* 80C87F80  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
lbl_80C87F84:
/* 80C87F84  7F C3 F3 78 */	mr r3, r30
/* 80C87F88  48 00 01 7D */	bl init_modeWait__13daKekaiTrap_cFv
/* 80C87F8C  7F C3 F3 78 */	mr r3, r30
/* 80C87F90  4B FF FD B1 */	bl setBaseMtx__13daKekaiTrap_cFv
lbl_80C87F94:
/* 80C87F94  7F E3 FB 78 */	mr r3, r31
lbl_80C87F98:
/* 80C87F98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C87F9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C87FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87FA4  7C 08 03 A6 */	mtlr r0
/* 80C87FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87FAC  4E 80 00 20 */	blr 
