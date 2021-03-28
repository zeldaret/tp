lbl_8011E748:
/* 8011E748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011E74C  7C 08 02 A6 */	mflr r0
/* 8011E750  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011E754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011E758  93 C1 00 08 */	stw r30, 8(r1)
/* 8011E75C  7C 7E 1B 78 */	mr r30, r3
/* 8011E760  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8011E764  7F E3 FB 78 */	mr r3, r31
/* 8011E768  48 03 FD 65 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011E76C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011E770  41 82 00 5C */	beq lbl_8011E7CC
/* 8011E774  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8011E778  2C 00 00 00 */	cmpwi r0, 0
/* 8011E77C  40 82 00 30 */	bne lbl_8011E7AC
/* 8011E780  3C 60 80 39 */	lis r3, m__26daAlinkHIO_noActAtnMove_c0@ha
/* 8011E784  38 63 D7 68 */	addi r3, r3, m__26daAlinkHIO_noActAtnMove_c0@l
/* 8011E788  C0 43 00 08 */	lfs f2, 8(r3)
/* 8011E78C  7F C3 F3 78 */	mr r3, r30
/* 8011E790  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011E794  FC 60 10 90 */	fmr f3, f2
/* 8011E798  38 80 00 1A */	li r4, 0x1a
/* 8011E79C  38 A0 00 1A */	li r5, 0x1a
/* 8011E7A0  38 C0 00 02 */	li r6, 2
/* 8011E7A4  C0 82 92 C4 */	lfs f4, lit_6109(r2)
/* 8011E7A8  4B F8 E2 6D */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
lbl_8011E7AC:
/* 8011E7AC  38 00 00 01 */	li r0, 1
/* 8011E7B0  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8011E7B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011E7B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011E7BC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011E7C0  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011E7C4  4B F2 99 B9 */	bl cutEnd__16dEvent_manager_cFi
/* 8011E7C8  48 00 00 58 */	b lbl_8011E820
lbl_8011E7CC:
/* 8011E7CC  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8011E7D0  2C 00 00 00 */	cmpwi r0, 0
/* 8011E7D4  41 82 00 1C */	beq lbl_8011E7F0
/* 8011E7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011E7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011E7E0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011E7E4  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011E7E8  4B F2 99 95 */	bl cutEnd__16dEvent_manager_cFi
/* 8011E7EC  48 00 00 34 */	b lbl_8011E820
lbl_8011E7F0:
/* 8011E7F0  7F E3 FB 78 */	mr r3, r31
/* 8011E7F4  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 8011E7F8  48 20 9C 35 */	bl checkPass__12J3DFrameCtrlFf
/* 8011E7FC  2C 03 00 00 */	cmpwi r3, 0
/* 8011E800  41 82 00 20 */	beq lbl_8011E820
/* 8011E804  7F C3 F3 78 */	mr r3, r30
/* 8011E808  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001009E@ha */
/* 8011E80C  38 84 00 9E */	addi r4, r4, 0x009E /* 0x0001009E@l */
/* 8011E810  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011E814  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011E818  7D 89 03 A6 */	mtctr r12
/* 8011E81C  4E 80 04 21 */	bctrl 
lbl_8011E820:
/* 8011E820  38 60 00 01 */	li r3, 1
/* 8011E824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011E828  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011E82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011E830  7C 08 03 A6 */	mtlr r0
/* 8011E834  38 21 00 10 */	addi r1, r1, 0x10
/* 8011E838  4E 80 00 20 */	blr 
