lbl_80A23FA0:
/* 80A23FA0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A23FA4  7C 08 02 A6 */	mflr r0
/* 80A23FA8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A23FAC  39 61 00 50 */	addi r11, r1, 0x50
/* 80A23FB0  4B 93 E2 2D */	bl _savegpr_29
/* 80A23FB4  7C 7D 1B 78 */	mr r29, r3
/* 80A23FB8  3C 80 80 A2 */	lis r4, m__20daNpcKasiKyu_Param_c@ha /* 0x80A258B8@ha */
/* 80A23FBC  3B C4 58 B8 */	addi r30, r4, m__20daNpcKasiKyu_Param_c@l /* 0x80A258B8@l */
/* 80A23FC0  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A23FC4  2C 00 00 00 */	cmpwi r0, 0
/* 80A23FC8  41 82 00 18 */	beq lbl_80A23FE0
/* 80A23FCC  40 80 00 08 */	bge lbl_80A23FD4
/* 80A23FD0  48 00 01 24 */	b lbl_80A240F4
lbl_80A23FD4:
/* 80A23FD4  2C 00 00 02 */	cmpwi r0, 2
/* 80A23FD8  40 80 01 1C */	bge lbl_80A240F4
/* 80A23FDC  48 00 00 54 */	b lbl_80A24030
lbl_80A23FE0:
/* 80A23FE0  38 80 00 08 */	li r4, 8
/* 80A23FE4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80A23FE8  38 A0 00 00 */	li r5, 0
/* 80A23FEC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A23FF0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A23FF4  7D 89 03 A6 */	mtctr r12
/* 80A23FF8  4E 80 04 21 */	bctrl 
/* 80A23FFC  7F A3 EB 78 */	mr r3, r29
/* 80A24000  38 80 00 00 */	li r4, 0
/* 80A24004  4B FF F3 29 */	bl setLookMode__14daNpcKasiKyu_cFi
/* 80A24008  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80A2400C  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A24010  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A24014  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A24018  C0 1E 02 3C */	lfs f0, 0x23c(r30)
/* 80A2401C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A24020  38 00 00 01 */	li r0, 1
/* 80A24024  98 1D 14 65 */	stb r0, 0x1465(r29)
/* 80A24028  B0 1D 14 04 */	sth r0, 0x1404(r29)
/* 80A2402C  48 00 00 C8 */	b lbl_80A240F4
lbl_80A24030:
/* 80A24030  38 61 00 20 */	addi r3, r1, 0x20
/* 80A24034  7F A4 EB 78 */	mr r4, r29
/* 80A24038  48 00 00 D9 */	bl getChacePos__14daNpcKasiKyu_cFv
/* 80A2403C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A24040  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A24044  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A24048  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A2404C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A24050  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A24054  7F A3 EB 78 */	mr r3, r29
/* 80A24058  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A2405C  38 A0 08 00 */	li r5, 0x800
/* 80A24060  48 00 0C B1 */	bl _turn_pos__14daNpcKasiKyu_cFRC4cXyzs
/* 80A24064  7F A3 EB 78 */	mr r3, r29
/* 80A24068  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2406C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A24070  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A24074  48 00 0C F9 */	bl actor_front_check__14daNpcKasiKyu_cFP10fopAc_ac_c
/* 80A24078  2C 03 00 00 */	cmpwi r3, 0
/* 80A2407C  41 82 00 4C */	beq lbl_80A240C8
/* 80A24080  7F A3 EB 78 */	mr r3, r29
/* 80A24084  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A24088  4B 5F 68 DD */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2408C  C0 1E 02 40 */	lfs f0, 0x240(r30)
/* 80A24090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A24094  40 80 00 60 */	bge lbl_80A240F4
/* 80A24098  3C 60 80 A2 */	lis r3, lit_5043@ha /* 0x80A25E58@ha */
/* 80A2409C  38 83 5E 58 */	addi r4, r3, lit_5043@l /* 0x80A25E58@l */
/* 80A240A0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A240A4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A240A8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A240AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A240B0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A240B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A240B8  7F A3 EB 78 */	mr r3, r29
/* 80A240BC  38 81 00 14 */	addi r4, r1, 0x14
/* 80A240C0  4B FF F1 C5 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
/* 80A240C4  48 00 00 30 */	b lbl_80A240F4
lbl_80A240C8:
/* 80A240C8  3C 60 80 A2 */	lis r3, lit_5046@ha /* 0x80A25E64@ha */
/* 80A240CC  38 83 5E 64 */	addi r4, r3, lit_5046@l /* 0x80A25E64@l */
/* 80A240D0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A240D4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A240D8  90 61 00 08 */	stw r3, 8(r1)
/* 80A240DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A240E0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A240E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A240E8  7F A3 EB 78 */	mr r3, r29
/* 80A240EC  38 81 00 08 */	addi r4, r1, 8
/* 80A240F0  4B FF F1 95 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
lbl_80A240F4:
/* 80A240F4  38 60 00 01 */	li r3, 1
/* 80A240F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80A240FC  4B 93 E1 2D */	bl _restgpr_29
/* 80A24100  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A24104  7C 08 03 A6 */	mtlr r0
/* 80A24108  38 21 00 50 */	addi r1, r1, 0x50
/* 80A2410C  4E 80 00 20 */	blr 
