lbl_8063A6F8:
/* 8063A6F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8063A6FC  7C 08 02 A6 */	mflr r0
/* 8063A700  90 01 00 44 */	stw r0, 0x44(r1)
/* 8063A704  39 61 00 40 */	addi r11, r1, 0x40
/* 8063A708  4B D2 7A C9 */	bl _savegpr_26
/* 8063A70C  7C 7A 1B 78 */	mr r26, r3
/* 8063A710  3B 60 00 00 */	li r27, 0
/* 8063A714  3B E0 00 00 */	li r31, 0
/* 8063A718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063A71C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063A720  3C 60 80 64 */	lis r3, wall_break_effect_id@ha /* 0x8063DEC4@ha */
/* 8063A724  3B A3 DE C4 */	addi r29, r3, wall_break_effect_id@l /* 0x8063DEC4@l */
/* 8063A728  3C 60 80 64 */	lis r3, lit_3776@ha /* 0x8063DC84@ha */
/* 8063A72C  3B C3 DC 84 */	addi r30, r3, lit_3776@l /* 0x8063DC84@l */
lbl_8063A730:
/* 8063A730  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8063A734  38 80 00 00 */	li r4, 0
/* 8063A738  90 81 00 08 */	stw r4, 8(r1)
/* 8063A73C  38 00 FF FF */	li r0, -1
/* 8063A740  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063A744  90 81 00 10 */	stw r4, 0x10(r1)
/* 8063A748  90 81 00 14 */	stw r4, 0x14(r1)
/* 8063A74C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8063A750  38 80 00 00 */	li r4, 0
/* 8063A754  7C BD FA 2E */	lhzx r5, r29, r31
/* 8063A758  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 8063A75C  38 FA 01 0C */	addi r7, r26, 0x10c
/* 8063A760  39 00 00 00 */	li r8, 0
/* 8063A764  39 20 00 00 */	li r9, 0
/* 8063A768  39 40 00 FF */	li r10, 0xff
/* 8063A76C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8063A770  4B A1 23 21 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8063A774  3B 7B 00 01 */	addi r27, r27, 1
/* 8063A778  2C 1B 00 03 */	cmpwi r27, 3
/* 8063A77C  3B FF 00 02 */	addi r31, r31, 2
/* 8063A780  41 80 FF B0 */	blt lbl_8063A730
/* 8063A784  39 61 00 40 */	addi r11, r1, 0x40
/* 8063A788  4B D2 7A 95 */	bl _restgpr_26
/* 8063A78C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8063A790  7C 08 03 A6 */	mtlr r0
/* 8063A794  38 21 00 40 */	addi r1, r1, 0x40
/* 8063A798  4E 80 00 20 */	blr 
