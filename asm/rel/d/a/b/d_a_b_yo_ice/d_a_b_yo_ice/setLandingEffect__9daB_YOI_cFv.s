lbl_8063A8C8:
/* 8063A8C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8063A8CC  7C 08 02 A6 */	mflr r0
/* 8063A8D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8063A8D4  39 61 00 40 */	addi r11, r1, 0x40
/* 8063A8D8  4B D2 78 F9 */	bl _savegpr_26
/* 8063A8DC  7C 7A 1B 78 */	mr r26, r3
/* 8063A8E0  3B 60 00 00 */	li r27, 0
/* 8063A8E4  3B E0 00 00 */	li r31, 0
/* 8063A8E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063A8EC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063A8F0  3C 60 80 64 */	lis r3, l_landing_effect_id@ha /* 0x8063DED0@ha */
/* 8063A8F4  3B A3 DE D0 */	addi r29, r3, l_landing_effect_id@l /* 0x8063DED0@l */
/* 8063A8F8  3C 60 80 64 */	lis r3, lit_3776@ha /* 0x8063DC84@ha */
/* 8063A8FC  3B C3 DC 84 */	addi r30, r3, lit_3776@l /* 0x8063DC84@l */
lbl_8063A900:
/* 8063A900  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8063A904  38 80 00 00 */	li r4, 0
/* 8063A908  90 81 00 08 */	stw r4, 8(r1)
/* 8063A90C  38 00 FF FF */	li r0, -1
/* 8063A910  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063A914  90 81 00 10 */	stw r4, 0x10(r1)
/* 8063A918  90 81 00 14 */	stw r4, 0x14(r1)
/* 8063A91C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8063A920  38 80 00 00 */	li r4, 0
/* 8063A924  7C BD FA 2E */	lhzx r5, r29, r31
/* 8063A928  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 8063A92C  38 FA 01 0C */	addi r7, r26, 0x10c
/* 8063A930  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 8063A934  39 20 00 00 */	li r9, 0
/* 8063A938  39 40 00 FF */	li r10, 0xff
/* 8063A93C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8063A940  4B A1 21 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8063A944  3B 7B 00 01 */	addi r27, r27, 1
/* 8063A948  2C 1B 00 06 */	cmpwi r27, 6
/* 8063A94C  3B FF 00 02 */	addi r31, r31, 2
/* 8063A950  41 80 FF B0 */	blt lbl_8063A900
/* 8063A954  39 61 00 40 */	addi r11, r1, 0x40
/* 8063A958  4B D2 78 C5 */	bl _restgpr_26
/* 8063A95C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8063A960  7C 08 03 A6 */	mtlr r0
/* 8063A964  38 21 00 40 */	addi r1, r1, 0x40
/* 8063A968  4E 80 00 20 */	blr 
