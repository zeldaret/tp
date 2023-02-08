lbl_806D14E0:
/* 806D14E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D14E4  7C 08 02 A6 */	mflr r0
/* 806D14E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D14EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D14F0  93 C1 00 08 */	stw r30, 8(r1)
/* 806D14F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 806D14F8  7C 9F 23 78 */	mr r31, r4
/* 806D14FC  41 82 00 0C */	beq lbl_806D1508
/* 806D1500  80 7E 00 04 */	lwz r3, 4(r30)
/* 806D1504  48 00 00 08 */	b lbl_806D150C
lbl_806D1508:
/* 806D1508  38 60 FF FF */	li r3, -1
lbl_806D150C:
/* 806D150C  4B 95 0C 2D */	bl fpcM_IsCreating__FUi
/* 806D1510  2C 03 00 00 */	cmpwi r3, 0
/* 806D1514  40 82 00 50 */	bne lbl_806D1564
/* 806D1518  7F C3 F3 78 */	mr r3, r30
/* 806D151C  4B 94 77 C5 */	bl fopAc_IsActor__FPv
/* 806D1520  2C 03 00 00 */	cmpwi r3, 0
/* 806D1524  41 82 00 40 */	beq lbl_806D1564
/* 806D1528  A8 1E 00 08 */	lha r0, 8(r30)
/* 806D152C  2C 00 01 98 */	cmpwi r0, 0x198
/* 806D1530  40 82 00 34 */	bne lbl_806D1564
/* 806D1534  7F C3 F3 78 */	mr r3, r30
/* 806D1538  7F E4 FB 78 */	mr r4, r31
/* 806D153C  4B 94 94 29 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806D1540  3C 60 80 6D */	lis r3, lit_4119@ha /* 0x806D79E8@ha */
/* 806D1544  C0 03 79 E8 */	lfs f0, lit_4119@l(r3)  /* 0x806D79E8@l */
/* 806D1548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D154C  40 80 00 18 */	bge lbl_806D1564
/* 806D1550  88 1E 0A E5 */	lbz r0, 0xae5(r30)
/* 806D1554  28 00 00 01 */	cmplwi r0, 1
/* 806D1558  40 82 00 0C */	bne lbl_806D1564
/* 806D155C  7F C3 F3 78 */	mr r3, r30
/* 806D1560  48 00 00 08 */	b lbl_806D1568
lbl_806D1564:
/* 806D1564  38 60 00 00 */	li r3, 0
lbl_806D1568:
/* 806D1568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D156C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D1570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D1574  7C 08 03 A6 */	mtlr r0
/* 806D1578  38 21 00 10 */	addi r1, r1, 0x10
/* 806D157C  4E 80 00 20 */	blr 
