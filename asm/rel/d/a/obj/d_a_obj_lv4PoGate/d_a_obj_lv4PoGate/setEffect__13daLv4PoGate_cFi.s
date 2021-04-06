lbl_80C60534:
/* 80C60534  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C60538  7C 08 02 A6 */	mflr r0
/* 80C6053C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C60540  39 61 00 40 */	addi r11, r1, 0x40
/* 80C60544  4B 70 1C 89 */	bl _savegpr_25
/* 80C60548  7C 79 1B 78 */	mr r25, r3
/* 80C6054C  2C 04 00 00 */	cmpwi r4, 0
/* 80C60550  41 82 00 10 */	beq lbl_80C60560
/* 80C60554  38 00 00 00 */	li r0, 0
/* 80C60558  3B 60 00 06 */	li r27, 6
/* 80C6055C  48 00 00 0C */	b lbl_80C60568
lbl_80C60560:
/* 80C60560  38 00 00 06 */	li r0, 6
/* 80C60564  3B 60 00 0A */	li r27, 0xa
lbl_80C60568:
/* 80C60568  7C 1A 03 78 */	mr r26, r0
/* 80C6056C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C60570  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C60574  3C 60 80 C6 */	lis r3, particle_id@ha /* 0x80C60834@ha */
/* 80C60578  3B A3 08 34 */	addi r29, r3, particle_id@l /* 0x80C60834@l */
/* 80C6057C  3C 60 80 C6 */	lis r3, lit_3772@ha /* 0x80C60824@ha */
/* 80C60580  3B C3 08 24 */	addi r30, r3, lit_3772@l /* 0x80C60824@l */
/* 80C60584  54 1F 08 3C */	slwi r31, r0, 1
/* 80C60588  48 00 00 50 */	b lbl_80C605D8
lbl_80C6058C:
/* 80C6058C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C60590  38 80 00 00 */	li r4, 0
/* 80C60594  90 81 00 08 */	stw r4, 8(r1)
/* 80C60598  38 00 FF FF */	li r0, -1
/* 80C6059C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C605A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C605A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C605A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C605AC  38 80 00 00 */	li r4, 0
/* 80C605B0  7C BD FA 2E */	lhzx r5, r29, r31
/* 80C605B4  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 80C605B8  38 E0 00 00 */	li r7, 0
/* 80C605BC  39 19 04 E4 */	addi r8, r25, 0x4e4
/* 80C605C0  39 39 04 EC */	addi r9, r25, 0x4ec
/* 80C605C4  39 40 00 FF */	li r10, 0xff
/* 80C605C8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C605CC  4B 3E C4 C5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C605D0  3B 5A 00 01 */	addi r26, r26, 1
/* 80C605D4  3B FF 00 02 */	addi r31, r31, 2
lbl_80C605D8:
/* 80C605D8  7C 1A D8 00 */	cmpw r26, r27
/* 80C605DC  41 80 FF B0 */	blt lbl_80C6058C
/* 80C605E0  39 61 00 40 */	addi r11, r1, 0x40
/* 80C605E4  4B 70 1C 35 */	bl _restgpr_25
/* 80C605E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C605EC  7C 08 03 A6 */	mtlr r0
/* 80C605F0  38 21 00 40 */	addi r1, r1, 0x40
/* 80C605F4  4E 80 00 20 */	blr 
