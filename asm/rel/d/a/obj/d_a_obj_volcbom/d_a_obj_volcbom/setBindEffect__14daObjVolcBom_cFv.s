lbl_80D25528:
/* 80D25528  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D2552C  7C 08 02 A6 */	mflr r0
/* 80D25530  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D25534  39 61 00 40 */	addi r11, r1, 0x40
/* 80D25538  4B 63 CC 95 */	bl _savegpr_25
/* 80D2553C  7C 7E 1B 78 */	mr r30, r3
/* 80D25540  3B E0 00 00 */	li r31, 0
/* 80D25544  3B A0 00 00 */	li r29, 0
/* 80D25548  3B 80 00 00 */	li r28, 0
/* 80D2554C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D25550  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D25554  3C 60 80 D2 */	lis r3, l_bind_eff@ha /* 0x80D26B74@ha */
/* 80D25558  3B 43 6B 74 */	addi r26, r3, l_bind_eff@l /* 0x80D26B74@l */
/* 80D2555C  3C 60 80 D2 */	lis r3, lit_3785@ha /* 0x80D26B7C@ha */
/* 80D25560  3B 63 6B 7C */	addi r27, r3, lit_3785@l /* 0x80D26B7C@l */
lbl_80D25564:
/* 80D25564  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80D25568  38 80 00 00 */	li r4, 0
/* 80D2556C  90 81 00 08 */	stw r4, 8(r1)
/* 80D25570  38 00 FF FF */	li r0, -1
/* 80D25574  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D25578  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D2557C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D25580  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D25584  38 80 00 00 */	li r4, 0
/* 80D25588  7C BA E2 2E */	lhzx r5, r26, r28
/* 80D2558C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D25590  38 E0 00 00 */	li r7, 0
/* 80D25594  39 1E 04 B4 */	addi r8, r30, 0x4b4
/* 80D25598  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80D2559C  39 40 00 FF */	li r10, 0xff
/* 80D255A0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80D255A4  4B 32 74 ED */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D255A8  38 1D 0A 08 */	addi r0, r29, 0xa08
/* 80D255AC  7C 7E 01 2E */	stwx r3, r30, r0
/* 80D255B0  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80D255B4  28 03 00 00 */	cmplwi r3, 0
/* 80D255B8  41 82 00 10 */	beq lbl_80D255C8
/* 80D255BC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D255C0  60 00 00 40 */	ori r0, r0, 0x40
/* 80D255C4  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D255C8:
/* 80D255C8  3B FF 00 01 */	addi r31, r31, 1
/* 80D255CC  2C 1F 00 04 */	cmpwi r31, 4
/* 80D255D0  3B BD 00 04 */	addi r29, r29, 4
/* 80D255D4  3B 9C 00 02 */	addi r28, r28, 2
/* 80D255D8  41 80 FF 8C */	blt lbl_80D25564
/* 80D255DC  39 61 00 40 */	addi r11, r1, 0x40
/* 80D255E0  4B 63 CC 39 */	bl _restgpr_25
/* 80D255E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D255E8  7C 08 03 A6 */	mtlr r0
/* 80D255EC  38 21 00 40 */	addi r1, r1, 0x40
/* 80D255F0  4E 80 00 20 */	blr 
