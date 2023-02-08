lbl_80829570:
/* 80829570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80829574  7C 08 02 A6 */	mflr r0
/* 80829578  90 01 00 24 */	stw r0, 0x24(r1)
/* 8082957C  39 61 00 20 */	addi r11, r1, 0x20
/* 80829580  4B B3 8C 5D */	bl _savegpr_29
/* 80829584  7C 7D 1B 78 */	mr r29, r3
/* 80829588  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082958C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80829590  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 80829594  7C 00 07 74 */	extsb r0, r0
/* 80829598  38 84 5D 74 */	addi r4, r4, 0x5d74
/* 8082959C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 808295A0  7F E4 00 2E */	lwzx r31, r4, r0
/* 808295A4  83 C4 00 00 */	lwz r30, 0(r4)
/* 808295A8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 808295AC  28 00 00 02 */	cmplwi r0, 2
/* 808295B0  41 82 00 5C */	beq lbl_8082960C
/* 808295B4  38 80 00 02 */	li r4, 2
/* 808295B8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 808295BC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 808295C0  38 C0 00 00 */	li r6, 0
/* 808295C4  4B 7F 23 45 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 808295C8  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 808295CC  60 00 00 02 */	ori r0, r0, 2
/* 808295D0  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 808295D4  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 808295D8  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 808295DC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 808295E0  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 808295E4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 808295E8  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 808295EC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 808295F0  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 808295F4  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 808295F8  D0 1D 0D FC */	stfs f0, 0xdfc(r29)
/* 808295FC  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80829600  D0 1D 0E 00 */	stfs f0, 0xe00(r29)
/* 80829604  38 60 00 00 */	li r3, 0
/* 80829608  48 00 00 38 */	b lbl_80829640
lbl_8082960C:
/* 8082960C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80829610  4B 93 7E C1 */	bl Stop__9dCamera_cFv
/* 80829614  38 7F 02 48 */	addi r3, r31, 0x248
/* 80829618  38 80 00 03 */	li r4, 3
/* 8082961C  4B 93 99 F1 */	bl SetTrimSize__9dCamera_cFl
/* 80829620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80829624  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80829628  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8082962C  38 00 00 03 */	li r0, 3
/* 80829630  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80829634  38 00 00 00 */	li r0, 0
/* 80829638  90 03 06 0C */	stw r0, 0x60c(r3)
/* 8082963C  38 60 00 01 */	li r3, 1
lbl_80829640:
/* 80829640  39 61 00 20 */	addi r11, r1, 0x20
/* 80829644  4B B3 8B E5 */	bl _restgpr_29
/* 80829648  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8082964C  7C 08 03 A6 */	mtlr r0
/* 80829650  38 21 00 20 */	addi r1, r1, 0x20
/* 80829654  4E 80 00 20 */	blr 
