lbl_806CE184:
/* 806CE184  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806CE188  7C 08 02 A6 */	mflr r0
/* 806CE18C  90 01 00 54 */	stw r0, 0x54(r1)
/* 806CE190  39 61 00 50 */	addi r11, r1, 0x50
/* 806CE194  4B C9 40 3C */	b _savegpr_26
/* 806CE198  7C 7F 1B 78 */	mr r31, r3
/* 806CE19C  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CE1A0  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CE1A4  C0 03 00 08 */	lfs f0, 8(r3)
/* 806CE1A8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806CE1AC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806CE1B0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806CE1B4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CE1B8  80 63 00 04 */	lwz r3, 4(r3)
/* 806CE1BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806CE1C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806CE1C4  38 63 00 60 */	addi r3, r3, 0x60
/* 806CE1C8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806CE1CC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806CE1D0  4B C7 82 E0 */	b PSMTXCopy
/* 806CE1D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806CE1D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806CE1DC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806CE1E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806CE1E4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806CE1E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806CE1EC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806CE1F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806CE1F4  3B 40 00 00 */	li r26, 0
/* 806CE1F8  3B C0 00 00 */	li r30, 0
/* 806CE1FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CE200  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 806CE204  3C 60 80 6D */	lis r3, gi_damage_eff_id@ha
/* 806CE208  3B 83 10 3C */	addi r28, r3, gi_damage_eff_id@l
/* 806CE20C  3C 60 80 6D */	lis r3, lit_3909@ha
/* 806CE210  3B A3 0E 68 */	addi r29, r3, lit_3909@l
lbl_806CE214:
/* 806CE214  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806CE218  38 80 00 00 */	li r4, 0
/* 806CE21C  90 81 00 08 */	stw r4, 8(r1)
/* 806CE220  38 00 FF FF */	li r0, -1
/* 806CE224  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CE228  90 81 00 10 */	stw r4, 0x10(r1)
/* 806CE22C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806CE230  90 81 00 18 */	stw r4, 0x18(r1)
/* 806CE234  38 80 00 00 */	li r4, 0
/* 806CE238  7C BC F2 2E */	lhzx r5, r28, r30
/* 806CE23C  38 C1 00 20 */	addi r6, r1, 0x20
/* 806CE240  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806CE244  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806CE248  39 21 00 2C */	addi r9, r1, 0x2c
/* 806CE24C  39 40 00 FF */	li r10, 0xff
/* 806CE250  C0 3D 00 00 */	lfs f1, 0(r29)
/* 806CE254  4B 97 E8 3C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806CE258  3B 5A 00 01 */	addi r26, r26, 1
/* 806CE25C  2C 1A 00 03 */	cmpwi r26, 3
/* 806CE260  3B DE 00 02 */	addi r30, r30, 2
/* 806CE264  41 80 FF B0 */	blt lbl_806CE214
/* 806CE268  39 61 00 50 */	addi r11, r1, 0x50
/* 806CE26C  4B C9 3F B0 */	b _restgpr_26
/* 806CE270  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806CE274  7C 08 03 A6 */	mtlr r0
/* 806CE278  38 21 00 50 */	addi r1, r1, 0x50
/* 806CE27C  4E 80 00 20 */	blr 
