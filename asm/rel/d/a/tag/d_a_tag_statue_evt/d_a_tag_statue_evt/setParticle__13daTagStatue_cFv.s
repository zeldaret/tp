lbl_805A7A68:
/* 805A7A68  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A7A6C  7C 08 02 A6 */	mflr r0
/* 805A7A70  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A7A74  39 61 00 40 */	addi r11, r1, 0x40
/* 805A7A78  4B DB A7 58 */	b _savegpr_26
/* 805A7A7C  7C 7A 1B 78 */	mr r26, r3
/* 805A7A80  3B 60 00 00 */	li r27, 0
/* 805A7A84  3B E0 00 00 */	li r31, 0
/* 805A7A88  3B C0 00 00 */	li r30, 0
/* 805A7A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A7A90  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
lbl_805A7A94:
/* 805A7A94  3B 9E 05 84 */	addi r28, r30, 0x584
/* 805A7A98  7C 1A E0 2E */	lwzx r0, r26, r28
/* 805A7A9C  28 00 00 00 */	cmplwi r0, 0
/* 805A7AA0  40 82 00 58 */	bne lbl_805A7AF8
/* 805A7AA4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805A7AA8  38 80 00 00 */	li r4, 0
/* 805A7AAC  90 81 00 08 */	stw r4, 8(r1)
/* 805A7AB0  38 00 FF FF */	li r0, -1
/* 805A7AB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A7AB8  90 81 00 10 */	stw r4, 0x10(r1)
/* 805A7ABC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805A7AC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 805A7AC4  38 80 00 00 */	li r4, 0
/* 805A7AC8  3C A0 80 5B */	lis r5, l_eff_id@ha
/* 805A7ACC  38 A5 82 20 */	addi r5, r5, l_eff_id@l
/* 805A7AD0  7C A5 FA 2E */	lhzx r5, r5, r31
/* 805A7AD4  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 805A7AD8  38 E0 00 00 */	li r7, 0
/* 805A7ADC  39 1A 04 B4 */	addi r8, r26, 0x4b4
/* 805A7AE0  39 3A 04 EC */	addi r9, r26, 0x4ec
/* 805A7AE4  39 40 00 FF */	li r10, 0xff
/* 805A7AE8  3D 60 80 5B */	lis r11, lit_3690@ha
/* 805A7AEC  C0 2B 81 10 */	lfs f1, lit_3690@l(r11)
/* 805A7AF0  4B AA 4F A0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805A7AF4  7C 7A E1 2E */	stwx r3, r26, r28
lbl_805A7AF8:
/* 805A7AF8  3B 7B 00 01 */	addi r27, r27, 1
/* 805A7AFC  2C 1B 00 03 */	cmpwi r27, 3
/* 805A7B00  3B FF 00 02 */	addi r31, r31, 2
/* 805A7B04  3B DE 00 04 */	addi r30, r30, 4
/* 805A7B08  41 80 FF 8C */	blt lbl_805A7A94
/* 805A7B0C  39 61 00 40 */	addi r11, r1, 0x40
/* 805A7B10  4B DB A7 0C */	b _restgpr_26
/* 805A7B14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A7B18  7C 08 03 A6 */	mtlr r0
/* 805A7B1C  38 21 00 40 */	addi r1, r1, 0x40
/* 805A7B20  4E 80 00 20 */	blr 
