lbl_806D2940:
/* 806D2940  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806D2944  7C 08 02 A6 */	mflr r0
/* 806D2948  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D294C  39 61 00 40 */	addi r11, r1, 0x40
/* 806D2950  4B C8 F8 81 */	bl _savegpr_26
/* 806D2954  7C 7A 1B 78 */	mr r26, r3
/* 806D2958  3B 60 00 00 */	li r27, 0
/* 806D295C  3B E0 00 00 */	li r31, 0
/* 806D2960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D2964  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D2968  3C 60 80 6D */	lis r3, l_egg_eff_id@ha /* 0x806D7C24@ha */
/* 806D296C  3B A3 7C 24 */	addi r29, r3, l_egg_eff_id@l /* 0x806D7C24@l */
/* 806D2970  3C 60 80 6D */	lis r3, lit_3908@ha /* 0x806D79A8@ha */
/* 806D2974  3B C3 79 A8 */	addi r30, r3, lit_3908@l /* 0x806D79A8@l */
lbl_806D2978:
/* 806D2978  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 806D297C  38 80 00 00 */	li r4, 0
/* 806D2980  90 81 00 08 */	stw r4, 8(r1)
/* 806D2984  38 00 FF FF */	li r0, -1
/* 806D2988  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D298C  90 81 00 10 */	stw r4, 0x10(r1)
/* 806D2990  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D2994  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D2998  38 80 00 00 */	li r4, 0
/* 806D299C  7C BD FA 2E */	lhzx r5, r29, r31
/* 806D29A0  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 806D29A4  38 FA 01 0C */	addi r7, r26, 0x10c
/* 806D29A8  39 00 00 00 */	li r8, 0
/* 806D29AC  39 20 00 00 */	li r9, 0
/* 806D29B0  39 40 00 FF */	li r10, 0xff
/* 806D29B4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806D29B8  4B 97 A0 D9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D29BC  3B 7B 00 01 */	addi r27, r27, 1
/* 806D29C0  2C 1B 00 02 */	cmpwi r27, 2
/* 806D29C4  3B FF 00 02 */	addi r31, r31, 2
/* 806D29C8  41 80 FF B0 */	blt lbl_806D2978
/* 806D29CC  39 61 00 40 */	addi r11, r1, 0x40
/* 806D29D0  4B C8 F8 4D */	bl _restgpr_26
/* 806D29D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D29D8  7C 08 03 A6 */	mtlr r0
/* 806D29DC  38 21 00 40 */	addi r1, r1, 0x40
/* 806D29E0  4E 80 00 20 */	blr 
