lbl_80C5C4F8:
/* 80C5C4F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C5C4FC  7C 08 02 A6 */	mflr r0
/* 80C5C500  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C5C504  39 61 00 40 */	addi r11, r1, 0x40
/* 80C5C508  4B 70 5C C5 */	bl _savegpr_25
/* 80C5C50C  7C 79 1B 78 */	mr r25, r3
/* 80C5C510  3C 60 80 C6 */	lis r3, l_eff_id@ha /* 0x80C5C878@ha */
/* 80C5C514  3B 63 C8 78 */	addi r27, r3, l_eff_id@l /* 0x80C5C878@l */
/* 80C5C518  3B 40 00 00 */	li r26, 0
/* 80C5C51C  3B E0 00 00 */	li r31, 0
/* 80C5C520  3B C0 00 00 */	li r30, 0
/* 80C5C524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5C528  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5C52C  3B BB 00 00 */	addi r29, r27, 0
lbl_80C5C530:
/* 80C5C530  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C5C534  38 80 00 00 */	li r4, 0
/* 80C5C538  90 81 00 08 */	stw r4, 8(r1)
/* 80C5C53C  38 00 FF FF */	li r0, -1
/* 80C5C540  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C5C544  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C5C548  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5C54C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5C550  38 80 00 00 */	li r4, 0
/* 80C5C554  7C BD F2 2E */	lhzx r5, r29, r30
/* 80C5C558  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 80C5C55C  38 E0 00 00 */	li r7, 0
/* 80C5C560  39 00 00 00 */	li r8, 0
/* 80C5C564  39 20 00 00 */	li r9, 0
/* 80C5C568  39 40 00 FF */	li r10, 0xff
/* 80C5C56C  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80C5C570  4B 3F 05 21 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5C574  38 1F 05 80 */	addi r0, r31, 0x580
/* 80C5C578  7C 79 01 2E */	stwx r3, r25, r0
/* 80C5C57C  3B 5A 00 01 */	addi r26, r26, 1
/* 80C5C580  2C 1A 00 04 */	cmpwi r26, 4
/* 80C5C584  3B FF 00 04 */	addi r31, r31, 4
/* 80C5C588  3B DE 00 02 */	addi r30, r30, 2
/* 80C5C58C  41 80 FF A4 */	blt lbl_80C5C530
/* 80C5C590  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80C5C594  D0 19 05 68 */	stfs f0, 0x568(r25)
/* 80C5C598  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80C5C59C  D0 19 05 6C */	stfs f0, 0x56c(r25)
/* 80C5C5A0  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 80C5C5A4  D0 19 05 70 */	stfs f0, 0x570(r25)
/* 80C5C5A8  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 80C5C5AC  D0 19 05 74 */	stfs f0, 0x574(r25)
/* 80C5C5B0  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80C5C5B4  D0 19 05 78 */	stfs f0, 0x578(r25)
/* 80C5C5B8  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 80C5C5BC  D0 19 05 7C */	stfs f0, 0x57c(r25)
/* 80C5C5C0  38 60 00 01 */	li r3, 1
/* 80C5C5C4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C5C5C8  4B 70 5C 51 */	bl _restgpr_25
/* 80C5C5CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C5C5D0  7C 08 03 A6 */	mtlr r0
/* 80C5C5D4  38 21 00 40 */	addi r1, r1, 0x40
/* 80C5C5D8  4E 80 00 20 */	blr 
