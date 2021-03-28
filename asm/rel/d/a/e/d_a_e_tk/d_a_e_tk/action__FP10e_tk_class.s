lbl_807B941C:
/* 807B941C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807B9420  7C 08 02 A6 */	mflr r0
/* 807B9424  90 01 00 34 */	stw r0, 0x34(r1)
/* 807B9428  39 61 00 30 */	addi r11, r1, 0x30
/* 807B942C  4B BA 8D B0 */	b _savegpr_29
/* 807B9430  7C 7D 1B 78 */	mr r29, r3
/* 807B9434  3C 80 80 7C */	lis r4, lit_3762@ha
/* 807B9438  3B C4 A2 6C */	addi r30, r4, lit_3762@l
/* 807B943C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807B9440  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 807B9444  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807B9448  4B 86 12 C8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807B944C  B0 7D 06 8C */	sth r3, 0x68c(r29)
/* 807B9450  7F A3 EB 78 */	mr r3, r29
/* 807B9454  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807B9458  4B 86 13 88 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807B945C  D0 3D 06 90 */	stfs f1, 0x690(r29)
/* 807B9460  7F A3 EB 78 */	mr r3, r29
/* 807B9464  4B FF F0 79 */	bl damage_check__FP10e_tk_class
/* 807B9468  3B E0 00 00 */	li r31, 0
/* 807B946C  A8 1D 06 76 */	lha r0, 0x676(r29)
/* 807B9470  28 00 00 0A */	cmplwi r0, 0xa
/* 807B9474  41 81 00 68 */	bgt lbl_807B94DC
/* 807B9478  3C 60 80 7C */	lis r3, lit_4185@ha
/* 807B947C  38 63 A3 2C */	addi r3, r3, lit_4185@l
/* 807B9480  54 00 10 3A */	slwi r0, r0, 2
/* 807B9484  7C 03 00 2E */	lwzx r0, r3, r0
/* 807B9488  7C 09 03 A6 */	mtctr r0
/* 807B948C  4E 80 04 20 */	bctr 
lbl_807B9490:
/* 807B9490  7F A3 EB 78 */	mr r3, r29
/* 807B9494  4B FF F2 59 */	bl e_tk_wait_0__FP10e_tk_class
/* 807B9498  48 00 00 44 */	b lbl_807B94DC
lbl_807B949C:
/* 807B949C  7F A3 EB 78 */	mr r3, r29
/* 807B94A0  4B FF F4 E1 */	bl e_tk_find__FP10e_tk_class
/* 807B94A4  3B E0 00 01 */	li r31, 1
/* 807B94A8  48 00 00 34 */	b lbl_807B94DC
lbl_807B94AC:
/* 807B94AC  7F A3 EB 78 */	mr r3, r29
/* 807B94B0  4B FF F8 C9 */	bl e_tk_attack__FP10e_tk_class
/* 807B94B4  3B E0 00 01 */	li r31, 1
/* 807B94B8  48 00 00 24 */	b lbl_807B94DC
lbl_807B94BC:
/* 807B94BC  7F A3 EB 78 */	mr r3, r29
/* 807B94C0  4B FF FA A9 */	bl e_tk_pathswim__FP10e_tk_class
/* 807B94C4  48 00 00 18 */	b lbl_807B94DC
lbl_807B94C8:
/* 807B94C8  7F A3 EB 78 */	mr r3, r29
/* 807B94CC  4B FF FD F9 */	bl e_tk_s_damage__FP10e_tk_class
/* 807B94D0  48 00 00 0C */	b lbl_807B94DC
lbl_807B94D4:
/* 807B94D4  7F A3 EB 78 */	mr r3, r29
/* 807B94D8  4B FF FE 7D */	bl e_tk_damage__FP10e_tk_class
lbl_807B94DC:
/* 807B94DC  7F E0 07 75 */	extsb. r0, r31
/* 807B94E0  41 82 00 14 */	beq lbl_807B94F4
/* 807B94E4  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 807B94E8  38 80 00 01 */	li r4, 1
/* 807B94EC  4B B0 86 90 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 807B94F0  48 00 00 10 */	b lbl_807B9500
lbl_807B94F4:
/* 807B94F4  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 807B94F8  38 80 00 00 */	li r4, 0
/* 807B94FC  4B B0 86 80 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_807B9500:
/* 807B9500  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807B9504  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 807B9508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B950C  40 80 00 30 */	bge lbl_807B953C
/* 807B9510  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807B9514  D0 01 00 08 */	stfs f0, 8(r1)
/* 807B9518  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807B951C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807B9520  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807B9524  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807B9528  38 7D 06 A4 */	addi r3, r29, 0x6a4
/* 807B952C  38 81 00 08 */	addi r4, r1, 8
/* 807B9530  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807B9534  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 807B9538  4B 86 3B D4 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_807B953C:
/* 807B953C  39 61 00 30 */	addi r11, r1, 0x30
/* 807B9540  4B BA 8C E8 */	b _restgpr_29
/* 807B9544  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807B9548  7C 08 03 A6 */	mtlr r0
/* 807B954C  38 21 00 30 */	addi r1, r1, 0x30
/* 807B9550  4E 80 00 20 */	blr 
