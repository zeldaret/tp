lbl_80112304:
/* 80112304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80112308  7C 08 02 A6 */	mflr r0
/* 8011230C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80112310  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80112314  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80112318  7C 7E 1B 78 */	mr r30, r3
/* 8011231C  A8 83 30 0C */	lha r4, 0x300c(r3)
/* 80112320  7C 80 07 35 */	extsh. r0, r4
/* 80112324  41 82 00 28 */	beq lbl_8011234C
/* 80112328  7C 80 07 35 */	extsh. r0, r4
/* 8011232C  41 82 00 F4 */	beq lbl_80112420
/* 80112330  38 04 FF FF */	addi r0, r4, -1
/* 80112334  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 80112338  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8011233C  2C 00 00 00 */	cmpwi r0, 0
/* 80112340  40 82 00 E0 */	bne lbl_80112420
/* 80112344  4B FA 35 A9 */	bl checkWaitAction__9daAlink_cFv
/* 80112348  48 00 00 D8 */	b lbl_80112420
lbl_8011234C:
/* 8011234C  48 00 38 D5 */	bl checkEventRun__9daAlink_cCFv
/* 80112350  2C 03 00 00 */	cmpwi r3, 0
/* 80112354  41 82 00 1C */	beq lbl_80112370
/* 80112358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011235C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80112360  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80112364  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 80112368  4B F3 5E 15 */	bl cutEnd__16dEvent_manager_cFi
/* 8011236C  48 00 00 B4 */	b lbl_80112420
lbl_80112370:
/* 80112370  83 FE 28 10 */	lwz r31, 0x2810(r30)
/* 80112374  7F C3 F3 78 */	mr r3, r30
/* 80112378  38 80 00 12 */	li r4, 0x12
/* 8011237C  4B FA 0F 1D */	bl setBStatus__9daAlink_cFUc
/* 80112380  7F C3 F3 78 */	mr r3, r30
/* 80112384  38 80 00 31 */	li r4, 0x31
/* 80112388  4B FA 0E C9 */	bl setDoStatus__9daAlink_cFUc
/* 8011238C  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 80112390  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80112394  41 82 00 2C */	beq lbl_801123C0
/* 80112398  38 00 00 02 */	li r0, 2
/* 8011239C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 801123A0  28 1F 00 00 */	cmplwi r31, 0
/* 801123A4  41 82 00 7C */	beq lbl_80112420
/* 801123A8  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 801123AC  60 00 00 01 */	ori r0, r0, 1
/* 801123B0  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 801123B4  38 7E 28 0C */	addi r3, r30, 0x280c
/* 801123B8  48 04 C9 45 */	bl clearData__16daPy_actorKeep_cFv
/* 801123BC  48 00 00 64 */	b lbl_80112420
lbl_801123C0:
/* 801123C0  7F C3 F3 78 */	mr r3, r30
/* 801123C4  38 80 00 08 */	li r4, 8
/* 801123C8  4B FA 02 05 */	bl itemTriggerCheck__9daAlink_cFUc
/* 801123CC  2C 03 00 00 */	cmpwi r3, 0
/* 801123D0  41 82 00 10 */	beq lbl_801123E0
/* 801123D4  7F C3 F3 78 */	mr r3, r30
/* 801123D8  4B FA 35 15 */	bl checkWaitAction__9daAlink_cFv
/* 801123DC  48 00 00 48 */	b lbl_80112424
lbl_801123E0:
/* 801123E0  7F C3 F3 78 */	mr r3, r30
/* 801123E4  4B FB C4 BD */	bl setBodyAngleToCamera__9daAlink_cFv
/* 801123E8  2C 03 00 00 */	cmpwi r3, 0
/* 801123EC  41 82 00 34 */	beq lbl_80112420
/* 801123F0  7F C3 F3 78 */	mr r3, r30
/* 801123F4  C0 22 93 5C */	lfs f1, lit_8322(r2)
/* 801123F8  38 81 00 08 */	addi r4, r1, 8
/* 801123FC  4B FA D1 05 */	bl checkSightLine__9daAlink_cFfP4cXyz
/* 80112400  C0 01 00 08 */	lfs f0, 8(r1)
/* 80112404  D0 1E 20 6C */	stfs f0, 0x206c(r30)
/* 80112408  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8011240C  D0 1E 20 70 */	stfs f0, 0x2070(r30)
/* 80112410  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80112414  D0 1E 20 74 */	stfs f0, 0x2074(r30)
/* 80112418  38 00 00 01 */	li r0, 1
/* 8011241C  98 1E 20 68 */	stb r0, 0x2068(r30)
lbl_80112420:
/* 80112420  38 60 00 01 */	li r3, 1
lbl_80112424:
/* 80112424  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80112428  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011242C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80112430  7C 08 03 A6 */	mtlr r0
/* 80112434  38 21 00 20 */	addi r1, r1, 0x20
/* 80112438  4E 80 00 20 */	blr 
