lbl_806305B8:
/* 806305B8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806305BC  7C 08 02 A6 */	mflr r0
/* 806305C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 806305C4  39 61 00 50 */	addi r11, r1, 0x50
/* 806305C8  4B D3 1C 08 */	b _savegpr_26
/* 806305CC  7C 7A 1B 78 */	mr r26, r3
/* 806305D0  3C 60 80 64 */	lis r3, lit_3788@ha
/* 806305D4  3B 83 97 F4 */	addi r28, r3, lit_3788@l
/* 806305D8  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 806305DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806305E0  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 806305E4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 806305E8  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 806305EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806305F0  88 1A 0F A8 */	lbz r0, 0xfa8(r26)
/* 806305F4  28 00 00 07 */	cmplwi r0, 7
/* 806305F8  40 82 00 10 */	bne lbl_80630608
/* 806305FC  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 80630600  EC 02 00 28 */	fsubs f0, f2, f0
/* 80630604  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_80630608:
/* 80630608  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8063060C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80630610  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80630614  3B 60 00 00 */	li r27, 0
/* 80630618  3B E0 00 00 */	li r31, 0
/* 8063061C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80630620  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80630624  3C 60 80 64 */	lis r3, l_landing_effect_id@ha
/* 80630628  3B C3 9C 60 */	addi r30, r3, l_landing_effect_id@l
lbl_8063062C:
/* 8063062C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80630630  38 80 00 00 */	li r4, 0
/* 80630634  90 81 00 08 */	stw r4, 8(r1)
/* 80630638  38 00 FF FF */	li r0, -1
/* 8063063C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80630640  90 81 00 10 */	stw r4, 0x10(r1)
/* 80630644  90 81 00 14 */	stw r4, 0x14(r1)
/* 80630648  90 81 00 18 */	stw r4, 0x18(r1)
/* 8063064C  38 80 00 00 */	li r4, 0
/* 80630650  7C BE FA 2E */	lhzx r5, r30, r31
/* 80630654  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80630658  38 FA 01 0C */	addi r7, r26, 0x10c
/* 8063065C  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 80630660  39 21 00 20 */	addi r9, r1, 0x20
/* 80630664  39 40 00 FF */	li r10, 0xff
/* 80630668  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 8063066C  4B A1 C4 24 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80630670  3B 7B 00 01 */	addi r27, r27, 1
/* 80630674  2C 1B 00 06 */	cmpwi r27, 6
/* 80630678  3B FF 00 02 */	addi r31, r31, 2
/* 8063067C  41 80 FF B0 */	blt lbl_8063062C
/* 80630680  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80630684  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80630688  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8063068C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80630690  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80630694  38 80 00 00 */	li r4, 0
/* 80630698  90 81 00 08 */	stw r4, 8(r1)
/* 8063069C  38 00 FF FF */	li r0, -1
/* 806306A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806306A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 806306A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806306AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806306B0  38 80 00 00 */	li r4, 0
/* 806306B4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086E2@ha */
/* 806306B8  38 A5 86 E2 */	addi r5, r5, 0x86E2 /* 0x000086E2@l */
/* 806306BC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 806306C0  38 FA 01 0C */	addi r7, r26, 0x10c
/* 806306C4  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 806306C8  39 20 00 00 */	li r9, 0
/* 806306CC  39 40 00 FF */	li r10, 0xff
/* 806306D0  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 806306D4  4B A1 C3 BC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806306D8  39 61 00 50 */	addi r11, r1, 0x50
/* 806306DC  4B D3 1B 40 */	b _restgpr_26
/* 806306E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806306E4  7C 08 03 A6 */	mtlr r0
/* 806306E8  38 21 00 50 */	addi r1, r1, 0x50
/* 806306EC  4E 80 00 20 */	blr 
