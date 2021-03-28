lbl_806AF240:
/* 806AF240  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806AF244  7C 08 02 A6 */	mflr r0
/* 806AF248  90 01 00 54 */	stw r0, 0x54(r1)
/* 806AF24C  39 61 00 50 */	addi r11, r1, 0x50
/* 806AF250  4B CB 2F 80 */	b _savegpr_26
/* 806AF254  7C 7A 1B 78 */	mr r26, r3
/* 806AF258  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 806AF25C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806AF260  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806AF264  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AF268  3B 60 00 00 */	li r27, 0
/* 806AF26C  3B E0 00 00 */	li r31, 0
/* 806AF270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AF274  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 806AF278  3C 60 80 6B */	lis r3, w_eff_id_4470@ha
/* 806AF27C  3B A3 60 78 */	addi r29, r3, w_eff_id_4470@l
/* 806AF280  3C 60 80 6B */	lis r3, lit_3868@ha
/* 806AF284  3B C3 5C FC */	addi r30, r3, lit_3868@l
lbl_806AF288:
/* 806AF288  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 806AF28C  38 80 00 00 */	li r4, 0
/* 806AF290  90 81 00 08 */	stw r4, 8(r1)
/* 806AF294  38 00 FF FF */	li r0, -1
/* 806AF298  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AF29C  90 81 00 10 */	stw r4, 0x10(r1)
/* 806AF2A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF2A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF2A8  38 80 00 00 */	li r4, 0
/* 806AF2AC  7C BD FA 2E */	lhzx r5, r29, r31
/* 806AF2B0  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 806AF2B4  38 FA 01 0C */	addi r7, r26, 0x10c
/* 806AF2B8  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 806AF2BC  39 21 00 20 */	addi r9, r1, 0x20
/* 806AF2C0  39 40 00 FF */	li r10, 0xff
/* 806AF2C4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806AF2C8  4B 99 D7 C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF2CC  3B 7B 00 01 */	addi r27, r27, 1
/* 806AF2D0  2C 1B 00 05 */	cmpwi r27, 5
/* 806AF2D4  3B FF 00 02 */	addi r31, r31, 2
/* 806AF2D8  41 80 FF B0 */	blt lbl_806AF288
/* 806AF2DC  39 61 00 50 */	addi r11, r1, 0x50
/* 806AF2E0  4B CB 2F 3C */	b _restgpr_26
/* 806AF2E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806AF2E8  7C 08 03 A6 */	mtlr r0
/* 806AF2EC  38 21 00 50 */	addi r1, r1, 0x50
/* 806AF2F0  4E 80 00 20 */	blr 
