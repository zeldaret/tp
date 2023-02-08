lbl_8011B46C:
/* 8011B46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B470  7C 08 02 A6 */	mflr r0
/* 8011B474  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011B47C  93 C1 00 08 */	stw r30, 8(r1)
/* 8011B480  7C 7E 1B 78 */	mr r30, r3
/* 8011B484  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8011B488  7F E3 FB 78 */	mr r3, r31
/* 8011B48C  48 04 30 41 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011B490  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B494  41 82 00 78 */	beq lbl_8011B50C
/* 8011B498  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8011B49C  2C 00 00 00 */	cmpwi r0, 0
/* 8011B4A0  40 82 00 54 */	bne lbl_8011B4F4
/* 8011B4A4  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8011B4A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011B4AC  41 82 00 14 */	beq lbl_8011B4C0
/* 8011B4B0  7F C3 F3 78 */	mr r3, r30
/* 8011B4B4  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8011B4B8  48 00 D3 8D */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 8011B4BC  48 00 00 30 */	b lbl_8011B4EC
lbl_8011B4C0:
/* 8011B4C0  3C 60 80 39 */	lis r3, m__26daAlinkHIO_noActAtnMove_c0@ha /* 0x8038D768@ha */
/* 8011B4C4  38 63 D7 68 */	addi r3, r3, m__26daAlinkHIO_noActAtnMove_c0@l /* 0x8038D768@l */
/* 8011B4C8  C0 43 00 08 */	lfs f2, 8(r3)
/* 8011B4CC  7F C3 F3 78 */	mr r3, r30
/* 8011B4D0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011B4D4  FC 60 10 90 */	fmr f3, f2
/* 8011B4D8  38 80 00 1A */	li r4, 0x1a
/* 8011B4DC  38 A0 00 1A */	li r5, 0x1a
/* 8011B4E0  38 C0 00 02 */	li r6, 2
/* 8011B4E4  C0 82 92 C4 */	lfs f4, lit_6109(r2)
/* 8011B4E8  4B F9 15 2D */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
lbl_8011B4EC:
/* 8011B4EC  38 00 00 01 */	li r0, 1
/* 8011B4F0  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_8011B4F4:
/* 8011B4F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B4F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011B4FC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011B500  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011B504  4B F2 CC 79 */	bl cutEnd__16dEvent_manager_cFi
/* 8011B508  48 00 00 58 */	b lbl_8011B560
lbl_8011B50C:
/* 8011B50C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8011B510  2C 00 00 00 */	cmpwi r0, 0
/* 8011B514  41 82 00 1C */	beq lbl_8011B530
/* 8011B518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B51C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011B520  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011B524  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011B528  4B F2 CC 55 */	bl cutEnd__16dEvent_manager_cFi
/* 8011B52C  48 00 00 34 */	b lbl_8011B560
lbl_8011B530:
/* 8011B530  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8011B534  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011B538  40 82 00 28 */	bne lbl_8011B560
/* 8011B53C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8011B540  C0 02 93 C4 */	lfs f0, lit_10194(r2)
/* 8011B544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011B548  4C 41 13 82 */	cror 2, 1, 2
/* 8011B54C  40 82 00 14 */	bne lbl_8011B560
/* 8011B550  38 00 00 01 */	li r0, 1
/* 8011B554  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 8011B558  38 00 00 06 */	li r0, 6
/* 8011B55C  98 1E 2F 93 */	stb r0, 0x2f93(r30)
lbl_8011B560:
/* 8011B560  38 60 00 01 */	li r3, 1
/* 8011B564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011B568  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011B56C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011B570  7C 08 03 A6 */	mtlr r0
/* 8011B574  38 21 00 10 */	addi r1, r1, 0x10
/* 8011B578  4E 80 00 20 */	blr 
