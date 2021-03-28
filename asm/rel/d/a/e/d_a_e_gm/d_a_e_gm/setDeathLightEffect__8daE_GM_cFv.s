lbl_806D289C:
/* 806D289C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806D28A0  7C 08 02 A6 */	mflr r0
/* 806D28A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D28A8  39 61 00 40 */	addi r11, r1, 0x40
/* 806D28AC  4B C8 F9 24 */	b _savegpr_26
/* 806D28B0  7C 7A 1B 78 */	mr r26, r3
/* 806D28B4  3B 60 00 00 */	li r27, 0
/* 806D28B8  3B E0 00 00 */	li r31, 0
/* 806D28BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D28C0  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 806D28C4  3C 60 80 6D */	lis r3, l_eff_id@ha
/* 806D28C8  3B A3 7A 70 */	addi r29, r3, l_eff_id@l
/* 806D28CC  3C 60 80 6D */	lis r3, lit_3908@ha
/* 806D28D0  3B C3 79 A8 */	addi r30, r3, lit_3908@l
lbl_806D28D4:
/* 806D28D4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 806D28D8  38 80 00 00 */	li r4, 0
/* 806D28DC  90 81 00 08 */	stw r4, 8(r1)
/* 806D28E0  38 00 FF FF */	li r0, -1
/* 806D28E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D28E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 806D28EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D28F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D28F4  38 80 00 00 */	li r4, 0
/* 806D28F8  7C BD FA 2E */	lhzx r5, r29, r31
/* 806D28FC  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 806D2900  38 FA 01 0C */	addi r7, r26, 0x10c
/* 806D2904  39 00 00 00 */	li r8, 0
/* 806D2908  39 20 00 00 */	li r9, 0
/* 806D290C  39 40 00 FF */	li r10, 0xff
/* 806D2910  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806D2914  4B 97 A1 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D2918  3B 7B 00 01 */	addi r27, r27, 1
/* 806D291C  2C 1B 00 04 */	cmpwi r27, 4
/* 806D2920  3B FF 00 02 */	addi r31, r31, 2
/* 806D2924  41 80 FF B0 */	blt lbl_806D28D4
/* 806D2928  39 61 00 40 */	addi r11, r1, 0x40
/* 806D292C  4B C8 F8 F0 */	b _restgpr_26
/* 806D2930  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D2934  7C 08 03 A6 */	mtlr r0
/* 806D2938  38 21 00 40 */	addi r1, r1, 0x40
/* 806D293C  4E 80 00 20 */	blr 
