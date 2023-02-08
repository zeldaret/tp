lbl_806AF924:
/* 806AF924  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806AF928  7C 08 02 A6 */	mflr r0
/* 806AF92C  90 01 00 54 */	stw r0, 0x54(r1)
/* 806AF930  39 61 00 50 */	addi r11, r1, 0x50
/* 806AF934  4B CB 28 9D */	bl _savegpr_26
/* 806AF938  7C 7A 1B 78 */	mr r26, r3
/* 806AF93C  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 806AF940  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806AF944  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806AF948  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AF94C  3B 60 00 00 */	li r27, 0
/* 806AF950  3B E0 00 00 */	li r31, 0
/* 806AF954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AF958  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AF95C  3C 60 80 6B */	lis r3, w_eff_id_4713@ha /* 0x806B6094@ha */
/* 806AF960  3B A3 60 94 */	addi r29, r3, w_eff_id_4713@l /* 0x806B6094@l */
/* 806AF964  3C 60 80 6B */	lis r3, lit_3868@ha /* 0x806B5CFC@ha */
/* 806AF968  3B C3 5C FC */	addi r30, r3, lit_3868@l /* 0x806B5CFC@l */
lbl_806AF96C:
/* 806AF96C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 806AF970  38 80 00 00 */	li r4, 0
/* 806AF974  90 81 00 08 */	stw r4, 8(r1)
/* 806AF978  38 00 FF FF */	li r0, -1
/* 806AF97C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AF980  90 81 00 10 */	stw r4, 0x10(r1)
/* 806AF984  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF988  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF98C  38 80 00 00 */	li r4, 0
/* 806AF990  7C BD FA 2E */	lhzx r5, r29, r31
/* 806AF994  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 806AF998  38 FA 01 0C */	addi r7, r26, 0x10c
/* 806AF99C  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 806AF9A0  39 21 00 20 */	addi r9, r1, 0x20
/* 806AF9A4  39 40 00 FF */	li r10, 0xff
/* 806AF9A8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806AF9AC  4B 99 D0 E5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF9B0  3B 7B 00 01 */	addi r27, r27, 1
/* 806AF9B4  2C 1B 00 02 */	cmpwi r27, 2
/* 806AF9B8  3B FF 00 02 */	addi r31, r31, 2
/* 806AF9BC  41 80 FF B0 */	blt lbl_806AF96C
/* 806AF9C0  39 61 00 50 */	addi r11, r1, 0x50
/* 806AF9C4  4B CB 28 59 */	bl _restgpr_26
/* 806AF9C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806AF9CC  7C 08 03 A6 */	mtlr r0
/* 806AF9D0  38 21 00 50 */	addi r1, r1, 0x50
/* 806AF9D4  4E 80 00 20 */	blr 
